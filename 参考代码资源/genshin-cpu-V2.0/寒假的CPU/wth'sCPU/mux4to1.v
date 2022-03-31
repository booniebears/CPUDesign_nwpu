module mux4to1(A,B,C,D,out,ctrl);
parameter width = 32;

  input [width-1:0] A;
  input [width-1:0] B;
  input [width-1:0] C;
  input [width-1:0] D;
  input [1:0] ctrl;
  output reg [width-1:0] out;

always@(A,B,C,D,ctrl)
  if(ctrl == 2'b00) out = A;
  else if(ctrl == 2'b01) out = B;
  else if(ctrl == 2'b10) out = C;
  else out = D;

endmodule

