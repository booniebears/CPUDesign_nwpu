// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Aug  2 11:05:33 2022
// Host        : LAPTOP-S513OG68 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ complex_ila_stub.v
// Design      : complex_ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[31:0],probe3[3:0],probe4[2:0],probe5[31:0],probe6[0:0],probe7[31:0],probe8[0:0],probe9[31:0],probe10[31:0],probe11[5:0],probe12[0:0],probe13[0:0],probe14[31:0],probe15[31:0],probe16[31:0],probe17[31:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [31:0]probe2;
  input [3:0]probe3;
  input [2:0]probe4;
  input [31:0]probe5;
  input [0:0]probe6;
  input [31:0]probe7;
  input [0:0]probe8;
  input [31:0]probe9;
  input [31:0]probe10;
  input [5:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [31:0]probe14;
  input [31:0]probe15;
  input [31:0]probe16;
  input [31:0]probe17;
endmodule
