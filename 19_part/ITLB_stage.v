`include "global_defines.vh"

module ITLB_stage(
    input      [31:0] ITLB_VAddr, //虚地址
    output reg [31:0] ITLB_RAddr, //实地址
    input      [ 3:0] ITLB_index,
    input      [19:0] ITLB_pfn,
    input      [ 2:0] ITLB_c,
    input             ITLB_d,
    input             ITLB_v
);


always @(*) begin
    if(ITLB_VAddr[31:28] == 4'hA || ITLB_VAddr[31:28] == 4'hB) //实地址把最高三位清零
        ITLB_RAddr <= {3'b000, ITLB_VAddr[28:0]};
    else if(ITLB_VAddr[31:28] == 4'h8 || ITLB_VAddr[31:28] == 4'h9) //实地址把最高位清零
        ITLB_RAddr <= {1'b0  , ITLB_VAddr[30:0]};
    else
        ITLB_RAddr <= {ITLB_pfn,ITLB_VAddr[11:0]};
end


endmodule