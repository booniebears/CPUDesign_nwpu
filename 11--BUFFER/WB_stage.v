`include "global_defines.vh"

module wb_stage(
    input         clk,
    input         reset,
    //allowin
    output        ws_allowin,
    //from ms
    input         ms_to_ws_valid,
    input  [`MS_TO_WS_BUS_WD -1:0]  ms_to_ws_bus,
    //to rf: for write back
    output [`WS_TO_RF_BUS_WD -1:0]  ws_to_rf_bus,
    //trace debug interface
    output [31:0] debug_wb_pc,
    output [ 3:0] debug_wb_rf_wen,
    output [ 4:0] debug_wb_rf_wnum,
    output [31:0] debug_wb_rf_wdata,
    output [ 4:0] WB_dest, // WB�׶�дRF��ַ ͨ����·�͵�ID�׶�
    output [31:0] WB_result, //WB�׶� ws_final_result
    output        ws_ex //�ж�WB�׶��Ƿ��б����Ϊ�����ָ��
    //input  [ 5:0] ext_int //6���ⲿӲ���ж�����
);

reg         ws_valid;
wire        ws_ready_go;

reg [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus_r;
wire        ws_gr_we;
wire [ 4:0] ws_dest;
wire [31:0] ws_final_result; //������mfc0��mtc0�����ս��
wire [31:0] ws_pc;


// wire ws_inst_mfc0; //���ź���ģ��˿ڶ���


assign {
        ws_ex          ,  //82:82
        ws_gr_we       ,  //69:69 --дRFʹ��
        ws_dest        ,  //68:64 --дRF�ĵ�ַ
        ws_final_result,  //63:32 --дRF������
        ws_pc             //31:0 --MEM�׶� PCֵ
        } = ms_to_ws_bus_r;

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
   //else if (flush) //�����ˮ��
   //    ms_to_ws_bus_r <= 0;
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


endmodule
