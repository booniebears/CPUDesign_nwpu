`include "global_defines.vh"

module mem_stage(
    input          clk,
    input          reset,
    //allowin 
    input          ws_allowin,
    output         ms_allowin,
    output         ms_load_op,
    //from m1s
    input          m1s_to_ms_valid,
    input  [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus,
    //to ws
    output         ms_to_ws_valid,
    output [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus,
    input  [ 31:0] data_rdata, //TODO:data_rdata换成从DCache读回来的数据rdata
    input          dcache_busy,
    output [ 4:0]  MEM_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    output [31:0]  MEM_result //MEM阶段 ms_final_result  
);

reg         ms_valid;
wire        ms_ready_go;

reg [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus_r;
wire        ms_res_from_mem;
wire        ms_gr_we;
wire [ 4:0] ms_dest;
wire [31:0] ms_result;
wire [31:0] ms_pc;
wire        ms_ex;
wire        ms_store_flow;

wire [11:0] ms_mem_inst;
wire [31:0] ms_rt_value;
wire 		load_sign_lb;
wire 		load_sign_lh;
wire [31:0] mem_result_lb;
wire [31:0] mem_result_lbu;
wire [31:0] mem_result_lh;
wire [31:0] mem_result_lhu;
wire [31:0] mem_result_lwl;
wire [31:0] mem_result_lwr;

/******************m1s_to_ms_bus Total: 118bits******************/
assign {
        ms_load_op     , //117:117
        ms_store_flow  , //116:116
        ms_ex          , //115:115                                 
        ms_rt_value    , //114:83
        ms_mem_inst    , //82:71
        ms_res_from_mem, //70:70
        ms_gr_we       , //69:69
        ms_dest        , //68:64
        ms_result      , //63:32
        ms_pc            //31:0
       } = m1s_to_ms_bus_r;

wire [31:0] mem_data;
wire [31:0] ms_final_result;
wire [ 1:0] rdata_type;
assign rdata_type = ms_result[1:0];

/******************ms_to_ws_bus Total: 150bits******************/
assign ms_to_ws_bus = {
                       ms_res_from_mem,  //149:149
                       ms_mem_inst    ,  //148:137
                       ms_rt_value    ,  //136:105
                       data_rdata     ,  //104:73
                       rdata_type     ,  //72:71
                       ms_ex          ,  //70:70
                       ms_gr_we       ,  //69:69 --写RF使能
                       ms_dest        ,  //68:64 --写RF的地址
                       ms_final_result,  //63:32 --写RF的数据
                       ms_pc             //31:0 --MEM阶段 PC值
                      };

assign ms_ready_go    = ms_store_flow | ~dcache_busy;
assign ms_allowin     = !ms_valid || ms_ready_go && ws_allowin;
assign ms_to_ws_valid = ms_valid && ms_ready_go;
always @(posedge clk) begin
    if (reset) begin
        ms_valid <= 1'b0;
    end
    else if (ms_allowin) begin
        ms_valid <= m1s_to_ms_valid;
    end
end

always @(posedge clk ) begin
    if (reset)
        m1s_to_ms_bus_r <= 0;
    else if (m1s_to_ms_valid && ms_allowin) begin
        m1s_to_ms_bus_r <= m1s_to_ms_bus;
    end
end

assign ms_final_result = ms_result;

//lab4添加
assign MEM_dest   = ms_dest & {5{ms_to_ws_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign MEM_result = ms_final_result; //ms_final_result可以是DM中值,也可以是MEM阶段ALU运算值,forward到ID阶段
endmodule
