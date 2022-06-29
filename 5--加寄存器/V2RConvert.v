module V2RConvert (
    input      [31:0] VAddr, //���ַ
    output reg [31:0] RAddr, //ʵ��ַ
    output reg        isUncache
);

always @(*) begin
    if(VAddr[31:28] == 4'hA || VAddr[31:28] == 4'hB) //ʵ��ַ�������λ����
        RAddr <= {3'b000, VAddr[28:0]};
    else if(VAddr[31:28] == 4'h8 || VAddr[31:28] == 4'h9) //ʵ��ַ�����λ����
        RAddr <= {1'b0  , VAddr[30:0]};
    else
        RAddr <= VAddr;
end

always @(*) begin //TODO:Ŀǰ�Ƚϼ�,û�п���TLB.kseg1�̶�Ϊuncache,kseg0����Ϊ��cache����
    if(VAddr[31:28] == 4'hA || VAddr[31:28] == 4'hB)
        isUncache <= 1'b1;
    else
        isUncache <= 1'b0;
end

endmodule //V2RConvert