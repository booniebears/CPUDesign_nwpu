module IFID_flop(pc_4,instr,dout,clk,rst,IFID_en,IFID_clear);

  input [31:0] pc_4;
  input [31:0] instr;
  input clk,rst;
  input IFID_en,IFID_clear;
  output reg [63:0] dout;

always@(posedge clk or posedge rst)
  if(rst == 1||IFID_clear == 1)
    dout = 64'b0;
  else if(IFID_en == 1)
    begin
      dout[63:32] = pc_4;
      dout[31:0] = instr;
    end
  else
    dout = dout;

endmodule