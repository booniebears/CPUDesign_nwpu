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
    output [ 4:0] WB_dest, // WB阶段写RF地址 通过旁路送到ID阶段
    output [31:0] WB_result, //WB阶段 ws_final_result
    output        ws_ex //判定WB阶段是否有被标记为例外的指令
    //input  [ 5:0] ext_int //6个外部硬件中断输入
);

reg         ws_valid;
wire        ws_ready_go;

reg [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus_r;
wire        ws_gr_we;
wire [ 4:0] ws_dest;
wire [31:0] ws_final_result; //考虑了mfc0和mtc0的最终结果
wire [31:0] ws_pc;


// wire ws_inst_mfc0; //该信号在模块端口定义


assign {
        ws_ex          ,  //82:82
        ws_gr_we       ,  //69:69 --写RF使能
        ws_dest        ,  //68:64 --写RF的地址
        ws_final_result,  //63:32 --写RF的数据
        ws_pc             //31:0 --MEM阶段 PC值
        } = ms_to_ws_bus_r;

wire        rf_we;
wire [4 :0] rf_waddr;
wire [31:0] rf_wdata;
assign ws_to_rf_bus = {rf_we   ,  //37:37 --写RF使能
                       rf_waddr,  //36:32 --写RF地址
                       rf_wdata   //31:0 --写RF数据
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
   //else if (flush) //清除流水线
   //    ms_to_ws_bus_r <= 0;
    else if (ms_to_ws_valid && ws_allowin) begin
        ms_to_ws_bus_r <= ms_to_ws_bus;
    end
end

//对于传到WB阶段的指令,如果被标记了异常,那么这条指令肯定是不能执行的,这里就体现在不能写RF上
assign rf_we    = ws_ex ? 1'b0 : ws_gr_we&&ws_valid; 
assign rf_waddr = ws_dest;
assign rf_wdata = ws_final_result;

// debug info generate
assign debug_wb_pc       = ws_pc;
assign debug_wb_rf_wen   = {4{rf_we}};
assign debug_wb_rf_wnum  = ws_dest;
assign debug_wb_rf_wdata = ws_final_result;

assign WB_dest=ws_dest&{5{ws_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign WB_result=ws_final_result; //mfc0读出的数据也会前递到ID阶段


endmodule
