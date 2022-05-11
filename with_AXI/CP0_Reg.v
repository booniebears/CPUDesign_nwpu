`include "global_defines.vh"

module CP0_Reg (
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
    input [31:0] ws_data_sram_addr, //���е�ַ������,����Ҫ��BadVAddr�Ĵ�����¼��������ַ
    input [5:0] ext_int, //6���ⲿӲ���ж�����
    input [4:0] ExcCode, //Cause�Ĵ����� �����5λ����
    input [31:0] ws_pc, //WB�׶ε�PCֵ
    output [31:0] CP0_data, //mfc0��CP0�ж���������
    output eret_flush, //ERETָ���޸�EXL���ʹ���ź�
    input inst_tlbr,
    input inst_tlbwi,//�ж��Ƿ�Ϊtlbwiָ��
    input [3:0]  index_tlbwi,//tlbwiָ�������ֵ
    input [3:0]  index_tlbr,//tlbwrָ�������ֵ
    input inst_tlbp,
    input [18:0] tlb_vpn2_wd, //����Ϊtlbд�������
    input [7:0]  tlb_asid_wd ,
    input [3:0]  tlb_index_wd,
    input        tlb_p_wd,
    input [19:0] tlb_pfn0_wd ,//����Ϊentrylo0�Ĵ���д��tlb������
    input [2:0]  tlb_c0_wd ,
    input        tlb_d0_wd ,
    input        tlb_v0_wd ,
    input        tlb_g0_wd ,
    input [19:0] tlb_pfn1_wd ,//����Ϊentrylo1�Ĵ���д��tlb������
    input [2:0]  tlb_c1_wd ,
    input        tlb_d1_wd ,
    input        tlb_v1_wd ,
    input [31:0] virtual_addr,
    input [31:0] virtual_vpn2,
  input        tlb_g1_wd ,
    output reg [3:0]     tlb_index_rd,
    output reg        tlb_p_rd,
    output reg [18:0] tlb_vpn2_rd, //����Ϊtlb����������
    output reg [7:0]  tlb_asid_rd ,
    output reg [19:0] tlb_pfn0_rd ,//����Ϊentrylo0�Ĵ���������tlb������
    output reg [2:0]  tlb_c0_rd ,
    output reg        tlb_d0_rd ,
    output reg        tlb_v0_rd ,
    output reg        tlb_g0_rd ,
    output reg [19:0] tlb_pfn1_rd,//����Ϊentrylo1�Ĵ���������tlb������
    output reg [2:0]  tlb_c1_rd,
    output reg        tlb_d1_rd ,
    output reg        tlb_v1_rd ,
    output reg        tlb_g1_rd ,
    output      is_found,

    output reg [31:0] CP0_EPC,
    output reg CP0_Status_IE,
    output reg CP0_Status_EXL,
    output reg [7:0] CP0_Status_IM,
    output reg [7:0] CP0_Cause_IP,
    output reg CP0_Cause_TI //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
);
reg [3:0] index_index;
reg index_p;
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
reg [ 7:0] entryhi_asid; //EntryHi�Ĵ����е�ASID

wire [7:0] CP0_Addr; //дCP0�Ĵ�����ĵ�ַ
wire mtc0_we; //дCP0�Ĵ�����дʹ���ź�

//1.Status�Ĵ���:��ΪBev��,IM7-IM0,EXL��,IE�� ����IM,EXL,IE�ڶ˿��ж�����
wire CP0_Status_Bev; 

assign CP0_Addr={ws_mfc0_rd,ws_sel}; //����ָ��Ҫ��,CP0��8λ��д��ַ��rd��(�������ws_mfc0_rd)��sel��ƴ����
assign mtc0_we=ws_valid&&ws_inst_mtc0&&!ws_ex; //ָ��Ϊmtc0,��WB�׶�û�б�������,��дʹ����Ч

assign eret_flush=ws_valid&&ws_inst_eret&&!ws_ex; //ָ��Ϊeret,��WB�׶�û�б�������,�������ˮ��ʹ����Ч
// always @(posedge clk) begin //assign�ĳ�always
//     if(reset) eret_flush<=1'b0;
//     else eret_flush<=ws_valid&&ws_inst_eret&&!ws_ex;
// end

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
        else if(ExcCode==`TLBS || ExcCode==`TLBL || ExcCode==`Mod)
            CP0_BadVAddr<=virtual_addr;
    end
end
//6.EntryHi�Ĵ���
reg [31:0] CP0_EntryHi;
always @(posedge clk) begin
    if(reset) 
        CP0_EntryHi<=32'b0;
    else if(inst_tlbr) begin
        entryhi_vpn2<=tlb_vpn2_wd [index_tlbr];
        entryhi_asid<=tlb_asid_wd [index_tlbr];
    end
    else if (inst_tlbwi) begin
        tlb_vpn2_rd [index_tlbwi]<=entryhi_vpn2;
        tlb_asid_rd [index_tlbwi]<=entryhi_asid;
    end
     else if(ExcCode==`TLBS || ExcCode==`TLBL || ExcCode==`Mod)
            entryhi_vpn2<=virtual_vpn2;
end

//7.EntryLo0�Ĵ���
reg [31:0] CP0_EntryLo0;
always @(posedge clk) begin
    if(reset) 
        CP0_EntryLo0<=32'b0;
    else    if(inst_tlbr) begin
        tlb_pfn0_rd<=entrylo0_pfn;
        tlb_c0_rd  <=entrylo0_c;
        tlb_d0_rd  <=entrylo0_d;
        tlb_v0_rd  <=entrylo0_v;
        tlb_g0_rd  <=entrylo0_g;
    end
    else if (inst_tlbwi) begin
        entrylo0_pfn<=tlb_pfn0_wd [index_tlbwi];
        entrylo0_c  <=tlb_c0_wd;
        entrylo0_d  <=tlb_d0_wd;
        entrylo0_v  <=tlb_v0_wd;
        entrylo0_g  <=tlb_g0_wd;
    end
end
//8.EntryLo1�Ĵ�����ֻʵ���������еĹ���
reg [31:0] CP0_EntryLo1;
always @(posedge clk) begin
    if(reset) 
        CP0_EntryLo1<=32'b0;
    else if(inst_tlbr) begin
        tlb_pfn1_rd<=entrylo1_pfn;
        tlb_c1_rd<=entrylo1_c;
        tlb_d1_rd<=entrylo1_d;
        tlb_v1_rd<=entrylo1_v;
        tlb_g1_rd<=entrylo1_g;
    end
    else if (inst_tlbwi) begin
        entrylo0_pfn<=tlb_pfn1_wd ;
        entrylo0_c<=tlb_c1_wd ;
        entrylo0_d<=tlb_d1_wd ;
        entrylo0_v<=tlb_v1_wd ;
        entrylo0_g<=tlb_g1_wd ;
    end
end

//9.Index�Ĵ���
reg [31:0] CP0_Index;
always @(posedge clk) begin
    if(reset)  begin
        index_index = 5'bx;
        index_p     = 1'b0;
    end
    else if (inst_tlbr) begin
        index_index<=tlb_index_wd [index_tlbr];
    end
    else if (inst_tlbwi) begin
        tlb_index_rd[index_tlbwi]<=index_index;
    end
    else if(inst_tlbp) begin
        if(is_found) begin
            index_p=0;
        end
        else  begin
            index_p=1;
        end
    end
    end
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
                   CP0_Addr == `EntryHi_RegAddr ? {entryhi_vpn2,5'b0,entryhi_asid}:
                  CP0_Addr == `EntryLo0_RegAddr? {6'b0,entrylo0_pfn,entrylo0_c,entrylo0_d,entrylo0_v,entrylo0_g}:
                  CP0_Addr == `EntryLo1_RegAddr? {6'b0,entrylo1_pfn,entrylo1_c,entrylo1_d,entrylo1_v,entrylo1_g}:
                  CP0_Addr == `Index_RegAddr   ? {index_p,27'b0,index_index}:
                                                 32'b0; //TODO:ĿǰCP0_dataĬ��32'b0

endmodule //CP0_Reg