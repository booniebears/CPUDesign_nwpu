module Hazard
#(parameter m = 5)
(
    input ID_EXE_load,//这个是用于检测在EXE是不是load指令
    //input ID_EXE_branch,//用于检测在EXE的是不是branch指令
    //input ID_EXE_jr,//用于检测在EXE的是不是r型的jump指令
    input branch,//用于检测当前的是不是branch
    input [5:0]Opcode,//指令码
    input [5:0]funct,//
    input [m-1:0]rs,
    input [m-1:0]rt,
    input [m-1:0]ID_EXE_rt,//load指令的dst
    input nop_r,
    output reg PCWr,
    output reg IRWr,//好吧 IRWr也要加一个寄存器 以表示是对下一个周期生效
    output reg nop,//是否植入nop指令 在nop和真的选择器之间加一个寄存器 不然nop就对当前指令生效了
    output reg nop_imme
);

//数据冒险的阻塞 好吧其实 我感觉还有一点点小的优化空间 在于确定rs rt 确实是用于读RF中的数据了 被j这种指令误伤了不太好
always @(ID_EXE_load , rs , rt , ID_EXE_rt ,Opcode,branch,funct) begin
    if (ID_EXE_load && ( rs==ID_EXE_rt || rt==ID_EXE_rt ) ) begin//load r
        PCWr=1'b0;
        IRWr=1'b0;
        nop_imme=1'b1;   
    end
    else begin
        PCWr=1'b1;
        IRWr=1'b1;
        nop_imme=1'b0;         
     end
    
end

always @(ID_EXE_load , rs , rt , ID_EXE_rt ,Opcode , branch,funct,nop_imme, nop_r) begin
    if (nop_imme==1'b0 && nop_r==1'b0) begin
        if(Opcode==6'b000000 && (funct==6'b001001 || funct==6'b001000 ))begin//是jr jalr 同样能在两个周期内跳完 不过 jalr的写就要就晚一点了
            nop=1'b1;//植入nop指令
        end
        else if(branch==1'b1)begin
            nop=1'b1;//植入nop指令
         end
        else if (Opcode==6'b000011 || Opcode==6'b000010) begin//如果是j 和jal指令 那当然直接阻塞一回合就好了 
            nop=1'b1;//植入nop指令
        end
        else begin
        nop=1'b0;
        end
    end
    else nop=1'b0;
end
endmodule