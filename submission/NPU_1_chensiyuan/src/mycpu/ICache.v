`include "global_defines.vh"

module Icache #(
    parameter  DATA_WIDTH     = 32, 
    parameter  ASSOC_NUM      = 2, //组相连数
    parameter  WORDS_PER_LINE = 4, //一行4字
    parameter  WAY_SIZE       = 4*1024*8, //一路Cache 容量大小
    parameter  BLOCK_NUMS     = WAY_SIZE/(WORDS_PER_LINE*DATA_WIDTH), //一路Cache块数=256
    localparam BYTES_PER_WORD = 4,
    localparam INDEX_WIDTH    = $clog2(BLOCK_NUMS), //8
    localparam OFFSET_WIDTH   = $clog2(WORDS_PER_LINE*BYTES_PER_WORD),//4
    localparam TAG_WIDTH      = 32-INDEX_WIDTH-OFFSET_WIDTH //20
)
(
    //与CPU流水线的交互接口
    input                     clk,
    input                     reset,
    input                     inst_valid,
    input [INDEX_WIDTH-1:0]   inst_index,
    input [TAG_WIDTH-1:0]     inst_tag,
    input [OFFSET_WIDTH-1:0]  inst_offset,
    output                    icache_busy,
    output [DATA_WIDTH-1:0]   inst_rdata,

    //与AXI总线接口的交互接口
    output        icache_rd_req,
    output [31:0] icache_rd_addr,
    input         icache_rd_rdy,
    input         icache_ret_valid,
    input [127:0] icache_ret_data
);

//define FSM 
parameter  LOOKUP     = 2'd0,
           MISS       = 2'd1,
           REFILL     = 2'd2,
           REFILLDONE = 2'd3;

reg [1:0] icache_state;
reg [1:0] icache_nextstate;

/****************define req_buffer***************/
wire                   reqbuffer_en;
reg                    reqbuffer_inst_valid;
(*max_fanout = "18"*)reg [INDEX_WIDTH-1:0]  reqbuffer_inst_index;//(*max_fanout = "8"*)
reg [TAG_WIDTH-1:0]    reqbuffer_inst_tag; //(*max_fanout = "8"*)
reg [OFFSET_WIDTH-1:0] reqbuffer_inst_offset;
/****************define req_buffer***************/

wire [ASSOC_NUM-1:0]   hit;
wire                   cache_hit;
reg  [ASSOC_NUM-1:0]   delayed_hit; //hit延时
reg                    delayed_cache_hit; //cache_hit延时
wire                   delayed_hit_wr;
wire                   data_read_en;

reg  [ASSOC_NUM-1:0]   tagv_we;   
reg  [ASSOC_NUM-1:0]   data_we;   
wire [INDEX_WIDTH-1:0] index_addr; 
wire [TAG_WIDTH:0]     tagv_wdata; //{tag,1'b1} valid bit在最低位
wire [TAG_WIDTH-1:0]   tag_rdata[ASSOC_NUM-1:0]; //位宽TAG_WIDTH,共ASSOC_NUM路
wire                   valid_rdata[ASSOC_NUM-1:0]; //位宽1,共ASSOC_NUM路
wire [DATA_WIDTH-1:0]  icache_wdata[WORDS_PER_LINE-1:0]; //写ICache的指令数据
wire [DATA_WIDTH-1:0]  icache_rdata[ASSOC_NUM-1:0][WORDS_PER_LINE-1:0]; //写ICache的指令数据
wire [DATA_WIDTH-1:0]  icache_rdata_sel[ASSOC_NUM-1:0];

wire [$clog2(ASSOC_NUM)-1:0] sel_way;  //TODO:之后改成四路组相连             
wire [$clog2(ASSOC_NUM)-1:0] plru [BLOCK_NUMS-1:0];

//与CPU流水线的交互接口
generate
    genvar n;
    for (n = 0; n < ASSOC_NUM; n = n + 1) begin
        assign icache_rdata_sel[n] = icache_rdata[n][reqbuffer_inst_offset[OFFSET_WIDTH-1:2]];
    end
endgenerate
assign icache_busy = reqbuffer_inst_valid & ~delayed_cache_hit;
assign sel_way     = delayed_hit[0] ? 1'b0 : 1'b1; //TODO:之后改成四路组相连
assign inst_rdata  = reqbuffer_inst_valid ? icache_rdata_sel[sel_way] : 32'b0; 

//与AXI总线接口的交互接口
assign icache_rd_req  = (icache_state == MISS);
assign icache_rd_addr = {reqbuffer_inst_tag,reqbuffer_inst_index,{OFFSET_WIDTH{1'b0}}};

//hit判定逻辑
generate
    genvar k;
    for (k = 0; k < ASSOC_NUM; k = k + 1) begin
        assign hit[k] = inst_valid ? (valid_rdata[k] & (tag_rdata[k] == inst_tag)) :
                                     (valid_rdata[k] & (tag_rdata[k] == reqbuffer_inst_tag));
    end
endgenerate
assign cache_hit  = |hit;
assign delayed_hit_wr = (icache_state == REFILLDONE) ? 1'b1 : inst_valid;
always @(posedge clk) begin //delayed_hit用于PLRU片选Cache的一路
    if(reset) begin
        delayed_cache_hit <= 1'b0;
        delayed_hit       <= 0;
    end
    else if(delayed_hit_wr) begin
        delayed_cache_hit <= cache_hit;
        delayed_hit       <= hit;
    end
end

//reqbuffer 存储逻辑
assign reqbuffer_en = inst_valid;
always @(posedge clk) begin
    if(reset) begin
        reqbuffer_inst_valid  <= 0;
        reqbuffer_inst_index  <= 0;
        reqbuffer_inst_tag    <= 0;
        reqbuffer_inst_offset <= 0;
    end
    else if(reqbuffer_en) begin
        reqbuffer_inst_valid  <= inst_valid ;
        reqbuffer_inst_index  <= inst_index ;
        reqbuffer_inst_tag    <= inst_tag   ;
        reqbuffer_inst_offset <= inst_offset;
    end
end

//硬件资源输入信号赋值
always @(*) begin
    if(icache_state == REFILL) begin
        tagv_we = 0;
        tagv_we[plru[reqbuffer_inst_index]] = 1'b1;
    end
    else
        tagv_we = 0;
end
assign index_addr = (icache_state == MISS | icache_state == REFILL 
                    | icache_state == REFILLDONE) ? reqbuffer_inst_index : inst_index;
assign tagv_wdata = {reqbuffer_inst_tag,1'b1};

always @(*) begin
    if(icache_state == REFILL) begin
        data_we = 0;
        data_we[plru[reqbuffer_inst_index]] = 1'b1; 
    end
    else
        data_we = 0;
end
generate//
    genvar m;
    for (m = 0; m < WORDS_PER_LINE; m = m + 1) begin
        assign icache_wdata[m] = icache_ret_data[32*(m+1)-1:32*(m)];
    end
endgenerate
assign data_read_en = (icache_state == REFILLDONE) ? 1'b1 : inst_valid;

//hardware
generate
    genvar i;
    genvar j;
    for (i = 0;i < ASSOC_NUM ;i = i + 1) begin
        simple_port_lutram  #(
            .SIZE(BLOCK_NUMS),
            .DATA_WIDTH(TAG_WIDTH + 1)
        ) ram_tag(
            .clka(clk),
            .rsta(reset),

            //端口信号
            .ena(1'b1),
            .wea(tagv_we[i]),
            .addra(index_addr),
            .dina(tagv_wdata),
            .douta({tag_rdata[i],valid_rdata[i]})
        );
        for (j = 0; j < WORDS_PER_LINE; j = j + 1) begin
            simple_port_ram #(
                .SIZE(BLOCK_NUMS),
                .DATA_WIDTH(DATA_WIDTH)
            ) ram_bank(
                .clk(clk),
                .rst(reset),

                //写端口
                .ena(1'b1),
                .wea(data_we[i]),//第i路 的写使能
                .addra(index_addr),
                .dina(icache_wdata[j]),//因为要重填 所以还是要有的

                //读端口
                .enb(data_read_en),
                .addrb(index_addr),
                .doutb(icache_rdata[i][j])//第i路 第j个bank
            );
        end
    end
endgenerate

generate
    genvar t;
    for (t = 0; t < BLOCK_NUMS; t = t + 1) begin
        PLRU #(
            .ASSOC_NUM(ASSOC_NUM)
        ) U_PLRU(
            .clk         (clk        ),
            .reset       (reset      ),
            .delayed_hit (delayed_hit),
            .update      (reqbuffer_inst_valid & (t == reqbuffer_inst_index)),
            .plru        (plru[t]    ) 
        );
    end
endgenerate

always @(posedge clk) begin
    if(reset)
        icache_state <= LOOKUP;
    else
        icache_state <= icache_nextstate;
end

always @(*) begin
    case (icache_state)
        LOOKUP: 
            if(reqbuffer_inst_valid && ~delayed_cache_hit)
                icache_nextstate = MISS;
            else
                icache_nextstate = LOOKUP;

        MISS:
            if(icache_rd_rdy)
                icache_nextstate = REFILL;
            else
                icache_nextstate = MISS;
        
        REFILL:
            if(icache_ret_valid)
                icache_nextstate = REFILLDONE;
            else
                icache_nextstate = REFILL;
        
        REFILLDONE:
            icache_nextstate = LOOKUP;

        default: icache_nextstate = LOOKUP;
    endcase
end

endmodule