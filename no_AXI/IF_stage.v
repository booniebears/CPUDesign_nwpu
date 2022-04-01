`include "global_defines.vh"

module if_stage(
    input                          clk            ,
    input                          reset          ,
    //allowin
    input                          ds_allowin     , 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus         , 
    //to ds
    output reg                     fs_to_ds_valid , 
    output [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus   ,
    // inst sram interface 
    output        inst_sram_en   ,//��ȡָ��ʹ��
    output [ 3:0] inst_sram_wen  ,//ָ��洢��ûʲô��д��
    output [31:0] inst_sram_addr ,//��һ��ָ���ַ
    output [31:0] inst_sram_wdata,//ָ��洢��ûʲô��д��
    input  [31:0] inst_sram_rdata, //ָ��
    input flush, //flush=1ʱ������Ҫ�����쳣
    input [31:0] CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    input ws_inst_eret  
);

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
//lab8�޸� ���ڵ�WB�׶η�������ʱ,ID�׶η���br_stall������;��������������Ȼ����������ȼ�
assign seq_pc          = fs_pc + 3'h4;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret��Ȩָ�� �������������ȼ�,�����ж�
                         flush ? 32'hbfc00380 : //flush=1ʱ������Ҫ�����쳣.�����eretָ��,��������ж�,
                         //Ȼ����ת��CP0_EPC; ����˵�������쳣,��ʱPCֵ����Ϊ0xbfc00380
                         br_taken ? br_target : seq_pc; //nextpc��branchָ��ָ����pc��seq_pc�в���

assign fs_allowin     =  flush ? 1'b1 : ds_allowin; 

always @(posedge clk) begin
    if (reset) fs_to_ds_valid <= 1'b0;
    else fs_to_ds_valid <= 1'b1; 

    if (reset) fs_pc <= 32'hbfbffffc;  //trick: to make nextpc be 0xbfc00000 during reset 
    else if (fs_allowin) fs_pc <= nextpc;
end

//�쳣�ı�����fs_pcͬ��,��inst_sram��ʹ���ź���Ҫ��nextpc�ĸ���ͬ��,���߱�ǰ�߿�һ��
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111; //TODO:ȫ1Ŀǰ�������쳣

assign inst_sram_en    = nextpc[1:0] ? 1'b0 : fs_allowin; //��ȡָ��ʹ��
assign inst_sram_wen   = 4'h0; //ָ��洢��ûʲô��д��
assign inst_sram_addr  = nextpc; //��һ��ָ���ַ
assign inst_sram_wdata = 32'b0; //ָ��洢��ûʲô��д��

assign fs_inst         = inst_sram_rdata;

endmodule
