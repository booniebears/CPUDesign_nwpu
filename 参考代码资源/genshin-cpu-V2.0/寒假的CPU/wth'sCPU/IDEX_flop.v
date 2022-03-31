module IDEX_flop(NPCSrc,ctrlop,pc_4,data1,data2,imm,rs_addr,rt_addr,rd_addr,dout,clk,rst);
 
  input [2:0] NPCSrc;  
  input [15:0] ctrlop; //8+4+4
  input [31:0] pc_4;
  input [31:0] data1;
  input [31:0] data2;
  input [31:0] imm;
  input [4:0] rs_addr;
  input [4:0] rt_addr;
  input [4:0] rd_addr;
  input clk,rst;
  output reg [161:0] dout;

always@(posedge clk or posedge rst)
  if(rst == 1)
    dout = 162'b0;
  else
    dout = {NPCSrc,ctrlop,pc_4,data1,data2,imm,rs_addr,rt_addr,rd_addr};

endmodule