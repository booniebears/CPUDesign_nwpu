`include "mycpu.h"

module if_stage(
    input                          clk            ,
    input                          reset          ,
    //allowin
    input                          ds_allowin     , //ID�׶����� IF_ID�Ĵ����Ŀ����ź�֮һ(������)
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus         , //ID�׶����� br_bus = {fs_bd,br_stall,br_taken,br_target}
    //to ds
    output                         fs_to_ds_valid , //IF_ID�Ĵ����Ŀ����ź�֮��(������)
    output [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus   ,
    // inst sram interface 
    output        inst_sram_en   ,//��ȡָ��ʹ��
    output [ 3:0] inst_sram_wen  ,//ָ��洢��ûʲô��д��
    output [31:0] inst_sram_addr ,//��һ��ָ���ַ
    output [31:0] inst_sram_wdata,//ָ��洢��ûʲô��д��
    input  [31:0] inst_sram_rdata, //ָ��
    //lab8��� 
    input flush, //flush=1ʱ������Ҫ�����쳣
    input [31:0] CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    input ws_inst_eret  
);

/*
    IF�׶�
    1.��IP��inst_sram�л�ȡָ��inst_sram_rdata, ͬʱ����PC��ֵ�͵�inst_sram_addr;
    2.�Ѵ������fs_to_ds_bus�͵�ID�׶�,������fs_to_ds_valid,����IF_ID�Ĵ����Ŀ����ź�֮��(������)
    3.����br_taken��ע��ǰָ���Ƿ����ӳٲ���
*/
reg         fs_valid; //��fs_allowin=1,fs_valid<=to_fs_valid;
wire        fs_ready_go; //��������IF����ID�׶εĿ����ź� fs_ready_go=1,IF�׶���������
wire        fs_allowin; //����IF�׶������� fs_allowin=1,IF�׶�����ָ������ ��fs_valid fs_pc inst_sram_en�Ŀ����ź�
wire        to_fs_valid; //valid�źź�ready go�ź���һ�Ե�
// lab4��� 
wire        pre_fs_ready_go; //pre-IF�׶ε�ready go�ź�
wire        br_stall;      //ID�׶μ�⵽branchָ��,����loadָ����EXE�׶�,�޷�ʹ��forward,������ͣ
//lab8���
wire        fs_bd;  //IF�׶� ��ǰָ�������ӳٲ���,����Ϊ1
wire        ADEL_ex;//����ȡָ���ַ������ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;

wire [31:0] seq_pc;
wire [31:0] nextpc;

wire         br_taken;
wire [ 31:0] br_target;
assign {fs_bd,br_stall,br_taken,br_target} = br_bus; //�����fs_bd��ΪID�׶ε�is_branch�ź� 

wire [31:0] fs_inst;
reg  [31:0] fs_pc;
assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_ExcCode, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                       };

// pre-IF stage
//lab4�޸� reset=0,br_stall=0,to_fs_valid=1;
//lab8�޸� ���ڵ�WB�׶η�������ʱ,ID�׶η���br_stall������;��������������Ȼ����������ȼ�
assign pre_fs_ready_go = ~br_stall;
assign to_fs_valid     = flush ? 1'b1 : ~reset & pre_fs_ready_go;  
assign seq_pc          = fs_pc + 3'h4;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret��Ȩָ�� �������������ȼ�,�����ж�
                         flush ? 32'hbfc00380 : //flush=1ʱ������Ҫ�����쳣.�����eretָ��,��������ж�,
                         //Ȼ����ת��CP0_EPC; ����˵�������쳣,��ʱPCֵ����Ϊ0xbfc00380
                         br_taken ? br_target : seq_pc; //nextpc��branchָ��ָ����pc��seq_pc�в���

// IF stage
assign fs_ready_go    = 1'b1;
/*
    1.fs_valid=0,���ո���resetָ��,��ʱ��ȻҪ������һ��ָ��,fs_allowin=!fs_valid=1;
    2.reset������ʱ,��fs_ready_go=1&&ds_allowin=1,��IF�׶���������,ID�׶���������,��fs_allowin=1,�������ָ���PC����
*/
assign fs_allowin     =  flush ? 1'b1 : !fs_valid || fs_ready_go && ds_allowin; 
assign fs_to_ds_valid =  fs_valid && fs_ready_go;

always @(posedge clk) begin //fs_valid,fs_pc
    if (reset) begin
        fs_valid <= 1'b0;
    end
    else if (fs_allowin) begin
        fs_valid <= to_fs_valid; 
    end

    if (reset) begin
        fs_pc <= 32'hbfbffffc;  //trick: to make nextpc be 0xbfc00000 during reset 
    end
    else if (to_fs_valid && fs_allowin) begin
        fs_pc <= nextpc;
    end
end

//�쳣�ı�����fs_pcͬ��,��inst_sram��ʹ���ź���Ҫ��nextpc�ĸ���ͬ��,���߱�ǰ�߿�һ��
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111; //TODO:ȫ1Ŀǰ�������쳣

assign inst_sram_en    = nextpc[1:0] ? 1'b0 : (~br_stall | flush) && to_fs_valid && fs_allowin; //��ȡָ��ʹ��
assign inst_sram_wen   = 4'h0; //ָ��洢��ûʲô��д��
assign inst_sram_addr  = nextpc; //��һ��ָ���ַ
assign inst_sram_wdata = 32'b0; //ָ��洢��ûʲô��д��

assign fs_inst         = inst_sram_rdata;

endmodule
