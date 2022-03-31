module EXMEM_flop(ctrlop,pc_4,ALU_result,MEM_data,rw_addr,dout,clk,rst);

  input [7:0] ctrlop;
  input [31:0] pc_4;
  input [31:0] ALU_result;
  input [31:0] MEM_data;
  input [4:0] rw_addr;
  input clk,rst;
  output reg [108:0] dout;

always@(posedge clk or posedge rst)
  if(rst == 1)
    dout = 109'b0;
  else
    dout = {ctrlop,pc_4,ALU_result,MEM_data,rw_addr};

endmodule