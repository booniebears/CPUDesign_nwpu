`include "global_defines.vh"

module if_stage(
    input         clk,
    input         reset,
    input [31:0]  ps_to_fs_nextpc,
    output reg [31:0] fs_pc,
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
    input         flush_r, //flush=1ʱ������Ҫ�����쳣
    input         inst_data_ok,
    input  [31:0] inst_rdata,
    input             ds_ex,
    input             es_ex,
    input             m1s_ex
);

/*
    TODO: ���ʹ��fs_pc����icache��ͬʱ�����ص�ָ���͵�id�׶Σ���Ҳ����ܲ���Ҫ����ps_to_fs_nextpc�����������ڿ��Գ���һ��
*/

wire                           ADEL_ex;//����ȡָ���ַ������ADEL
wire                           fs_ex;
wire [4:0]                     fs_Exctype;
reg  [`PS_TO_FS_BUS_WD -1:0]   ps_to_fs_bus_r;
wire                           ps_ex;
wire [4:0]                     ps_Exctype;                         
wire [31:0]                    fs_inst;

assign {
    ps_ex,
    ps_Exctype
} = ps_to_fs_bus_r;

always @(posedge clk) begin
    if(reset)
        ps_to_fs_bus_r <= 6'b0;
    else if(((ps_to_fs_nextpc[1:0] != 2'b00 | ds_ex | es_ex | m1s_ex) && fs_allowin) | (fs_allowin && inst_data_ok) ) 
        ps_to_fs_bus_r <= ps_to_fs_bus;
end

assign fs_to_ds_bus = {
                       fs_ex     , //70:70
                       fs_Exctype, //69:65
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
    else if(inst_data_ok | (ps_to_fs_nextpc[1:0] != 2'b00 | ds_ex | es_ex | m1s_ex))
        fs_to_ds_valid <= 1'b1;
    else
        fs_to_ds_valid <= 1'b0;
end

always @(posedge clk) begin
    if (reset) 
        fs_pc <= 32'hbfbffffc;
    //������Ϊ����ps_to_fs_nextpc!=2'b00,��Ȼ�ǳ�����ADEL_ex,���ʱ��fs_pcֱ�Ӹ���,����Cache������,fs_to_ds_valid����
    else if (((ps_to_fs_nextpc[1:0] != 2'b00 | ds_ex | es_ex | m1s_ex) && fs_allowin) | (fs_allowin && inst_data_ok))  
        fs_pc <= ps_to_fs_nextpc;
end

//�쳣�ı�����fs_pcͬ��,��inst_sram��ʹ���ź���Ҫ��ps_to_fs_nextpc�ĸ���ͬ��,���߱�ǰ�߿�һ��
assign ADEL_ex    = fs_pc[1:0] ? 1'b1 : 1'b0; 
assign fs_ex      = ADEL_ex | ps_ex;
assign fs_Exctype = ADEL_ex ? `AdEL : ps_Exctype;

//TODO:flush�����,Ϊ�˷�ֹ���ܱ��������������תָ��,ǿ������Ϊ0
//TODO:fs_pc==2'b00�����,Ϊ�˷�ֹ���ܱ������������rdata,ǿ������Ϊ0
assign fs_inst         = (flush | flush_r | fs_ex | ds_ex | es_ex) ? 32'b0 : inst_rdata; 

endmodule
