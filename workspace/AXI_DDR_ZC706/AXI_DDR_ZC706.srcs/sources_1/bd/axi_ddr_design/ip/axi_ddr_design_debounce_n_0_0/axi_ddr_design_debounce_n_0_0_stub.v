// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul 27 15:59:05 2021
// Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/AXI_DDR_ZC706/AXI_DDR_ZC706.srcs/sources_1/bd/axi_ddr_design/ip/axi_ddr_design_debounce_n_0_0/axi_ddr_design_debounce_n_0_0_stub.v
// Design      : axi_ddr_design_debounce_n_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "debounce_n,Vivado 2020.1" *)
module axi_ddr_design_debounce_n_0_0(clk, button_in, button_out)
/* synthesis syn_black_box black_box_pad_pin="clk,button_in,button_out" */;
  input clk;
  input button_in;
  output button_out;
endmodule
