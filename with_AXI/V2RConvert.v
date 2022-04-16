module V2RConvert (
    input      [31:0] VAddr, //–Èµÿ÷∑
    output reg [31:0] RAddr  // µµÿ÷∑
);

always @(*) begin
    if(VAddr < 32'hC000_0000 && VAddr > 32'h9FFF_FFFF)
        RAddr <= VAddr - 32'hA000_0000;
    else if(VAddr < 32'hA000_0000 && VAddr > 32'h7FFF_FFFF)
        RAddr <= VAddr - 32'h8000_0000;
    else
        RAddr <= VAddr;
end
endmodule //V2RConvert