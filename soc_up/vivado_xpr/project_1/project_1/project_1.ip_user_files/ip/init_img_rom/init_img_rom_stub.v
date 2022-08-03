// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Aug  2 17:05:48 2022
// Host        : LAPTOP-S513OG68 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/study/game/code/test/display/soc_up/rtl/CONFREG/LCD/ip/init_img_rom/init_img_rom_stub.v
// Design      : init_img_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module init_img_rom(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[16:0],douta[15:0]" */;
  input clka;
  input ena;
  input [16:0]addra;
  output [15:0]douta;
endmodule
