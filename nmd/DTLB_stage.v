`include "global_defines.vh"

module DTLB_stage(
   // input             DTLB_found,
    input      [31:0] DTLB_VAddr, //���ַ
    output reg [31:0] DTLB_RAddr, //ʵ��ַ
    input      [ 3:0] DTLB_index,
    input      [19:0] DTLB_pfn,
    input      [ 2:0] DTLB_c,
    input             DTLB_d,
    input             DTLB_v
);


always @(*) begin
    if(DTLB_VAddr[31:28] == 4'hA || DTLB_VAddr[31:28] == 4'hB) //ʵ��ַ�������λ����
        DTLB_RAddr <= {3'b000, DTLB_VAddr[28:0]};
    else if(DTLB_VAddr[31:28] == 4'h8 || DTLB_VAddr[31:28] == 4'h9) //ʵ��ַ�����λ����
        DTLB_RAddr <= {1'b0  , DTLB_VAddr[30:0]};
    else
        DTLB_RAddr <= {DTLB_pfn,DTLB_VAddr[11:0]};
end


endmodule