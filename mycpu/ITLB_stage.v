`include "global_defines.vh"

module ITLB_stage(
    input              clk       ,
    input              reset     ,
    input      [31:12] ITLB_VPN, //虚地址
    output reg [31:12] ITLB_PFN  //实地址
);

//虚实地址转换
always @(*) begin
    if(ITLB_VPN[31:28] == 4'hA || ITLB_VPN[31:28] == 4'hB) //实地址把最高三位清零
        ITLB_PFN = {3'b000, ITLB_VPN[28:12]};
    else if(ITLB_VPN[31:28] == 4'h8 || ITLB_VPN[31:28] == 4'h9) //实地址把最高位清零
        ITLB_PFN = {1'b0  , ITLB_VPN[30:12]};
    else
        ITLB_PFN = ITLB_VPN;
end

endmodule