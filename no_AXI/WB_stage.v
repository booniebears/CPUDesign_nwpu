`include "global_defines.vh"

module wb_stage(
    input                           clk           ,
    input                           reset         ,
    //allowin
    output                          ws_allowin    ,
    //from ms
    input                           ms_to_ws_valid,
    input  [`MS_TO_WS_BUS_WD -1:0]  ms_to_ws_bus  ,
    //to rf: for write back
    output [`WS_TO_RF_BUS_WD -1:0]  ws_to_rf_bus  ,
    //trace debug interface
    output [31:0] debug_wb_pc     ,
    output [ 3:0] debug_wb_rf_wen ,
    output [ 4:0] debug_wb_rf_wnum,
    output [31:0] debug_wb_rf_wdata,
    output [4:0] WB_dest, // WB�׶�дRF��ַ ͨ����·�͵�ID�׶�
    output [31:0] WB_result, //WB�׶� ws_final_result
    output flush, //flush=1ʱ������Ҫ�����쳣 flush��WB�׶��е�CP0_reg����
    output flush_refill, //flush_refill=1ʱ������Ҫ�����쳣 flush_refill��WB�׶��е�CP0_reg����
    output ws_ex, //�ж�WB�׶��Ƿ��б����Ϊ�����ָ��
    output [31:0] CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    output CP0_Status_IE, //IE=1,ȫ���ж�ʹ�ܿ���
    output CP0_Status_EXL, //EXL=0,û���������ڴ���
    output [7:0] CP0_Status_IM, //IM��Ӧ�����ж�Դ����λ
    output [7:0] CP0_Cause_IP, //�������жϱ�ʶ
    output CP0_Cause_TI,  //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
    output ws_inst_eret, //WB�׶�ָ��Ϊeret ǰ�ݵ�EXE ����SRAM��д;ǰ�ݵ�IF�׶��޸�nextpc
    input [5:0] ext_int //6���ⲿӲ���ж�����
);

reg         ws_valid;
wire        ws_ready_go;

reg [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus_r;
wire        ws_gr_we;
wire [ 4:0] ws_dest;
wire [31:0] ws_result; //��MEM�׶ε�ms_final_result δ����mfc0��mtc0ָ��
wire [31:0] ws_final_result; //������mfc0��mtc0�����ս��
wire [31:0] ws_pc;

wire [2:0] ws_sel;
wire [4:0] ws_mfc0_rd;
wire ws_inst_mtc0;
// wire ws_inst_mfc0; //���ź���ģ��˿ڶ���
wire ws_bd; //��ָ�����ӳٲ���,��ws_bd=1'b1
wire [31:0] CP0_data; //mfc0��CP0�ж���������
wire [4:0] ws_ExcCode; //�����5λ����
wire eret_flush;
wire [31:0] ws_data_sram_addr;
//WB�׶ε�tlbָ��
wire ws_inst_tlbp   ;
wire ws_inst_tlbr   ;  
wire ws_inst_tlbwi  ;  
wire ws_inst_tlbwr  ;
assign {
        ws_inst_tlbp   ,  //123:123
        ws_inst_tlbr   ,  //122:122
        ws_inst_tlbwi  ,  //121:121
        ws_inst_tlbwr  ,  //120:120
        ws_data_sram_addr,//119:88
        ws_mfc0_rd     ,  //87:83
        ws_ex          ,  //82:82
        ws_ExcCode     ,  //81:77 
        ws_bd          ,  //76:76
        ws_inst_eret   ,  //75:75
        ws_sel         ,  //74:72
        ws_inst_mtc0   ,  //71:71
        ws_inst_mfc0   ,  //70:70
        ws_gr_we       ,  //69:69
        ws_dest        ,  //68:64
        ws_result      ,  //63:32
        ws_pc             //31:0
       } = ms_to_ws_bus_r;

assign ws_final_result = ws_inst_mfc0 ? CP0_data : ws_result;
wire        rf_we;
wire [4 :0] rf_waddr;
wire [31:0] rf_wdata;
assign ws_to_rf_bus = {rf_we   ,  //37:37 --дRFʹ��
                       rf_waddr,  //36:32 --дRF��ַ
                       rf_wdata   //31:0 --дRF����
                      };

assign ws_ready_go = 1'b1;
assign ws_allowin  = !ws_valid || ws_ready_go;
always @(posedge clk) begin
    if (reset) begin
        ws_valid <= 1'b0;
    end
    else if (ws_allowin) begin
        ws_valid <= ms_to_ws_valid;
    end
end

always @(posedge clk) begin
    if (reset)
        ms_to_ws_bus_r <= 0;
    else if (flush) //�����ˮ��
        ms_to_ws_bus_r <= 0;
    else if (flush_refill) //�����ˮ��
        ms_to_ws_bus_r <= 0;
    else if (ms_to_ws_valid && ws_allowin) begin
        ms_to_ws_bus_r <= ms_to_ws_bus;
    end
end

//���ڴ���WB�׶ε�ָ��,�����������쳣,��ô����ָ��϶��ǲ���ִ�е�,����������ڲ���дRF��
assign rf_we    = ws_ex ? 1'b0 : ws_gr_we&&ws_valid; 
assign rf_waddr = ws_dest;
assign rf_wdata = ws_final_result;

// debug info generate
assign debug_wb_pc       = ws_pc;
assign debug_wb_rf_wen   = {4{rf_we}};
assign debug_wb_rf_wnum  = ws_dest;
assign debug_wb_rf_wdata = ws_final_result;

assign WB_dest=ws_dest&{5{ws_valid}}; //дRF��ַͨ����·�͵�ID�׶� ע�⿼��ms_valid��Ч��
assign WB_result=ws_final_result; //mfc0����������Ҳ��ǰ�ݵ�ID�׶�

CP0_Reg u_CP0_Reg(
    .clk(clk),
    .reset(reset),
    .ws_mfc0_rd(ws_mfc0_rd),
    .ws_sel(ws_sel),
    .ws_valid(ws_valid),
    .ws_inst_mtc0(ws_inst_mtc0),
    .ws_inst_eret(ws_inst_eret),
    .ws_result(ws_result),
    .ws_bd(ws_bd),
    .ws_ex(ws_ex),
    .ws_data_sram_addr(ws_data_sram_addr),
    .ext_int(ext_int),
    .ExcCode(ws_ExcCode),
    .ws_pc(ws_pc),
    .CP0_data(CP0_data),
    .eret_flush(eret_flush),
    .CP0_EPC(CP0_EPC),
    .CP0_Status_IE(CP0_Status_IE),
    .CP0_Status_EXL(CP0_Status_EXL),
    .CP0_Status_IM(CP0_Status_IM),
    .CP0_Cause_IP(CP0_Cause_IP),
    .CP0_Cause_TI(CP0_Cause_TI)
);

assign flush = eret_flush | ws_ex; //����eretָ��,�Լ���WB�׶μ�������ʱ,����Ҫ�����ˮ��

endmodule
