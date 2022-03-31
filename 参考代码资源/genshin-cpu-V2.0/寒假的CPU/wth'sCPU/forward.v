module forward(IDEX_rs,IDEX_rt,EXMEM_rw,EXMEM_RegWrite,MEMWB_rw,MEMWB_RegWrite,forward_a,forward_b);

  input [4:0] IDEX_rs;
  input [4:0] IDEX_rt;
  input [4:0] EXMEM_rw;
  input EXMEM_RegWrite;
  input [4:0] MEMWB_rw;
  input MEMWB_RegWrite;
  output reg [1:0] forward_a;
  output reg [1:0] forward_b;

always@(IDEX_rs,IDEX_rt,EXMEM_rw,EXMEM_RegWrite,MEMWB_rw,MEMWB_RegWrite)
begin  
  if(EXMEM_RegWrite == 1&&EXMEM_rw != 0&&EXMEM_rw == IDEX_rs)
    forward_a = 2'b01;
  else if(MEMWB_RegWrite == 1&&MEMWB_rw != 0&&MEMWB_rw == IDEX_rs)
    forward_a = 2'b10;
  else 
    forward_a = 2'b00;

  if(EXMEM_RegWrite == 1&&EXMEM_rw != 0&&EXMEM_rw == IDEX_rt)
    forward_b = 2'b01;
  else if(MEMWB_RegWrite == 1&&MEMWB_rw != 0&&MEMWB_rw == IDEX_rt)
    forward_b = 2'b10;
  else 
    forward_b = 2'b00;
end

endmodule