`include "global_defines.vh"

module DTLB_stage(
    input              clk       ,
    input              reset     ,
    input      [31:12] DTLB_VPN, //虚地址
    output reg [31:12] DTLB_PFN, //实地址
    output reg         isUncache
);

always @(*) begin
    if(DTLB_VPN[31:28] == 4'hA || DTLB_VPN[31:28] == 4'hB) //实地址把最高三位清零
        DTLB_PFN = {3'b000, DTLB_VPN[28:12]};
    else if(DTLB_VPN[31:28] == 4'h8 || DTLB_VPN[31:28] == 4'h9) //实地址把最高位清零
        DTLB_PFN = {1'b0  , DTLB_VPN[30:12]};
    else
        DTLB_PFN = DTLB_VPN;
end

always @(*) begin //TODO:目前比较简化,没有考虑TLB.kseg1固定为uncache,kseg0先认为是cache属性
    if(DTLB_VPN[31:28] == 4'hA || DTLB_VPN[31:28] == 4'hB)
        isUncache = 1'b1;
    else
        isUncache = 1'b1;
end

endmodule




