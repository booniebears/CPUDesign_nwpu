module NPC
#(
    parameter n = 32,
    parameter beq =6'b000100 ,
    parameter bne =6'b000101 ,
    parameter blez =6'b000110 ,
    parameter bgtz =6'b000111 
    
    )//
(
    input [n-1:0]PC,
    input  [n-1:0]imme_32,//被拓展之后的32位的立即数 用于branch指令的
    input [25:0]imme_26,//j型instr中的26位地址
    input  [n-1:0]rsData,//jr或者jalr中的跳转地址 这是从RF中读取的rf[rs]
    input  [n-1:0]rtData,
    input [5:0]Opcode,//好吧 我承认这很败笔 为什么要有这么多条branch 难过
    input [4:0]rt,//这个真的instr是rt 字段
    input branch,//是否为分支指令
    input j,//指令是否为j型指令 
    input jr,//指令是否是jr 或者jalr
    //input clk, 好吧 这个也没用
    //input ze,//alu的结果来表明branch是否执行 没了是因为要使得branch两个clock结束
    output reg[n-1:0]PC_4,//这其实没啥用
    output reg[n-1:0]NextPC
);

always @(PC) begin
    PC_4=PC+4;
end//在第一个周期计算出PC＋４总是使得下一周期的PC位PC+4

reg  [n-1:0]tem1;//j型指令的地址
reg [n-1:0]tem2;//branch型指令的地址

always @(PC,imme_26) begin
    tem1<={PC[n-1:n-4],imme_26,2'b00};//这是j的计算出的地址
end

always @(PC,imme_32) begin
    tem2=PC+{imme_32[29:0],2'b00};//这是branch计算出的地址
end

reg ze;

always @(Opcode, rt,rsData,rtData) begin
    case (Opcode)
        6'b000_001:begin

          if(rt==5'b00_000)begin
            if($signed(rsData)<0)ze=1'b1;
            else ze=1'b0;
          end

          else if(rt==5'b00_001)begin
            if($signed(rsData)>=0)ze=1'b1;
            else ze=1'b0;
          end

          else begin    end

        end 

        beq:begin
          if(rsData==rtData)ze=1'b1;
          else ze=1'b0;
        end

        bne:begin
          if(rsData!=rtData)ze=1'b1;
          else ze=1'b0;
        end

        blez:begin
          if($signed(rsData)<=0)ze=1'b1;
          else ze=1'b0;
        end

        bgtz:begin
          if($signed(rsData)>0)ze=1'b1;
          else ze=1'b0;
        end

        default:begin
          
        end 
    endcase
end


always @(tem1,tem2,PC,ze,branch,j,jr,rsData,PC_4) begin
    if(branch==1'b1 &&ze==1'b1)begin 
        NextPC=tem2;
    end//如果分支成立
    else if(j==1'b1)begin 
    NextPC=tem1;
    end//如果是j型指令
    else if(jr==1'b1)begin
    NextPC=rsData;      
    end
    else if(branch==1'b1 &&ze==1'b0) begin
      NextPC=PC;
    end//如果branch条件不成立 那么PC就是当前PC
    else NextPC=PC_4;
    
end


endmodule