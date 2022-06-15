`include "global_defines.vh"

module preif_stage(
    input         clk,
    input         reset,
    //allowin
    input         fs_allowin, 
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, // id�׶η���
    //to ds
    output reg                     prefs_to_fs_valid, 
    output [`FS_TO_DS_BUS_WD -1:0] prefs_to_fs_bus,
    input         flush, //flush=1ʱ������Ҫ�����쳣
    input  [31:0] CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    input         ws_inst_eret,
    //Attention:CPU��ICache�Ľ����ź�����;����Ŀǰû��ʵ�֡�CPU���ʵս���е�wstrb��wdata
    output reg    inst_valid,
    output        inst_op,
    output [ 7:0] inst_index,
    output [19:0] inst_tag,
    output [ 3:0] inst_offset,
    input         inst_addr_ok,
    input         mfc0_stall //TODO: ��ʱ��mfc0_stall�ź��͵�IF�׶�,ȷ��nextpc��ת����ȷ��   
);

wire        prefs_allowin; 

assign prefs_allowin     =  flush ? 1'b1 : inst_addr_ok; 


wire [31:0] seq_pc;
wire        br_stall;     
wire        fs_bd;  //IF�׶� ��ǰָ�������ӳٲ���,����Ϊ1
wire         br_taken;
wire [ 31:0] br_target;

assign {fs_bd,br_stall,br_taken,br_target} = br_bus; //�����fs_bd��ΪID�׶ε�is_branch�ź� 

wire [31:0] nextpc;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret��Ȩָ�� �������������ȼ�,�����ж�
                         flush ? 32'hbfc00380 : //flush=1ʱ������Ҫ�����쳣.�����eretָ��,��������ж�,
                         //Ȼ����ת��CP0_EPC; ����˵�������쳣,��ʱPCֵ����Ϊ0xbfc00380
                         br_taken && ~br_stall && ~mfc0_stall? br_target : seq_pc; //nextpc��branchָ��ָ����pc��seq_pc�в���



















wire        ADEL_ex;//����ȡָ���ַ������ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;




wire  [31:0] fs_inst;
reg  [31:0] fs_pc;
assign prefs_to_fs_bus = {
                    //    fs_ex     , //70:70
                    //    fs_ExcCode, //69:65
                    //    fs_bd     , //64:64
                    //    fs_inst   , //63:32
                       fs_pc       //31:0
                       };


// reg npc_block;
// always @(posedge clk)begin
//     npc_block <= fs_allowin & inst_addr_ok;
// end
// pre-IF stage
//lab8�޸� ���ڵ�WB�׶η�������ʱ,ID�׶η���br_stall������;��������������Ȼ����������ȼ�
assign seq_pc          = fs_pc + 3'h4;
assign nextpc          = ws_inst_eret ? CP0_EPC : //eret��Ȩָ�� �������������ȼ�,�����ж�
                         flush ? 32'hbfc00380 : //flush=1ʱ������Ҫ�����쳣.�����eretָ��,��������ж�,
                         //Ȼ����ת��CP0_EPC; ����˵�������쳣,��ʱPCֵ����Ϊ0xbfc00380
                         br_taken && ~br_stall && ~mfc0_stall? br_target : seq_pc; //nextpc��branchָ��ָ����pc��seq_pc�в���




reg icache_receive;
always @(posedge clk) begin
    if(reset)
        icache_receive <= 0;
    else
        icache_receive <= inst_valid;
end

always @(posedge clk) begin
    if (reset) 
        prefs_to_fs_valid <= 1'b0;
    else if(~fs_allowin) 
        prefs_to_fs_valid <= prefs_to_fs_valid; 
    // else if(inst_data_ok | (nextpc[1:0] != 2'b00))
    //     prefs_to_fs_valid <= 1'b1;
    else
        prefs_to_fs_valid <= 1'b0;

    
end

//�쳣�ı�����fs_pcͬ��,��inst_sram��ʹ���ź���Ҫ��nextpc�ĸ���ͬ��,���߱�ǰ�߿�һ��
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111; //TODO:ȫ1Ŀǰ�������쳣

 


/*******************CPU��ICache�Ľ����źŸ�ֵ����******************/
//Attention:���쳣flush,����������;���IF_ID�Ĵ���û������,����������
always @(*) begin///CHANGE
    if(flush | reset)
        inst_valid <= 1'b1;
    else if(nextpc[1:0] != 2'b00)
        inst_valid <= 1'b0;
    else if(fs_allowin) 
        inst_valid <= 1'b1;
    else
        inst_valid <= 1'b0;
end

assign inst_op    = 1'b0; //��
assign {inst_tag,inst_index,inst_offset} = nextpc;

/*******************CPU��ICache�Ľ����źŸ�ֵ����******************/
endmodule
