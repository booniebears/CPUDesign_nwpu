module V2RConvert (
    input      [31:0] VAddr, //���ַ
    output reg [31:0] RAddr,  //ʵ��ַ
    output reg        Use_Cache  //�Ƿ�ʹ�û���
);

always @(*) begin
    if(VAddr[31:28] < 4'hC && VAddr[31:28] > 4'h9) //kseg1��,ֱ��ӳ�䵽�����ַ
        RAddr <= {VAddr[31:28] & 4'h1, VAddr[27:0]};
    else if(VAddr[31:28] < 4'hA && VAddr[31:28] > 4'h7) //kseg0��,ֱ��ӳ�䵽�����ַ
        RAddr <= {VAddr[31:28] & 4'h7, VAddr[27:0]};
    else
        RAddr <= VAddr;
end

always @(*) begin //TODO:Ŀǰû�п���TLB����,�ȼٶ�kseg0�ξ���ʹ��Cache
    if(VAddr[31:28] < 4'hC && VAddr[31:28] > 4'h9) //kseg1��,ֱ��ӳ�䵽�����ַ
        Use_Cache <= 1'b0;
    else
        Use_Cache <= 1'b1;
end

endmodule //V2RConvert