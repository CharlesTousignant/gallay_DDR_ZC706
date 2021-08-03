// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Aug  3 18:05:38 2021
// Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_v3_fsm_v3_0_0_stub.v
// Design      : design_v3_fsm_v3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fsm_v3,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ui_clk, ui_clk_sync_rst, s_axi_awid, 
  s_axi_awaddr, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, 
  s_axi_awprot, s_axi_awqos, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bready, s_axi_bid, s_axi_bresp, s_axi_bvalid, 
  s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, 
  s_axi_arcache, s_axi_arprot, s_axi_arqos, s_axi_arvalid, s_axi_arready, s_axi_rready, 
  s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, gpio_wreq, gpio_rreq, 
  gpio_wvalid, gpio_wlast, gpio_wack, gpio_awaddr, gpio_wdata, gpio_awlen, gpio_awburst, 
  gpio_wfifo_ready, gpio_wresp_valid, gpio_wresp, gpio_wresp_ack, gpio_rready, gpio_rack, 
  gpio_araddr, gpio_arlen, gpio_arburst, gpio_rresp, gpio_rvalid, gpio_rdata, gpio_rresp_valid, 
  gpio_rresp_ack, gpio_debug_state)
/* synthesis syn_black_box black_box_pad_pin="ui_clk,ui_clk_sync_rst,s_axi_awid[3:0],s_axi_awaddr[29:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock,s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awqos[3:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_arid[3:0],s_axi_araddr[29:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock,s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arqos[3:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rid[3:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,gpio_wreq,gpio_rreq,gpio_wvalid,gpio_wlast,gpio_wack,gpio_awaddr[31:0],gpio_wdata[31:0],gpio_awlen[31:0],gpio_awburst[31:0],gpio_wfifo_ready,gpio_wresp_valid,gpio_wresp[1:0],gpio_wresp_ack,gpio_rready,gpio_rack,gpio_araddr[31:0],gpio_arlen[31:0],gpio_arburst[31:0],gpio_rresp[1:0],gpio_rvalid,gpio_rdata[31:0],gpio_rresp_valid,gpio_rresp_ack,gpio_debug_state[4:0]" */;
  input ui_clk;
  input ui_clk_sync_rst;
  output [3:0]s_axi_awid;
  output [29:0]s_axi_awaddr;
  output [7:0]s_axi_awlen;
  output [2:0]s_axi_awsize;
  output [1:0]s_axi_awburst;
  output s_axi_awlock;
  output [3:0]s_axi_awcache;
  output [2:0]s_axi_awprot;
  output [3:0]s_axi_awqos;
  output s_axi_awvalid;
  input s_axi_awready;
  output [31:0]s_axi_wdata;
  output [3:0]s_axi_wstrb;
  output s_axi_wlast;
  output s_axi_wvalid;
  input s_axi_wready;
  output s_axi_bready;
  input [3:0]s_axi_bid;
  input [1:0]s_axi_bresp;
  input s_axi_bvalid;
  output [3:0]s_axi_arid;
  output [29:0]s_axi_araddr;
  output [7:0]s_axi_arlen;
  output [2:0]s_axi_arsize;
  output [1:0]s_axi_arburst;
  output s_axi_arlock;
  output [3:0]s_axi_arcache;
  output [2:0]s_axi_arprot;
  output [3:0]s_axi_arqos;
  output s_axi_arvalid;
  input s_axi_arready;
  output s_axi_rready;
  input [3:0]s_axi_rid;
  input [31:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input s_axi_rlast;
  input s_axi_rvalid;
  input gpio_wreq;
  input gpio_rreq;
  input gpio_wvalid;
  input gpio_wlast;
  input gpio_wack;
  input [31:0]gpio_awaddr;
  input [31:0]gpio_wdata;
  input [31:0]gpio_awlen;
  input [31:0]gpio_awburst;
  output gpio_wfifo_ready;
  output gpio_wresp_valid;
  output [1:0]gpio_wresp;
  input gpio_wresp_ack;
  input gpio_rready;
  input gpio_rack;
  input [31:0]gpio_araddr;
  input [31:0]gpio_arlen;
  input [31:0]gpio_arburst;
  output [1:0]gpio_rresp;
  output gpio_rvalid;
  output [31:0]gpio_rdata;
  output gpio_rresp_valid;
  input gpio_rresp_ack;
  output [4:0]gpio_debug_state;
endmodule
