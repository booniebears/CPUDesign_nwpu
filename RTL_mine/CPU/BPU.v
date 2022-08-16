`include "global_defines.vh"

module BPU#(
    parameter  DATA_WIDTH       =   56, // 前两位是饱和计数器，中间22位是tag，后32位是目标地址
    parameter  PHT_NUMS         =   256,
    parameter  W_Taken          =   2'b00,
    parameter  S_Taken          =   2'b01,
    parameter  WN_Taken         =   2'b10,
    parameter  SN_Taken         =   2'b11
)
(
    input clk,
    input reset,
    input [31:0] pre_pc,//连temp_fs_pc
    input [31:0] fs_pc,
    input pc_valid,
    input ds_allowin,
    input [`BRESULT_WD - 1 :0] BResult,
    input [31:0] ja_target ,
    input inst_is_ja,
    output [31:0] target,
    output BPU_valid,
    output [`BPU_TO_DS_BUS_WD-1:0] BPU_to_ds_bus
);

/*************************写入PHT*************************************/
reg [31:0] BPU_es_pc;
reg [1:0] BPU_old_Count;
reg BPU_is_branch;
reg BPU_br_taken;
reg [31:0] BPU_br_target;

always @(posedge clk) begin
    {   BPU_es_pc,      //跳转指令的PC
        BPU_old_Count,  //跳转指令PC跳转次数的历史记录，2位饱和计数器，需更新后再写入PHT
        BPU_is_branch,  //PC是否是跳转指令
        BPU_br_taken,   //是否成功跳转
        BPU_br_target   //跳转的目标地址
                        } <=  BResult;
end

wire PHT_we;
wire [7:0] PHT_wr_index;
wire [21:0] PHT_wr_tag;
reg [1:0] BPU_new_Count;
wire [55:0] PHT_wr_data;//根据BResult得出

always @(*) begin
    case (BPU_old_Count)
        SN_Taken: BPU_new_Count = BPU_br_taken ? WN_Taken : SN_Taken;
        WN_Taken: BPU_new_Count = BPU_br_taken ? W_Taken  : SN_Taken;
        W_Taken : BPU_new_Count = BPU_br_taken ? S_Taken  : WN_Taken;
        S_Taken : BPU_new_Count = BPU_br_taken ? W_Taken  : S_Taken;    
        default: BPU_new_Count = W_Taken;
    endcase
end

assign PHT_we = BPU_is_branch;
assign PHT_wr_index = BPU_es_pc[9:2];
assign PHT_wr_tag = BPU_es_pc[31:10];
assign PHT_wr_data = {BPU_new_Count, PHT_wr_tag, BPU_br_target};

/*************************************************************************/

/*****************************读PHT***********************************/

wire [7:0] PHT_rd_index;      //读地址
wire [21:0] PHT_rout_tag;      //读出的tag
wire [31:0] PHT_rout_target;   //读出的目标地址
wire [1:0] PHT_rout_Count;    //读出的饱和计数器
wire PHT_hit;
wire [DATA_WIDTH-1 : 0] PHT_rd_data;//读出的PHT

assign PHT_rd_index = pre_pc[9:2];
assign {PHT_rout_Count,PHT_rout_tag,PHT_rout_target} = PHT_rd_data;
assign PHT_hit  = (PHT_rout_tag == fs_pc[31:10]);

wire [21:0] debug_fs_pc_tag;
assign debug_fs_pc_tag = fs_pc[31:10];

wire [31:0] BPU_ret_addr;

reg BPU_valid_reg;
reg [31:0] BPU_ret_addr_reg;
reg [1:0] BPU_Count_reg;
reg BPU_is_taken_reg;               //预测是否跳转
wire BPU_is_taken;

assign BPU_to_ds_bus = {
                            BPU_is_taken_reg,
                            BPU_Count_reg,
                            BPU_valid_reg,
                            BPU_ret_addr_reg
                            };
assign BPU_ret_addr =   inst_is_ja        ? ja_target :
                        PHT_rout_Count[1] ? fs_pc + 8 : PHT_rout_target;

// assign BPU_is_taken =   (inst_is_ja | inst_is_jr)  ?   1   :   ~PHT_rout_Count[1];
assign BPU_is_taken =   inst_is_ja   ?   1   :   ~PHT_rout_Count[1];

always @(posedge clk) begin
    if(reset)begin
        BPU_valid_reg <= 0;
        BPU_Count_reg <= 0;
        BPU_ret_addr_reg <= 0;
        BPU_is_taken_reg <= 0;
    end

    if(ds_allowin)begin
        if(BPU_valid)begin
            BPU_valid_reg <= 1;
            BPU_Count_reg <= PHT_rout_Count;
            BPU_ret_addr_reg <= BPU_ret_addr;
            BPU_is_taken_reg <= BPU_is_taken;
        end
        else begin
            BPU_valid_reg <= 0;
            BPU_Count_reg <= 0;
            BPU_ret_addr_reg <= 0;
            BPU_is_taken_reg <= 0;
        end
    end
end

/*************************************************************************/

assign target = BPU_ret_addr;
// assign BPU_valid = PHT_hit | inst_is_ja | inst_is_jr;
// assign BPU_valid = PHT_hit | inst_is_ja ;
assign BPU_valid = 0 ;
// assign Count = BPU_Count_reg;

wire [7:0] index_addr;
wire data_read_en;
assign index_addr = PHT_we ? PHT_wr_index : PHT_rd_index;
assign data_read_en = pc_valid;

simple_port_ram #(
    .SIZE(PHT_NUMS),
    .DATA_WIDTH(DATA_WIDTH)
) PHT_ram_data(
    .clk(clk),
    .rst(reset),

    //写端口
    .ena(1'b1),
    .wea(PHT_we),
    .addra(PHT_wr_index),
    .dina(PHT_wr_data),

    //读端口
    .enb(data_read_en),
    .addrb(PHT_rd_index),
    .doutb(PHT_rd_data)


);





endmodule