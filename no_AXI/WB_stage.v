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
    output [4:0] WB_dest, // WB阶段写RF地址 通过旁路送到ID阶段
    output [31:0] WB_result, //WB阶段 ws_final_result
    output flush, //flush=1时表明需要处理异常 flush由WB阶段中的CP0_reg产生
    output flush_refill, //flush_refill=1时表明需要处理异常 flush_refill由WB阶段中的CP0_reg产生
    output ws_ex, //判定WB阶段是否有被标记为例外的指令
    output [31:0] CP0_EPC, //CP0寄存器中,EPC的值
    output CP0_Status_IE, //IE=1,全局中断使能开启
    output CP0_Status_EXL, //EXL=0,没有例外正在处理
    output [7:0] CP0_Status_IM, //IM对应各个中断源屏蔽位
    output [7:0] CP0_Cause_IP, //待处理中断标识
    output CP0_Cause_TI,  //TI为1,触发定时中断;我们将该中断标记在ID阶段
    output ws_inst_eret, //WB阶段指令为eret 前递到EXE 控制SRAM读写;前递到IF阶段修改nextpc
    input [5:0] ext_int //6个外部硬件中断输入
);

reg         ws_valid;
wire        ws_ready_go;

reg [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus_r;
wire        ws_gr_we;
wire [ 4:0] ws_dest;
wire [31:0] ws_result; //即MEM阶段的ms_final_result 未考虑mfc0和mtc0指令
wire [31:0] ws_final_result; //考虑了mfc0和mtc0的最终结果
wire [31:0] ws_pc;

wire [2:0] ws_sel;
wire [4:0] ws_mfc0_rd;
wire ws_inst_mtc0;
// wire ws_inst_mfc0; //该信号在模块端口定义
wire ws_bd; //若指令在延迟槽中,则ws_bd=1'b1
wire [31:0] CP0_data; //mfc0从CP0中读出的数据
wire [4:0] ws_ExcCode; //例外的5位编码
wire eret_flush;
wire [31:0] ws_data_sram_addr;
//WB阶段的tlb指令
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
    else if (flush) //清除流水线
        ms_to_ws_bus_r <= 0;
    else if (flush_refill) //清除流水线
        ms_to_ws_bus_r <= 0;
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

assign flush = eret_flush | ws_ex; //调用eret指令,以及在WB阶段检测出例外时,都需要清空流水线

endmodule
