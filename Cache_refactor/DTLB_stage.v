`include "global_defines.vh"

module DTLB_stage(
    input              clk       ,
    input              reset     ,
    input      [31:12] DTLB_VPN, //���ַ
    output reg [31:12] DTLB_PFN, //ʵ��ַ
    output reg         isUncache
);

always @(*) begin
    if(DTLB_VPN[31:28] == 4'hA || DTLB_VPN[31:28] == 4'hB) //ʵ��ַ�������λ����
        DTLB_PFN <= {3'b000, DTLB_VPN[28:12]};
    else if(DTLB_VPN[31:28] == 4'h8 || DTLB_VPN[31:28] == 4'h9) //ʵ��ַ�����λ����
        DTLB_PFN <= {1'b0  , DTLB_VPN[30:12]};
    else
        DTLB_PFN <= DTLB_VPN;
end

always @(*) begin //TODO:Ŀǰ�Ƚϼ�,û�п���TLB.kseg1�̶�Ϊuncache,kseg0����Ϊ��cache����
    if(DTLB_VPN[31:28] == 4'hA || DTLB_VPN[31:28] == 4'hB)
        isUncache <= 1'b1;
    else
        isUncache <= 1'b0;
end

endmodule




