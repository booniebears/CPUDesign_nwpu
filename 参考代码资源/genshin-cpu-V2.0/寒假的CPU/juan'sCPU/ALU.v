module ALU
#(
    parameter n = 32,
    parameter zero =32'b0000_0000_0000_0000_0000_0000_0000_0000 ,
    parameter one =32'b0000_0000_0000_0000_0000_0000_0000_0001 //也许写成hex的会更好一点
)
(
    input   [n-1:0]operand_x,//ALU的第一个操作数
    input   [n-1:0]operand_y,//ALU的第二个操作数
    input [3:0]opcode,//4位的控制信号 
    output reg [n-1:0]result//运算结果
    //output reg ze//判断branch指令是否成立 这个没啥用了
);

/* opcode说明
    opcode function
    0000   and
    0001   or

    0010   add
    0110   substract

    0111   小于则置位
    1000   小于则置为（unsigned）

    1001  左移l
    1010  lui
    1011  右移l
    1100  右移a

    1101  或非
    1110  xor

*/
//reg [n-1:0]result;
//判断branch指令是否成立
/*always @(result) begin
    if(result==zero)
        ze=1'b1;
    else
        ze=1'b0;
end*/

//result
reg [n-1:0]tem;
reg signed [n-1:0]tem2 ;
          always @(operand_y) begin
            tem2=operand_y;
          end
always @(opcode,operand_x,operand_y) begin
    case (opcode)

        4'b0000:result=operand_x&operand_y;//逻辑与
        4'b0001:result=operand_x|operand_y;//逻辑或

        4'b0010:result=operand_x+operand_y;//加法
        4'b0110:result=operand_x-operand_y;//减法

        4'b0111:begin
          if ($signed(operand_x) <$signed( operand_y))result=one;
            else result=zero;
        end//小于则置位
        4'b1000:begin
          if({1'b0,operand_x}<{1'b0,operand_y})result=one;
          else result=zero;
        end

        4'b1001:begin tem=(operand_y<<operand_x[4:0]);
                      result=tem[n-1:0];
        end
        //左移l 
        4'b1010:begin tem={operand_y[15:0],16'h0000};//lui
                      result=tem[n-1:0];
        end
        4'b1011:begin tem=(operand_y>>operand_x[4:0]);
                      result=tem[n-1:0];
        end
        4'b1100:begin 

          result=tem2 >>>operand_x[4:0] ;

        end
        4'b1101:begin
          result=~(operand_x|operand_y);
        end
        4'b1110:begin
          result=(operand_x^operand_y);
        end


        default:begin end//或非
    endcase
end

endmodule