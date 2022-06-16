`include "global_defines.vh"

module m1_stage(
    input  [ 5:0]   ext_int, //6���ⲿӲ���ж�����
    input         clk,
    input         reset,
    //allowin
    input         ms_allowin,
    output        m1s_allowin,
    //from es
    input         es_to_m1s_valid,
    input  [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus,
    //to ws
    output        m1s_to_ms_valid,
    output [`M1_TO_MS_BUS_WD -1:0] m1s_to_ms_bus,
    //from data-sram
    // input  [                 31:0] data_rdata,//TODO:data_rdata���ɴ�DCache������������rdata
    output [ 4:0] M1s_dest, // MEM�׶�дRF��ַ ͨ����·�͵�ID�׶�
    output m1s_load_op,     // M1�׶��Ƿ���loadָ�ͨ����·�͵�ID�׶�
    output [31:0] M1s_result, //MEM�׶� ms_final_result  
    output        m1s_ex, //�ж�MEM�׶��Ƿ��б����Ϊ�����ָ��
    output        m1s_inst_mfc0, //MEM�׶�ָ��Ϊmfc0 ǰ�ݵ�ID�׶�
    output        m1s_inst_eret, //MEM�׶�ָ��Ϊeret ǰ�ݵ�EXE ����SRAM��д

    output          flush, //flush=1ʱ������Ҫ�����쳣 flush��WB�׶��е�CP0_reg����
    // output flush_refill,
    output [31:0]   CP0_EPC, //CP0�Ĵ�����,EPC��ֵ
    output          CP0_Status_IE, //IE=1,ȫ���ж�ʹ�ܿ���
    output          CP0_Status_EXL, //EXL=0,û���������ڴ���
    output [ 7:0]   CP0_Status_IM, //IM��Ӧ�����ж�Դ����λ
    output [ 7:0]   CP0_Cause_IP, //�������жϱ�ʶ
    output          CP0_Cause_TI,  //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
    /********************TLB-CP0�����ź�����********************/
    output          m1s_inst_tlbwi, //TLBдʹ��:��Ӧinst_tlbwi
    output          m1s_inst_tlbp , //TLB��ѯ:��Ӧinst_tlbp
    input           tlb_to_cp0_found,//tlb�����Ƿ�ɹ�
    input  [18:0]   tlb_to_cp0_vpn2, //����Ϊtlbд�������
    input  [7:0]    tlb_to_cp0_asid ,
    input  [3:0]    tlb_to_cp0_index, 
    input  [19:0]   tlb_to_cp0_pfn0 , //����Ϊentrylo0�Ĵ���д��tlb������
    input  [2:0]    tlb_to_cp0_c0 ,
    input           tlb_to_cp0_d0 ,
    input           tlb_to_cp0_v0 ,
    input           tlb_to_cp0_g0 ,
    input  [19:0]   tlb_to_cp0_pfn1 , //����Ϊentrylo1�Ĵ���д��tlb������
    input  [2:0]    tlb_to_cp0_c1 ,
    input           tlb_to_cp0_d1 ,
    input           tlb_to_cp0_v1 ,
    input           tlb_to_cp0_g1 ,
    output [18:0]   cp0_to_tlb_vpn2,  //����Ϊtlb����������
    output [7:0]    cp0_to_tlb_asid ,
    output [19:0]   cp0_to_tlb_pfn0 , //����Ϊentrylo0�Ĵ���������tlb������
    output [2:0]    cp0_to_tlb_c0 ,
    output          cp0_to_tlb_d0 ,
    output          cp0_to_tlb_v0 ,
    output          cp0_to_tlb_g0 ,
    output [19:0]   cp0_to_tlb_pfn1, //����Ϊentrylo1�Ĵ���������tlb������
    output [2:0]    cp0_to_tlb_c1,
    output          cp0_to_tlb_d1 ,
    output          cp0_to_tlb_v1 ,
    output          cp0_to_tlb_g1 ,
    output [3:0]    cp0_to_tlb_index //tlbwrָ�������ֵ
    /********************TLB-CP0�����ź�����********************/
);

reg         m1s_valid;
wire        m1s_ready_go;

reg [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus_r;
wire        m1s_res_from_mem;
wire        m1s_gr_we;
wire [ 4:0] m1s_dest;
wire [31:0] m1s_alu_result;
wire [31:0] m1s_pc;
//lab7����
wire [11:0] m1s_mem_inst;//ֱ�Ӵ���
wire [31:0] m1s_rt_value;
// wire 		load_sign_lb;
// wire 		load_sign_lh;
// wire [31:0] mem_result_lb;
// wire [31:0] mem_result_lbu;
// wire [31:0] mem_result_lh;
// wire [31:0] mem_result_lhu;
// wire [31:0] mem_result_lwl;
// wire [31:0] mem_result_lwr;
//lab8����
wire [2:0] m1s_sel;
wire [4:0] m1s_mfc0_rd; 
wire m1s_inst_mtc0;
wire m1s_bd;
wire [4:0] m1s_ExcCode;
//wire [31:0] m1s_data_sram_addr;

wire        eret_flush;

wire [31:0] CP0_data;
wire        m1s_inst_tlbr; 
wire        m1s_inst_tlbwr;

assign {
        m1s_inst_tlbp   ,  //168:168
        m1s_inst_tlbr   ,  //167:167
        m1s_inst_tlbwi  ,  //166:166
        m1s_inst_tlbwr  ,  //165:165
        m1s_load_op,       //165
        //m1_data_sram_addr,//164:133 
        m1s_mfc0_rd     ,  //132:128
        m1s_ex          ,  //127:127
        m1s_ExcCode     ,  //126:122 
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

// wire [31:0] mem_data;
// wire [31:0] m1s_final_result;

assign m1s_to_ms_bus = {
                       // m1s_data_sram_addr,//164:133 
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

//lab7����
//TODO:data_rdata���ɴ�DCache������������rdata
// assign load_sign_lb         = (m1s_alu_result[1:0] == 2'd0) ? data_rdata[ 7] :
//                               (m1s_alu_result[1:0] == 2'd1) ? data_rdata[15] :
//                               (m1s_alu_result[1:0] == 2'd2) ? data_rdata[23] :
//                                                              data_rdata[31];                                                  
// assign mem_result_lb[ 7:0]  = (m1s_alu_result[1:0] == 2'd0) ? data_rdata[ 7:0 ] :
//                               (m1s_alu_result[1:0] == 2'd1) ? data_rdata[15:8 ] :
//                               (m1s_alu_result[1:0] == 2'd2) ? data_rdata[23:16] :
//                                                              data_rdata[31:24];
// assign mem_result_lb[31:8]  = {24{load_sign_lb}};
// assign mem_result_lbu       = {24'd0, mem_result_lb[7:0]};


// //lh/lhu
// assign load_sign_lh         = (m1s_alu_result[1:0] == 2'b00) ? data_rdata[15]   :
//                               (m1s_alu_result[1:0] == 2'b10) ? data_rdata[31]   : 1'b0;                                                   
// assign mem_result_lh[15:0]  = (m1s_alu_result[1:0] == 2'b00) ? data_rdata[15:0] : 
//                               (m1s_alu_result[1:0] == 2'b10) ? data_rdata[31:16]: 16'd0;
// assign mem_result_lh[31:16] = {16{load_sign_lh}};
// assign mem_result_lhu       = {16'd0, mem_result_lh[15:0]};

// //lwl
// assign mem_result_lwl       = (m1s_alu_result[1:0] == 2'd0) ? {data_rdata[ 7:0], m1_rt_value[23:0]} :
//                               (m1s_alu_result[1:0] == 2'd1) ? {data_rdata[15:0], m1_rt_value[15:0]} :
//                               (m1s_alu_result[1:0] == 2'd2) ? {data_rdata[23:0], m1_rt_value[7 :0]} :
//                                                               data_rdata[31:0];

// //lwr
// assign mem_result_lwr       = (m1s_alu_result[1:0] == 2'd0) ?  data_rdata[31:0]                       :
//                               (m1s_alu_result[1:0] == 2'd1) ? {m1_rt_value[31:24], data_rdata[31: 8]} :
//                               (m1s_alu_result[1:0] == 2'd2) ? {m1_rt_value[31:16], data_rdata[31:16]} :
//                                                              {m1_rt_value[31: 8], data_rdata[31:24]} ;




assign m1s_ready_go    = 1'b1;
assign m1s_allowin     = !m1s_valid || m1s_ready_go && ms_allowin;
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
    else if (flush) //�����ˮ��
        es_to_m1s_bus_r <= 0;
    else if (es_to_m1s_valid && m1s_allowin) begin
        es_to_m1s_bus_r <= es_to_m1s_bus;
    end
end

// assign mem_data = (m1s_mem_inst[2]) ? mem_result_lb  :
//                   (m1s_mem_inst[3]) ? mem_result_lbu :
//                   (m1s_mem_inst[4]) ? mem_result_lh  :
//                   (m1s_mem_inst[5]) ? mem_result_lhu : 
//                   (m1s_mem_inst[6]) ? mem_result_lwl :
//                   (m1s_mem_inst[7]) ? mem_result_lwr : data_rdata; //lw��Ӧdata_rdata

// assign ms_final_result = m1s_alu_result;
                                         
//lab4����
assign M1s_dest   = m1s_dest & {5{m1s_to_ms_valid}}; //дRF��ַͨ����·�͵�ID�׶� ע�⿼��ms_valid��Ч��
assign M1s_result = m1s_alu_result; //ms_final_result������DM��ֵ,Ҳ������MEM�׶�ALU����ֵ,forward��ID�׶�

/******************CP0�Ƶ�MEM�׶�******************/
CP0_Reg u_CP0_Reg(
    .clk                 (clk),
    .reset               (reset),
    .m1s_mfc0_rd         (m1s_mfc0_rd),
    .m1s_sel             (m1s_sel),
    .m1s_valid           (m1s_valid),
    .m1s_inst_mtc0       (m1s_inst_mtc0),
    .m1s_inst_eret       (m1s_inst_eret),
    .m1s_result          (m1s_alu_result),
    .m1s_bd              (m1s_bd),
    .m1s_ex              (m1s_ex),
    .m1s_alu_result      (m1s_alu_result),
    .ext_int             (ext_int),
    .ExcCode             (m1s_ExcCode),
    .m1s_pc               (m1s_pc),
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
    .CP0_EPC             (CP0_EPC),
    .CP0_Status_IE       (CP0_Status_IE),
    .CP0_Status_EXL      (CP0_Status_EXL),
    .CP0_Status_IM       (CP0_Status_IM),
    .CP0_Cause_IP        (CP0_Cause_IP),
    .CP0_Cause_TI        (CP0_Cause_TI)
);
/******************CP0�Ƶ�MEM�׶�******************/


/******************���⴦������********************/
assign flush = eret_flush | m1s_ex; //����eretָ��,�Լ���WB�׶μ�������ʱ,����Ҫ�����ˮ��
/******************���⴦������********************/

endmodule