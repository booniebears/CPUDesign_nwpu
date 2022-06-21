`include "global_defines.vh"

module DTLB_stage(
    input             DTLB_found,
    input      [31:0] DTLB_VAddr, //虚地址
    input      [3:0]  DTLB_asid, //ASID
    output reg [31:0] DTLB_RAddr, //实地址
    input      [ 3:0] DTLB_index,
    input      [19:0] DTLB_pfn,
    input      [ 2:0] DTLB_c,
    input             DTLB_d,
    input             DTLB_v,
    output reg        isUncache,
    input             DTLB_read,   
    input             DTLB_store,   
    output reg        DTLB_EX_RD_Refill,
    output reg        DTLB_EX_WR_Refill,
    output reg        DTLB_EX_RD_Invalid,
    output reg        DTLB_EX_WR_Invalid,
    output reg        DTLB_EX_Modified
);


always @(*) begin
    if(DTLB_VAddr[31:28] == 4'hA || DTLB_VAddr[31:28] == 4'hB) //实地址把最高三位清零
        DTLB_RAddr <= {3'b000, DTLB_VAddr[28:0]};
    else if(DTLB_VAddr[31:28] == 4'h8 || DTLB_VAddr[31:28] == 4'h9) //实地址把最高位清零
        DTLB_RAddr <= {1'b0  , DTLB_VAddr[30:0]};
    else
        DTLB_RAddr <= {DTLB_pfn,DTLB_VAddr[11:0]};
end

always @(*) begin //TODO:目前比较简化,没有考虑TLB.kseg1固定为uncache,kseg0先认为是cache属性
    if(DTLB_VAddr[31:28] == 4'hA || DTLB_VAddr[31:28] == 4'hB)
        isUncache <= 1'b1;
    else
        isUncache <= 1'b0;
end

always @(*) begin
    if(~DTLB_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && DTLB_read)
        DTLB_EX_RD_Refill <= 1'b1;
    else
        DTLB_EX_RD_Refill <= 1'b0;
end

always @(*) begin
    if(DTLB_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && ~DTLB_v && DTLB_read)
        DTLB_EX_RD_Invalid <= 1'b1;
    else
        DTLB_EX_RD_Invalid <= 1'b0;    
end

always @(*) begin
    if(~DTLB_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && DTLB_store)
        DTLB_EX_WR_Refill <= 1'b1;
    else
        DTLB_EX_WR_Refill <= 1'b0;
end

always @(*) begin
    if(DTLB_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && ~DTLB_v && DTLB_store)
        DTLB_EX_WR_Invalid <= 1'b1;
    else
        DTLB_EX_WR_Invalid <= 1'b0;    
end

always @(*) begin
    if(DTLB_found && (DTLB_VAddr[31:28] <= 4'h7 || DTLB_VAddr[31:28] >= 4'hC) && DTLB_v  && ~DTLB_d  && DTLB_store)
       DTLB_EX_Modified <= 1'b1;
    else
       DTLB_EX_Modified <= 1'b0;
end


endmodule