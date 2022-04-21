module V2RConvert (
    input      [31:0] VAddr, //虚地址
    output reg [31:0] RAddr,  //实地址
    output reg        Use_Cache  //是否使用缓存
);

always @(*) begin
    if(VAddr[31:28] < 4'hC && VAddr[31:28] > 4'h9) //kseg1段,直接映射到物理地址
        RAddr <= {VAddr[31:28] & 4'h1, VAddr[27:0]};
    else if(VAddr[31:28] < 4'hA && VAddr[31:28] > 4'h7) //kseg0段,直接映射到物理地址
        RAddr <= {VAddr[31:28] & 4'h7, VAddr[27:0]};
    else
        RAddr <= VAddr;
end

always @(*) begin //TODO:目前没有考虑TLB部分,先假定kseg0段就是使用Cache
    if(VAddr[31:28] < 4'hC && VAddr[31:28] > 4'h9) //kseg1段,直接映射到物理地址
        Use_Cache <= 1'b0;
    else
        Use_Cache <= 1'b1;
end

endmodule //V2RConvert