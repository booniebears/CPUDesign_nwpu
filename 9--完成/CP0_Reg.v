`include "global_defines.vh"

module CP0_Reg 
(
    input         clk,
    input         reset,
    input  [ 4:0] m1s_mfc0_rd,
    input  [ 2:0] m1s_sel,
    input         m1s_valid,
    input         m1s_inst_mtc0,
    input         m1s_inst_eret,
    input  [31:0] m1s_result,
    input         m1s_bd,
    input         m1s_ex, //ms�׶� ����������,��Ϊ1,����Ϊ0
    input  [31:0] m1s_alu_result, //���е�ַ������,����Ҫ��BadVAddr�Ĵ�����¼��������ַ
    input  [ 5:0] ext_int, //6���ⲿӲ���ж�����
    input  [ 4:0] Exctype, //Cause�Ĵ����� �����5λ����
    input  [31:0] m1s_pc, //MEM�׶ε�PCֵ
    output [31:0] CP0_data, //mfc0��CP0�ж���������
    output        eret_flush, //ERETָ���޸�EXL���ʹ���ź�
    input         inst_tlbr,
    input         inst_tlbp, //�ж��Ƿ�Ϊtlbpָ��
    input         tlb_to_cp0_found,//tlb�����Ƿ�ɹ�
    input  [18:0] tlb_to_cp0_vpn2, //����Ϊtlbд�������
    input  [ 7:0] tlb_to_cp0_asid ,
    input  [ 3:0] tlb_to_cp0_index, 
    input  [19:0] tlb_to_cp0_pfn0 ,//����Ϊentrylo0�Ĵ���д��tlb������
    input  [ 2:0] tlb_to_cp0_c0 ,
    input         tlb_to_cp0_d0 ,
    input         tlb_to_cp0_v0 ,
    input         tlb_to_cp0_g0 ,
    input  [19:0] tlb_to_cp0_pfn1 ,//����Ϊentrylo1�Ĵ���д��tlb������
    input  [ 2:0] tlb_to_cp0_c1 ,
    input         tlb_to_cp0_d1 ,
    input         tlb_to_cp0_v1 ,
    input         tlb_to_cp0_g1 ,
    output [18:0] cp0_to_tlb_vpn2, //����Ϊtlb����������
    output [ 7:0] cp0_to_tlb_asid,
    output [19:0] cp0_to_tlb_pfn0,//����Ϊentrylo0�Ĵ���������tlb������
    output [ 2:0] cp0_to_tlb_c0 ,
    output        cp0_to_tlb_d0 ,
    output        cp0_to_tlb_v0 ,
    output        cp0_to_tlb_g0 ,
    output [19:0] cp0_to_tlb_pfn1,//����Ϊentrylo1�Ĵ���������tlb������
    output [ 2:0] cp0_to_tlb_c1 ,
    output        cp0_to_tlb_d1 ,
    output        cp0_to_tlb_v1 ,
    output        cp0_to_tlb_g1 ,
    output [ 3:0] cp0_to_tlb_index,//����ֵ
    output [31:0] CP0_EPC_out, 
    output        CP0_Status_IE_out,
    output        CP0_Status_EXL_out,
    output [ 7:0] CP0_Status_IM_out,
    output [ 7:0] CP0_Cause_IP_out,
    output        CP0_Cause_TI_out //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
);

/*
    ����ӵ�CP0�Ĵ���ģ��:
    CP0_Cause_CE   29-28  R
    CP0_Context_BadVPN2 22-4
    CP0_PageMask 31-0
    CP0_PRId 31-0
    CP0_Ebase 31-0
    CP0_Config 31-0
    CP0_Config1_M 31 R
    CP0_Config1_MMUSize 30-25 R
    CP0_Config1_IS 24-22 R      
    CP0_Config1_IL 21-19 R	
    CP0_Config1_IA 18-16 R
    CP0_Config1_DS 15-13 R	
    CP0_Config1_DL 12-10 R
    CP0_Config1_DA 9-7 R
*/
parameter TLBNUM = 5'd16;

wire [ 7:0] CP0_Addr; //дCP0�Ĵ�����ĵ�ַ
wire        mtc0_we; //дCP0�Ĵ�����дʹ���ź�

assign CP0_Addr   = {m1s_mfc0_rd,m1s_sel}; //����ָ��Ҫ��,CP0��8λ��д��ַ��rd��(�������m1s_mfc0_rd)��sel��ƴ����
assign mtc0_we    = m1s_valid && m1s_inst_mtc0 && !m1s_ex; //ָ��Ϊmtc0,��MEM�׶�û�б�������,��дʹ����Ч
assign eret_flush = m1s_valid && m1s_inst_eret && !m1s_ex; //ָ��Ϊeret,��MEM�׶�û�б�������,�������ˮ��ʹ����Ч

/*************************����ΪStatus�Ĵ�������*************************/
reg        CP0_Status_CU0; //28 R/W
reg        CP0_Status_Bev; //22 R/W
reg [ 7:0] CP0_Status_IM; //15-8 R/W
reg        CP0_Status_UM; //4 R/W
reg        CP0_Status_ERL; //2 R/W
reg        CP0_Status_EXL; //1 R/W
reg        CP0_Status_IE; //0 R/W

always @(posedge clk) begin //28 R/W
    if(reset)
        CP0_Status_CU0 <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_CU0 <= m1s_result[28];
end

always @(posedge clk) begin //22 R/W Attention:��CPU���ʵս���岻ͬ,�ο��ֲ�
    if(reset)
        CP0_Status_Bev <= 1'b1; //Bev���Ϊ1,ֻ��
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_Bev <= m1s_result[22]; 
end

always @(posedge clk) begin //15-8 R/W
    if(mtc0_we && CP0_Addr==`Status_RegAddr) 
        CP0_Status_IM <= m1s_result[15:8];
end
assign CP0_Status_IM_out = CP0_Status_IM;

always @(posedge clk) begin //4 R/W
    if(reset)
        CP0_Status_UM <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_UM <= m1s_result[4];
end

always @(posedge clk) begin //2 R/W
    if(reset) 
        CP0_Status_ERL <= 1'b0; //TODO:�ֲ���д����1?
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_ERL <= m1s_result[2];
end

always @(posedge clk) begin //1 R/W
    if(reset) 
        CP0_Status_EXL <= 1'b0;
    else if(m1s_ex) //��������,��EXL����Ϊ1
        CP0_Status_EXL <= 1'b1;
    else if(eret_flush)
        CP0_Status_EXL <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_EXL <= m1s_result[1];
end
assign CP0_Status_EXL_out = CP0_Status_EXL;

always @(posedge clk) begin //0 R/W
    if(reset)
        CP0_Status_IE <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Status_RegAddr)
        CP0_Status_IE <= m1s_result[0];
end
assign CP0_Status_IE_out = CP0_Status_IE;
/*************************����ΪStatus�Ĵ�������*************************/

/*************************����ΪCount&Compare�Ĵ�������*************************/
reg [31:0] CP0_Count;
reg [31:0] CP0_Compare;
reg        tick; //Count�Ĵ���ÿ�������ڼ�һ,tickͨ������ת����ʵ�ָù���
always @(posedge clk) begin 
    if(reset) 
        tick <= 1'b0;
    else 
        tick <= ~tick;

    if(reset) CP0_Count <= 32'b0;
    else if(mtc0_we && CP0_Addr == `Count_RegAddr)
        CP0_Count <= m1s_result;
    else if(tick)
        CP0_Count <= CP0_Count + 1'b1;
end

always @(posedge clk) begin //Compare
    if(reset) 
        CP0_Compare <= 32'h000155cc; //TODO:Ŀǰ�Ǵճ�����,֮��Ҫ����ʱ��������Ƶ������
    else if(mtc0_we && CP0_Addr == `Compare_RegAddr)
        CP0_Compare <= m1s_result;
end
/*************************����Count&Compare�Ĵ�������*************************/

/*************************����ΪCause�Ĵ�������*************************/
reg        CP0_Cause_BD; //31
reg        CP0_Cause_TI; //30 TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
reg [ 1:0] CP0_Cause_CE; //29-28
reg [ 7:0] CP0_Cause_IP; //15-8
reg [ 4:0] CP0_Cause_ExcCode; //6-2
wire       Count_eq_Compare; //Count�Ĵ�����Compare�Ĵ������ʱ��Ϊ1

assign Count_eq_Compare = (CP0_Count == CP0_Compare);
always @(posedge clk) begin //31 R
    if(reset)
        CP0_Cause_BD <= 1'b0;
    else if(m1s_ex && !CP0_Status_EXL) //ֻ����EXL��Ϊ0��֮��,�Ÿ���BD
        CP0_Cause_BD <= m1s_bd;
end

always @(posedge clk) begin //30 R TODO:Count_eq_CompareʱTI����Ϊ1
    if(reset)
        CP0_Cause_TI <= 1'b0;
    else if(mtc0_we && CP0_Addr == `Compare_RegAddr) 
        CP0_Cause_TI <= 1'b0; //������ֱ����mtc0ָ����д,������mtc0дCompare�Ĵ�����ʱ��,TI������
    else if(Count_eq_Compare)
        CP0_Cause_TI <= 1'b1;
end
assign CP0_Cause_TI_out = CP0_Cause_TI;

always @(posedge clk) begin //CE 29-28 R TODO:�ڷ���CpU�쳣��ʱ��ֵ,Ŀǰ�ÿ�
    if(reset) //TODO:���չ淶�Ļ������Բ���reset
        CP0_Cause_CE <= 2'b00;
end

always @(posedge clk) begin //IP7-IP2 15-10 R TODO: ext_int����
    if(reset)
        CP0_Cause_IP[7:2] <= 6'b0;
    else begin
        CP0_Cause_IP[7]   <= CP0_Cause_TI;
        // CP0_Cause_IP[7]<=ext_int[5]|CP0_Cause_TI;
        // CP0_Cause_IP[6:2]<=ext_int[4:0];
    end
end
assign CP0_Cause_IP_out = CP0_Cause_IP;

always @(posedge clk) begin //IP1-IP0 9-8 R/W
    if(reset)
        CP0_Cause_IP[1:0] <= 2'b0;
    else if(mtc0_we && CP0_Addr == `Cause_RegAddr)
        CP0_Cause_IP[1:0] <= m1s_result[9:8];
end

always @(posedge clk) begin //ExeCode 6-2 R
    if(reset)
        CP0_Cause_ExcCode <= `NO_EX;
    else if(m1s_ex) begin
        case (Exctype)
            `Int                : CP0_Cause_ExcCode <= 5'b00000;
            `ITLB_EX_Refill     : CP0_Cause_ExcCode <= 5'b00010;
            `ITLB_EX_Invalid    : CP0_Cause_ExcCode <= 5'b00010;
            `DTLB_EX_RD_Refill  : CP0_Cause_ExcCode <= 5'b00010;
            `DTLB_EX_RD_Invalid : CP0_Cause_ExcCode <= 5'b00010;
            `DTLB_EX_WR_Refill  : CP0_Cause_ExcCode <= 5'b00011;
            `DTLB_EX_WR_Invalid : CP0_Cause_ExcCode <= 5'b00011;
            `DTLB_EX_Modified   : CP0_Cause_ExcCode <= 5'b00001;
            `AdEL               : CP0_Cause_ExcCode <= 5'b00100;
            `AdES               : CP0_Cause_ExcCode <= 5'b00101;
            `Sys                : CP0_Cause_ExcCode <= 5'b01000;
            `Bp                 : CP0_Cause_ExcCode <= 5'b01001;
            `RI                 : CP0_Cause_ExcCode <= 5'b01010;
            `Ov                 : CP0_Cause_ExcCode <= 5'b01100;
            default             : CP0_Cause_ExcCode <= `NO_EX;
        endcase
    end
end


/*************************����ΪCause�Ĵ�������*************************/

/*************************����ΪRandom&Wired�Ĵ�������*************************/
reg  [3:0] CP0_Random_Random; //3-0 R
reg  [3:0] CP0_Wired_Wired; //3-0 R/W
wire [3:0] Random_next;

always @(posedge clk) begin
    if(reset)
        CP0_Wired_Wired <= 4'b0;
    else if(mtc0_we && CP0_Addr == `Wired_RegAddr)
        CP0_Wired_Wired <= m1s_result[3:0];
end

assign Random_next = CP0_Random_Random + 1'b1;
always @(posedge clk) begin //Random 3-0 R
    if(reset)
        CP0_Random_Random <= TLBNUM - 1'b1;
    else //Random�ĸ�ֵ�ɲο�ѧ������,ÿ��ʱ�����ڶ���仯��
        CP0_Random_Random <= (CP0_Wired_Wired < Random_next) ? Random_next : CP0_Wired_Wired;
end
/*************************����ΪRandom&Wired�Ĵ�������*************************/

/*************************����ΪContext�Ĵ�������*************************/
reg [8:0]  CP0_Context_PTEBase; //31-23 R/W
reg [18:0] CP0_Context_BadVPN2; //22-4 R

always @(posedge clk) begin //PTEBase 31-23 R/W
    if(mtc0_we && CP0_Addr == `Context_RegAddr)
        CP0_Context_PTEBase <= m1s_result[31:23];
end

always @(posedge clk) begin //BadVPN2 22-4 R
    //TODO:BadVPN2�ĸ�ֵ�漰TLB����
end
/*************************����ΪContext�Ĵ�������*************************/

//PageMask 
reg [31:0] CP0_PageMask;
always @(posedge clk) begin
    if(reset) //���������Ϳ����� ��
        CP0_PageMask <= 32'b0;
end

//4.EPC�Ĵ���
reg [31:0] CP0_EPC;
always @(posedge clk) begin
    if(m1s_ex && ~CP0_Status_EXL) begin //EXLΪ0��ʱ�����дEPC
        CP0_EPC <= m1s_bd ? m1s_pc - 3'h4 : m1s_pc; //ָ�����ӳٲ�,EPCָ���ӳٲ۶�Ӧ�ķ�֧��תָ��;����ָ��ָ���
    end
    else if(mtc0_we && CP0_Addr == `EPC_RegAddr)
        CP0_EPC <= m1s_result;
end
assign CP0_EPC_out = CP0_EPC;

//5.BadVAddr�Ĵ���
reg [31:0]  CP0_BadVAddr;
always @(posedge clk) begin //BadVAddr�Ĵ���ֻ�� ֻҪ�е�ַ��(��дsram���߶�inst_ram)�ͼ�¼
    if(m1s_ex) begin
        if(Exctype == `AdES)
            CP0_BadVAddr <= m1s_alu_result;
        else if(Exctype == `AdEL)
            CP0_BadVAddr <= m1s_pc[1:0] ? m1s_pc : m1s_alu_result;
    end
end

//6.EntryHi�Ĵ���
reg [18:0] CP0_Entryhi_VPN2; //EntryHi�Ĵ����е�VPN2
reg [ 7:0] CP0_Entryhi_ASID; //EntryHi�Ĵ����е�ASID
always @(posedge clk) begin
    if(reset) begin
        CP0_Entryhi_VPN2 <= 19'b0 ;
        CP0_Entryhi_ASID <= 8'b0 ;
    end
    else if(mtc0_we && CP0_Addr == `Entryhi_RegAddr) begin
        CP0_Entryhi_VPN2 <= m1s_result[31:13];
        CP0_Entryhi_ASID <= m1s_result[7:0];
    end
     else if(inst_tlbr) begin
         CP0_Entryhi_VPN2 <= tlb_to_cp0_vpn2 ;
         CP0_Entryhi_ASID <= tlb_to_cp0_asid ;
     end
end

 assign cp0_to_tlb_vpn2 = CP0_Entryhi_VPN2;
 assign cp0_to_tlb_asid = CP0_Entryhi_ASID;

//7.EntryLo0�Ĵ���
reg [19:0] CP0_Entrylo0_PFN0;//entrylo0�Ĵ�����ֵ
reg [ 2:0] CP0_Entrylo0_C0;
reg        CP0_Entrylo0_D0;
reg        CP0_Entrylo0_V0;
reg        CP0_Entrylo0_G0;
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo0_PFN0 <= 20'b0;
        CP0_Entrylo0_C0   <= 3'b0;
        CP0_Entrylo0_D0   <= 1'b0;
        CP0_Entrylo0_V0   <= 1'b0;
        CP0_Entrylo0_G0   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo0_RegAddr) begin
        CP0_Entrylo0_PFN0 <= m1s_result[25:6];
        CP0_Entrylo0_C0   <= m1s_result[5:3];
        CP0_Entrylo0_D0   <= m1s_result[2];
        CP0_Entrylo0_V0   <= m1s_result[1];
        CP0_Entrylo0_G0   <= m1s_result[0];
    end
     else if (inst_tlbr) begin
         CP0_Entrylo0_PFN0 <= tlb_to_cp0_pfn0;
         CP0_Entrylo0_C0   <= tlb_to_cp0_c0  ;
         CP0_Entrylo0_D0   <= tlb_to_cp0_d0  ;
         CP0_Entrylo0_V0   <= tlb_to_cp0_v0  ;
         CP0_Entrylo0_G0   <= tlb_to_cp0_g0  ;
     end
end

 assign cp0_to_tlb_pfn0 = CP0_Entrylo0_PFN0;
 assign cp0_to_tlb_c0   = CP0_Entrylo0_C0  ;
 assign cp0_to_tlb_d0   = CP0_Entrylo0_D0  ;
 assign cp0_to_tlb_v0   = CP0_Entrylo0_V0  ;
 assign cp0_to_tlb_g0   = CP0_Entrylo0_G0  ;

//8.EntryLo1�Ĵ�����ֻʵ���������еĹ���
reg [19:0] CP0_Entrylo1_PFN1;//entrylo1�Ĵ�����ֵ
reg [ 2:0] CP0_Entrylo1_C1;
reg        CP0_Entrylo1_D1;
reg        CP0_Entrylo1_V1;
reg        CP0_Entrylo1_G1;
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo1_PFN1 <= 20'b0;
        CP0_Entrylo1_C1   <= 3'b0;
        CP0_Entrylo1_D1   <= 1'b0;
        CP0_Entrylo1_V1   <= 1'b0;
        CP0_Entrylo1_G1   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo1_RegAddr) begin
        CP0_Entrylo1_PFN1 <= m1s_result[25:6];
        CP0_Entrylo1_C1   <= m1s_result[5:3];
        CP0_Entrylo1_D1   <= m1s_result[2];
        CP0_Entrylo1_V1   <= m1s_result[1];
        CP0_Entrylo1_G1   <= m1s_result[0];
    end
     else if (inst_tlbr) begin
         CP0_Entrylo1_PFN1 <= tlb_to_cp0_pfn1;
         CP0_Entrylo1_C1   <= tlb_to_cp0_c1  ;
         CP0_Entrylo1_D1   <= tlb_to_cp0_d1  ;
         CP0_Entrylo1_V1   <= tlb_to_cp0_v1  ;
         CP0_Entrylo1_G1   <= tlb_to_cp0_g1  ;
     end
end
 assign cp0_to_tlb_pfn1 = CP0_Entrylo1_PFN1;
 assign cp0_to_tlb_c1   = CP0_Entrylo1_C1  ;
 assign cp0_to_tlb_d1   = CP0_Entrylo1_D1  ;
 assign cp0_to_tlb_v1   = CP0_Entrylo1_V1  ;
 assign cp0_to_tlb_g1   = CP0_Entrylo1_G1  ;

//9.index�Ĵ���
reg       CP0_Index_P;
reg [3:0] CP0_Index_Index;

always @(posedge clk) begin
    if(reset) 
        CP0_Index_P <= 1'b0;
    else if(inst_tlbp) begin
        CP0_Index_P <= ~tlb_to_cp0_found;
    end
end

always @(posedge clk) begin
    if(reset) begin
        CP0_Index_Index <= 4'b0;
    end
    else if(mtc0_we && CP0_Addr == `Index_RegAddr) begin
        CP0_Index_Index <= m1s_result[3:0];
    end
     else if(inst_tlbp && tlb_to_cp0_found) begin
         CP0_Index_Index <= tlb_to_cp0_index;
     end
end
 assign cp0_to_tlb_index = CP0_Index_Index;

//mfc0ָ��ʵ��:
assign CP0_data = (CP0_Addr == `BadVAddr_RegAddr)? CP0_BadVAddr:
                  (CP0_Addr == `Count_RegAddr   )? CP0_Count:
                  (CP0_Addr == `Compare_RegAddr )? CP0_Compare:
                  (CP0_Addr == `Status_RegAddr  )? {3'b0,CP0_Status_CU0,5'b0,CP0_Status_Bev,6'b0,CP0_Status_IM,5'b0,
                                                    CP0_Status_ERL,CP0_Status_EXL,CP0_Status_IE}:
                  (CP0_Addr == `Cause_RegAddr   )? {CP0_Cause_BD,CP0_Cause_TI,CP0_Cause_CE,12'b0,CP0_Cause_IP,
                                                    1'b0,CP0_Cause_ExcCode,2'b0}:
                  (CP0_Addr == `EPC_RegAddr     )? CP0_EPC:
                  (CP0_Addr == `Index_RegAddr   )? {CP0_Index_P,27'b0,CP0_Index_Index}:
                  (CP0_Addr == `Entryhi_RegAddr )? {CP0_Entryhi_VPN2,5'b0,CP0_Entryhi_ASID}:
                  (CP0_Addr == `Entrylo0_RegAddr)? {5'b0,CP0_Entrylo0_PFN0,CP0_Entrylo0_C0,CP0_Entrylo0_D0,CP0_Entrylo0_V0,CP0_Entrylo0_G0}:
                  (CP0_Addr == `Entrylo1_RegAddr)? {5'b0,CP0_Entrylo1_PFN1,CP0_Entrylo1_C1,CP0_Entrylo1_D1,CP0_Entrylo1_V1,CP0_Entrylo1_G1}:
                  (CP0_Addr == `Random_RegAddr  )? {28'b0,CP0_Random_Random}:
                  (CP0_Addr == `Wired_RegAddr   )? {28'b0,CP0_Wired_Wired}:
                  (CP0_Addr == `Context_RegAddr )? {CP0_Context_PTEBase,CP0_Context_BadVPN2,4'b0}:
                                                    32'b0; //TODO:ĿǰCP0_dataĬ��32'b0

endmodule //CP0_Reg