module mips(clk,rst);
  input clk;
  input rst;
  wire [31:0] npc,pc,instr;
  wire [63:0] IFID_dout;
  wire [161:0] IDEX_dout;
  wire [108:0] EXMEM_dout;
  wire [104:0] MEMWB_dout;
  wire [31:0] rf_dout1,rf_dout2,imm; 
  wire PC_en,IFID_en,IFID_clear;
  wire [2:0] NPCSrc;
  wire zero_sign;
  wire [31:0] WB_data;
  wire [2:0] compare_result;
  wire ID_flush1,ID_flush2,ID_flush;
  wire [15:0] ctrlout,ctrlop;
  wire [7:0] ctrlop2;
  wire overflow,oferror;
  wire [31:0] data1,datatemp,data2;
  wire [1:0] forward_a,forward_b;
  wire [4:0] rw_addr,shift;
  wire [31:0] alu_out;
  wire EX_flush;
  wire [31:0] MEM_dout;



  assign ID_flush = ID_flush1||ID_flush2;

  npc U_NPC(
     .pc_4(pc+4) , .imm(imm) , .jaddr(IFID_dout[25:0]) , .raddr(rf_dout1) , .NPCSrc(NPCSrc) , .npc(npc)
  );

  pc U_PC(
     .din(npc) , .clk(clk) , .rst(rst) , .dout(pc) , .PCWrite_en(PC_en)
  );

  im_4k U_IM(
     .addr(pc[11:2]) , .dout(instr)
  );

  IFID_flop U_IFID(
     .pc_4(pc+4) , .instr(instr) , .dout(IFID_dout) , .clk(clk) , .rst(rst) , .IFID_en(IFID_en) , .IFID_clear(IFID_clear)
  );

  ext U_EXT(
     .datain(IFID_dout[15:0]) , .dataout(imm) , .zero_sign(zero_sign)
  );

  rf U_RF(
     .r1_addr(IFID_dout[25:21]) , .r2_addr(IFID_dout[20:16]) , .w_addr(MEMWB_dout[4:0]) , .w_data(WB_data) , .r1_data(rf_dout1) , .r2_data(rf_dout2) , .clk(clk) , .RegWrite(MEMWB_dout[104])
  );

  compare U_COMPARE(
     .data1(rf_dout1) , .data2(rf_dout2) , .result(compare_result)
  );

  hzd U_HZD(
     .IFID_rs(IFID_dout[25:21]) , .IFID_rt(IFID_dout[20:16]) , .IDEX_rt(IDEX_dout[9:5]) , .IDEX_MEMRead(IDEX_dout[148]) , .PC_en(PC_en) , .IFID_en(IFID_en) , .ID_flush(ID_flush1)
  );

  ctrl U_CTRL(
     .instr(IFID_dout[31:0]) , .compare_result(compare_result) , .overflow(overflow) , .IFID_clear(IFID_clear) , .ID_flush(ID_flush2) , .EX_flush(EX_flush) , .NPCSrc(NPCSrc) , .ctrlop(ctrlout) , .zero_sign(zero_sign)
  );

  mux2to1 #(16) U_MUX1(
     .A(ctrlout) , .B(16'b0) , .out(ctrlop) , .ctrl(ID_flush)
  );

  IDEX_flop U_IDEX(
     .NPCSrc(NPCSrc) , .ctrlop(ctrlop) , .pc_4(IFID_dout[63:32]) , .data1(rf_dout1) , .data2(rf_dout2) , .imm(imm) , .rs_addr(IFID_dout[25:21]) , .rt_addr(IFID_dout[20:16]) , .rd_addr(IFID_dout[15:11]) , .dout(IDEX_dout) , .clk(clk) , .rst(rst)
  );

  mux3to1 #(32) U_MUX2(
     .A(IDEX_dout[110:79]) , .B(EXMEM_dout[68:37]) , .C(MEMWB_dout[36:5]) , .out(data1) , .ctrl(forward_a)
  );

  mux3to1 #(32) U_MUX3(
     .A(IDEX_dout[78:47]) , .B(EXMEM_dout[68:37]) , .C(WB_data) , .out(datatemp) , .ctrl(forward_b)
  );
  
  mux2to1 #(32) U_MUX4(
     .A(datatemp) , .B(IDEX_dout[46:15]) , .out(data2) , .ctrl(IDEX_dout[155])
  );


  alu U_ALU(
     .data1(data1) , .data2(data2) , .shift(shift) , .aluctrl(IDEX_dout[154:151]) , .result(alu_out) , .overflow(overflow)
  );

  forward U_FORWARD(
     .IDEX_rs(IDEX_dout[14:10]) , .IDEX_rt(IDEX_dout[9:5]) , .EXMEM_rw(EXMEM_dout[4:0]) , .EXMEM_RegWrite(EXMEM_dout[104]) , .MEMWB_rw(MEMWB_dout[4:0]) , .MEMWB_RegWrite(MEMWB_dout[104]) , .forward_a(forward_a) , .forward_b(forward_b)
  );

  mux2to1 #(5) U_MUX5(
     .A(IDEX_dout[25:21]) , .B(data1[4:0]) , .out(shift) , .ctrl(IDEX_dout[158])
  );

  mux3to1 #(5) U_MUX6(
     .A(IDEX_dout[9:5]) , .B(IDEX_dout[4:0]) , .C(5'b11111) , .out(rw_addr) , .ctrl(IDEX_dout[157:156])
  );

  mux2to1 #(8) U_MUX7(
     .A(IDEX_dout[150:143]) , .B(8'b0) , .out(ctrlop2) , .ctrl(EX_flush)
  );

  EXMEM_flop U_EXMEM(
     .ctrlop(ctrlop2) , .pc_4(IDEX_dout[142:111]) , .ALU_result(alu_out) , .MEM_data(datatemp) , .rw_addr(rw_addr) , .dout(EXMEM_dout) , .clk(clk) , .rst(rst)
  );

  dm_4k U_DM(
     . addr(EXMEM_dout[48:37]) , .din(EXMEM_dout[36:5]) , .DMWr(EXMEM_dout[105]) , .clk(clk) , .dout(MEM_dout) , .SWSrc(EXMEM_dout[108:107])
  );

  MEMWB_flop U_MEMWB(
     .ctrlop(EXMEM_dout[104:101]) , .pc_4(EXMEM_dout[100:69]) , .MEM_data(MEM_dout) , .ALU_result(EXMEM_dout[68:37]) , .rw_addr(EXMEM_dout[4:0]) , .dout(MEMWB_dout) , .clk(clk) , .rst(rst)
  );

  mux_datawrite #(32) U_MUX8(
     .pc_4(MEMWB_dout[100:69]) , .ALUOut(MEMWB_dout[36:5]) , .MemData(MEMWB_dout[68:37]) , .out(WB_data) , .ctrl(MEMWB_dout[103:101])
  );
  

endmodule