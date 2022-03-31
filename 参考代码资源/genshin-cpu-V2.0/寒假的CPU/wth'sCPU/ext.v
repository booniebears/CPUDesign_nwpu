module ext(datain,dataout,zero_sign);
  input [15:0] datain;
  input        zero_sign;
  output reg [31:0] dataout;

always@(datain,zero_sign)
if(zero_sign)
  if(datain[15] == 0)
    dataout = {16'b0,datain};
  else
    dataout = {{16{1'b1}},datain};
else dataout = {16'b0,datain};

endmodule
