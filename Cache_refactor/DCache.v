module DCache #(
    parameter  DATA_WIDTH     = 32, 
    parameter  ASSOC_NUM      = 1, //组相连数
    parameter  WORDS_PER_LINE = 4, //一行4字
    parameter  WAY_SIZE       = 4*1024*8, //一路Cache 容量大小
    parameter  BLOCK_NUMS     = WAY_SIZE/(WORDS_PER_LINE*DATA_WIDTH), //一路Cache块数=256
    localparam BYTES_PER_WORD = 4,
    localparam INDEX_WIDTH    = $clog2(BLOCK_NUMS), //8
    localparam OFFSET_WIDTH   = $clog2(WORDS_PER_LINE*BYTES_PER_WORD),//4
    localparam TAG_WIDTH      = 32-INDEX_WIDTH-OFFSET_WIDTH, //20
    localparam WSTRB_WIDTH    = 4,
    localparam DIRTY_WIDTH    = 1
)
(
    //与CPU流水线的交互接口
    input                    clk,
    input                    reset,
    input                    data_valid,
    input                    data_op,
    input [INDEX_WIDTH-1:0]  data_index,
    input [TAG_WIDTH-1:0]    data_tag,
    input [OFFSET_WIDTH-1:0] data_offset,
    input [DATA_WIDTH-1:0]   data_wdata,
    input [WSTRB_WIDTH-1:0]  data_wstrb, //字节写使能wstrb
    output [DATA_WIDTH-1:0]  data_rdata,
    output                   busy,

    //与AXI总线接口的交互接口
    output                   dcache_rd_req,
    output [DATA_WIDTH-1:0]  dcache_rd_addr,
    input                    dcache_rd_rdy,
    input                    dcache_wr_valid,
    input                    dcache_ret_valid,
    input [127:0]            dcache_ret_data,
    output                   dcache_wr_req,
    input                    dcache_wr_rdy,
    output [DATA_WIDTH-1:0]  dcache_wr_addr,
    output [127:0]           dcache_wr_data,

    output                   udcache_rd_req,
    output [31:0]            udcache_rd_addr,
    input                    udcache_rd_rdy,
    input                    udcache_ret_valid,
    input                    udcache_wr_valid,
    input [DATA_WIDTH-1:0]   udcache_ret_data,
    output [WSTRB_WIDTH-1:0] udcache_wr_strb,
    output                   udcache_wr_req,
    input                    udcache_wr_rdy,
    output [31:0]            udcache_wr_addr,
    output [DATA_WIDTH-1:0]  udcache_wr_data,
    input                    isUncache //
);

//define Cache FSM 
parameter  LOOKUP         = 3'd0,
           MISSDIRTY      = 3'd1,
           WRITEBACK      = 3'd2,
           MISSCLEAN      = 3'd3,
           REFILL         = 3'd4,
           REFILLDONE     = 3'd5;

//define Uncache FSM 
parameter  UNCACHE_LOOKUP = 3'd0,
           UNCACHE_LOAD   = 3'd1,
           UNCACHE_STORE  = 3'd2,
           UNCACHE_RETURN = 3'd3,
           UNCACHE_DONE   = 3'd4;

//define Cache Write FSM
parameter  WRITE_IDLE     = 1'b0,
           WRITE_START    = 1'b1;

reg [2:0] dcache_state;
reg [2:0] dcache_nextstate;
reg [2:0] uncache_state;
reg [2:0] uncache_nextstate;
reg       write_state;
reg       write_nextstate;

/****************define req_buffer***************/
wire                   reqbuffer_en;
reg                    reqbuffer_data_valid;
reg                    reqbuffer_data_op;
reg [INDEX_WIDTH-1:0]  reqbuffer_data_index;
reg [TAG_WIDTH-1:0]    reqbuffer_data_tag;
reg [OFFSET_WIDTH-1:0] reqbuffer_data_offset;
reg [DATA_WIDTH-1:0]   reqbuffer_data_wdata;
reg [WSTRB_WIDTH-1:0]  reqbuffer_data_wstrb;
reg                    reqbuffer_data_isUncache;
/****************define req_buffer***************/

/****************define write_buffer***************/
wire                   writebuffer_en;
reg [INDEX_WIDTH-1:0]  writebuffer_data_index;
reg [ASSOC_NUM-1:0]    writebuffer_data_hit; //TODO:用于片选一路
reg [TAG_WIDTH-1:0]    writebuffer_data_tag;
reg [OFFSET_WIDTH-1:0] writebuffer_data_offset;
reg [DATA_WIDTH-1:0]   writebuffer_data_wdata;
/****************define write_buffer***************/

wire [ASSOC_NUM-1:0]     hit;
wire                     cache_hit;
reg  [ASSOC_NUM-1:0]     delayed_hit; //hit延时
reg                      delayed_cache_hit; //cache_hit延时
wire                     delayed_hit_wr;
wire                     data_read_en;

reg                      tagv_we[ASSOC_NUM-1:0] ;   
reg [WORDS_PER_LINE-1:0] data_we[ASSOC_NUM-1:0]; //精确到字
reg                      dirty_we[ASSOC_NUM-1:0]; 

wire [INDEX_WIDTH-1:0]   dirty_index;
wire [INDEX_WIDTH-1:0]   tagv_index;
wire [INDEX_WIDTH-1:0]   write_index;
wire [INDEX_WIDTH-1:0]   read_index;
  
wire [TAG_WIDTH:0]       tagv_wdata; //{tag,1'b1} valid bit在最低位
wire                     dirty_wbit; //写入lutram的脏位
  
wire [ASSOC_NUM-1:0]     dirty_rbit; //读出lutram的脏位
wire [TAG_WIDTH-1:0]     tag_rdata[ASSOC_NUM-1:0]; //位宽TAG_WIDTH,共ASSOC_NUM路
wire                     valid_rdata[ASSOC_NUM-1:0]; //位宽1,共ASSOC_NUM路
wire [DATA_WIDTH-1:0]    dcache_wdata[WORDS_PER_LINE-1:0]; //写ICache的指令数据
wire [DATA_WIDTH-1:0]    dcache_rdata[ASSOC_NUM-1:0][WORDS_PER_LINE-1:0]; //写ICache的指令数据
wire [DATA_WIDTH-1:0]    dcache_rdata_sel[ASSOC_NUM-1:0];
wire [DATA_WIDTH-1:0]    dcache_write_data;
reg [DATA_WIDTH-1:0]     uncache_rdata;

wire                     uncache_busy;
wire                     dcache_busy;

//与CPU流水线的交互接口
generate
    genvar n;
    for (n = 0; n < ASSOC_NUM; n = n + 1) begin
        assign dcache_rdata_sel[n] = dcache_rdata[n][reqbuffer_data_offset[OFFSET_WIDTH-1:2]];
    end
endgenerate
//TODO:之后添加多路组相连
assign data_rdata   = (uncache_state == UNCACHE_DONE) ? uncache_rdata : dcache_rdata_sel[0];
assign uncache_busy = (uncache_state == UNCACHE_DONE || uncache_busy == LOOKUP) ? 1'b0 : 1'b1;
assign dcache_busy  = reqbuffer_data_valid & ~delayed_cache_hit & ~reqbuffer_data_isUncache;
assign busy         = uncache_busy | dcache_busy;

assign writebuffer_en = delayed_cache_hit & reqbuffer_data_op;
//TODO:之后添加多路组相连
assign dcache_write_data[7:0]   = reqbuffer_data_wstrb[0] ? reqbuffer_data_wdata[7:0] :
                                                            dcache_rdata_sel[0][7:0];
assign dcache_write_data[15:8]  = reqbuffer_data_wstrb[1] ? reqbuffer_data_wdata[15:8] :
                                                            dcache_rdata_sel[0][15:8];
assign dcache_write_data[23:16] = reqbuffer_data_wstrb[2] ? reqbuffer_data_wdata[23:16] :
                                                            dcache_rdata_sel[0][23:16];
assign dcache_write_data[31:24] = reqbuffer_data_wstrb[3] ? reqbuffer_data_wdata[31:24] :
                                                            dcache_rdata_sel[0][31:24]; 

//与AXI的交互接口
assign dcache_rd_req  = (dcache_state == MISSCLEAN);
assign dcache_rd_addr = {reqbuffer_data_tag,reqbuffer_data_index,{OFFSET_WIDTH{1'b0}}};
assign dcache_wr_req  = (dcache_state == MISSDIRTY);
// assign dcache_wr_addr = ; //需要将tag锁存

//hit判定逻辑
generate
    genvar k;
    for (k = 0; k < ASSOC_NUM; k = k + 1) begin
        assign hit[k] = data_valid ? (valid_rdata[k] & (tag_rdata[k] == data_tag) & ~isUncache) :
                                     (valid_rdata[k] & (tag_rdata[k] == reqbuffer_data_tag) 
                                                                    & ~reqbuffer_data_isUncache);
    end
endgenerate
assign cache_hit  = |hit;
assign delayed_hit_wr = (dcache_state == REFILLDONE) ? 1'b1 : data_valid;
always @(posedge clk) begin //TODO:delayed_hit之后用于片选Cache的一路
    if(reset) begin
        delayed_cache_hit <= 1'b0;
        delayed_hit       <= 0;
    end
    else if(delayed_hit_wr) begin
        delayed_cache_hit <= cache_hit;
        delayed_hit       <= hit;
    end
end


always @(posedge clk) begin
    if(reset)
        uncache_rdata <= 0;
    else if(udcache_ret_valid)
        uncache_rdata <= udcache_ret_data;
end
                                                       
always @(posedge clk) begin //writebuffer
    if(reset) begin
        writebuffer_data_index  <= 0;
        writebuffer_data_hit    <= 0; 
        writebuffer_data_tag    <= 0;
        writebuffer_data_offset <= 0;
        writebuffer_data_wdata  <= 0;
    end
    else if(writebuffer_en)begin
        writebuffer_data_index  <= reqbuffer_data_index ;
        writebuffer_data_hit    <= delayed_hit; 
        writebuffer_data_tag    <= reqbuffer_data_tag   ;
        writebuffer_data_offset <= reqbuffer_data_offset;
        writebuffer_data_wdata  <= dcache_write_data ;
    end
end

assign reqbuffer_en = data_valid;
always @(posedge clk) begin //reqbuffer
    if(reset) begin
        reqbuffer_data_valid     <= 0;
        reqbuffer_data_op        <= 0;
        reqbuffer_data_index     <= 0;
        reqbuffer_data_tag       <= 0;
        reqbuffer_data_offset    <= 0;
        reqbuffer_data_wdata     <= 0;
        reqbuffer_data_wstrb     <= 0;
        reqbuffer_data_isUncache <= 0;
    end
    else begin
        reqbuffer_data_valid     <= data_valid ;
        reqbuffer_data_op        <= data_op    ;
        reqbuffer_data_index     <= data_index ;
        reqbuffer_data_tag       <= data_tag   ;
        reqbuffer_data_offset    <= data_offset;
        reqbuffer_data_wdata     <= data_wdata ;
        reqbuffer_data_wstrb     <= data_wstrb ; //字节写使能wstrb
        reqbuffer_data_isUncache <= isUncache  ;
    end
end

//dirty lutram
always @(*) begin
    if(dcache_state == REFILL & dcache_ret_valid)
        dirty_we[0] = 1'b1; //TODO:之后使用多路组相连需要调整,使用LRU算法
    else if(write_state == WRITE_START)
        dirty_we[0] = 1'b1;
    else
        dirty_we[0] = 1'b0;
end
assign dirty_index = reqbuffer_data_index;
assign dirty_wbit  = (dcache_state == REFILL) ? 1'b0 : 1'b1;

//tagv lutram
always @(*) begin
    if(dcache_state == REFILL & dcache_ret_valid)
        tagv_we[0] = 1'b1; //TODO:之后使用多路组相连需要调整,使用LRU算法
    else
        tagv_we[0] = 1'b0;
end
assign tagv_index = (dcache_state == REFILL || dcache_state == REFILLDONE) 
                    ? reqbuffer_data_index : data_index;
assign tagv_wdata = {reqbuffer_data_tag,1'b1};

//data ram
always @(*) begin
    if(dcache_state == REFILL & dcache_ret_valid)
        data_we[0] = {WORDS_PER_LINE{1'b1}};
    else if(write_state == WRITE_START)
        data_we[0][writebuffer_data_offset[OFFSET_WIDTH-1:2]] = 1'b1;
    else
        data_we[0] = {WORDS_PER_LINE{1'b0}};
end
assign write_index = (dcache_state == REFILL) ? reqbuffer_data_index : writebuffer_data_index;
generate
    genvar m;
    for (m = 0; m < WORDS_PER_LINE; m = m + 1) begin
        assign dcache_wdata[m] = (dcache_state == REFILL) ? dcache_ret_data[32*(m+1)-1:32*(m)] :
                                                            writebuffer_data_wdata;
    end
endgenerate

assign data_read_en = (dcache_state == REFILLDONE) ? 1'b1 : data_valid;
assign read_index   = (dcache_state == REFILL || dcache_state == REFILLDONE) 
                    ?  reqbuffer_data_index : data_index;

generate
    genvar i;
    genvar j;
    for (i = 0;i < ASSOC_NUM ;i = i + 1) begin
        simple_port_lutram #(
            .SIZE(BLOCK_NUMS),
            .DATA_WIDTH(DIRTY_WIDTH)
        ) dcache_ram_dirty(
            .clka(clk),
            .rsta(reset),

            //端口信号
            .ena(1'b1),
            .wea(dirty_we[i]),
            .addra(dirty_index),
            .dina(dirty_wbit),
            .douta(dirty_rbit[i])            
        );

       simple_port_lutram  #(
            .SIZE(BLOCK_NUMS),
            .DATA_WIDTH(TAG_WIDTH + 1)
       ) dcache_ram_tag(
            .clka(clk),
            .rsta(reset),

            //端口信号
            .ena(1'b1),
            .wea(tagv_we[i]),
            .addra(tagv_index),
            .dina(tagv_wdata),
            .douta({tag_rdata[i],valid_rdata[i]})
        );
        for (j = 0; j < WORDS_PER_LINE; j = j + 1) begin
            simple_port_ram #(
                .SIZE(BLOCK_NUMS),
                .DATA_WIDTH(DATA_WIDTH)
            ) dcache_ram_data(
                .clk(clk),
                .rst(reset),

                //写端口
                .ena(1'b1),
                .wea(data_we[i][j]),
                .addra(write_index),
                .dina(dcache_wdata[j]),

                //读端口
                .enb(data_read_en),
                .addrb(read_index),
                .doutb(dcache_rdata[i][j])
            );
    end
    end
endgenerate

always @(posedge clk) begin
    if(reset)
        write_state <= LOOKUP;
    else
        write_state <= write_nextstate;
end

always @(*) begin //Cache Write 
    if(reqbuffer_data_valid & delayed_cache_hit & reqbuffer_data_op)
        write_nextstate = WRITE_START;
    else
        write_nextstate = WRITE_IDLE;
end

always @(posedge clk) begin
    if(reset)
        uncache_state <= LOOKUP;
    else
        uncache_state <= uncache_nextstate;
end

always @(*) begin //uncache
    case (uncache_state)
        UNCACHE_LOOKUP: 
            if(data_valid & isUncache) begin
                if(data_op)
                    uncache_nextstate = UNCACHE_STORE;
                else
                    uncache_nextstate = UNCACHE_LOAD;
            end
            else
                uncache_nextstate = UNCACHE_LOOKUP;
        
        UNCACHE_LOAD:
            if(udcache_rd_rdy) 
                uncache_nextstate = UNCACHE_RETURN;
            else
                uncache_nextstate = UNCACHE_LOAD;
            
        UNCACHE_STORE:
            if(udcache_wr_rdy)
                uncache_nextstate = UNCACHE_RETURN;
            else
                uncache_nextstate = UNCACHE_STORE;

        UNCACHE_RETURN:
            if(udcache_ret_valid | udcache_wr_valid)
                uncache_nextstate = UNCACHE_DONE;
            else
                uncache_nextstate = UNCACHE_RETURN;

        UNCACHE_DONE:
            if(data_valid & isUncache) begin
                if(data_op)
                    uncache_nextstate = UNCACHE_STORE;
                else
                    uncache_nextstate = UNCACHE_LOAD;
            end
            else
                uncache_nextstate = UNCACHE_LOOKUP;

        default: uncache_nextstate = UNCACHE_LOOKUP;
    endcase
end

always @(posedge clk) begin
    if(reset)
        dcache_state <= LOOKUP;
    else
        dcache_state <= dcache_nextstate;
end

always @(*) begin //Cache 不处理Uncache和store类指令
    case (dcache_state)
        LOOKUP: 
            if(reqbuffer_data_isUncache) begin
                dcache_nextstate = LOOKUP;
            end
            else begin
                if(reqbuffer_data_valid & ~delayed_cache_hit) begin
                    if(dirty_rbit[0]) //TODO:考虑多路情况
                        dcache_nextstate = MISSDIRTY;
                    else
                        dcache_nextstate = MISSCLEAN;
                end
                else
                    dcache_nextstate = LOOKUP;
            end

        MISSDIRTY:
            if(dcache_wr_rdy)
                dcache_nextstate = WRITEBACK;
            else
                dcache_nextstate = MISSDIRTY;
        
        WRITEBACK:
            if(dcache_wr_valid)
                dcache_nextstate = MISSCLEAN;
            else
                dcache_nextstate = WRITEBACK;
        
        MISSCLEAN:
            if(dcache_rd_rdy)
                dcache_nextstate = REFILL;
            else
                dcache_nextstate = MISSCLEAN;

        REFILL:
            if(dcache_ret_valid)
                dcache_nextstate = REFILLDONE;
            else
                dcache_nextstate = REFILL;
        
        REFILLDONE:
            dcache_nextstate = LOOKUP;
            
        default: dcache_nextstate = LOOKUP;
    endcase
end
endmodule //DCache