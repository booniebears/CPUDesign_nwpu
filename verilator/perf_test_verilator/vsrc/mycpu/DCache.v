`include "global_defines.vh"

module DCache #(
    parameter  DATA_WIDTH      = 32, 
    parameter  CACHELINE_WIDTH = 128, 
    parameter  FIFO_WIDTH      = 68, //addr + wdata + wstrb
    parameter  ASSOC_NUM       = 2, //组相连数
    parameter  WORDS_PER_LINE  = 4, //一行4字
    parameter  WAY_SIZE        = 4*1024*8, //一路Cache 容量大小
    parameter  BLOCK_NUMS      = WAY_SIZE/(WORDS_PER_LINE*DATA_WIDTH), //一路Cache块数=256
    localparam BYTES_PER_WORD  = 4,
    localparam INDEX_WIDTH     = $clog2(BLOCK_NUMS), //8
    localparam OFFSET_WIDTH    = $clog2(WORDS_PER_LINE*BYTES_PER_WORD),//4
    localparam TAG_WIDTH       = 32-INDEX_WIDTH-OFFSET_WIDTH, //20
    localparam WSTRB_WIDTH     = 4,
    localparam DIRTY_WIDTH     = 1
)
(
    //与CPU流水线的交互接口
    input                        clk,
    input                        reset,
    input                        data_valid,
    input                        data_op,
    input  [INDEX_WIDTH-1:0]     data_index,
    input  [TAG_WIDTH-1:0]       data_tag,
    input  [OFFSET_WIDTH-1:0]    data_offset,
    input  [DATA_WIDTH-1:0]      data_wdata,
    input  [WSTRB_WIDTH-1:0]     data_wstrb, //字节写使能wstrb
    output [DATA_WIDTH-1:0]      data_rdata,
    input  [2:0]                 load_size,
    output                       busy,
    input                        is_DCacheInst,
    input  [2:0]                 CacheInst_type,
    output reg                   store_record, //store_record = 1'b1表示当前有未处理完的Cached store

    //与AXI总线接口的交互接口
    output                           dcache_rd_req,
    output [DATA_WIDTH-1:0]          dcache_rd_addr,
    input                            dcache_rd_rdy,
    input                            dcache_wr_valid,
    input                            dcache_ret_valid,
    input [CACHELINE_WIDTH-1:0]      dcache_ret_data,
    output                           dcache_wr_req,
    input                            dcache_wr_rdy,
    output reg [DATA_WIDTH-1:0]      dcache_wr_addr,
    output reg [CACHELINE_WIDTH-1:0] dcache_wr_data,

    output                       udcache_rd_req,
    output [31:0]                udcache_rd_addr,
    output [ 2:0]                udcache_load_size,
    input                        udcache_rd_rdy,
    input                        udcache_ret_valid,
    input                        udcache_wr_valid,
    input  [DATA_WIDTH-1:0]      udcache_ret_data,
    output [WSTRB_WIDTH-1:0]     udcache_wr_strb,
    output                       udcache_wr_req,
    input                        udcache_wr_rdy,
    output [31:0]                udcache_wr_addr,
    output [DATA_WIDTH-1:0]      udcache_wr_data,
    input                        isUncache //
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
           WRITE_FIFO     = 3'd2,
           UNCACHE_RETURN = 3'd3,
           UNCACHE_DONE   = 3'd4;

//define Cache Write FSM
parameter  WRITE_IDLE     = 1'd0,
           WRITE_START    = 1'd1;

//define FIFO Write FSM
parameter  FIFO_IDLE      = 2'd0,
           FIFO_WAIT      = 2'd1,
           FIFO_RETURN    = 2'd2;

//define CacheInst FSM
parameter  CACHEINST_IDLE   = 2'd0,
           CACHEINST_LOOKUP = 2'd1,
           CACHEINST_WAIT   = 2'd2,
           CACHEINST_DONE   = 2'd3;

reg [2:0] dcache_state;
reg [2:0] dcache_nextstate;
reg [2:0] uncache_state;
reg [2:0] uncache_nextstate;
reg       write_state;
reg       write_nextstate;
reg [1:0] fifo_state;
reg [1:0] fifo_nextstate;
reg [1:0] CacheInst_state;
reg [1:0] CacheInst_nextstate;

/****************define req_buffer***************/
wire                   reqbuffer_en;
wire                   reqbuffer_flush;
reg                    reqbuffer_data_valid;
reg                    reqbuffer_data_op;
reg [INDEX_WIDTH-1:0]  reqbuffer_data_index;
reg [TAG_WIDTH-1:0]    reqbuffer_data_tag;
reg [OFFSET_WIDTH-1:0] reqbuffer_data_offset;
reg [DATA_WIDTH-1:0]   reqbuffer_data_wdata;
reg [WSTRB_WIDTH-1:0]  reqbuffer_data_wstrb;
reg [2:0]              reqbuffer_load_size;
reg                    reqbuffer_data_isUncache;
reg                    reqbuffer_is_DCacheInst;
reg [2:0]              reqbuffer_CacheInst_type;
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

reg  [ASSOC_NUM-1:0]     dirty_we; 
reg  [ASSOC_NUM-1:0]     tagv_we ;   
reg [WORDS_PER_LINE-1:0] data_we[ASSOC_NUM-1:0]; //精确到字

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
reg  [DATA_WIDTH-1:0]    uncache_rdata;
reg  [TAG_WIDTH-1:0]     delayed_tag_rdata[ASSOC_NUM-1:0]; //tag_rdata一拍延时

wire [$clog2(ASSOC_NUM)-1:0] sel_way;   
wire [$clog2(ASSOC_NUM)-1:0] plru [BLOCK_NUMS-1:0];
reg                          plru_en;

wire                     uncache_busy;
wire                     dcache_busy; 
wire                     CacheInst_busy;

/****************define FIFO***************/
wire [FIFO_WIDTH-1:0]  FIFO_din     ;
wire                   FIFO_rd_en   ;
wire                   FIFO_wr_en   ;
wire                   FIFO_full    ;
wire                   FIFO_empty   ;
wire [31:0]            FIFO_wr_addr ;
wire [DATA_WIDTH-1:0]  FIFO_wr_data ;
wire [WSTRB_WIDTH-1:0] FIFO_wr_wstrb;
/****************define FIFO***************/

//与CPU流水线的交互接口
generate
    genvar n;
    for (n = 0; n < ASSOC_NUM; n = n + 1) begin
        assign dcache_rdata_sel[n] = dcache_rdata[n][reqbuffer_data_offset[OFFSET_WIDTH-1:2]];
    end
endgenerate
always @(posedge clk) begin
    if(reset)
        store_record <= 1'b0;
    else if(data_valid & data_op & ~isUncache)
        store_record <= 1'b1;
    else if(write_state == WRITE_START)
        store_record <= 1'b0;
end

//TODO:之后改成四路组相连
assign sel_way      = delayed_hit[0] ? 1'b0 : 1'b1;
assign data_rdata   = (uncache_state == UNCACHE_DONE) ? uncache_rdata : dcache_rdata_sel[sel_way];
assign uncache_busy = (uncache_state == UNCACHE_DONE | uncache_state == UNCACHE_LOOKUP) ? 1'b0 : 1'b1;
assign dcache_busy  = reqbuffer_data_valid & ~reqbuffer_data_isUncache & ~reqbuffer_is_DCacheInst &
                      (~delayed_cache_hit | (delayed_cache_hit & reqbuffer_data_op));
                    //sw并且hit,要阻塞在MEM
assign CacheInst_busy = (CacheInst_state != CACHEINST_IDLE);
assign busy         = uncache_busy | dcache_busy | CacheInst_busy;

//TODO:之后改成四路组相连
assign dcache_write_data[7:0]   = reqbuffer_data_wstrb[0] ? reqbuffer_data_wdata[7:0] :
                                                            dcache_rdata_sel[sel_way][7:0];
assign dcache_write_data[15:8]  = reqbuffer_data_wstrb[1] ? reqbuffer_data_wdata[15:8] :
                                                            dcache_rdata_sel[sel_way][15:8];
assign dcache_write_data[23:16] = reqbuffer_data_wstrb[2] ? reqbuffer_data_wdata[23:16] :
                                                            dcache_rdata_sel[sel_way][23:16];
assign dcache_write_data[31:24] = reqbuffer_data_wstrb[3] ? reqbuffer_data_wdata[31:24] :
                                                            dcache_rdata_sel[sel_way][31:24]; 

//与AXI的交互接口
//dcache AXI
assign dcache_rd_req   = (dcache_state == MISSCLEAN);
assign dcache_rd_addr  = {reqbuffer_data_tag,reqbuffer_data_index,{OFFSET_WIDTH{1'b0}}};
assign dcache_wr_req   = (dcache_state == MISSDIRTY || CacheInst_state == CACHEINST_WAIT);

always @(*) begin //考虑两种不同的Cache指令
    if(reqbuffer_CacheInst_type == `DCache_IDX_WB_INVALID)
        dcache_wr_addr = {delayed_tag_rdata[reqbuffer_data_tag[0]],reqbuffer_data_index,
                         {OFFSET_WIDTH{1'b0}}};
    else if(reqbuffer_CacheInst_type == `DCache_HIT_WB_INVALID)
        //必然是在命中的情况下才能写回,此时reqbuffer_data_tag即为所需
        dcache_wr_addr = {reqbuffer_data_tag,reqbuffer_data_index,reqbuffer_data_offset};
    else
        dcache_wr_addr = {delayed_tag_rdata[plru[reqbuffer_data_index]],reqbuffer_data_index,
                         {OFFSET_WIDTH{1'b0}}}; 
end
generate
    genvar u;
    for (u = 0; u < WORDS_PER_LINE; u = u + 1) begin
        always @(*) begin
            if(reqbuffer_CacheInst_type == `DCache_IDX_WB_INVALID)
                dcache_wr_data[32*(u+1)-1:32*(u)] = dcache_rdata[reqbuffer_data_tag[0]][u];
            else if(reqbuffer_CacheInst_type == `DCache_HIT_WB_INVALID)
                dcache_wr_data[32*(u+1)-1:32*(u)] = dcache_rdata[sel_way][u];
            else
                dcache_wr_data[32*(u+1)-1:32*(u)] = dcache_rdata[plru[reqbuffer_data_index]][u];
        end
    end
endgenerate

//uncache AXI
assign udcache_rd_req    = (uncache_state == UNCACHE_LOAD) & (fifo_state == FIFO_IDLE) & FIFO_empty;
assign udcache_rd_addr   = {reqbuffer_data_tag,reqbuffer_data_index,reqbuffer_data_offset};
assign udcache_load_size = reqbuffer_load_size;
assign udcache_wr_strb   = FIFO_wr_wstrb;
assign udcache_wr_req    = (fifo_state == FIFO_WAIT);
assign udcache_wr_addr   = FIFO_wr_addr;
assign udcache_wr_data   = FIFO_wr_data;

generate
    genvar t;
    for (t = 0; t < ASSOC_NUM; t = t + 1) begin
        always @(posedge clk) begin //用于发送AXI write地址
            if(reset)
                delayed_tag_rdata[t] <= 0;
            else if(delayed_hit_wr)
                delayed_tag_rdata[t] <= tag_rdata[t];
        end
    end
endgenerate

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
always @(posedge clk) begin
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

assign writebuffer_en = delayed_cache_hit & reqbuffer_data_op;                                                 
always @(posedge clk) begin //writebuffer
    if(reset) begin
        writebuffer_data_index  <= 0;
        writebuffer_data_hit    <= 0; 
        writebuffer_data_tag    <= 0;
        writebuffer_data_offset <= 0;
        writebuffer_data_wdata  <= 0;
    end
    else if(writebuffer_en)begin
        writebuffer_data_index  <= reqbuffer_data_index;
        writebuffer_data_hit    <= delayed_hit; 
        writebuffer_data_tag    <= reqbuffer_data_tag;
        writebuffer_data_offset <= reqbuffer_data_offset;
        writebuffer_data_wdata  <= dcache_write_data ;
    end
end

assign reqbuffer_en    = data_valid;
assign reqbuffer_flush = reqbuffer_data_op & reqbuffer_data_valid & delayed_cache_hit;
always @(posedge clk) begin //reqbuffer
    if(reset | reqbuffer_flush) begin
        reqbuffer_data_valid     <= 0;
        reqbuffer_data_op        <= 0;
        reqbuffer_data_index     <= 0;
        reqbuffer_data_tag       <= 0;
        reqbuffer_data_offset    <= 0;
        reqbuffer_data_wdata     <= 0;
        reqbuffer_data_wstrb     <= 0;
        reqbuffer_load_size      <= 0;
        reqbuffer_data_isUncache <= 0;
        reqbuffer_is_DCacheInst  <= 0;
        reqbuffer_CacheInst_type <= 0;
    end
    else if(reqbuffer_en) begin
        reqbuffer_data_valid     <= data_valid    ;
        reqbuffer_data_op        <= data_op       ;
        reqbuffer_data_index     <= data_index    ;
        reqbuffer_data_tag       <= data_tag      ;
        reqbuffer_data_offset    <= data_offset   ;
        reqbuffer_data_wdata     <= data_wdata    ;
        reqbuffer_data_wstrb     <= data_wstrb    ; //字节写使能wstrb
        reqbuffer_load_size      <= load_size     ; //load_size
        reqbuffer_data_isUncache <= isUncache     ;
        reqbuffer_is_DCacheInst  <= is_DCacheInst ;
        reqbuffer_CacheInst_type <= CacheInst_type;
    end
end

//dirty lutram
always @(*) begin
    dirty_we = 0;
    if(dcache_state == REFILL & dcache_ret_valid) begin
        dirty_we[plru[reqbuffer_data_index]]   = 1'b1;
    end
    else if(write_state == WRITE_START)
        dirty_we    = delayed_hit;
    else if(CacheInst_state == CACHEINST_LOOKUP) begin
        if( reqbuffer_CacheInst_type == `DCache_IDX_WB_INVALID || 
            reqbuffer_CacheInst_type == `DCache_IDX_STORETAG) 
            dirty_we = reqbuffer_data_tag[0] ? 2'b10 : 2'b01;

        else if(reqbuffer_CacheInst_type == `DCache_HIT_INVALID || 
                reqbuffer_CacheInst_type == `DCache_HIT_WB_INVALID)
            dirty_we = delayed_cache_hit ? delayed_hit : 0;
        else
            dirty_we = 0;
    end 
    else
        dirty_we    = 0;
end
assign dirty_index = (write_state == WRITE_START) ? writebuffer_data_index : reqbuffer_data_index;
assign dirty_wbit  = (dcache_state == REFILL || CacheInst_state == CACHEINST_LOOKUP) ? 1'b0 : 1'b1;

//tagv lutram
always @(*) begin
    if(dcache_state == REFILL & dcache_ret_valid) begin
        tagv_we = 0;
        tagv_we[plru[reqbuffer_data_index]] = 1'b1; 
    end
    else if(CacheInst_state == CACHEINST_LOOKUP) begin
        if( reqbuffer_CacheInst_type == `DCache_IDX_WB_INVALID || 
            reqbuffer_CacheInst_type == `DCache_IDX_STORETAG) 
            tagv_we = reqbuffer_data_tag[0] ? 2'b10 : 2'b01;

        else if(reqbuffer_CacheInst_type == `DCache_HIT_INVALID || 
                reqbuffer_CacheInst_type == `DCache_HIT_WB_INVALID)
            tagv_we = delayed_cache_hit ? delayed_hit : 0;
        else
            tagv_we = 0;
    end 
    else
        tagv_we = 0;
end

assign tagv_index = (dcache_state == REFILL || dcache_state == REFILLDONE || 
                     CacheInst_state == CACHEINST_LOOKUP) ? reqbuffer_data_index : data_index;
assign tagv_wdata = (CacheInst_state == CACHEINST_LOOKUP) ? 0 : {reqbuffer_data_tag,1'b1};

//data ram
always @(*) begin //TODO:之后修改为四路组相连
    data_we[0] = 0; //触发该always块逻辑后,先清空为0
    data_we[1] = 0; //触发该always块逻辑后,先清空为0
    if(dcache_state == REFILL & dcache_ret_valid)
        data_we[plru[reqbuffer_data_index]] = {WORDS_PER_LINE{1'b1}};
    else if(write_state == WRITE_START) begin
        data_we[sel_way][writebuffer_data_offset[OFFSET_WIDTH-1:2]] = 1'b1;
    end
    else begin
        data_we[0] = {WORDS_PER_LINE{1'b0}};
        data_we[1] = {WORDS_PER_LINE{1'b0}};
    end
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
        plru_en <= 1'b0;
    else if(~data_valid & ~busy)  
        plru_en <= 1'b0;
    else if(data_valid)
        plru_en <= 1'b1;
end

generate
    genvar a;
    for (a = 0; a < BLOCK_NUMS; a = a + 1) begin
        PLRU #(
            .ASSOC_NUM(ASSOC_NUM)
        ) U_PLRU(
            .clk         (clk        ),
            .reset       (reset      ),
            .delayed_hit (delayed_hit),
            .update      (plru_en & (a == reqbuffer_data_index)),
            .plru        (plru[a]    ) 
        );
    end
endgenerate

assign FIFO_din   = {reqbuffer_data_tag,reqbuffer_data_index,reqbuffer_data_offset,
                     reqbuffer_data_wdata,reqbuffer_data_wstrb};
assign FIFO_rd_en = (fifo_state == FIFO_WAIT) & udcache_wr_rdy;
assign FIFO_wr_en = (uncache_state == WRITE_FIFO) & ~FIFO_full;

FIFO U_FIFO(
    .clk     (clk        ),
    .reset   (reset      ),
    .din     (FIFO_din   ),
    .rd_en   (FIFO_rd_en ),
    .wr_en   (FIFO_wr_en ),
    .full    (FIFO_full  ),
    .empty   (FIFO_empty ),
    .dout    ({FIFO_wr_addr,FIFO_wr_data,FIFO_wr_wstrb})
);

always @(posedge clk) begin
    if(reset)
        CacheInst_state <= CACHEINST_IDLE;
    else
        CacheInst_state <= CacheInst_nextstate;
end

always @(*) begin //CacheInst 每条Cache指令至少需要两拍解决
    case (CacheInst_state)
        CACHEINST_IDLE: 
            if(is_DCacheInst & ~dcache_busy) //Attention:考虑CacheInst阻塞在M1 stage的情况
                CacheInst_nextstate = CACHEINST_LOOKUP;
            else
                CacheInst_nextstate = CACHEINST_IDLE;
        
        CACHEINST_LOOKUP:
            if(reqbuffer_CacheInst_type == `DCache_IDX_STORETAG | 
               reqbuffer_CacheInst_type == `DCache_HIT_INVALID)
                CacheInst_nextstate = CACHEINST_IDLE;
            else if(reqbuffer_CacheInst_type == `DCache_IDX_WB_INVALID) begin
                if(reqbuffer_data_tag[0]) begin //第1路 tag[0] = 1选中way1
                    if(dirty_rbit[1] & valid_rdata[1])
                        CacheInst_nextstate = CACHEINST_WAIT;
                    else
                        CacheInst_nextstate = CACHEINST_IDLE; 
                end
                else begin //第0路
                    if(dirty_rbit[0] & valid_rdata[0])
                        CacheInst_nextstate = CACHEINST_WAIT;
                    else
                        CacheInst_nextstate = CACHEINST_IDLE; 
                end
            end
            else if(reqbuffer_CacheInst_type == `DCache_HIT_WB_INVALID) begin
                if(delayed_hit == 2'b01 && dirty_rbit[0]) //Cache hit 第0路
                    CacheInst_nextstate = CACHEINST_WAIT;
                else if(delayed_hit == 2'b10 && dirty_rbit[1]) //Cache hit 第1路
                    CacheInst_nextstate = CACHEINST_WAIT;
                else
                    CacheInst_nextstate = CACHEINST_IDLE;
            end
            else
                CacheInst_nextstate = CACHEINST_IDLE;

        CACHEINST_WAIT:
            if(dcache_wr_rdy)
                CacheInst_nextstate = CACHEINST_DONE;
            else
                CacheInst_nextstate = CACHEINST_WAIT;

        CACHEINST_DONE:
            if(dcache_wr_valid)
                CacheInst_nextstate = CACHEINST_IDLE;
            else
                CacheInst_nextstate = CACHEINST_DONE;

        default: CacheInst_nextstate = CACHEINST_IDLE;
    endcase
    
end

always @(posedge clk) begin
    if(reset)
        fifo_state <= FIFO_IDLE;
    else
        fifo_state <= fifo_nextstate;
end

always @(*) begin
    case (fifo_state)
        FIFO_IDLE: 
            if(~FIFO_empty)
                fifo_nextstate = FIFO_WAIT;
            else
                fifo_nextstate = FIFO_IDLE;
        
        FIFO_WAIT:
            if(udcache_wr_rdy)
                fifo_nextstate = FIFO_RETURN;
            else
                fifo_nextstate = FIFO_WAIT;
        
        FIFO_RETURN:
            if(udcache_wr_valid)
                fifo_nextstate = FIFO_IDLE;
            else
                fifo_nextstate = FIFO_RETURN;
                
        default: fifo_nextstate = FIFO_IDLE;
    endcase    
end

always @(posedge clk) begin
    if(reset)
        write_state <= WRITE_IDLE;
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
            if(data_valid & isUncache & ~is_DCacheInst) begin
                if(data_op)
                    uncache_nextstate = WRITE_FIFO;
                else
                    uncache_nextstate = UNCACHE_LOAD;
            end
            else
                uncache_nextstate = UNCACHE_LOOKUP;
        
        UNCACHE_LOAD:
            if(udcache_rd_rdy & (fifo_state == FIFO_IDLE) & FIFO_empty) 
                uncache_nextstate = UNCACHE_RETURN;
            else
                uncache_nextstate = UNCACHE_LOAD;
            
        WRITE_FIFO:
            if(~FIFO_full)
                uncache_nextstate = UNCACHE_DONE;
            else
                uncache_nextstate = WRITE_FIFO;

        UNCACHE_RETURN:
            if(udcache_ret_valid)
                uncache_nextstate = UNCACHE_DONE;
            else
                uncache_nextstate = UNCACHE_RETURN;

        UNCACHE_DONE:
            if(data_valid & isUncache) begin
                if(data_op)
                    uncache_nextstate = WRITE_FIFO;
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

always @(*) begin //Cache 不处理Uncache,store和Cache指令
    case (dcache_state)
        LOOKUP: 
            if(reqbuffer_data_isUncache | reqbuffer_is_DCacheInst) begin
                dcache_nextstate = LOOKUP;
            end
            else begin
                if(reqbuffer_data_valid & ~delayed_cache_hit) begin
                    if(dirty_rbit[plru[reqbuffer_data_index]]) //TODO:考虑多路情况
                        dcache_nextstate = MISSDIRTY;
                    else
                        dcache_nextstate = MISSCLEAN;
                end
                else begin
                    dcache_nextstate = LOOKUP;
                end
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