// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module init_img_rom(clka, ena, addra, douta);
  input clka;
  input ena;
  input [16:0]addra;
  output [15:0]douta;
endmodule
