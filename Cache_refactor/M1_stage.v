`include "global_defines.vh"

module m1_stage(
    input  [ 5:0]   ext_int, //6个外部硬件中断输入
    input           clk,
    input           reset,
    //allowin  
    input           ms_allowin,
    output          m1s_allowin,
    //from es  
    input           es_to_m1s_valid,
    input  [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus,
    //to ws
    output          m1s_to_ms_valid,
    output [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus,
    //from data-sram
    // input  [                 31:0] data_rdata,//TODO:data_rdata换成从DCache读回来的数据rdata
    output [ 4:0]   M1s_dest, // MEM阶段写RF地址 通过旁路送到ID阶段
    output          m1s_load_op,     // M1阶段是否是load指令，通过旁路送到ID阶段
    output [31:0]   M1s_result, //MEM阶段 ms_final_result  
    output          m1s_ex, //判定MEM阶段是否有被标记为例外的指令
    output          m1s_inst_mfc0, //MEM阶段指令为mfc0 前递到ID阶段
    output          m1s_inst_eret, //MEM阶段指令为eret 前递到EXE 控制SRAM读写

    output          flush, //flush=1时表明需要处理异常 flush由WB阶段中的CP0_reg产生
    output [31:0]   CP0_EPC_out, //CP0寄存器中,EPC的值
    output          CP0_Status_IE_out, //IE=1,全局中断使能开启
    output          CP0_Status_EXL_out, //EXL=0,没有例外正在处理
    output [ 7:0]   CP0_Status_IM_out, //IM对应各个中断源屏蔽位
    output [ 7:0]   CP0_Cause_IP_out, //待处理中断标识
    output          CP0_Cause_TI_out,  //TI为1,触发定时中断;我们将该中断标记在ID阶段
    /********************TLB-CP0交互信号如下********************/
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
    output [3:0]    cp0_to_tlb_index, //tlbwr指令的索引值
    /********************TLB-CP0交互信号如上********************/
    output reg      data_valid,
    output          data_op,
    output [ 7:0]   data_index,
    output [19:0]   data_tag,
    output [ 3:0]   data_offset,
    output [ 3:0]   data_wstrb,
    output [31:0]   data_wdata,
    input           dcache_busy,
    output          isUncache
);
wire  [31:0]  DTLB_RAddr;//实地址
reg           m1s_valid;
wire          m1s_ready_go;
  
reg [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus_r;
wire          m1s_res_from_mem;
wire          m1s_gr_we;
wire [ 4:0]   m1s_dest;
  
wire [31:0]   m1s_pc;
wire [11:0]   m1s_mem_inst;//直接传走
wire [31:0]   m1s_rt_value;

wire [ 2:0]   m1s_sel;
wire [ 4:0]   m1s_mfc0_rd; 
wire          m1s_inst_mtc0;
wire          m1s_bd;
wire [ 4:0]   m1s_Exctype;
wire [31:0]   m1s_alu_result;
wire [31:12]  DTLB_PFN;
wire          eret_flush;
 
wire [31:0]   CP0_data;
wire          m1s_inst_tlbr; 
wire          m1s_inst_tlbwr;
wire          m1s_inst_tlbp;
wire          m1s_inst_tlbwi;
wire          m1s_mem_we;
wire [ 3:0]   sram_wen;
wire [31:0]   sram_wdata;//位数问题！
wire          debug_sw;
wire          debug_lw;

assign debug_sw = (data_index == 8'h9e) & m1s_mem_we & data_valid;
assign debug_lw = (data_index == 8'h9e) & m1s_load_op & data_valid;

assign {
        sram_wdata      ,  //174:143
        sram_wen        ,  //142:139
        m1s_mem_we      ,  //138:138
        m1s_inst_tlbp   ,  //137:137
        m1s_inst_tlbr   ,  //136:136
        m1s_inst_tlbwi  ,  //135:135
        m1s_inst_tlbwr  ,  //134:134
        m1s_load_op     ,  //133
        m1s_mfc0_rd     ,  //132:128
        m1s_ex          ,  //127:127
        m1s_Exctype     ,  //126:122 
        m1s_bd          ,  //121:121
        m1s_inst_eret   ,  //120:120
        m1s_sel         ,  //119:117 
        m1s_inst_mtc0   ,  //116:116 
        m1s_inst_mfc0   ,  //115:115
        m1s_rt_value    ,  //114:83
        m1s_mem_inst    ,  //82:71
        m1s_res_from_mem,  //70:70
        m1s_gr_we       ,  //69:69
        m1s_dest        ,  //68:64
        m1s_alu_result  ,  //63:32
        m1s_pc             //31:0
       } = es_to_m1s_bus_r;

assign m1s_to_ms_bus = {
                        m1s_inst_mfc0   ,  //160:160
                        CP0_data        ,  //128:159
                        m1s_ex          ,  //127:127                                 
                        m1s_rt_value    ,  //114:83
                        m1s_mem_inst    ,  //82:71
                        m1s_res_from_mem,  //70:70
                        m1s_gr_we       ,  //69:69
                        m1s_dest        ,  //68:64
                        m1s_alu_result  ,  //63:32
                        m1s_pc             //31:0
                        } ;               

assign m1s_ready_go    = m1s_ex | (~m1s_load_op & ~m1s_mem_we) | 
                        ((m1s_load_op | m1s_mem_we) & ~dcache_busy);
assign m1s_allowin     = ~m1s_valid || m1s_ready_go && ms_allowin;
assign m1s_to_ms_valid = m1s_valid && m1s_ready_go;
always @(posedge clk) begin
    if (reset) begin
        m1s_valid <= 1'b0;
    end
    else if (m1s_allowin) begin
        m1s_valid <= es_to_m1s_valid;
    end
end

always @(posedge clk ) begin
    if (reset)
        es_to_m1s_bus_r <= 0;
    else if (flush) //清除流水线
        es_to_m1s_bus_r <= 0;
    else if (es_to_m1s_valid && m1s_allowin) begin
        es_to_m1s_bus_r <= es_to_m1s_bus;
    end
end

//lab4添加
assign M1s_dest   = m1s_dest & {5{m1s_valid}}; //写RF地址通过旁路送到ID阶段 注意考虑ms_valid有效性
assign M1s_result = m1s_inst_mfc0 ? CP0_data : m1s_alu_result; //ms_final_result可以是DM中值,也可以是MEM阶段ALU运算值,forward到ID阶段

/******************CP0推到MEM阶段******************/
CP0_Reg u_CP0_Reg(
    .clk                 (clk),
    .reset               (reset),
    .m1s_mfc0_rd         (m1s_mfc0_rd),
    .m1s_sel             (m1s_sel),
    .m1s_valid           (m1s_valid),
    .m1s_inst_mtc0       (m1s_inst_mtc0),
    .m1s_inst_eret       (m1s_inst_eret),
    .m1s_bd              (m1s_bd),
    .m1s_ex              (m1s_ex),
    .m1s_alu_result      (m1s_alu_result),
    .ext_int             (ext_int),
    .Exctype             (m1s_Exctype),
    .m1s_pc              (m1s_pc),
    .CP0_data            (CP0_data),
    .eret_flush          (eret_flush),
    .inst_tlbr           (m1s_inst_tlbr),
    .inst_tlbp           (m1s_inst_tlbp),
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
    .CP0_EPC_out         (CP0_EPC_out),
    .CP0_Status_IE_out   (CP0_Status_IE_out),
    .CP0_Status_EXL_out  (CP0_Status_EXL_out),
    .CP0_Status_IM_out   (CP0_Status_IM_out),
    .CP0_Cause_IP_out    (CP0_Cause_IP_out),
    .CP0_Cause_TI_out    (CP0_Cause_TI_out)
);
/******************CP0推到MEM阶段******************/

DTLB_stage DTLB(
    .clk                 (clk                   ),
    .reset               (reset                 ),
    .DTLB_VPN            (m1s_alu_result[31:12] ), 
    .DTLB_PFN            (DTLB_PFN              ),
    .isUncache           (isUncache             )
);

/*******************CPU与DCache的交互信号赋值如下******************/
always @(*) begin
    if(m1s_ex | m1s_inst_eret)
        data_valid = 1'b0;
    else if((m1s_load_op | m1s_mem_we) & ~dcache_busy & ms_allowin & m1s_valid)
        data_valid = 1'b1;
    else
        data_valid = 1'b0;
end

assign data_op     = m1s_mem_we ? 1'b1 : 1'b0;
assign data_tag    = DTLB_PFN;
assign data_index  = m1s_alu_result[11:4];
assign data_offset = m1s_alu_result[3:0];
assign data_wstrb  = m1s_ex | m1s_inst_eret  ? 4'b0 :
                     m1s_mem_we ? sram_wen : 4'h0; //去掉了es_valid
assign data_wdata  = sram_wdata;
/*******************CPU与DCache的交互信号赋值如上******************/

/******************例外处理部分********************/
assign flush       = eret_flush | m1s_ex; //调用eret指令,以及在WB阶段检测出例外时,都需要清空流水线
/******************例外处理部分********************/

endmodule
