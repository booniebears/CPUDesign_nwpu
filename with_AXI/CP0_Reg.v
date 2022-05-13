`include "global_defines.vh"
//todo 1.tlb��������if����mem�����ģ�
//tlb����ֶ���д
//���������ӿڣ��ź������߼�
//���Ǽ���itlb��dtlb
module CP0_Reg 
(
    input clk,
    input reset,
    input [ 4:0] ws_mfc0_rd,
    input [2:0] ws_sel,
    input ws_valid,
    input ws_inst_mtc0,
    input ws_inst_eret,
    input [31:0] ws_result,
    input ws_bd,
    input ws_ex, //ws�׶� ����������,��Ϊ1,����Ϊ0
    input  [31:0] ws_data_sram_addr, //���е�ַ������,����Ҫ��BadVAddr�Ĵ�����¼��������ַ
    input  [5:0] ext_int, //6���ⲿӲ���ж�����
    input  [4:0] ExcCode, //Cause�Ĵ����� �����5λ����
    input  [31:0] ws_pc, //WB�׶ε�PCֵ
    output [31:0] CP0_data, //mfc0��CP0�ж���������
    output eret_flush, //ERETָ���޸�EXL���ʹ���ź�
    input inst_tlbr,
    input inst_tlbwi,//�ж��Ƿ�Ϊtlbwiָ��
    input inst_tlbp,//�ж��Ƿ�Ϊtlbpָ��
    input           tlb_to_cp0_found,//tlb�����Ƿ�ɹ�
    input  [18:0]   tlb_to_cp0_vpn2, //����Ϊtlbд�������
    input  [7:0]    tlb_to_cp0_asid ,
    input  [3:0]    tlb_to_cp0_index, 
    input           tlb_to_cp0_p, //TODO:û�õ�?
    input  [19:0]   tlb_to_cp0_pfn0 ,//����Ϊentrylo0�Ĵ���д��tlb������
    input  [2:0]    tlb_to_cp0_c0 ,
    input           tlb_to_cp0_d0 ,
    input           tlb_to_cp0_v0 ,
    input           tlb_to_cp0_g0 ,
    input  [19:0]   tlb_to_cp0_pfn1 ,//����Ϊentrylo1�Ĵ���д��tlb������
    input  [2:0]    tlb_to_cp0_c1 ,
    input           tlb_to_cp0_d1 ,
    input           tlb_to_cp0_v1 ,
    input           tlb_to_cp0_g1 ,
    input  [18:0]   virtual_vpn2,
    output [18:0]   cp0_to_tlb_vpn2, //����Ϊtlb����������
    output [7:0]    cp0_to_tlb_asid ,
    output [19:0]   cp0_to_tlb_pfn0 ,//����Ϊentrylo0�Ĵ���������tlb������
    output [2:0]    cp0_to_tlb_c0 ,
    output          cp0_to_tlb_d0 ,
    output          cp0_to_tlb_v0 ,
    output          cp0_to_tlb_g0 ,
    output   [19:0] cp0_to_tlb_pfn1,//����Ϊentrylo1�Ĵ���������tlb������
    output   [2:0]  cp0_to_tlb_c1,
    output          cp0_to_tlb_d1 ,
    output          cp0_to_tlb_v1 ,
    output          cp0_to_tlb_g1 ,
    output   [3:0]  cp0_to_tlb_index,//tlbwrָ�������ֵ
    output  reg [31:0] CP0_EPC,
    output  reg CP0_Status_IE,
    output  reg CP0_Status_EXL,
    output  reg [7:0] CP0_Status_IM,
    output  reg [7:0] CP0_Cause_IP,
    output  reg CP0_Cause_TI //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
);
reg [19:0] entrylo0_pfn;//entrylo0�Ĵ�����ֵ
reg [2:0] entrylo0_c;
reg entrylo0_d;
reg entrylo0_v;
reg entrylo0_g;
reg [19:0] entrylo1_pfn;//entrylo1�Ĵ�����ֵ
reg [2:0] entrylo1_c;
reg entrylo1_d;
reg entrylo1_v;
reg entrylo1_g;
reg [18:0] entryhi_vpn2; //EntryHi�Ĵ����е�VPN2
reg [7:0]  entryhi_asid; //EntryHi�Ĵ����е�ASID




wire [7:0] CP0_Addr; //дCP0�Ĵ�����ĵ�ַ
wire mtc0_we; //дCP0�Ĵ�����дʹ���ź�
//1.Status�Ĵ���:��ΪBev��,IM7-IM0,EXL��,IE�� ����IM,EXL,IE�ڶ˿��ж�����
wire CP0_Status_Bev; 

assign CP0_Addr={ws_mfc0_rd,ws_sel}; //����ָ��Ҫ��,CP0��8λ��д��ַ��rd��(�������ws_mfc0_rd)��sel��ƴ����
assign mtc0_we=ws_valid&&ws_inst_mtc0&&!ws_ex; //ָ��Ϊmtc0,��WB�׶�û�б�������,��дʹ����Ч

assign eret_flush=ws_valid&&ws_inst_eret&&!ws_ex; //ָ��Ϊeret,��WB�׶�û�б�������,�������ˮ��ʹ����Ч

assign CP0_Status_Bev=1'b1; //Bev���Ϊ1,ֻ��

always @(posedge clk) begin //IM7-IM0�ɶ���д ��ȡ���ݵ�[15:8]��
    if(mtc0_we&&CP0_Addr==`Status_RegAddr) 
        CP0_Status_IM<=ws_result[15:8];
end

always @(posedge clk) begin //EXL��ɶ���д
    if(reset) 
        CP0_Status_EXL<=1'b0;
    else if(ws_ex) //��������,��EXL����Ϊ1
        CP0_Status_EXL<=1'b1;
    else if(eret_flush)
        CP0_Status_EXL<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_EXL<=ws_result[1];
end

always @(posedge clk) begin //IE��ɶ���д
    if(reset)
        CP0_Status_IE<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_IE<=ws_result[0];
end

//2.Cause�Ĵ���:��ΪBD��,TI��,IP7-IP2��,IP1-IP0��,ExcCode��
//3.Count�Ĵ�����Compare�Ĵ���
reg CP0_Cause_BD;
// reg CP0_Cause_TI; //���ź����ڶ˿ڶ���
// reg [7:0] CP0_Cause_IP; //���ź����ڶ˿ڶ���
reg [4:0] CP0_Cause_ExcCode;
reg [31:0] CP0_Count;
reg [31:0] CP0_Compare;
wire Count_eq_Compare; //Count�Ĵ�����Compare�Ĵ������ʱ��Ϊ1

assign Count_eq_Compare = (CP0_Count==CP0_Compare);
always @(posedge clk) begin //BD��ֻ��
    if(reset)
        CP0_Cause_BD<=1'b0;
    else if(ws_ex&&!CP0_Status_EXL) //ֻ����EXL��Ϊ0��֮��,�Ÿ���BD
        CP0_Cause_BD<=ws_bd;
end

always @(posedge clk) begin //TI��ֻ�� TODO:Count_eq_CompareʱTI����Ϊ1
    if(reset)
        CP0_Cause_TI<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Compare_RegAddr) 
        CP0_Cause_TI<=1'b0; //������ֱ����mtc0ָ����д,������mtc0дCompare�Ĵ�����ʱ��,TI������
    else if(Count_eq_Compare)
        CP0_Cause_TI<=1'b1;
end

always @(posedge clk) begin //IP7-IP2ֻ�� TODO: ext_int����
    if(reset)
        CP0_Cause_IP[7:2]<=6'b0;
    else begin
        CP0_Cause_IP[7]<=CP0_Cause_TI;
        // CP0_Cause_IP[7]<=ext_int[5]|CP0_Cause_TI;
        // CP0_Cause_IP[6:2]<=ext_int[4:0];
    end
end

always @(posedge clk) begin //IP1-IP0��д
    if(reset)
        CP0_Cause_IP[1:0]<=2'b0;
    else if(mtc0_we&&CP0_Addr==`Cause_RegAddr)
        CP0_Cause_IP[1:0]<=ws_result[9:8];
end

always @(posedge clk) begin //ExeCode��ֻ��
    if(reset)
        CP0_Cause_ExcCode<=5'b0;
    else if(ws_ex)
        CP0_Cause_ExcCode<=ExcCode;
end

reg tick; //Count�Ĵ���ÿ�������ڼ�һ,tickͨ������ת����ʵ�ָù���
always @(posedge clk) begin 
    if(reset) 
        tick<=1'b0;
    else 
        tick<=~tick;

    if(reset) CP0_Count<=32'b0;
    else if(mtc0_we&&CP0_Addr==`Count_RegAddr)
        CP0_Count<=ws_result;
    else if(tick)
        CP0_Count<=CP0_Count+1'b1;
end

always @(posedge clk) begin //Compare
    if(reset) 
        CP0_Compare<=32'h000155cc; //TODO:Ŀǰ�Ǵճ�����,֮��Ҫ����ʱ��������Ƶ������
    else if(mtc0_we&&CP0_Addr==`Compare_RegAddr)
        CP0_Compare<=ws_result;
end

//4.EPC�Ĵ���
always @(posedge clk) begin
    if(ws_ex&&!CP0_Status_EXL) begin //EXLΪ0��ʱ�����дEPC
        CP0_EPC<=ws_bd ? ws_pc-3'h4 : ws_pc; //ָ�����ӳٲ�,EPCָ���ӳٲ۶�Ӧ�ķ�֧��תָ��;����ָ��ָ���
    end
    else if(mtc0_we&&CP0_Addr==`EPC_RegAddr)
        CP0_EPC<=ws_result;
end

//5.BadVAddr�Ĵ���
reg [31:0] CP0_BadVAddr;
always @(posedge clk) begin //BadVAddr�Ĵ���ֻ�� ֻҪ�е�ַ��(��дsram���߶�inst_ram)�ͼ�¼
    if(ws_ex) begin
        if(ExcCode==`AdES)
            CP0_BadVAddr<=ws_data_sram_addr;
        else if(ExcCode==`AdEL)
            CP0_BadVAddr<=ws_pc[1:0]?ws_pc:ws_data_sram_addr;
        else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod)
            CP0_BadVAddr <= ws_data_sram_addr;
    end
end
//6.EntryHi�Ĵ���
reg [31:0] CP0_EntryHi;
always @(posedge clk) begin
    if(reset) begin
        CP0_EntryHi <= 32'h0 ;
    end
    else if(inst_tlbr) begin
        entryhi_vpn2 <= tlb_to_cp0_vpn2 ;
        entryhi_asid <= tlb_to_cp0_asid ;
    end

    else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod) begin
        entryhi_vpn2<=virtual_vpn2;
    end
end

assign  cp0_to_tlb_vpn2 = inst_tlbwi ? entryhi_vpn2 : 19'b0 ;
assign  cp0_to_tlb_asid = inst_tlbwi ? entryhi_asid : 8'b0 ;

//7.EntryLo0�Ĵ���
reg [31:0] CP0_EntryLo0;
always @(posedge clk) begin
    if(reset) begin
        CP0_EntryLo0<=32'h0;
    end
    else if (inst_tlbr) begin
        entrylo0_pfn  <= tlb_to_cp0_pfn0;
        entrylo0_c    <= tlb_to_cp0_c0  ;
        entrylo0_d    <= tlb_to_cp0_d0  ;
        entrylo0_v    <= tlb_to_cp0_v0  ;
        entrylo0_g    <= tlb_to_cp0_g0  ;
    end
end
assign cp0_to_tlb_pfn0 = inst_tlbwi ? entrylo0_pfn  : 20'b0 ;
assign cp0_to_tlb_c0   = inst_tlbwi ? entrylo0_c    : 3'b0  ;
assign cp0_to_tlb_d0   = inst_tlbwi ? entrylo0_d    : 1'b0  ;
assign cp0_to_tlb_v0   = inst_tlbwi ? entrylo0_v    : 1'b0  ;
assign cp0_to_tlb_g0   = inst_tlbwi ? entrylo0_g    : 1'b0  ;
//8.EntryLo1�Ĵ�����ֻʵ���������еĹ���
reg [31:0] CP0_EntryLo1;
always @(posedge clk) begin
    if(reset) begin
        CP0_EntryLo1<=32'h0;
    end
    else if (inst_tlbr) begin
        entrylo1_pfn <= tlb_to_cp0_pfn1 ;
        entrylo1_c   <= tlb_to_cp0_c1   ;
        entrylo1_d   <= tlb_to_cp0_d1   ;
        entrylo1_v   <= tlb_to_cp0_v1   ;
        entrylo1_g   <= tlb_to_cp0_g1   ;
    end
end
assign cp0_to_tlb_pfn1 = inst_tlbwi ? entrylo1_pfn  : 20'b0 ;
assign cp0_to_tlb_c1   = inst_tlbwi ? entrylo1_c    : 3'b0  ;
assign cp0_to_tlb_d1   = inst_tlbwi ? entrylo1_d    : 1'b0  ;
assign cp0_to_tlb_v1   = inst_tlbwi ? entrylo1_v    : 1'b0  ;
assign cp0_to_tlb_g1   = inst_tlbwi ? entrylo1_g    : 1'b0  ;
//9.index�Ĵ���
reg CP0_Index_P;
reg [3:0] CP0_Index_Index;

always @(posedge clk) begin
    if(reset) 
        CP0_Index_P <= 1'b0;
    else if(inst_tlbp) begin
        if(tlb_to_cp0_found) begin
            CP0_Index_P <= 1'b1;
        end 
        else if(!tlb_to_cp0_found) begin
            CP0_Index_P <= 1'b0;
        end
    end
end

always @(posedge clk) begin
    if(reset) begin
        CP0_Index_Index <= 4'b0;
    end
    else if(inst_tlbp&&tlb_to_cp0_found) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
    else if(inst_tlbp&&!tlb_to_cp0_found) begin
        CP0_Index_Index <= 4'b0;
    end
    else if(inst_tlbwi) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
end

assign cp0_to_tlb_index = (inst_tlbr||inst_tlbwi) ? CP0_Index_Index : 4'b0 ;

//mfc0ָ��ʵ��:
assign CP0_data = 
                  CP0_Addr == `BadVAddr_RegAddr? CP0_BadVAddr:
                  CP0_Addr == `Count_RegAddr   ? CP0_Count:
                  CP0_Addr == `Compare_RegAddr ? CP0_Compare:
                  CP0_Addr == `Status_RegAddr  ? {9'b0,CP0_Status_Bev,6'b0,CP0_Status_IM,6'b0,
                                                  CP0_Status_EXL,CP0_Status_IE}:
                  CP0_Addr == `Cause_RegAddr   ? {CP0_Cause_BD,CP0_Cause_TI,14'b0,CP0_Cause_IP,
                                                  1'b0,CP0_Cause_ExcCode,2'b0}:
                  CP0_Addr == `EPC_RegAddr     ? CP0_EPC:
                  CP0_Addr == `Entryhi_RegAddr ? {entryhi_vpn2,5'b0,entryhi_asid}:
                  CP0_Addr == `Entrylo0_RegAddr? {6'b0,entrylo0_pfn,entrylo0_c,entrylo0_d,entrylo0_v,entrylo0_g}:
                  CP0_Addr == `Entrylo1_RegAddr? {6'b0,entrylo1_pfn,entrylo1_c,entrylo1_d,entrylo1_v,entrylo1_g}:
                  CP0_Addr == `Index_RegAddr   ? {CP0_Index_P,27'b0,CP0_Index_Index}:
                                                 32'b0; //TODO:ĿǰCP0_dataĬ��32'b0

endmodule //CP0_Reg