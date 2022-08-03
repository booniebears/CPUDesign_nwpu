// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Aug  2 10:56:51 2022
// Host        : LAPTOP-S513OG68 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/study/game/code/test/display/soc_up/vivado_xpr/project_1/project_1/project_1.srcs/sources_1/ip/ex_ila/ex_ila_stub.v
// Design      : ex_ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ex_ila(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[31:0],probe3[31:0],probe4[0:0],probe5[7:0],probe6[7:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[4:0],probe11[31:0],probe12[5:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [31:0]probe2;
  input [31:0]probe3;
  input [0:0]probe4;
  input [7:0]probe5;
  input [7:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [4:0]probe10;
  input [31:0]probe11;
  input [5:0]probe12;
endmodule
