module Forward
#(parameter m = 5)
(
    input [m-1:0]rs,//从RF中取出的第一个操作数是来自rs
    input [m-1:0]rt,//从RF中取出的第二个操作数是来自rt
    input [m-1:0]MEM_dst,//从alu后面那个寄存器后面出来的内容 如果是r型指令的话 会被写到RF中
    //input [m-1:0]WB_dst,
    input [m-1:0]dst,//在exe阶段的
    input EXE_RFWr,//当前在exe阶段的指令是否写寄存器
    input MEM_RFWr,//当前在MEM阶段的指令是否写入
    //input WB_RFWr,//当前在WB阶段的指令是否写入
    output reg[1:0]forwardA,
    output reg[1:0]forwardB 
);
/*
forward信号是这样的 
00 表示从RF出来的
01 表示选exe阶段末尾的结果
10 表示从mem阶段读出来的结果 //可能是alu结果 也可能是dmem读出结果
11 表示从wb阶段 好吧其实这一项是多余的
*/

//给forwardA赋值
always @(rs , MEM_dst  , MEM_RFWr  ,EXE_RFWr , dst ) begin
    if(EXE_RFWr && dst!=5'b00000 && dst==rs)//
    begin
      forwardA=2'b01;//
    end
    else if(MEM_RFWr && MEM_dst != 5'b00000 && MEM_dst == rs ) forwardA=2'b10;
    //else if(WB_RFWr && WB_dst !=5'b00000 && WB_dst == rs)forwardA=2'b11;
    else begin
      forwardA=2'b00;
    end
end

//给forwardB赋值
always @(rt , MEM_dst  , MEM_RFWr ,EXE_RFWr , dst ) begin
    if(EXE_RFWr && dst!=5'b00000 && dst==rt)//
    begin
      forwardB=2'b01;//
    end
    else if(MEM_RFWr && MEM_dst != 5'b00000 && MEM_dst == rt ) forwardB=2'b10;
    //else if(WB_RFWr && WB_dst !=5'b00000 && WB_dst == rt)forwardB=2'b11;
    else begin
      forwardB=2'b00;
    end
end

endmodule