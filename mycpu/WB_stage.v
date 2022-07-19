`include "global_defines.vh"

module wb_stage(
    input                          clk,
    input                          reset,
    //allowin                 
    output                         ws_allowin,
    //from ms                 
    input                          ms_to_ws_valid,
    input  [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus,
    //to rf: for write back
    output [`WS_TO_RF_BUS_WD -1:0] ws_to_rf_bus,
    //trace debug interface
    output [31:0]                  debug_wb_pc,
    output [ 3:0]                  debug_wb_rf_wen,
    output [ 4:0]                  debug_wb_rf_wnum,
    output [31:0]                  debug_wb_rf_wdata,
    output [ 4:0]                  WB_dest, // WB阶段写RF地址 通过旁路送到ID阶段
    output [31:0]                  WB_result //WB阶段 ws_final_result
);

reg         ws_valid;
wire        ws_ready_go;

reg [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus_r;
wire        ws_ex;
wire        ws_gr_we;
wire [ 4:0] ws_dest;
wire [31:0] ws_result; 
wire [31:0] ws_final_result;
wire [31:0] ws_pc;

wire [11:0] ws_mem_inst;
wire [31:0] ws_rt_value;
wire [31:0] ws_data_rdata;
wire [ 1:0] ws_rdata_type;

wire [31:0] ws_mem_data;
wire        load_sign_lb;
wire        load_sign_lh;
wire [31:0] wb_result_lb;
wire [31:0] wb_result_lbu;
wire [31:0] wb_result_lh;
wire [31:0] wb_result_lhu;
wire [31:0] wb_result_lwl;
wire [31:0] wb_result_lwr;
wire        ws_res_from_mem;

/******************ms_to_ws_bus Total: 150bits******************/
assign {
        ws_res_from_mem,  //149:149
        ws_mem_inst    ,  //148:137
        ws_rt_value    ,  //136:105
        ws_data_rdata  ,  //104:73
        ws_rdata_type  ,  //72:71
        ws_ex          ,  //70:70
        ws_gr_we       ,  //69:69 --写RF使能
        ws_dest        ,  //68:64 --写RF的地址
        ws_result      ,  //63:32 --写RF的数据
        ws_pc             //31:0 --MEM阶段 PC值
        } = ms_to_ws_bus_r;

wire        rf_we;
wire [4 :0] rf_waddr;
wire [31:0] rf_wdata;
/******************ws_to_rf_bus Total: 38bits******************/
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
    else if (ms_to_ws_valid && ws_allowin) begin
        ms_to_ws_bus_r <= ms_to_ws_bus;
    end
end


//lab7添加
//TODO:data_rdata换成从DCache读回来的数据rdata
assign load_sign_lb         = (ws_rdata_type == 2'd0) ? ws_data_rdata[ 7] :
                              (ws_rdata_type == 2'd1) ? ws_data_rdata[15] :
                              (ws_rdata_type == 2'd2) ? ws_data_rdata[23] :
                                                             ws_data_rdata[31];                                                  
assign wb_result_lb[ 7:0]  =  (ws_rdata_type == 2'd0) ? ws_data_rdata[ 7:0 ] :
                              (ws_rdata_type == 2'd1) ? ws_data_rdata[15:8 ] :
                              (ws_rdata_type == 2'd2) ? ws_data_rdata[23:16] :
                                                             ws_data_rdata[31:24];
assign wb_result_lb[31:8]  = {24{load_sign_lb}};
assign wb_result_lbu       = {24'd0, wb_result_lb[7:0]};


//lh/lhu
assign load_sign_lh         = (ws_rdata_type == 2'b00) ? ws_data_rdata[15]   :
                              (ws_rdata_type == 2'b10) ? ws_data_rdata[31]   : 1'b0;                                                   
assign wb_result_lh[15:0]  =  (ws_rdata_type == 2'b00) ? ws_data_rdata[15:0] : 
                              (ws_rdata_type == 2'b10) ? ws_data_rdata[31:16]: 16'd0;
assign wb_result_lh[31:16] = {16{load_sign_lh}};
assign wb_result_lhu       = {16'd0, wb_result_lh[15:0]};

//lwl
assign wb_result_lwl       =  (ws_rdata_type == 2'd0) ? {ws_data_rdata[ 7:0], ws_rt_value[23:0]} :
                              (ws_rdata_type == 2'd1) ? {ws_data_rdata[15:0], ws_rt_value[15:0]} :
                              (ws_rdata_type == 2'd2) ? {ws_data_rdata[23:0], ws_rt_value[7 :0]} :
                                                              ws_data_rdata[31:0];

//lwr
assign wb_result_lwr       =  (ws_rdata_type == 2'd0) ?  ws_data_rdata[31:0]                       :
                              (ws_rdata_type == 2'd1) ? {ws_rt_value[31:24], ws_data_rdata[31: 8]} :
                              (ws_rdata_type == 2'd2) ? {ws_rt_value[31:16], ws_data_rdata[31:16]} :
                                                             {ws_rt_value[31: 8], ws_data_rdata[31:24]} ;

assign ws_mem_data =    (ws_mem_inst[2]) ? wb_result_lb  :
                        (ws_mem_inst[3]) ? wb_result_lbu :
                        (ws_mem_inst[4]) ? wb_result_lh  :
                        (ws_mem_inst[5]) ? wb_result_lhu : 
                        (ws_mem_inst[6]) ? wb_result_lwl :
                        (ws_mem_inst[7]) ? wb_result_lwr : ws_data_rdata; //lw对应data_rdata




//对于传到WB阶段的指令,如果被标记了异常,那么这条指令肯定是不能执行的,这里就体现在不能写RF上
assign rf_we    = ws_ex ? 1'b0 : ws_gr_we & ws_valid; 
assign rf_waddr = ws_dest;
assign rf_wdata = ws_final_result;

// debug info generate
assign debug_wb_pc       = ws_pc;
assign debug_wb_rf_wen   = {4{rf_we}};
assign debug_wb_rf_wnum  = ws_dest;
assign debug_wb_rf_wdata = ws_final_result;

assign ws_final_result = ws_res_from_mem ? ws_mem_data : ws_result;

assign WB_dest   = ws_dest & {5{ws_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign WB_result = ws_final_result; //mfc0读出的数据也会前递到ID阶段


endmodule
