`include "global_defines.vh"

module m1_stage(
    input  [ 5:0]   ext_int, //6���ⲿӲ���ж�����
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
    output [ 4:0]   M1s_dest, // MEM�׶�дRF��ַ ͨ����·�͵�ID�׶�
    output          m1s_load_op,     // M1�׶��Ƿ���loadָ�ͨ����·�͵�ID�׶�
    output [31:0]   M1s_result, //MEM�׶� ms_final_result  
    output          m1s_ex, //�ж�MEM�׶��Ƿ��б����Ϊ�����ָ��
    output          m1s_inst_mfc0, //MEM�׶�ָ��Ϊmfc0 ǰ�ݵ�ID�׶�
    output          m1s_inst_eret, //MEM�׶�ָ��Ϊeret ǰ�ݵ�EXE ����SRAM��д
    output          flush, //flush=1ʱ������Ҫ�����쳣 flush��WB�׶��е�CP0_reg����
    output          flush_refill,
    output [31:0]   CP0_EPC_out, //CP0�Ĵ�����,EPC��ֵ
    output          CP0_Status_IE_out, //IE=1,ȫ���ж�ʹ�ܿ���
    output          CP0_Status_EXL_out, //EXL=0,û���������ڴ���
    output [ 7:0]   CP0_Status_IM_out, //IM��Ӧ�����ж�Դ����λ
    output [ 7:0]   CP0_Cause_IP_out, //�������жϱ�ʶ
    output          CP0_Cause_TI_out,  //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
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
    output [3:0]    cp0_to_tlb_index, //tlbwrָ�������ֵ
    output [31:0]   m1s_alu_result,
    /********************TLB-CP0�����ź�����********************/
    output reg      data_valid,
    output          data_op,
    output [ 7:0]   data_index,
    output [19:0]   data_tag,
    output [ 3:0]   data_offset,
    output [ 3:0]   data_wstrb,
    output [31:0]   data_wdata,
    input           dcache_busy,
    input           DTLB_found,
    input  [ 3:0]   DTLB_index,
    input  [19:0]   DTLB_pfn,
    input  [ 2:0]   DTLB_c,
    input           DTLB_d, 
    input           DTLB_v,
    output          isUncache,
    output          TLB_Buffer_Flush_Final
);
wire  [31:0]  DTLB_RAddr;//ʵ��ַ
reg           m1s_valid;
wire          m1s_ready_go;
  
reg [`ES_TO_M1_BUS_WD -1:0] es_to_m1s_bus_r;
wire          m1s_res_from_mem;
wire          m1s_gr_we;
wire [ 4:0]   m1s_dest;
  
wire [31:0]   m1s_pc;
//lab7����  
wire [11:0]   m1s_mem_inst;//ֱ�Ӵ���
wire [31:0]   m1s_rt_value;

//lab8����
wire [2:0] m1s_sel;
wire [4:0] m1s_mfc0_rd; 
wire m1s_inst_mtc0;
wire m1s_bd;
wire [4:0] temp_m1s_Exctype;
wire [4:0] m1s_Exctype;

wire        eret_flush;

wire [31:0] CP0_data;
wire        m1s_inst_tlbr; 
wire        m1s_inst_tlbwr;
wire        m1s_mem_we;
wire [3:0]  sram_wen;
wire[31:0]  sram_wdata;//λ�����⣡
wire        temp_m1s_ex;
wire        TLB_Buffer_Flush;
wire        debug_sw;
wire        debug_lw;

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
        temp_m1s_ex     ,  //127:127
        temp_m1s_Exctype,  //126:122 
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
    else if (flush | flush_refill) //�����ˮ��
        es_to_m1s_bus_r <= 0;
    else if (es_to_m1s_valid && m1s_allowin) begin
        es_to_m1s_bus_r <= es_to_m1s_bus;
    end
end

//lab4����
assign M1s_dest   = m1s_dest & {5{m1s_valid}}; //дRF��ַͨ����·�͵�ID�׶� ע�⿼��ms_valid��Ч��
assign M1s_result = m1s_inst_mfc0 ? CP0_data : m1s_alu_result; //ms_final_result������DM��ֵ,Ҳ������MEM�׶�ALU����ֵ,forward��ID�׶�

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
/******************CP0�Ƶ�MEM�׶�******************/

wire DTLB_EX_RD_Refill   ;
wire DTLB_EX_WR_Refill   ;
wire DTLB_EX_RD_Invalid  ;
wire DTLB_EX_WR_Invalid  ;
wire DTLB_EX_Modified    ;
wire DTLB_Buffer_Wr  ;
wire DTLB_Buffer_Stall;
wire DTLB_Buffer_Valid_m1s;
DTLB_stage DTLB(
        .clk                 (clk                 ),
        .reset               (reset               ),
        .DTLB_found          (DTLB_found          ),
        .DTLB_VAddr          (m1s_alu_result      ), 
        .DTLB_asid           (cp0_to_tlb_asid     ),
        .DTLB_RAddr          (DTLB_RAddr          ),
        .DTLB_index          (DTLB_index          ),
        .DTLB_pfn            (DTLB_pfn            ),
        .DTLB_c              (DTLB_c              ),
        .DTLB_d              (DTLB_d              ),
        .DTLB_v              (DTLB_v              ),
        .isUncache           (isUncache           ),
        .DTLB_read           (m1s_load_op         ),
        .DTLB_store          (m1s_mem_we          ),
        .DTLB_EX_RD_Refill   (DTLB_EX_RD_Refill   ),
        .DTLB_EX_WR_Refill   (DTLB_EX_WR_Refill   ),
        .DTLB_EX_RD_Invalid  (DTLB_EX_RD_Invalid  ),
        .DTLB_EX_WR_Invalid  (DTLB_EX_WR_Invalid  ),
        .DTLB_EX_Modified    (DTLB_EX_Modified    ),
        .TLB_Buffer_Flush    (TLB_Buffer_Flush_Final ),
        .DTLB_Buffer_Wr      (DTLB_Buffer_Wr      ),
        .DTLB_Buffer_Stall   (DTLB_Buffer_Stall   ),
        .DTLB_Buffer_Valid_m1s   (DTLB_Buffer_Valid_m1s   )
);

/*******************CPU��DCache�Ľ����źŸ�ֵ����******************/
always @(*) begin
    if(m1s_ex | m1s_inst_eret)
        data_valid = 1'b0;
    else if((m1s_load_op | m1s_mem_we) & ~dcache_busy & ms_allowin & m1s_valid)
        data_valid = 1'b1;
    else
        data_valid = 1'b0;
end

assign data_op    = m1s_mem_we ? 1'b1 : 1'b0;
assign {data_tag,data_index,data_offset} = DTLB_RAddr;
assign data_wstrb = m1s_ex | m1s_inst_eret  ? 4'b0 :
                    m1s_mem_we ? sram_wen : 4'h0; //ȥ����es_valid
assign data_wdata = sram_wdata;
/*******************CPU��DCache�Ľ����źŸ�ֵ����******************/

assign TLB_Buffer_Flush          = (m1s_inst_tlbwi || m1s_inst_tlbr );
assign TLB_Buffer_Flush_Final    = (m1s_ex)? 1'b0 : TLB_Buffer_Flush;//��һ��TLBW������MEM��ʱ����ǡ�����������������ߣ��ͻ���ַ������TLBBuffer��Ȼ��ͻᷴ��TLBStall

/******************���⴦������********************/
assign flush        = eret_flush | m1s_ex; //����eretָ��,�Լ���WB�׶μ�������ʱ,����Ҫ�����ˮ��
assign flush_refill = DTLB_EX_RD_Refill | DTLB_EX_WR_Refill | (temp_m1s_Exctype == `ITLB_EX_Refill); //����eretָ��,�Լ���WB�׶μ�������ʱ,����Ҫ�����ˮ��
assign m1s_ex       = temp_m1s_ex | DTLB_EX_RD_Refill | DTLB_EX_WR_Refill | DTLB_EX_RD_Invalid 
                      | DTLB_EX_WR_Invalid | DTLB_EX_Modified;

assign m1s_Exctype = DTLB_EX_RD_Refill  ? `DTLB_EX_RD_Refill  :
                     DTLB_EX_WR_Refill  ? `DTLB_EX_WR_Refill  :
                     DTLB_EX_RD_Invalid ? `DTLB_EX_RD_Invalid :
                     DTLB_EX_WR_Invalid ? `DTLB_EX_WR_Invalid :
                     DTLB_EX_Modified   ? `DTLB_EX_Modified   : temp_m1s_Exctype;    
/******************���⴦������********************/

endmodule
