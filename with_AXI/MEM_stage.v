`include "global_defines.vh"

module mem_stage(
    input  [ 5:0]   ext_int, //6个外部硬件中断输入
    input           clk,
    input           reset,
    //allowin  
    input           ws_allowin,
    output          ms_allowin,
    //from es  
    input           es_to_ms_valid,
    input           [`ES_TO_MS_BUS_WD -1:0] es_to_ms_bus,
    //to ws  
    output          ms_to_ws_valid,
    output          [`MS_TO_WS_BUS_WD -1:0] ms_to_ws_bus,
    //from data-sram
    input  [31:0]   data_rdata,//TODO:data_rdata换成从DCache读回来的数据rdata
    output [ 4:0]   MEM_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    output [31:0]   MEM_result, //MEM阶段 ms_final_result  
    // input         flush, //flush=1时表明需要处理异常
    output          ms_ex, //判定MEM阶段是否有被标记为例外的指令
    output          ms_inst_mfc0, //MEM阶段指令为mfc0 前递到ID阶段
    output          ms_inst_eret, //MEM阶段指令为eret 前递到EXE 控制SRAM读写
    
    output          flush, //flush=1时表明需要处理异常 flush由WB阶段中的CP0_reg产生
    // output flush_refill,
    output [31:0]   CP0_EPC, //CP0寄存器中,EPC的值
    output          CP0_Status_IE, //IE=1,全局中断使能开启
    output          CP0_Status_EXL, //EXL=0,没有例外正在处理
    output [ 7:0]   CP0_Status_IM, //IM对应各个中断源屏蔽位
    output [ 7:0]   CP0_Cause_IP, //待处理中断标识
    output          CP0_Cause_TI,  //TI为1,触发定时中断;我们将该中断标记在ID阶段
    /********************TLB-CP0交互信号如下********************/
    output          ms_inst_tlbwi, //TLB写使能:对应inst_tlbwi
    output          ms_inst_tlbp , //TLB查询:对应inst_tlbp
    input           tlb_to_cp0_found,//tlb查找是否成功
    input  [18:0]   tlb_to_cp0_vpn2, //以下为tlb写入的数据
    input  [7:0]    tlb_to_cp0_asid ,
    input  [3:0]    tlb_to_cp0_index, 
    input  [19:0]   tlb_to_cp0_pfn0 , //以下为entrylo0寄存器写入tlb的数据
    input  [2:0]    tlb_to_cp0_c0 ,
    input           tlb_to_cp0_d0 ,
    input           tlb_to_cp0_v0 ,
    input           tlb_to_cp0_g0 ,
    input  [19:0]   tlb_to_cp0_pfn1 , //以下为entrylo1寄存器写入tlb的数据
    input  [2:0]    tlb_to_cp0_c1 ,
    input           tlb_to_cp0_d1 ,
    input           tlb_to_cp0_v1 ,
    input           tlb_to_cp0_g1 ,
    output [18:0]   cp0_to_tlb_vpn2,  //以下为tlb读出的数据
    output [7:0]    cp0_to_tlb_asid ,
    output [19:0]   cp0_to_tlb_pfn0 , //以下为entrylo0寄存器读出的tlb的数据
    output [2:0]    cp0_to_tlb_c0 ,
    output          cp0_to_tlb_d0 ,
    output          cp0_to_tlb_v0 ,
    output          cp0_to_tlb_g0 ,
    output [19:0]   cp0_to_tlb_pfn1, //以下为entrylo1寄存器读出的tlb的数据
    output [2:0]    cp0_to_tlb_c1,
    output          cp0_to_tlb_d1 ,
    output          cp0_to_tlb_v1 ,
    output          cp0_to_tlb_g1 ,
    output [3:0]    cp0_to_tlb_index //tlbwr指令的索引值
    /********************TLB-CP0交互信号如上********************/
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
wire [2:0]  ms_sel;
wire [4:0]  ms_mfc0_rd; 
wire        ms_inst_mtc0;
wire        ms_bd;
wire [4:0]  ms_ExcCode;
//wire [31:0] ms_data_sram_addr;

wire        eret_flush;

wire [31:0] CP0_data;
wire        ms_inst_tlbr; 
wire        ms_inst_tlbwr;


assign {  
        ms_inst_tlbp   ,  //168:168
        ms_inst_tlbr   ,  //167:167
        ms_inst_tlbwi  ,  //166:166
        ms_inst_tlbwr  ,  //165:165
       // ms_data_sram_addr,//164:133 
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
                       //ms_data_sram_addr,//102:71
                       ms_ex          ,  //70:70
                       ms_gr_we       ,  //69:69 --写RF使能
                       ms_dest        ,  //68:64 --写RF的地址
                       ms_final_result,  //63:32 --写RF的数据
                       ms_pc             //31:0 --MEM阶段 PC值
                      };

//lab7添加
//TODO:data_rdata换成从DCache读回来的数据rdata
assign load_sign_lb         = (ms_alu_result[1:0] == 2'd0) ? data_rdata[ 7] :
                              (ms_alu_result[1:0] == 2'd1) ? data_rdata[15] :
                              (ms_alu_result[1:0] == 2'd2) ? data_rdata[23] :
                                                             data_rdata[31];                                                  
assign mem_result_lb[ 7:0]  = (ms_alu_result[1:0] == 2'd0) ? data_rdata[ 7:0 ] :
                              (ms_alu_result[1:0] == 2'd1) ? data_rdata[15:8 ] :
                              (ms_alu_result[1:0] == 2'd2) ? data_rdata[23:16] :
                                                             data_rdata[31:24];
assign mem_result_lb[31:8]  = {24{load_sign_lb}};
assign mem_result_lbu       = {24'd0, mem_result_lb[7:0]};


//lh/lhu
assign load_sign_lh         = (ms_alu_result[1:0] == 2'b00) ? data_rdata[15]   :
                              (ms_alu_result[1:0] == 2'b10) ? data_rdata[31]   : 1'b0;                                                   
assign mem_result_lh[15:0]  = (ms_alu_result[1:0] == 2'b00) ? data_rdata[15:0] : 
                              (ms_alu_result[1:0] == 2'b10) ? data_rdata[31:16]: 16'd0;
assign mem_result_lh[31:16] = {16{load_sign_lh}};
assign mem_result_lhu       = {16'd0, mem_result_lh[15:0]};

//lwl
assign mem_result_lwl       = (ms_alu_result[1:0] == 2'd0) ? {data_rdata[ 7:0], ms_rt_value[23:0]} :
                              (ms_alu_result[1:0] == 2'd1) ? {data_rdata[15:0], ms_rt_value[15:0]} :
                              (ms_alu_result[1:0] == 2'd2) ? {data_rdata[23:0], ms_rt_value[7 :0]} :
                                                              data_rdata[31:0];

//lwr
assign mem_result_lwr       = (ms_alu_result[1:0] == 2'd0) ?  data_rdata[31:0]                       :
                              (ms_alu_result[1:0] == 2'd1) ? {ms_rt_value[31:24], data_rdata[31: 8]} :
                              (ms_alu_result[1:0] == 2'd2) ? {ms_rt_value[31:16], data_rdata[31:16]} :
                                                             {ms_rt_value[31: 8], data_rdata[31:24]} ;




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
                  (ms_mem_inst[7]) ? mem_result_lwr : data_rdata; //lw对应data_rdata

assign ms_final_result = ms_inst_mfc0    ? CP0_data :
                         ms_res_from_mem ? mem_data : 
                                           ms_alu_result;
                                         
//lab4添加
assign MEM_dest   = ms_dest & {5{ms_to_ws_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign MEM_result = ms_final_result; //ms_final_result可以是DM中值,也可以是MEM阶段ALU运算值,forward到ID阶段

/******************CP0推到MEM阶段******************/
CP0_Reg u_CP0_Reg(
    .clk                 (clk),
    .reset               (reset),
    .ms_mfc0_rd          (ms_mfc0_rd),
    .ms_sel              (ms_sel),
    .ms_valid            (ms_valid),
    .ms_inst_mtc0        (ms_inst_mtc0),
    .ms_inst_eret        (ms_inst_eret),
    .ms_result           (ms_alu_result),
    .ms_bd               (ms_bd),
    .ms_ex               (ms_ex),
    .ms_alu_result       (ms_alu_result),
    .ext_int             (ext_int),
    .ExcCode             (ms_ExcCode),
    .ms_pc               (ms_pc),
    .CP0_data            (CP0_data),
    .eret_flush          (eret_flush),
    .inst_tlbr           (ms_inst_tlbr),
    .inst_tlbp           (ms_inst_tlbp),
    .tlb_to_cp0_found    (tlb_to_cp0_found),
    .tlb_to_cp0_vpn2     (tlb_to_cp0_vpn2),
    .tlb_to_cp0_asid     (tlb_to_cp0_asid),
    .tlb_to_cp0_index    (tlb_to_cp0_index),
    .tlb_to_cp0_pfn0     (tlb_to_cp0_pfn0),
    .tlb_to_cp0_c0       (tlb_to_cp0_c0),
    .tlb_to_cp0_d0       (tlb_to_cp0_d0),
    .tlb_to_cp0_v0       (tlb_to_cp0_v0),
    .tlb_to_cp0_g0       (tlb_to_cp0_g0),
    .tlb_to_cp0_pfn1     (tlb_to_cp0_pfn1),
    .tlb_to_cp0_c1       (tlb_to_cp0_c1),
    .tlb_to_cp0_d1       (tlb_to_cp0_d1),
    .tlb_to_cp0_v1       (tlb_to_cp0_v1),
    .tlb_to_cp0_g1       (tlb_to_cp0_g1),
    .cp0_to_tlb_vpn2     (cp0_to_tlb_vpn2),
    .cp0_to_tlb_asid     (cp0_to_tlb_asid),
    .cp0_to_tlb_pfn0     (cp0_to_tlb_pfn0),
    .cp0_to_tlb_c0       (cp0_to_tlb_c0),
    .cp0_to_tlb_d0       (cp0_to_tlb_d0),
    .cp0_to_tlb_v0       (cp0_to_tlb_v0),
    .cp0_to_tlb_g0       (cp0_to_tlb_g0),
    .cp0_to_tlb_pfn1     (cp0_to_tlb_pfn1),
    .cp0_to_tlb_c1       (cp0_to_tlb_c1),
    .cp0_to_tlb_d1       (cp0_to_tlb_d1),
    .cp0_to_tlb_v1       (cp0_to_tlb_v1),
    .cp0_to_tlb_g1       (cp0_to_tlb_g1),
    .cp0_to_tlb_index    (cp0_to_tlb_index),
    .CP0_EPC             (CP0_EPC),
    .CP0_Status_IE       (CP0_Status_IE),
    .CP0_Status_EXL      (CP0_Status_EXL),
    .CP0_Status_IM       (CP0_Status_IM),
    .CP0_Cause_IP        (CP0_Cause_IP),
    .CP0_Cause_TI        (CP0_Cause_TI)
);
/******************CP0推到MEM阶段******************/

/******************例外处理部分********************/
assign flush = eret_flush | ms_ex; //调用eret指令,以及在WB阶段检测出例外时,都需要清空流水线
/******************例外处理部分********************/

endmodule
