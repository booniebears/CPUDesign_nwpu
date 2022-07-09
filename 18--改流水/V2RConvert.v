module V2RConvert (
    input      [31:0] VAddr, //虚地址
    output reg [31:0] RAddr, //实地址
    output reg        isUncache
);

always @(*) begin
    if(VAddr[31:28] == 4'hA || VAddr[31:28] == 4'hB) //实地址把最高三位清零
        RAddr <= {3'b000, VAddr[28:0]};
    else if(VAddr[31:28] == 4'h8 || VAddr[31:28] == 4'h9) //实地址把最高位清零
        RAddr <= {1'b0  , VAddr[30:0]};
    else
        RAddr <= VAddr;
end

always @(*) begin //TODO:目前比较简化,没有考虑TLB.kseg1固定为uncache,kseg0先认为是cache属性
    if(VAddr[31:28] == 4'hA || VAddr[31:28] == 4'hB)
        isUncache <= 1'b1;
    else
        isUncache <= 1'b0;
end

endmodule //V2RConvert