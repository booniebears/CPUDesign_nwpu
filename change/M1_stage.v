`include "global_defines.vh"

module m1_stage(
    input         clk,
    input         reset,
    //allowin
    input         ms_allowin,
    output        m1_allowin,
    //from es
    input         es_to_m1_valid,
    input  [`ES_TO_M1_BUS_WD -1:0] es_to_m1_bus,
    //to ws
    output        m1_to_ms_valid,
    output [`M1_TO_MS_BUS_WD -1:0] m1_to_ms_bus,
    //from data-sram
    // input  [                 31:0] data_rdata,//TODO:data_rdata换成从DCache读回来的数据rdata
    output [ 4:0] M1_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    output m1_load_op,     // M1阶段是否是load指令，通过旁路送到ID阶段
    output [31:0] M1_result, //MEM阶段 ms_final_result  
    input         flush, //flush=1时表明需要处理异常
    output        m1_ex, //判定MEM阶段是否有被标记为例外的指令
    output        m1_inst_mfc0, //MEM阶段指令为mfc0 前递到ID阶段
    output        m1_inst_eret //MEM阶段指令为eret 前递到EXE 控制SRAM读写
);

reg         m1_valid;
wire        m1_ready_go;

reg [`ES_TO_M1_BUS_WD -1:0] es_to_m1_bus_r;
wire        m1_res_from_mem;
wire        m1_gr_we;
wire [ 4:0] m1_dest;
wire [31:0] m1_alu_result;
wire [31:0] m1_pc;
//lab7添加
wire [11:0] m1_mem_inst;//直接传走
wire [31:0] m1_rt_value;
// wire 		load_sign_lb;
// wire 		load_sign_lh;
// wire [31:0] mem_result_lb;
// wire [31:0] mem_result_lbu;
// wire [31:0] mem_result_lh;
// wire [31:0] mem_result_lhu;
// wire [31:0] mem_result_lwl;
// wire [31:0] mem_result_lwr;
//lab8添加
wire [2:0] m1_sel;
wire [4:0] m1_mfc0_rd; 
wire m1_inst_mtc0;
wire m1_bd;
wire [4:0] m1_ExcCode;
wire [31:0] m1_data_sram_addr;

assign {
        m1_load_op,       //165
        m1_data_sram_addr,//164:133 
        m1_mfc0_rd     ,  //132:128
        m1_ex          ,  //127:127
        m1_ExcCode     ,  //126:122 
        m1_bd          ,  //121:121
        m1_inst_eret   ,  //120:120
        m1_sel         ,  //119:117 
        m1_inst_mtc0   ,  //116:116 
        m1_inst_mfc0   ,  //115:115
        m1_rt_value    ,  //114:83
        m1_mem_inst    ,  //82:71
        m1_res_from_mem,  //70:70
        m1_gr_we       ,  //69:69
        m1_dest        ,  //68:64
        m1_alu_result  ,  //63:32
        m1_pc             //31:0
       } = es_to_m1_bus_r;

// wire [31:0] mem_data;
// wire [31:0] ms_final_result;

assign m1_to_ms_bus = {
                        m1_data_sram_addr,//164:133 
                        m1_mfc0_rd     ,  //132:128
                        m1_ex          ,  //127:127
                        m1_ExcCode     ,  //126:122 
                        m1_bd          ,  //121:121
                        m1_inst_eret   ,  //120:120
                        m1_sel         ,  //119:117 
                        m1_inst_mtc0   ,  //116:116 
                        m1_inst_mfc0   ,  //115:115
                        m1_rt_value    ,  //114:83
                        m1_mem_inst    ,  //82:71
                        m1_res_from_mem,  //70:70
                        m1_gr_we       ,  //69:69
                        m1_dest        ,  //68:64
                        m1_alu_result  ,  //63:32
                        m1_pc             //31:0
                        } ;               

//lab7添加
//TODO:data_rdata换成从DCache读回来的数据rdata
// assign load_sign_lb         = (m1_alu_result[1:0] == 2'd0) ? data_rdata[ 7] :
//                               (m1_alu_result[1:0] == 2'd1) ? data_rdata[15] :
//                               (m1_alu_result[1:0] == 2'd2) ? data_rdata[23] :
//                                                              data_rdata[31];                                                  
// assign mem_result_lb[ 7:0]  = (m1_alu_result[1:0] == 2'd0) ? data_rdata[ 7:0 ] :
//                               (m1_alu_result[1:0] == 2'd1) ? data_rdata[15:8 ] :
//                               (m1_alu_result[1:0] == 2'd2) ? data_rdata[23:16] :
//                                                              data_rdata[31:24];
// assign mem_result_lb[31:8]  = {24{load_sign_lb}};
// assign mem_result_lbu       = {24'd0, mem_result_lb[7:0]};


// //lh/lhu
// assign load_sign_lh         = (m1_alu_result[1:0] == 2'b00) ? data_rdata[15]   :
//                               (m1_alu_result[1:0] == 2'b10) ? data_rdata[31]   : 1'b0;                                                   
// assign mem_result_lh[15:0]  = (m1_alu_result[1:0] == 2'b00) ? data_rdata[15:0] : 
//                               (m1_alu_result[1:0] == 2'b10) ? data_rdata[31:16]: 16'd0;
// assign mem_result_lh[31:16] = {16{load_sign_lh}};
// assign mem_result_lhu       = {16'd0, mem_result_lh[15:0]};

// //lwl
// assign mem_result_lwl       = (m1_alu_result[1:0] == 2'd0) ? {data_rdata[ 7:0], m1_rt_value[23:0]} :
//                               (m1_alu_result[1:0] == 2'd1) ? {data_rdata[15:0], m1_rt_value[15:0]} :
//                               (m1_alu_result[1:0] == 2'd2) ? {data_rdata[23:0], m1_rt_value[7 :0]} :
//                                                               data_rdata[31:0];

// //lwr
// assign mem_result_lwr       = (m1_alu_result[1:0] == 2'd0) ?  data_rdata[31:0]                       :
//                               (m1_alu_result[1:0] == 2'd1) ? {m1_rt_value[31:24], data_rdata[31: 8]} :
//                               (m1_alu_result[1:0] == 2'd2) ? {m1_rt_value[31:16], data_rdata[31:16]} :
//                                                              {m1_rt_value[31: 8], data_rdata[31:24]} ;




assign m1_ready_go    = 1'b1;
assign m1_allowin     = !m1_valid || m1_ready_go && ms_allowin;
assign m1_to_ms_valid = m1_valid && m1_ready_go;
always @(posedge clk) begin
    if (reset) begin
        m1_valid <= 1'b0;
    end
    else if (m1_allowin) begin
        m1_valid <= es_to_m1_valid;
    end
end

always @(posedge clk ) begin
    if (reset)
        es_to_m1_bus_r <= 0;
    else if (flush) //清除流水线
        es_to_m1_bus_r <= 0;
    else if (es_to_m1_valid && m1_allowin) begin
        es_to_m1_bus_r <= es_to_m1_bus;
    end
end

// assign mem_data = (m1_mem_inst[2]) ? mem_result_lb  :
//                   (m1_mem_inst[3]) ? mem_result_lbu :
//                   (m1_mem_inst[4]) ? mem_result_lh  :
//                   (m1_mem_inst[5]) ? mem_result_lhu : 
//                   (m1_mem_inst[6]) ? mem_result_lwl :
//                   (m1_mem_inst[7]) ? mem_result_lwr : data_rdata; //lw对应data_rdata

// assign ms_final_result = m1_alu_result;
                                         
//lab4添加
assign M1_dest   = m1_dest & {5{m1_to_ms_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign M1_result = m1_alu_result; //ms_final_result可以是DM中值,也可以是MEM阶段ALU运算值,forward到ID阶段
endmodule
