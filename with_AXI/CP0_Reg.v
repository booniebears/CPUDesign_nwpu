`include "global_defines.vh"

module CP0_Reg 
(
    input             clk,
    input             reset,
    input [ 4:0]      ms_mfc0_rd,
    input [ 2:0]      ms_sel,
    input             ms_valid,
    input             ms_inst_mtc0,
    input             ms_inst_eret,
    input [31:0]      ms_result,
    input             ms_bd,
    input             ms_ex, //ws�׶� ����������,��Ϊ1,����Ϊ0
    input  [31:0]     ms_alu_result, //���е�ַ������,����Ҫ��BadVAddr�Ĵ�����¼��������ַ
    input  [ 5:0]     ext_int, //6���ⲿӲ���ж�����
    input  [ 4:0]     ExcCode, //Cause�Ĵ����� �����5λ����
    input  [31:0]     ms_pc, //WB�׶ε�PCֵ
    output [31:0]     CP0_data, //mfc0��CP0�ж���������
    output            eret_flush, //ERETָ���޸�EXL���ʹ���ź�
    input             inst_tlbr,
    input             inst_tlbp,//�ж��Ƿ�Ϊtlbpָ��
    input             tlb_to_cp0_found,//tlb�����Ƿ�ɹ�
    input  [18:0]     tlb_to_cp0_vpn2, //����Ϊtlbд�������
    input  [ 7:0]     tlb_to_cp0_asid ,
    input  [ 3:0]     tlb_to_cp0_index, 
    input  [19:0]     tlb_to_cp0_pfn0 ,//����Ϊentrylo0�Ĵ���д��tlb������
    input  [ 2:0]     tlb_to_cp0_c0 ,
    input             tlb_to_cp0_d0 ,
    input             tlb_to_cp0_v0 ,
    input             tlb_to_cp0_g0 ,
    input  [19:0]     tlb_to_cp0_pfn1 ,//����Ϊentrylo1�Ĵ���д��tlb������
    input  [ 2:0]     tlb_to_cp0_c1 ,
    input             tlb_to_cp0_d1 ,
    input             tlb_to_cp0_v1 ,
    input             tlb_to_cp0_g1 ,
    output [18:0]     cp0_to_tlb_vpn2, //����Ϊtlb����������
    output [ 7:0]     cp0_to_tlb_asid ,
    output [19:0]     cp0_to_tlb_pfn0 ,//����Ϊentrylo0�Ĵ���������tlb������
    output [ 2:0]     cp0_to_tlb_c0 ,
    output            cp0_to_tlb_d0 ,
    output            cp0_to_tlb_v0 ,
    output            cp0_to_tlb_g0 ,
    output [19:0]     cp0_to_tlb_pfn1,//����Ϊentrylo1�Ĵ���������tlb������
    output [ 2:0]     cp0_to_tlb_c1,
    output            cp0_to_tlb_d1 ,
    output            cp0_to_tlb_v1 ,
    output            cp0_to_tlb_g1 ,
    output [03:0]     cp0_to_tlb_index,//tlbwrָ�������ֵ
    output reg [31:0] CP0_EPC,
    output reg        CP0_Status_IE,
    output reg        CP0_Status_EXL,
    output reg [ 7:0] CP0_Status_IM,
    output reg [ 7:0] CP0_Cause_IP,
    output reg CP0_Cause_TI //TIΪ1,������ʱ�ж�;���ǽ����жϱ����ID�׶�
);

reg [19:0]  CP0_Entrylo0_PFN0;//entrylo0�Ĵ�����ֵ
reg [ 2:0]  CP0_Entrylo0_C0;
reg         CP0_Entrylo0_D0;
reg         CP0_Entrylo0_V0;
reg         CP0_Entrylo0_G0;
reg [19:0]  CP0_Entrylo1_PFN1;//entrylo1�Ĵ�����ֵ
reg [ 2:0]  CP0_Entrylo1_C1;
reg         CP0_Entrylo1_D1;
reg         CP0_Entrylo1_V1;
reg         CP0_Entrylo1_G1;
reg [18:0]  CP0_Entryhi_VPN2; //EntryHi�Ĵ����е�VPN2
reg [ 7:0]  CP0_Entryhi_ASID; //EntryHi�Ĵ����е�ASID

wire [ 7:0] CP0_Addr; //дCP0�Ĵ�����ĵ�ַ
wire        mtc0_we; //дCP0�Ĵ�����дʹ���ź�
//1.Status�Ĵ���:��ΪBev��,IM7-IM0,EXL��,IE�� ����IM,EXL,IE�ڶ˿��ж�����
wire        CP0_Status_Bev; 

assign CP0_Addr={ms_mfc0_rd,ms_sel}; //����ָ��Ҫ��,CP0��8λ��д��ַ��rd��(�������ms_mfc0_rd)��sel��ƴ����
assign mtc0_we=ms_valid&&ms_inst_mtc0&&!ms_ex; //ָ��Ϊmtc0,��WB�׶�û�б�������,��дʹ����Ч

assign eret_flush=ms_valid&&ms_inst_eret&&!ms_ex; //ָ��Ϊeret,��WB�׶�û�б�������,�������ˮ��ʹ����Ч

assign CP0_Status_Bev=1'b1; //Bev���Ϊ1,ֻ��

always @(posedge clk) begin //IM7-IM0�ɶ���д ��ȡ���ݵ�[15:8]��
    if(mtc0_we&&CP0_Addr==`Status_RegAddr) 
        CP0_Status_IM<=ms_result[15:8];
end

always @(posedge clk) begin //EXL��ɶ���д
    if(reset) 
        CP0_Status_EXL<=1'b0;
    else if(ms_ex) //��������,��EXL����Ϊ1
        CP0_Status_EXL<=1'b1;
    else if(eret_flush)
        CP0_Status_EXL<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_EXL<=ms_result[1];
end

always @(posedge clk) begin //IE��ɶ���д
    if(reset)
        CP0_Status_IE<=1'b0;
    else if(mtc0_we&&CP0_Addr==`Status_RegAddr)
        CP0_Status_IE<=ms_result[0];
end

//2.Cause�Ĵ���:��ΪBD��,TI��,IP7-IP2��,IP1-IP0��,ExcCode��
//3.Count�Ĵ�����Compare�Ĵ���
reg         CP0_Cause_BD;
// reg CP0_Cause_TI; //���ź����ڶ˿ڶ���
// reg [7:0] CP0_Cause_IP; //���ź����ڶ˿ڶ���
reg [ 4:0]  CP0_Cause_ExcCode;
reg [31:0]  CP0_Count;
reg [31:0]  CP0_Compare;
wire        Count_eq_Compare; //Count�Ĵ�����Compare�Ĵ������ʱ��Ϊ1

assign Count_eq_Compare = (CP0_Count==CP0_Compare);
always @(posedge clk) begin //BD��ֻ��
    if(reset)
        CP0_Cause_BD<=1'b0;
    else if(ms_ex&&!CP0_Status_EXL) //ֻ����EXL��Ϊ0��֮��,�Ÿ���BD
        CP0_Cause_BD<=ms_bd;
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
        CP0_Cause_IP[1:0]<=ms_result[9:8];
end

always @(posedge clk) begin //ExeCode��ֻ��
    if(reset)
        CP0_Cause_ExcCode<=5'b0;
    else if(ms_ex)
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
        CP0_Count<=ms_result;
    else if(tick)
        CP0_Count<=CP0_Count+1'b1;
end

always @(posedge clk) begin //Compare
    if(reset) 
        CP0_Compare<=32'h000155cc; //TODO:Ŀǰ�Ǵճ�����,֮��Ҫ����ʱ��������Ƶ������
    else if(mtc0_we&&CP0_Addr==`Compare_RegAddr)
        CP0_Compare<=ms_result;
end

//4.EPC�Ĵ���
always @(posedge clk) begin
    if(ms_ex&&!CP0_Status_EXL) begin //EXLΪ0��ʱ�����дEPC
        CP0_EPC<=ms_bd ? ms_pc-3'h4 : ms_pc; //ָ�����ӳٲ�,EPCָ���ӳٲ۶�Ӧ�ķ�֧��תָ��;����ָ��ָ���
    end
    else if(mtc0_we&&CP0_Addr==`EPC_RegAddr)
        CP0_EPC<=ms_result;
end

//5.BadVAddr�Ĵ���
reg [31:0]  CP0_BadVAddr;
always @(posedge clk) begin //BadVAddr�Ĵ���ֻ�� ֻҪ�е�ַ��(��дsram���߶�inst_ram)�ͼ�¼
    if(ms_ex) begin
        if(ExcCode==`AdES)
            CP0_BadVAddr<=ms_alu_result;
        else if(ExcCode==`AdEL)
            CP0_BadVAddr<=ms_pc[1:0]?ms_pc:ms_alu_result;
       /* else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod)
            CP0_BadVAddr <= ms_alu_result;*/
    end
end
//6.EntryHi�Ĵ���
always @(posedge clk) begin
    if(reset) begin
        CP0_Entryhi_VPN2 <= 19'b0 ;
        CP0_Entryhi_ASID <= 8'b0 ;
    end
    else if(mtc0_we && CP0_Addr == `Entryhi_RegAddr) begin
        CP0_Entryhi_VPN2 <= ms_result[31:13];
        CP0_Entryhi_ASID <= ms_result[7:0];
    end
    else if(inst_tlbr) begin
        CP0_Entryhi_VPN2 <= tlb_to_cp0_vpn2 ;
        CP0_Entryhi_ASID <= tlb_to_cp0_asid ;
    end

    /*else if(ExcCode==`TLBL||ExcCode==`TLBS ||ExcCode==`Mod) begin
        CP0_Entryhi_VPN2<=virtual_vpn2;*/
end

assign cp0_to_tlb_vpn2 = CP0_Entryhi_VPN2;
assign cp0_to_tlb_asid = CP0_Entryhi_ASID;

//7.EntryLo0�Ĵ���
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo0_PFN0 <= 20'b0;
        CP0_Entrylo0_C0   <= 3'b0;
        CP0_Entrylo0_D0   <= 1'b0;
        CP0_Entrylo0_V0   <= 1'b0;
        CP0_Entrylo0_G0   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo0_RegAddr) begin
        CP0_Entrylo0_PFN0 <= ms_result[25:6];
        CP0_Entrylo0_C0   <= ms_result[5:3];
        CP0_Entrylo0_D0   <= ms_result[2];
        CP0_Entrylo0_V0   <= ms_result[1];
        CP0_Entrylo0_G0   <= ms_result[0];
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
always @(posedge clk) begin
    if(reset) begin
        CP0_Entrylo1_PFN1 <= 20'b0;
        CP0_Entrylo1_C1   <= 3'b0;
        CP0_Entrylo1_D1   <= 1'b0;
        CP0_Entrylo1_V1   <= 1'b0;
        CP0_Entrylo1_G1   <= 1'b0;
    end
    else if(mtc0_we && CP0_Addr == `Entrylo1_RegAddr) begin
        CP0_Entrylo1_PFN1 <= ms_result[25:6];
        CP0_Entrylo1_C1   <= ms_result[5:3];
        CP0_Entrylo1_D1   <= ms_result[2];
        CP0_Entrylo1_V1   <= ms_result[1];
        CP0_Entrylo1_G1   <= ms_result[0];
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
reg CP0_Index_P;
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
        CP0_Index_Index <= ms_result[3:0];
    end
    else if(inst_tlbp && tlb_to_cp0_found) begin
        CP0_Index_Index <= tlb_to_cp0_index;
    end
end

// assign cp0_to_tlb_index = (inst_tlbr||inst_tlbwi) ? CP0_Index_Index : 4'b0 ;
assign cp0_to_tlb_index = CP0_Index_Index;

//mfc0ָ��ʵ��:
assign CP0_data = (CP0_Addr == `BadVAddr_RegAddr)? CP0_BadVAddr:
                  (CP0_Addr == `Count_RegAddr   )? CP0_Count:
                  (CP0_Addr == `Compare_RegAddr )? CP0_Compare:
                  (CP0_Addr == `Status_RegAddr  )? {9'b0,CP0_Status_Bev,6'b0,CP0_Status_IM,6'b0,
                                                    CP0_Status_EXL,CP0_Status_IE}:
                  (CP0_Addr == `Cause_RegAddr   )? {CP0_Cause_BD,CP0_Cause_TI,14'b0,CP0_Cause_IP,
                                                    1'b0,CP0_Cause_ExcCode,2'b0}:
                  (CP0_Addr == `EPC_RegAddr     )? CP0_EPC:
                  (CP0_Addr == `Entryhi_RegAddr )? {CP0_Entryhi_VPN2,5'b0,CP0_Entryhi_ASID}:
                  (CP0_Addr == `Entrylo0_RegAddr)? {5'b0,CP0_Entrylo0_PFN0,CP0_Entrylo0_C0,CP0_Entrylo0_D0,CP0_Entrylo0_V0,CP0_Entrylo0_G0}:
                  (CP0_Addr == `Entrylo1_RegAddr)? {5'b0,CP0_Entrylo1_PFN1,CP0_Entrylo1_C1,CP0_Entrylo1_D1,CP0_Entrylo1_V1,CP0_Entrylo1_G1}:
                  (CP0_Addr == `Index_RegAddr   )? {CP0_Index_P,27'b0,CP0_Index_Index}:
                                                    32'b0; //TODO:ĿǰCP0_dataĬ��32'b0

endmodule //CP0_Reg