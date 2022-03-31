module mux3to1(A,B,C,out,ctrl);
parameter width = 32;

  input [width-1:0] A;
  input [width-1:0] B;
  input [width-1:0] C;
  input [1:0] ctrl;
  output reg [width-1:0] out;

always@(A,B,C,ctrl)
  if(ctrl == 2'b00) out = A;
  else if(ctrl == 2'b01) out = B;
  else out = C;

endmodule