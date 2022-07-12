import "DPI-C" function void ram_write_helper
(
  input  int    wIdx,
  input  int    wdata,
  input  int    wmask,
  input  bit        wen
);

import "DPI-C" function int ram_read_helper
(
  input  bit        en,
  input  int    rIdx
);

module RAMHelper(
  input         clk,
  input         en,
  input  [31:0] rIdx,
  output [31:0] rdata,
  input  [31:0] wIdx,
  input  [31:0] wdata,
  input  [31:0] wmask,
  input         wen
);

  assign rdata = ram_read_helper(en, rIdx);

  always @(posedge clk) begin
    ram_write_helper(wIdx, wdata, wmask, wen && en);
  end

endmodule

