module mux2to1(A,B,out,ctrl);
parameter width = 32;

  input [width-1:0] A;
  input [width-1:0] B;
  input ctrl;
  output reg [width-1:0] out;

always@(A,B,ctrl)
  if(!ctrl) out = A;
  else out = B;

endmodule