module DCache #(
    parameter  DATA_WIDTH      = 32, 
    parameter  CACHELINE_WIDTH = 128, 
    parameter  FIFO_WIDTH      = 68, //addr + wdata + wstrb
    parameter  ASSOC_NUM       = 2, //组相连数
    parameter  WORDS_PER_LINE  = 4, //一行4字
    parameter  WAY_SIZE        = 4*1024*8, //一路Cache 容量大小
    parameter  BLOCK_NUMS      = WAY_SIZE/(WORDS_PER_LINE*DATA_WIDTH), //一路Cache块数=256
    localparam VICTIM_BLOCKS   = 8,
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
    output reg                   store_record, //store_record = 1'b1表示当前有未处理完的Cached store

    //与AXI总线接口的交互接口
    output                       dcache_rd_req,
    output [DATA_WIDTH-1:0]      dcache_rd_addr,
    input                        dcache_rd_rdy,
    input                        dcache_wr_valid,
    input                        dcache_ret_valid,
    input  [CACHELINE_WIDTH-1:0] dcache_ret_data,
    output                       dcache_wr_req,
    input                        dcache_wr_rdy,
    output [DATA_WIDTH-1:0]      dcache_wr_addr,
    output [CACHELINE_WIDTH-1:0] dcache_wr_data,

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
           REFILLDONE     = 3'd5,
           HITVICTIM      = 3'd6,
           EXCHANGEDONE   = 3'd7;

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

reg [2:0] dcache_state;
reg [2:0] dcache_nextstate;
reg [2:0] uncache_state;
reg [2:0] uncache_nextstate;
reg       write_state;
reg       write_nextstate;
reg [1:0] fifo_state;
reg [1:0] fifo_nextstate;

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
reg                      delayed_dirty_rbit[ASSOC_NUM-1:0]; //dirty_rbit一拍延时

wire [$clog2(ASSOC_NUM)-1:0] sel_way;   
wire [$clog2(ASSOC_NUM)-1:0] plru [BLOCK_NUMS-1:0];
reg                          plru_en;

wire                     uncache_busy;
wire                     dcache_busy; 

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

/****************define Victim Cache***************/
reg  [$clog2(VICTIM_BLOCKS)-1:0] victim_ptr;
reg  [VICTIM_BLOCKS-1:0]         lut_we;
reg  [WORDS_PER_LINE-1:0]        ram_we[VICTIM_BLOCKS-1:0];
wire [INDEX_WIDTH-1:0]           victim_windex;
wire [TAG_WIDTH-1:0]             victim_wtag;
wire                             victim_wdirty;
wire [DATA_WIDTH-1:0]            victim_wdata[WORDS_PER_LINE-1:0];

wire                             victim_read_en;
reg  [DATA_WIDTH-1:0]            victim_rdata[VICTIM_BLOCKS-1:0][WORDS_PER_LINE-1:0];
reg  [INDEX_WIDTH-1:0]           victim_rindex[VICTIM_BLOCKS-1:0];
reg  [TAG_WIDTH-1:0]             victim_rtag[VICTIM_BLOCKS-1:0];
reg                              victim_rdirty[VICTIM_BLOCKS-1:0];
reg                              victim_rvalid[VICTIM_BLOCKS-1:0];

wire [VICTIM_BLOCKS-1:0]         victim_hit_num; //命中了victim Cache的第几路(one-hot)
reg  [$clog2(VICTIM_BLOCKS)-1:0] victim_hit_num_enc; //对victim_hit_num 作8-3 encode
wire                             victim_hit; //victim_hit和cache_hit逻辑类似
reg  [VICTIM_BLOCKS-1:0]         delayed_victim_hit_num;
reg                              delayed_victim_hit;
wire                             victim_hit_wr;
wire                             index_miss; //表示Victim Cache中不存在对应的index
reg                              delayed_index_miss;
/****************define Victim Cache***************/

genvar i;
genvar j;
//与CPU流水线的交互接口
generate
    genvar n;
    for (n = 0; n < ASSOC_NUM; n = n + 1) begin
        assign dcache_rdata_sel[n] = dcache_rdata[n][reqbuffer_data_offset[OFFSET_WIDTH-1:2]];
    end
endgenerate
always @(posedge clk) begin //单个sw miss加速
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
assign dcache_busy  = reqbuffer_data_valid & ~reqbuffer_data_isUncache & 
                      (~delayed_cache_hit | (delayed_cache_hit & reqbuffer_data_op));
                    //sw并且hit,要阻塞在MEM
assign busy         = uncache_busy | dcache_busy;

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
assign dcache_wr_req   = (dcache_state == MISSDIRTY);
//TODO:考虑多路组相连情况
assign dcache_wr_addr  = {delayed_tag_rdata[plru[reqbuffer_data_index]],reqbuffer_data_index,
                         {OFFSET_WIDTH{1'b0}}}; 
generate //TODO:考虑多路组相连情况
    genvar u;
    for (u = 0; u < WORDS_PER_LINE; u = u + 1) begin
        assign dcache_wr_data[32*(u+1)-1:32*(u)] = dcache_rdata[plru[reqbuffer_data_index]][u];
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
            if(reset) begin
                delayed_tag_rdata[t]  <= 0;
                delayed_dirty_rbit[t] <= 1'b0;
            end
            else if(delayed_hit_wr) begin
                delayed_tag_rdata[t]  <= tag_rdata[t];
                delayed_dirty_rbit[t] <= dirty_rbit[t];
            end
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
assign delayed_hit_wr = (dcache_state == REFILLDONE | dcache_state == EXCHANGEDONE) ? 1'b1 : data_valid;
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
    end
    else if(reqbuffer_en) begin
        reqbuffer_data_valid     <= data_valid ;
        reqbuffer_data_op        <= data_op    ;
        reqbuffer_data_index     <= data_index ;
        reqbuffer_data_tag       <= data_tag   ;
        reqbuffer_data_offset    <= data_offset;
        reqbuffer_data_wdata     <= data_wdata ;
        reqbuffer_data_wstrb     <= data_wstrb ; //字节写使能wstrb
        reqbuffer_load_size      <= load_size  ; //load_size
        reqbuffer_data_isUncache <= isUncache  ;
    end
end

//dirty lutram
always @(*) begin
    dirty_we = 0;
    if(dcache_state == HITVICTIM)
        dirty_we[plru[reqbuffer_data_index]] = 1'b1;
    else if(dcache_state == REFILL & dcache_ret_valid) begin
        dirty_we[plru[reqbuffer_data_index]] = 1'b1;
    end
    else if(write_state == WRITE_START)
        dirty_we    = delayed_hit;
    else
        dirty_we    = 0;
end
assign dirty_index = (write_state == WRITE_START) ? writebuffer_data_index : reqbuffer_data_index;
assign dirty_wbit  = (dcache_state == HITVICTIM) ? victim_rdirty[delayed_victim_hit_num] :
                     (dcache_state == REFILL) ? 1'b0 : 1'b1;

//tagv lutram
always @(*) begin
    tagv_we = 0;
    if(dcache_state == HITVICTIM)
        tagv_we[plru[reqbuffer_data_index]] = 1'b1;
    else if(dcache_state == REFILL & dcache_ret_valid)
        tagv_we[plru[reqbuffer_data_index]] = 1'b1; 
    else
        tagv_we = 0;
end

assign tagv_index = (dcache_state == REFILL | dcache_state == REFILLDONE | dcache_state == HITVICTIM|
                     dcache_state == EXCHANGEDONE) ? reqbuffer_data_index : data_index;
assign tagv_wdata = (dcache_state == HITVICTIM) ? victim_rtag[delayed_victim_hit_num] : 
                                                 {reqbuffer_data_tag,1'b1};

//data ram
always @(*) begin
    data_we[0] = 0; //触发该always块逻辑后,先清空为0
    data_we[1] = 0; //触发该always块逻辑后,先清空为0
    if(dcache_state == HITVICTIM)
        data_we[plru[reqbuffer_data_index]] = {WORDS_PER_LINE{1'b1}}; 
    else if(dcache_state == REFILL & dcache_ret_valid)
        data_we[plru[reqbuffer_data_index]] = {WORDS_PER_LINE{1'b1}};
    else if(write_state == WRITE_START) begin
        data_we[sel_way][writebuffer_data_offset[OFFSET_WIDTH-1:2]] = 1'b1;
    end
    else begin
        data_we[0] = 0;
        data_we[1] = 0;
    end
end
assign write_index = (dcache_state == REFILL | dcache_state == HITVICTIM) ? 
                      reqbuffer_data_index : writebuffer_data_index;
generate
    genvar m;
    for (m = 0; m < WORDS_PER_LINE; m = m + 1) begin
        assign dcache_wdata[m] = (dcache_state == HITVICTIM) ? victim_rdata[delayed_victim_hit_num][m]:
                                 (dcache_state == REFILL) ? dcache_ret_data[32*(m+1)-1:32*(m)]:
                                                            writebuffer_data_wdata;
    end
endgenerate

assign data_read_en = (dcache_state == REFILLDONE | dcache_state == EXCHANGEDONE) ? 1'b1 : data_valid;
assign read_index   = (dcache_state == REFILL | dcache_state == REFILLDONE | 
                       dcache_state == HITVICTIM | dcache_state == EXCHANGEDONE) ? 
                       reqbuffer_data_index : data_index; //TODO:也许逻辑可简化? REFILL,HITVICTIM可去?

generate
    for(k = 0; k < VICTIM_BLOCKS; k = k + 1) begin
        assign victim_hit_num[k] = 
            data_valid ? (victim_rvalid[k] & (victim_rindex[k] == data_index) & 
                         (victim_rtag[k] == data_tag) & ~isUncache) :
                         (victim_rvalid[k] & (victim_rindex[k] == reqbuffer_data_index) &
                         (victim_rtag[k] == reqbuffer_data_tag) & ~reqbuffer_data_isUncache);
    end
endgenerate
assign index_miss    = ((data_index != victim_rindex[0]) | ~victim_rvalid[0]) &
                       ((data_index != victim_rindex[1]) | ~victim_rvalid[1]) &
                       ((data_index != victim_rindex[2]) | ~victim_rvalid[2]) &
                       ((data_index != victim_rindex[3]) | ~victim_rvalid[3]) &
                       ((data_index != victim_rindex[4]) | ~victim_rvalid[4]) &
                       ((data_index != victim_rindex[5]) | ~victim_rvalid[5]) &
                       ((data_index != victim_rindex[6]) | ~victim_rvalid[6]) &
                       ((data_index != victim_rindex[7]) | ~victim_rvalid[7]) & 
                         valid_rdata[0] & valid_rdata[1]; //Cache valid bit全为1 且Victim Cache无对应index

assign victim_hit    = |victim_hit_num;
assign victim_hit_wr = data_valid;
always @(*) begin
    case (victim_hit_num)
        8'b0000_0001: victim_hit_num_enc = 3'd0;
        8'b0000_0010: victim_hit_num_enc = 3'd1;
        8'b0000_0100: victim_hit_num_enc = 3'd2;
        8'b0000_1000: victim_hit_num_enc = 3'd3;
        8'b0001_0000: victim_hit_num_enc = 3'd4;
        8'b0010_0000: victim_hit_num_enc = 3'd5;
        8'b0100_0000: victim_hit_num_enc = 3'd6;
        8'b1000_0000: victim_hit_num_enc = 3'd7;
        default: victim_hit_num_enc = 3'd0;
    endcase
end

always @(posedge clk) begin
    if(reset) begin
        delayed_victim_hit     <= 1'b0;
        delayed_victim_hit_num <= 0;
        delayed_index_miss     <= 1'b0;
    end
    else if(victim_hit_wr) begin
        delayed_victim_hit     <= victim_hit;
        delayed_victim_hit_num <= victim_hit_num_enc;
        delayed_index_miss     <= index_miss;
    end
end

always @(posedge clk) begin
    if(reset)
        victim_ptr <= 0;
    else if(delayed_index_miss & dcache_state == REFILL & dcache_ret_valid) //利用特性:7 + 1 = 0
        victim_ptr <= victim_ptr + 1;
end

always @(*) begin
    lut_we = 0;
    if(dcache_state == HITVICTIM) //HITVICTIM需要和Cache进行data/tag交换,写使能就是VICTIM命中的那一路
        lut_we[delayed_victim_hit_num] = 1'b1;
    else if(delayed_index_miss & dcache_state == REFILL & dcache_ret_valid)
        lut_we[victim_ptr] = 1'b1;
    else
        lut_we = 0;
end
assign victim_windex  = reqbuffer_data_index;
assign victim_wtag    = (dcache_state == HITVICTIM) ? delayed_tag_rdata[plru[reqbuffer_data_index]] :
                                                      reqbuffer_data_tag;
assign victim_wdirty  = delayed_dirty_rbit[plru[reqbuffer_data_index]];

integer b;
always @(*) begin
    for(b = 0; b < VICTIM_BLOCKS; b = b + 1) begin
        ram_we[b] = 0;
    end
    if(dcache_state == HITVICTIM)
        ram_we[delayed_victim_hit_num] = {WORDS_PER_LINE{1'b1}};
    else if(delayed_index_miss & dcache_state == REFILL & dcache_ret_valid)
        ram_we[victim_ptr] = {WORDS_PER_LINE{1'b1}};
    else begin
        for(b = 0; b < VICTIM_BLOCKS; b = b + 1) begin
            ram_we[b] = 0;
        end
    end
end

generate
    for(i = 0; i < WORDS_PER_LINE; i = i + 1) begin
        assign victim_wdata[i] = dcache_rdata[plru[reqbuffer_data_index]][i];
    end
endgenerate

generate
    //Cache
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

       simple_port_lutram #(
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

generate //LUTRAM FOR Victim Cache
    for(i = 0; i < VICTIM_BLOCKS; i = i + 1) begin
        always @(posedge clk) begin
            if(reset) begin
                victim_rindex[i] <= 0;
                victim_rtag[i]   <= 0;
                victim_rdirty[i] <= 0;
                victim_rvalid[i] <= 0;
            end
            else if(lut_we[i]) begin
                victim_rindex[i] <= victim_windex;
                victim_rtag[i]   <= victim_wtag;
                victim_rdirty[i] <= victim_wdirty;
                victim_rvalid[i] <= 1'b1; 
            end
        end
    end
endgenerate

generate //Block RAM for Victim Cache
    for(i = 0; i < VICTIM_BLOCKS; i = i + 1) begin
        for (j = 0; j < WORDS_PER_LINE; j = j + 1) begin
            always @(posedge clk) begin
                if(reset)
                    victim_rdata[i][j] <= 0;
                else if(ram_we[i][j])
                    victim_rdata[i][j] <= victim_wdata[j];
            end
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
            if(data_valid & isUncache) begin
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

always @(*) begin //Cache 不处理Uncache和store类指令
    case (dcache_state)
        LOOKUP: 
            if(reqbuffer_data_isUncache) begin
                dcache_nextstate = LOOKUP;
            end
            else begin
                if(reqbuffer_data_valid & ~delayed_cache_hit) begin
                    if(delayed_victim_hit) //如果遇到Victim Cache命中的情况,共需三拍进行Cache line交换
                        dcache_nextstate = HITVICTIM;
                    else begin
                        if(dirty_rbit[plru[reqbuffer_data_index]])
                            dcache_nextstate = MISSDIRTY;
                        else
                            dcache_nextstate = MISSCLEAN;
                    end
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
        
        HITVICTIM:
            dcache_nextstate = EXCHANGEDONE;
        
        EXCHANGEDONE:
            dcache_nextstate = LOOKUP;

        default: dcache_nextstate = LOOKUP;
    endcase
end
endmodule //DCache