`include "global_defines.vh"

module Icache #(
    parameter  DATA_WIDTH     = 32, 
    parameter  ASSOC_NUM      = 1, //��������
    parameter  WORDS_PER_LINE = 4, //һ��4��
    parameter  WAY_SIZE       = 4*1024*8, //һ·Cache ������С
    parameter  BLOCK_NUMS     = WAY_SIZE/(WORDS_PER_LINE*DATA_WIDTH), //һ·Cache����=256
    localparam BYTES_PER_WORD = 4,
    localparam INDEX_WIDTH    = $clog2(BLOCK_NUMS), //8
    localparam OFFSET_WIDTH   = $clog2(WORDS_PER_LINE*BYTES_PER_WORD),//4
    localparam TAG_WIDTH      = 32-INDEX_WIDTH-OFFSET_WIDTH //20
)
(
    //��CPU��ˮ�ߵĽ����ӿ�
    input                     clk,
    input                     reset,
    input                     inst_valid,
    input [INDEX_WIDTH-1:0]   inst_index,
    input [TAG_WIDTH-1:0]     inst_tag,
    input [OFFSET_WIDTH-1:0]  inst_offset,
    // input                     flush, //TODO:����ˮ��flush(�����쳣),rdataֱ������
    output                    icache_busy,
    output [DATA_WIDTH-1:0]   inst_rdata,

    //��AXI���߽ӿڵĽ����ӿ�
    output        icache_rd_req,
    output [31:0] icache_rd_addr,
    input         icache_rd_rdy,
    input         icache_ret_valid,
    input [127:0] icache_ret_data
);

//define FSM 
parameter  LOOKUP     = 2'd0,
           MISS  = 2'd1,
           REFILL     = 2'd2,
           REFILLDONE = 2'd3;

reg [1:0] icache_state;
reg [1:0] icache_nextstate;

/****************define req_buffer***************/
wire                   reqbuffer_en;
reg                    reqbuffer_inst_valid;
reg [INDEX_WIDTH-1:0]  reqbuffer_inst_index;
reg [TAG_WIDTH-1:0]    reqbuffer_inst_tag;
reg [OFFSET_WIDTH-1:0] reqbuffer_inst_offset;
/****************define req_buffer***************/

wire [ASSOC_NUM-1:0]   hit;
wire                   cache_hit;
// reg                    delayed_hit; //hit��ʱ
reg                    delayed_cache_hit; //cache_hit��ʱ
wire                   delayed_hit_wr;
wire                   data_read_en;

reg  [ASSOC_NUM-1:0]   tagv_we;   
reg  [ASSOC_NUM-1:0]   data_we;   
wire [INDEX_WIDTH-1:0] index_addr; 
wire [TAG_WIDTH:0]     tagv_wdata; //{tag,1'b1} valid bit�����λ
wire [TAG_WIDTH-1:0]   tag_rdata[ASSOC_NUM-1:0]; //λ��TAG_WIDTH,��ASSOC_NUM·
wire                   valid_rdata[ASSOC_NUM-1:0]; //λ��1,��ASSOC_NUM·
wire [DATA_WIDTH-1:0]  icache_wdata[WORDS_PER_LINE-1:0]; //дICache��ָ������
wire [DATA_WIDTH-1:0]  icache_rdata[ASSOC_NUM-1:0][WORDS_PER_LINE-1:0]; //дICache��ָ������
wire [DATA_WIDTH-1:0]  icache_rdata_sel[ASSOC_NUM-1:0];

//��CPU��ˮ�ߵĽ����ӿ�
generate
    genvar n;
    for (n = 0; n < ASSOC_NUM; n = n + 1) begin
        assign icache_rdata_sel[n] = icache_rdata[n][reqbuffer_inst_offset[OFFSET_WIDTH-1:2]];
    end
endgenerate
assign icache_busy    = reqbuffer_inst_valid & ~delayed_cache_hit;
assign inst_rdata     = reqbuffer_inst_valid ? icache_rdata_sel[0] : 32'b0; //TODO:һ·�������ݲ�����delayed_hit��·��Ƭѡ

//��AXI���߽ӿڵĽ����ӿ�
assign icache_rd_req  = (icache_state == MISS);
assign icache_rd_addr = {reqbuffer_inst_tag,reqbuffer_inst_index,{OFFSET_WIDTH{1'b0}}};

//hit�ж��߼�
generate
    genvar k;
    for (k = 0; k < ASSOC_NUM; k = k + 1) begin
        assign hit[k] = inst_valid ? (valid_rdata[k] & (tag_rdata[k] == inst_tag)) :
                                     (valid_rdata[k] & (tag_rdata[k] == reqbuffer_inst_tag));
    end
endgenerate
assign cache_hit  = |hit;
assign delayed_hit_wr = (icache_state == REFILLDONE) ? 1'b1 : inst_valid;
always @(posedge clk) begin //TODO:delayed_hit֮������ƬѡCache��һ·
    if(reset) begin
        delayed_cache_hit <= 1'b0;
        // delayed_hit       <= 1'b0;
    end
    else if(delayed_hit_wr) begin
        delayed_cache_hit <= cache_hit;
        // delayed_hit       <= hit;
    end
end

//reqbuffer �洢�߼�
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

//Ӳ����Դ�����źŸ�ֵ
always @(*) begin
    if(icache_state == REFILL & icache_ret_valid)
        tagv_we[0] = 1'b1; //TODO:֮��ʹ�ö�·��������Ҫ����,ʹ��LRU�㷨
    else
        tagv_we    = 0;
end
assign index_addr = (icache_state == MISS | icache_state == REFILL 
                    | icache_state == REFILLDONE) ? reqbuffer_inst_index : inst_index;
assign tagv_wdata = {reqbuffer_inst_tag,1'b1};

always @(*) begin
    if(icache_state == REFILL & icache_ret_valid)
        data_we[0] = 1'b1; //TODO:֮��ʹ�ö�·��������Ҫ����,ʹ��LRU�㷨
    else
        data_we    = 0;
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

            //�˿��ź�
            .ena(1'b1),
            .wea(tagv_we[i]),
            .addra(index_addr),
            .dina(tagv_wdata),
            .douta({tag_rdata[i],valid_rdata[i]})
        );
        for (j = 0; j < WORDS_PER_LINE; j = j + 1) begin
            simple_port_ram_without_bypass #(
            .SIZE(BLOCK_NUMS),
            .DATA_WIDTH(DATA_WIDTH)
            ) ram_bank(
                .clk(clk),
                .rst(reset),

                //д�˿�
                .ena(1'b1),
                .wea(data_we[i]),//��i· ��дʹ��
                .addra(index_addr),
                .dina(icache_wdata[j]),//��ΪҪ���� ���Ի���Ҫ�е�

                //���˿�
                .enb(data_read_en),
                .addrb(index_addr),
                .doutb(icache_rdata[i][j])//��i· ��j��bank
            );
        end
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