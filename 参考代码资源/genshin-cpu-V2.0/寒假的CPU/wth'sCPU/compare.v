`include "define.v"
module compare(data1,data2,result);

  input signed [31:0] data1;
  input signed [31:0] data2;
  output reg [2:0] result;

always@(data1,data2)
begin
  if(data1 == data2) 
    result[2] = 1'b1;
  else 
    result[2] = 1'b0;
  if(data1 > 0)
    result[1:0] = 2'b00;
  else if(data1 == 0)
    result[1:0] = 2'b01;
  else 
    result[1:0] = 2'b10;
end

endmodule