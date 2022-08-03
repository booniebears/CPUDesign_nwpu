// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Aug  1 11:50:13 2022
// Host        : LAPTOP-S513OG68 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/study/game/code/test/display/soc_up/vivado_xpr/project_1/project_1/project_1.srcs/sources_1/ip/ram_tag/ram_tag_stub.v
// Design      : ram_tag
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module ram_tag(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[20:0],douta[20:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [20:0]dina;
  output [20:0]douta;
endmodule
