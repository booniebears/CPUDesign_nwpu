`include "global_defines.vh"

module if_stage(
    input         clk,
    input         reset,
    //allowin
    input         ds_allowin, 
    //brbus
    input  [`BR_BUS_WD-1:0] br_bus, 
    //to ds
    output reg                     fs_to_ds_valid, 
    output [`FS_TO_DS_BUS_WD-1:0] fs_to_ds_bus,
    input         flush, //flush=1ʱ������Ҫ�����쳣
    input         flush_refill,
    input  [31:0] CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    input         ws_inst_eret,
    input  [4:0]  tlb_refill_if_ex,
    input  [4:0]  tlb_invalid_if_ex,
    //Attention:CPU��ICache�Ľ����ź�����;����Ŀǰû��ʵ�֡�CPU���ʵս���е�wstrb��wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
    input         inst_addr_ok,
    input         inst_data_ok,
    input  [31:0] inst_rdata,
    input         mfc0_stall //TODO: ��ʱ��mfc0_stall�ź��͵�IF�׶�,ȷ��nextpc��ת����ȷ��
);

/*
    TODO: ���ʹ��fs_pc����icache��ͬʱ�����ص�ָ���͵�id�׶Σ���Ҳ����ܲ���Ҫ����nextpc�����������ڿ��Գ���һ��
*/

wire        fs_allowin; //����IF�׶������� fs_allowin=1,IF�׶�����ָ������ ��fs_valid fs_pc inst_sram_en�Ŀ����ź�
wire        br_stall;      //ID�׶μ�⵽branchָ��,����loadָ����EXE�׶�,�޷�ʹ��forward,������ͣ
wire        fs_bd;  //IF�׶� ��ǰָ�������ӳٲ���,����Ϊ1
wire        ADEL_ex;//����ȡָ���ַ������ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;

wire [31:0] seq_pc;
wire [31:0] nextpc;

wire         br_taken;
wire [ 31:0] br_target;
assign {fs_bd,br_stall,br_taken,br_target} = br_bus; //�����fs_bd��ΪID�׶ε�is_branch�ź� 

wire  [31:0] fs_inst;
reg  [31:0] fs_pc;
assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_ExcCode, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                       };


reg npc_block;
always @(posedge clk)begin
    npc_block <= fs_allowin & inst_addr_ok;
end
// pre-IF stage
//lab8�޸� ���ڵ�WB�׶η�������ʱ,ID�׶η���br_stall������;��������������Ȼ����������ȼ�
assign seq_pc          = fs_pc + 3'h4;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret��Ȩָ�� �������������ȼ�,�����ж�
                          // flush_refill ? 32'hbfc00200:
                         flush ? 32'hbfc00380 : //flush=1ʱ������Ҫ�����쳣.�����eretָ��,��������ж�,
                         //Ȼ����ת��CP0_EPC; ����˵�������쳣,��ʱPCֵ����Ϊ0xbfc00380
                         npc_block ? ( 
                         br_taken && ~br_stall && ~mfc0_stall? br_target : seq_pc ) : nextpc; //nextpc��branchָ��ָ����pc��seq_pc�в���


assign fs_allowin     =  flush ? 1'b1 : ds_allowin; 

always @(posedge clk) begin
    if (reset) 
        fs_to_ds_valid <= 1'b0;
    else if(~ds_allowin) 
        fs_to_ds_valid <= fs_to_ds_valid; 
    else if(inst_data_ok | (nextpc[1:0] != 2'b00))
        fs_to_ds_valid <= 1'b1;
    else
        fs_to_ds_valid <= 1'b0;

    if (reset) 
        fs_pc <= 32'hbfbffffc;
    //������Ϊ����nextpc!=2'b00,��Ȼ�ǳ�����ADEL_ex,���ʱ��fs_pcֱ�Ӹ���,����Cache������,fs_to_ds_valid����
    else if ((nextpc[1:0] != 2'b00 && fs_allowin) | (fs_allowin && inst_data_ok))  
        fs_pc <= nextpc;
end

//�쳣�ı�����fs_pcͬ��,��inst_sram��ʹ���ź���Ҫ��nextpc�ĸ���ͬ��,���߱�ǰ�߿�һ��
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111;   
                                
//TODO:flush�����,Ϊ�˷�ֹ���ܱ��������������תָ��,ǿ������Ϊ0
//TODO:fs_pc==2'b00�����,Ϊ�˷�ֹ���ܱ������������rdata,ǿ������Ϊ0
assign fs_inst         = (flush | fs_pc[1:0] != 2'b00) ? 32'b0 : inst_rdata; 

//TODO:flush�����,Ϊ�˷�ֹ���ܱ��������������תָ��,ǿ������Ϊ0
//TODO:fs_pc==2'b00�����,Ϊ�˷�ֹ���ܱ������������rdata,ǿ������Ϊ0
assign fs_inst         = (flush | fs_pc[1:0] != 2'b00) ? 32'b0 : inst_rdata; 

/*******************CPU��ICache�Ľ����źŸ�ֵ����******************/
//Attention:���쳣flush,����������;���IF_ID�Ĵ���û������,����������
always @(flush ,inst_addr_ok,ds_allowin) begin///CHANGE
    if(flush | reset)
        inst_valid <= 1'b1;
    else if(nextpc[1:0] != 2'b00)
        inst_valid <= 1'b0;
    else if(inst_addr_ok & ds_allowin) 
        inst_valid <= 1'b1;
    else
        inst_valid <= 1'b0;
end

assign inst_op    = 1'b0; //��
assign {inst_tag,inst_index,inst_offset} = nextpc;


endmodule
