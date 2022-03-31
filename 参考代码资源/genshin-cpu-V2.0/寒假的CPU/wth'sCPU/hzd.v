module hzd(IFID_rs,IFID_rt,IDEX_rt,IDEX_MEMRead,PC_en,IFID_en,ID_flush);

  input [4:0] IFID_rs;
  input [4:0] IFID_rt;
  input [4:0] IDEX_rt;
  input IDEX_MEMRead;
  output reg PC_en;
  output reg IFID_en;
  output reg ID_flush;

always@(IFID_rs,IFID_rt,IDEX_rt,IDEX_MEMRead)
  if(IDEX_MEMRead == 1&&IDEX_rt != 0&&(IDEX_rt == IFID_rs||IDEX_rt == IFID_rt))
    begin
      PC_en = 1'b0;
      IFID_en = 1'b0;
      ID_flush = 1'b1;
    end
  else
    begin
      PC_en = 1'b1;
      IFID_en = 1'b1;
      ID_flush = 1'b0;
    end

endmodule