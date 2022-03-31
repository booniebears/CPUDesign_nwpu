module MEMWB_flop(ctrlop,pc_4,MEM_data,ALU_result,rw_addr,dout,clk,rst);

  input [3:0] ctrlop;
  input [31:0] pc_4;
  input [31:0] MEM_data;
  input [31:0] ALU_result;
  input [4:0] rw_addr;
  input clk,rst;
  output reg [104:0] dout;

always@(posedge clk or posedge rst)
  if(rst == 1)
    dout = 105'b0;
  else
    dout = {ctrlop,pc_4,MEM_data,ALU_result,rw_addr};

endmodule