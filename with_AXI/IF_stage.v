`include "global_defines.vh"

module if_stage(
    input         clk,
    input         reset,
    output [31:0] fs_pc,
    //allowin
    output        fs_allowin, 
    input         ds_allowin, 
    input [`PS_TO_FS_BUS_WD -1:0] ps_to_fs_bus,
    //brbus
    input  [`BR_BUS_WD       -1:0] br_bus, 
    input                          fs_bd, 
    //to ds
    output reg                     fs_to_ds_valid, 
    output [`FS_TO_DS_BUS_WD -1:0] fs_to_ds_bus,
    input         flush, //flush=1ʱ������Ҫ�����쳣
   // output [19:0] inst_tag,
   // output [ 3:0] inst_offset,
    input         inst_data_ok,
    input  [31:0] inst_rdata
   // input         mfc0_stall //TODO: ��ʱ��mfc0_stall�ź��͵�IF�׶�,ȷ��nextpc��ת����ȷ��
);

/*
    TODO: ���ʹ��fs_pc����icache��ͬʱ�����ص�ָ���͵�id�׶Σ���Ҳ����ܲ���Ҫ����nextpc�����������ڿ��Գ���һ��
*/

//wire        br_stall;      //ID�׶μ�⵽branchָ��,����loadָ����EXE�׶�,�޷�ʹ��forward,������ͣ
wire        ADEL_ex;//����ȡָ���ַ������ADEL
wire        fs_ex;
wire [4:0]  fs_ExcCode;
wire [31:0] nextpc;
reg  [`PS_TO_FS_BUS_WD -1:0]   ps_to_fs_bus_r;
wire  [31:0] fs_inst;

assign nextpc = ps_to_fs_bus[31:0];

assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_ExcCode, //69:65
                       fs_bd     , //64:64
                       fs_inst   , //63:32
                       fs_pc       //31:0
                       };




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
end

always @(posedge clk) begin
    if (reset) 
        ps_to_fs_bus_r <= 32'hbfbffffc;
    //������Ϊ����nextpc!=2'b00,��Ȼ�ǳ�����ADEL_ex,���ʱ��fs_pcֱ�Ӹ���,����Cache������,fs_to_ds_valid����
    else if ((nextpc[1:0] != 2'b00 && fs_allowin) | (fs_allowin && inst_data_ok))  
        ps_to_fs_bus_r <= ps_to_fs_bus;
end
assign fs_pc = ps_to_fs_bus_r;

//�쳣�ı�����fs_pcͬ��,��inst_sram��ʹ���ź���Ҫ��nextpc�ĸ���ͬ��,���߱�ǰ�߿�һ��
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex;
assign fs_ExcCode = ADEL_ex ? `AdEL : 5'b11111; //TODO:ȫ1Ŀǰ�������쳣

//TODO:flush�����,Ϊ�˷�ֹ���ܱ��������������תָ��,ǿ������Ϊ0
//TODO:fs_pc==2'b00�����,Ϊ�˷�ֹ���ܱ������������rdata,ǿ������Ϊ0
assign fs_inst         = (flush | fs_pc[1:0] != 2'b00) ? 32'b0 : inst_rdata; 

endmodule
