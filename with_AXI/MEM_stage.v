`include "global_defines.vh"

module mem_stage(
    input         clk,
    input         reset,
    //allowin
    input         ws_allowin,
    output        ms_allowin,
    //from es
    input         es_to_ms_valid,
    input  [`ES_TO_MS_BUS_WD -1:0] es_to_ms_bus,
    //to ws
    output        ms_to_ws_valid,
    output [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus,
    //from data-sram
    input  [                 31:0] data_sram_rdata,//TODO:data_sram_rdata换成从DCache读回来的数据rdata
    output [ 4:0] MEM_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    output [31:0] MEM_result, //MEM阶段 ms_final_result  
    input         flush, //flush=1时表明需要处理异常
    output        ms_ex, //判定MEM阶段是否有被标记为例外的指令
    output        ms_inst_mfc0, //MEM阶段指令为mfc0 前递到ID阶段
    output        ms_inst_eret //MEM阶段指令为eret 前递到EXE 控制SRAM读写
);

reg         ms_valid;
wire        ms_ready_go;

reg [`ES_TO_MS_BUS_WD -1:0] es_to_ms_bus_r;
wire        ms_res_from_mem;
wire        ms_gr_we;
wire [ 4:0] ms_dest;
wire [31:0] ms_alu_result;
wire [31:0] ms_pc;
//lab7添加
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
//lab8添加
wire [2:0] ms_sel;
wire [4:0] ms_mfc0_rd; 
wire ms_inst_mtc0;
wire ms_bd;
wire [4:0] ms_ExcCode;
wire [31:0] ms_data_sram_addr;

assign {
        ms_data_sram_addr,//164:133 
        ms_mfc0_rd     ,  //132:128
        ms_ex          ,  //127:127
        ms_ExcCode     ,  //126:122 
        ms_bd          ,  //121:121
        ms_inst_eret   ,  //120:120
        ms_sel         ,  //119:117 
        ms_inst_mtc0   ,  //116:116 
        ms_inst_mfc0   ,  //115:115
        ms_rt_value    ,  //114:83
        ms_mem_inst    ,  //82:71
        ms_res_from_mem,  //70:70
        ms_gr_we       ,  //69:69
        ms_dest        ,  //68:64
        ms_alu_result  ,  //63:32
        ms_pc             //31:0
       } = es_to_ms_bus_r;

wire [31:0] mem_data;
wire [31:0] ms_final_result;

assign ms_to_ws_bus = {
                       ms_data_sram_addr,//119:88
                       ms_mfc0_rd     ,  //87:83
                       ms_ex          ,  //82:82
                       ms_ExcCode     ,  //81:77 
                       ms_bd          ,  //76:76
                       ms_inst_eret   ,  //75:75
                       ms_sel         ,  //74:72
                       ms_inst_mtc0   ,  //71:71
                       ms_inst_mfc0   ,  //70:70
                       ms_gr_we       ,  //69:69 --写RF使能
                       ms_dest        ,  //68:64 --写RF的地址
                       ms_final_result,  //63:32 --写RF的数据
                       ms_pc             //31:0 --MEM阶段 PC值
                      };

//lab7添加
//TODO:data_sram_rdata换成从DCache读回来的数据rdata
assign load_sign_lb         = (ms_alu_result[1:0] == 2'd0) ? data_sram_rdata[ 7] :
                              (ms_alu_result[1:0] == 2'd1) ? data_sram_rdata[15] :
                              (ms_alu_result[1:0] == 2'd2) ? data_sram_rdata[23] :
                                                             data_sram_rdata[31];                                                  
assign mem_result_lb[ 7:0]  = (ms_alu_result[1:0] == 2'd0) ? data_sram_rdata[ 7:0 ] :
                              (ms_alu_result[1:0] == 2'd1) ? data_sram_rdata[15:8 ] :
                              (ms_alu_result[1:0] == 2'd2) ? data_sram_rdata[23:16] :
                                                             data_sram_rdata[31:24];
assign mem_result_lb[31:8]  = {24{load_sign_lb}};
assign mem_result_lbu       = {24'd0, mem_result_lb[7:0]};


//lh/lhu
assign load_sign_lh         = (ms_alu_result[1:0] == 2'b00) ? data_sram_rdata[15]   :
                              (ms_alu_result[1:0] == 2'b10) ? data_sram_rdata[31]   : 1'b0;                                                   
assign mem_result_lh[15:0]  = (ms_alu_result[1:0] == 2'b00) ? data_sram_rdata[15:0] : 
                              (ms_alu_result[1:0] == 2'b10) ? data_sram_rdata[31:16]: 16'd0;
assign mem_result_lh[31:16] = {16{load_sign_lh}};
assign mem_result_lhu       = {16'd0, mem_result_lh[15:0]};

//lwl
assign mem_result_lwl       = (ms_alu_result[1:0] == 2'd0) ? {data_sram_rdata[ 7:0], ms_rt_value[23:0]} :
                              (ms_alu_result[1:0] == 2'd1) ? {data_sram_rdata[15:0], ms_rt_value[15:0]} :
                              (ms_alu_result[1:0] == 2'd2) ? {data_sram_rdata[23:0], ms_rt_value[7 :0]} :
                                                              data_sram_rdata[31:0];

//lwr
assign mem_result_lwr       = (ms_alu_result[1:0] == 2'd0) ?  data_sram_rdata[31:0]                       :
                              (ms_alu_result[1:0] == 2'd1) ? {ms_rt_value[31:24], data_sram_rdata[31: 8]} :
                              (ms_alu_result[1:0] == 2'd2) ? {ms_rt_value[31:16], data_sram_rdata[31:16]} :
                                                             {ms_rt_value[31: 8], data_sram_rdata[31:24]} ;




assign ms_ready_go    = 1'b1;
assign ms_allowin     = !ms_valid || ms_ready_go && ws_allowin;
assign ms_to_ws_valid = ms_valid && ms_ready_go;
always @(posedge clk) begin
    if (reset) begin
        ms_valid <= 1'b0;
    end
    else if (ms_allowin) begin
        ms_valid <= es_to_ms_valid;
    end
end

always @(posedge clk ) begin
    if (reset)
        es_to_ms_bus_r <= 0;
    else if (flush) //清除流水线
        es_to_ms_bus_r <= 0;
    else if (es_to_ms_valid && ms_allowin) begin
        es_to_ms_bus_r <= es_to_ms_bus;
    end
end

assign mem_data = (ms_mem_inst[2]) ? mem_result_lb  :
                  (ms_mem_inst[3]) ? mem_result_lbu :
                  (ms_mem_inst[4]) ? mem_result_lh  :
                  (ms_mem_inst[5]) ? mem_result_lhu : 
                  (ms_mem_inst[6]) ? mem_result_lwl :
                  (ms_mem_inst[7]) ? mem_result_lwr : data_sram_rdata; //lw对应data_sram_rdata

assign ms_final_result = ms_res_from_mem ? mem_data
                                         : ms_alu_result;
                                         
//lab4添加
assign MEM_dest   = ms_dest & {5{ms_to_ws_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign MEM_result = ms_final_result; //ms_final_result可以是DM中值,也可以是MEM阶段ALU运算值,forward到ID阶段
endmodule
