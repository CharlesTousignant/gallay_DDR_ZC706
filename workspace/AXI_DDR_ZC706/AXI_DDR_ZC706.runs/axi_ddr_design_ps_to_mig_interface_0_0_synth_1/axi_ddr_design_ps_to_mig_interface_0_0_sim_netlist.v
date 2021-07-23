// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jul 23 16:42:49 2021
// Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_ddr_design_ps_to_mig_interface_0_0_sim_netlist.v
// Design      : axi_ddr_design_ps_to_mig_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_ddr_design_ps_to_mig_interface_0_0,ps_to_mig_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ps_to_mig_interface,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ui_clk,
    ui_clk_sync_rst,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    gpio_address,
    gpio_wdata,
    gpio_wvalid,
    gpio_rready,
    gpio_rdata,
    gpio_rvalid,
    gpio_rdata_ack,
    gpio_resp,
    gpio_resp_valid,
    gpio_resp_ack,
    gpio_debug_current_state,
    aresetn_in,
    aresetn_sync_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ui_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ui_clk, ASSOCIATED_RESET ui_clk_sync_rst, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN axi_ddr_design_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ui_clk_sync_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ui_clk_sync_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ui_clk_sync_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) output [3:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) output [29:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) output [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) output [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) output [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLOCK" *) output s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) output [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) output [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWQOS" *) output [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) output s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) input s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) output [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) output [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) output s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) output s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) input s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) output s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *) input [3:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) input [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) input s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *) output [3:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) output [29:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) output [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) output [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) output [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLOCK" *) output s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARCACHE" *) output [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) output [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARQOS" *) output [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) output s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) input s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) output s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *) input [3:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) input [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) input [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) input s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 30, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rvalid;
  input [31:0]gpio_address;
  input [31:0]gpio_wdata;
  input gpio_wvalid;
  input gpio_rready;
  output [31:0]gpio_rdata;
  output gpio_rvalid;
  input gpio_rdata_ack;
  output [1:0]gpio_resp;
  output gpio_resp_valid;
  input gpio_resp_ack;
  output [3:0]gpio_debug_current_state;
  input aresetn_in;
  output aresetn_sync_out;

  wire \<const0> ;
  wire \<const1> ;
  wire aresetn_in;
  wire aresetn_sync_out;
  wire [31:0]gpio_address;
  wire [3:0]gpio_debug_current_state;
  wire [31:0]gpio_rdata;
  wire gpio_rdata_ack;
  wire [1:0]gpio_resp;
  wire gpio_resp_ack;
  wire gpio_resp_valid;
  wire gpio_rready;
  wire gpio_rvalid;
  wire [31:0]gpio_wdata;
  wire gpio_wvalid;
  wire [29:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [2:2]\^s_axi_wstrb ;
  wire s_axi_wvalid;
  wire ui_clk;
  wire ui_clk_sync_rst;

  assign s_axi_arburst[1] = \<const0> ;
  assign s_axi_arburst[0] = \<const0> ;
  assign s_axi_arcache[3] = \<const0> ;
  assign s_axi_arcache[2] = \<const0> ;
  assign s_axi_arcache[1] = \<const0> ;
  assign s_axi_arcache[0] = \<const0> ;
  assign s_axi_arid[3] = \<const0> ;
  assign s_axi_arid[2] = \<const0> ;
  assign s_axi_arid[1] = \<const0> ;
  assign s_axi_arid[0] = \<const0> ;
  assign s_axi_arlen[7] = \<const0> ;
  assign s_axi_arlen[6] = \<const0> ;
  assign s_axi_arlen[5] = \<const0> ;
  assign s_axi_arlen[4] = \<const0> ;
  assign s_axi_arlen[3] = \<const0> ;
  assign s_axi_arlen[2] = \<const0> ;
  assign s_axi_arlen[1] = \<const0> ;
  assign s_axi_arlen[0] = \<const0> ;
  assign s_axi_arlock = \<const0> ;
  assign s_axi_arprot[2] = \<const0> ;
  assign s_axi_arprot[1] = \<const1> ;
  assign s_axi_arprot[0] = \<const0> ;
  assign s_axi_arqos[3] = \<const0> ;
  assign s_axi_arqos[2] = \<const0> ;
  assign s_axi_arqos[1] = \<const0> ;
  assign s_axi_arqos[0] = \<const0> ;
  assign s_axi_arsize[2] = \<const0> ;
  assign s_axi_arsize[1] = \<const1> ;
  assign s_axi_arsize[0] = \<const0> ;
  assign s_axi_awburst[1] = \<const0> ;
  assign s_axi_awburst[0] = \<const0> ;
  assign s_axi_awcache[3] = \<const0> ;
  assign s_axi_awcache[2] = \<const0> ;
  assign s_axi_awcache[1] = \<const0> ;
  assign s_axi_awcache[0] = \<const0> ;
  assign s_axi_awid[3] = \<const0> ;
  assign s_axi_awid[2] = \<const0> ;
  assign s_axi_awid[1] = \<const0> ;
  assign s_axi_awid[0] = \<const0> ;
  assign s_axi_awlen[7] = \<const0> ;
  assign s_axi_awlen[6] = \<const0> ;
  assign s_axi_awlen[5] = \<const0> ;
  assign s_axi_awlen[4] = \<const0> ;
  assign s_axi_awlen[3] = \<const0> ;
  assign s_axi_awlen[2] = \<const0> ;
  assign s_axi_awlen[1] = \<const0> ;
  assign s_axi_awlen[0] = \<const0> ;
  assign s_axi_awlock = \<const0> ;
  assign s_axi_awprot[2] = \<const0> ;
  assign s_axi_awprot[1] = \<const1> ;
  assign s_axi_awprot[0] = \<const0> ;
  assign s_axi_awqos[3] = \<const0> ;
  assign s_axi_awqos[2] = \<const0> ;
  assign s_axi_awqos[1] = \<const0> ;
  assign s_axi_awqos[0] = \<const0> ;
  assign s_axi_awsize[2] = \<const0> ;
  assign s_axi_awsize[1] = \<const1> ;
  assign s_axi_awsize[0] = \<const0> ;
  assign s_axi_awvalid = s_axi_wvalid;
  assign s_axi_bready = \^s_axi_wstrb [2];
  assign s_axi_wlast = \<const1> ;
  assign s_axi_wstrb[3] = \^s_axi_wstrb [2];
  assign s_axi_wstrb[2] = \^s_axi_wstrb [2];
  assign s_axi_wstrb[1] = \^s_axi_wstrb [2];
  assign s_axi_wstrb[0] = \^s_axi_wstrb [2];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps_to_mig_interface inst
       (.aresetn_in(aresetn_in),
        .aresetn_sync_out(aresetn_sync_out),
        .gpio_address(gpio_address[29:0]),
        .gpio_debug_current_state(gpio_debug_current_state),
        .gpio_rdata(gpio_rdata),
        .gpio_rdata_ack(gpio_rdata_ack),
        .gpio_resp(gpio_resp),
        .gpio_resp_ack(gpio_resp_ack),
        .gpio_resp_valid(gpio_resp_valid),
        .gpio_rready(gpio_rready),
        .gpio_rvalid(gpio_rvalid),
        .gpio_wdata(gpio_wdata),
        .gpio_wvalid(gpio_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(\^s_axi_wstrb ),
        .s_axi_wvalid(s_axi_wvalid),
        .ui_clk(ui_clk),
        .ui_clk_sync_rst(ui_clk_sync_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps_to_mig_interface
   (s_axi_awaddr,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_rready,
    gpio_rdata,
    gpio_rvalid,
    gpio_resp,
    gpio_resp_valid,
    s_axi_wstrb,
    gpio_debug_current_state,
    aresetn_sync_out,
    aresetn_in,
    ui_clk_sync_rst,
    ui_clk,
    gpio_address,
    gpio_wdata,
    s_axi_rdata,
    s_axi_bvalid,
    s_axi_awready,
    s_axi_wready,
    s_axi_rvalid,
    gpio_rdata_ack,
    gpio_resp_ack,
    gpio_wvalid,
    gpio_rready,
    s_axi_bresp,
    s_axi_rresp);
  output [29:0]s_axi_awaddr;
  output s_axi_wvalid;
  output [31:0]s_axi_wdata;
  output [29:0]s_axi_araddr;
  output s_axi_arvalid;
  output s_axi_rready;
  output [31:0]gpio_rdata;
  output gpio_rvalid;
  output [1:0]gpio_resp;
  output gpio_resp_valid;
  output [0:0]s_axi_wstrb;
  output [3:0]gpio_debug_current_state;
  output aresetn_sync_out;
  input aresetn_in;
  input ui_clk_sync_rst;
  input ui_clk;
  input [29:0]gpio_address;
  input [31:0]gpio_wdata;
  input [31:0]s_axi_rdata;
  input s_axi_bvalid;
  input s_axi_awready;
  input s_axi_wready;
  input s_axi_rvalid;
  input gpio_rdata_ack;
  input gpio_resp_ack;
  input gpio_wvalid;
  input gpio_rready;
  input [1:0]s_axi_bresp;
  input [1:0]s_axi_rresp;

  wire \FSM_onehot_STATE[10]_i_1_n_0 ;
  wire \FSM_onehot_STATE[10]_i_2_n_0 ;
  wire \FSM_onehot_STATE[10]_i_3_n_0 ;
  wire \FSM_onehot_STATE[10]_i_4_n_0 ;
  wire \FSM_onehot_STATE[1]_i_1_n_0 ;
  wire \FSM_onehot_STATE[2]_i_1_n_0 ;
  wire \FSM_onehot_STATE[6]_i_1_n_0 ;
  wire \FSM_onehot_STATE_reg_n_0_[0] ;
  wire \FSM_onehot_STATE_reg_n_0_[10] ;
  wire \FSM_onehot_STATE_reg_n_0_[1] ;
  wire \FSM_onehot_STATE_reg_n_0_[3] ;
  wire \FSM_onehot_STATE_reg_n_0_[4] ;
  wire \FSM_onehot_STATE_reg_n_0_[5] ;
  wire \FSM_onehot_STATE_reg_n_0_[7] ;
  wire \FSM_onehot_STATE_reg_n_0_[8] ;
  wire \FSM_onehot_STATE_reg_n_0_[9] ;
  wire [29:0]araddr_buffer;
  wire araddr_buffer__0;
  wire aresetn_in;
  wire aresetn_sync_out;
  wire aresetn_sync_out_i_1_n_0;
  wire [29:0]awaddr_buffer;
  wire [29:0]gpio_address;
  wire [3:0]gpio_debug_current_state;
  wire [31:0]gpio_rdata;
  wire gpio_rdata_ack;
  wire [1:0]gpio_resp;
  wire gpio_resp_ack;
  wire \gpio_resp_reg[0]_i_1_n_0 ;
  wire \gpio_resp_reg[1]_i_1_n_0 ;
  wire \gpio_resp_reg[1]_i_2_n_0 ;
  wire gpio_resp_valid;
  wire gpio_resp_valid_reg_i_1_n_0;
  wire gpio_rready;
  wire gpio_rvalid;
  wire gpio_rvalid_reg_i_1_n_0;
  wire [31:0]gpio_wdata;
  wire gpio_wvalid;
  wire \rdata_buffer[31]_i_1_n_0 ;
  wire \rdata_buffer_reg_n_0_[0] ;
  wire \rdata_buffer_reg_n_0_[10] ;
  wire \rdata_buffer_reg_n_0_[11] ;
  wire \rdata_buffer_reg_n_0_[12] ;
  wire \rdata_buffer_reg_n_0_[13] ;
  wire \rdata_buffer_reg_n_0_[14] ;
  wire \rdata_buffer_reg_n_0_[15] ;
  wire \rdata_buffer_reg_n_0_[16] ;
  wire \rdata_buffer_reg_n_0_[17] ;
  wire \rdata_buffer_reg_n_0_[18] ;
  wire \rdata_buffer_reg_n_0_[19] ;
  wire \rdata_buffer_reg_n_0_[1] ;
  wire \rdata_buffer_reg_n_0_[20] ;
  wire \rdata_buffer_reg_n_0_[21] ;
  wire \rdata_buffer_reg_n_0_[22] ;
  wire \rdata_buffer_reg_n_0_[23] ;
  wire \rdata_buffer_reg_n_0_[24] ;
  wire \rdata_buffer_reg_n_0_[25] ;
  wire \rdata_buffer_reg_n_0_[26] ;
  wire \rdata_buffer_reg_n_0_[27] ;
  wire \rdata_buffer_reg_n_0_[28] ;
  wire \rdata_buffer_reg_n_0_[29] ;
  wire \rdata_buffer_reg_n_0_[2] ;
  wire \rdata_buffer_reg_n_0_[30] ;
  wire \rdata_buffer_reg_n_0_[31] ;
  wire \rdata_buffer_reg_n_0_[3] ;
  wire \rdata_buffer_reg_n_0_[4] ;
  wire \rdata_buffer_reg_n_0_[5] ;
  wire \rdata_buffer_reg_n_0_[6] ;
  wire \rdata_buffer_reg_n_0_[7] ;
  wire \rdata_buffer_reg_n_0_[8] ;
  wire \rdata_buffer_reg_n_0_[9] ;
  wire [29:0]s_axi_araddr;
  wire \s_axi_araddr_reg[0]_i_1_n_0 ;
  wire \s_axi_araddr_reg[10]_i_1_n_0 ;
  wire \s_axi_araddr_reg[11]_i_1_n_0 ;
  wire \s_axi_araddr_reg[12]_i_1_n_0 ;
  wire \s_axi_araddr_reg[13]_i_1_n_0 ;
  wire \s_axi_araddr_reg[14]_i_1_n_0 ;
  wire \s_axi_araddr_reg[15]_i_1_n_0 ;
  wire \s_axi_araddr_reg[16]_i_1_n_0 ;
  wire \s_axi_araddr_reg[17]_i_1_n_0 ;
  wire \s_axi_araddr_reg[18]_i_1_n_0 ;
  wire \s_axi_araddr_reg[19]_i_1_n_0 ;
  wire \s_axi_araddr_reg[1]_i_1_n_0 ;
  wire \s_axi_araddr_reg[20]_i_1_n_0 ;
  wire \s_axi_araddr_reg[21]_i_1_n_0 ;
  wire \s_axi_araddr_reg[22]_i_1_n_0 ;
  wire \s_axi_araddr_reg[23]_i_1_n_0 ;
  wire \s_axi_araddr_reg[24]_i_1_n_0 ;
  wire \s_axi_araddr_reg[25]_i_1_n_0 ;
  wire \s_axi_araddr_reg[26]_i_1_n_0 ;
  wire \s_axi_araddr_reg[27]_i_1_n_0 ;
  wire \s_axi_araddr_reg[28]_i_1_n_0 ;
  wire \s_axi_araddr_reg[29]_i_1_n_0 ;
  wire \s_axi_araddr_reg[29]_i_2_n_0 ;
  wire \s_axi_araddr_reg[2]_i_1_n_0 ;
  wire \s_axi_araddr_reg[3]_i_1_n_0 ;
  wire \s_axi_araddr_reg[4]_i_1_n_0 ;
  wire \s_axi_araddr_reg[5]_i_1_n_0 ;
  wire \s_axi_araddr_reg[6]_i_1_n_0 ;
  wire \s_axi_araddr_reg[7]_i_1_n_0 ;
  wire \s_axi_araddr_reg[8]_i_1_n_0 ;
  wire \s_axi_araddr_reg[9]_i_1_n_0 ;
  wire s_axi_arvalid;
  wire s_axi_arvalid_reg_i_1_n_0;
  wire [29:0]s_axi_awaddr;
  wire \s_axi_awaddr_reg[0]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[10]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[11]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[12]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[13]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[14]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[15]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[16]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[17]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[18]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[19]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[1]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[20]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[21]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[22]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[23]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[24]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[25]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[26]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[27]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[28]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[29]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[29]_i_2_n_0 ;
  wire \s_axi_awaddr_reg[2]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[3]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[4]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[5]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[6]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[7]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[8]_i_1_n_0 ;
  wire \s_axi_awaddr_reg[9]_i_1_n_0 ;
  wire s_axi_awready;
  wire s_axi_awvalid_reg_i_1_n_0;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire ui_clk;
  wire ui_clk_sync_rst;
  wire [31:0]wdata_buffer;
  wire wdata_buffer__0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_STATE[10]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I2(araddr_buffer__0),
        .I3(\FSM_onehot_STATE[10]_i_2_n_0 ),
        .I4(\FSM_onehot_STATE[10]_i_3_n_0 ),
        .I5(\FSM_onehot_STATE[10]_i_4_n_0 ),
        .O(\FSM_onehot_STATE[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \FSM_onehot_STATE[10]_i_2 
       (.I0(s_axi_bvalid),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(s_axi_awready),
        .I3(s_axi_wready),
        .I4(\FSM_onehot_STATE_reg_n_0_[3] ),
        .O(\FSM_onehot_STATE[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \FSM_onehot_STATE[10]_i_3 
       (.I0(s_axi_rvalid),
        .I1(\FSM_onehot_STATE_reg_n_0_[8] ),
        .I2(gpio_rdata_ack),
        .I3(gpio_resp_ack),
        .I4(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(\FSM_onehot_STATE[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_onehot_STATE[10]_i_4 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(wdata_buffer__0),
        .I2(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I3(gpio_resp_ack),
        .I4(\FSM_onehot_STATE_reg_n_0_[9] ),
        .O(\FSM_onehot_STATE[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEFE)) 
    \FSM_onehot_STATE[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I3(gpio_wvalid),
        .I4(gpio_rready),
        .I5(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(\FSM_onehot_STATE[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_STATE[2]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(gpio_rready),
        .I2(gpio_wvalid),
        .O(\FSM_onehot_STATE[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_STATE[6]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(gpio_rready),
        .I2(gpio_wvalid),
        .O(\FSM_onehot_STATE[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_STATE_reg[0] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_STATE_reg_n_0_[0] ),
        .S(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[10] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE_reg_n_0_[9] ),
        .Q(\FSM_onehot_STATE_reg_n_0_[10] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[1] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE[1]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[1] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[2] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE[2]_i_1_n_0 ),
        .Q(wdata_buffer__0),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[3] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(wdata_buffer__0),
        .Q(\FSM_onehot_STATE_reg_n_0_[3] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[4] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE_reg_n_0_[3] ),
        .Q(\FSM_onehot_STATE_reg_n_0_[4] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[5] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE_reg_n_0_[4] ),
        .Q(\FSM_onehot_STATE_reg_n_0_[5] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[6] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE[6]_i_1_n_0 ),
        .Q(araddr_buffer__0),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[7] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(araddr_buffer__0),
        .Q(\FSM_onehot_STATE_reg_n_0_[7] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[8] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE_reg_n_0_[7] ),
        .Q(\FSM_onehot_STATE_reg_n_0_[8] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[9] 
       (.C(ui_clk),
        .CE(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .D(\FSM_onehot_STATE_reg_n_0_[8] ),
        .Q(\FSM_onehot_STATE_reg_n_0_[9] ),
        .R(ui_clk_sync_rst));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[0] 
       (.CLR(1'b0),
        .D(gpio_address[0]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[10] 
       (.CLR(1'b0),
        .D(gpio_address[10]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[11] 
       (.CLR(1'b0),
        .D(gpio_address[11]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[12] 
       (.CLR(1'b0),
        .D(gpio_address[12]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[13] 
       (.CLR(1'b0),
        .D(gpio_address[13]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[14] 
       (.CLR(1'b0),
        .D(gpio_address[14]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[15] 
       (.CLR(1'b0),
        .D(gpio_address[15]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[16] 
       (.CLR(1'b0),
        .D(gpio_address[16]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[17] 
       (.CLR(1'b0),
        .D(gpio_address[17]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[18] 
       (.CLR(1'b0),
        .D(gpio_address[18]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[19] 
       (.CLR(1'b0),
        .D(gpio_address[19]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[1] 
       (.CLR(1'b0),
        .D(gpio_address[1]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[20] 
       (.CLR(1'b0),
        .D(gpio_address[20]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[21] 
       (.CLR(1'b0),
        .D(gpio_address[21]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[22] 
       (.CLR(1'b0),
        .D(gpio_address[22]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[23] 
       (.CLR(1'b0),
        .D(gpio_address[23]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[24] 
       (.CLR(1'b0),
        .D(gpio_address[24]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[25] 
       (.CLR(1'b0),
        .D(gpio_address[25]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[26] 
       (.CLR(1'b0),
        .D(gpio_address[26]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[27] 
       (.CLR(1'b0),
        .D(gpio_address[27]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[28] 
       (.CLR(1'b0),
        .D(gpio_address[28]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[29] 
       (.CLR(1'b0),
        .D(gpio_address[29]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[2] 
       (.CLR(1'b0),
        .D(gpio_address[2]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[3] 
       (.CLR(1'b0),
        .D(gpio_address[3]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[4] 
       (.CLR(1'b0),
        .D(gpio_address[4]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[5] 
       (.CLR(1'b0),
        .D(gpio_address[5]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[6] 
       (.CLR(1'b0),
        .D(gpio_address[6]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[7] 
       (.CLR(1'b0),
        .D(gpio_address[7]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[8] 
       (.CLR(1'b0),
        .D(gpio_address[8]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[9] 
       (.CLR(1'b0),
        .D(gpio_address[9]),
        .G(araddr_buffer__0),
        .GE(1'b1),
        .Q(araddr_buffer[9]));
  LUT2 #(
    .INIT(4'h1)) 
    aresetn_sync_out_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I1(aresetn_in),
        .O(aresetn_sync_out_i_1_n_0));
  FDRE aresetn_sync_out_reg
       (.C(ui_clk),
        .CE(1'b1),
        .D(aresetn_sync_out_i_1_n_0),
        .Q(aresetn_sync_out),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[0] 
       (.CLR(1'b0),
        .D(gpio_address[0]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[10] 
       (.CLR(1'b0),
        .D(gpio_address[10]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[11] 
       (.CLR(1'b0),
        .D(gpio_address[11]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[12] 
       (.CLR(1'b0),
        .D(gpio_address[12]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[13] 
       (.CLR(1'b0),
        .D(gpio_address[13]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[14] 
       (.CLR(1'b0),
        .D(gpio_address[14]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[15] 
       (.CLR(1'b0),
        .D(gpio_address[15]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[16] 
       (.CLR(1'b0),
        .D(gpio_address[16]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[17] 
       (.CLR(1'b0),
        .D(gpio_address[17]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[18] 
       (.CLR(1'b0),
        .D(gpio_address[18]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[19] 
       (.CLR(1'b0),
        .D(gpio_address[19]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[1] 
       (.CLR(1'b0),
        .D(gpio_address[1]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[20] 
       (.CLR(1'b0),
        .D(gpio_address[20]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[21] 
       (.CLR(1'b0),
        .D(gpio_address[21]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[22] 
       (.CLR(1'b0),
        .D(gpio_address[22]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[23] 
       (.CLR(1'b0),
        .D(gpio_address[23]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[24] 
       (.CLR(1'b0),
        .D(gpio_address[24]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[25] 
       (.CLR(1'b0),
        .D(gpio_address[25]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[26] 
       (.CLR(1'b0),
        .D(gpio_address[26]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[27] 
       (.CLR(1'b0),
        .D(gpio_address[27]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[28] 
       (.CLR(1'b0),
        .D(gpio_address[28]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[29] 
       (.CLR(1'b0),
        .D(gpio_address[29]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[2] 
       (.CLR(1'b0),
        .D(gpio_address[2]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[3] 
       (.CLR(1'b0),
        .D(gpio_address[3]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[4] 
       (.CLR(1'b0),
        .D(gpio_address[4]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[5] 
       (.CLR(1'b0),
        .D(gpio_address[5]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[6] 
       (.CLR(1'b0),
        .D(gpio_address[6]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[7] 
       (.CLR(1'b0),
        .D(gpio_address[7]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[8] 
       (.CLR(1'b0),
        .D(gpio_address[8]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[9] 
       (.CLR(1'b0),
        .D(gpio_address[9]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(awaddr_buffer[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gpio_debug_current_state[0]_INST_0 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[5] ),
        .O(gpio_debug_current_state[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gpio_debug_current_state[1]_INST_0 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(wdata_buffer__0),
        .I3(\FSM_onehot_STATE_reg_n_0_[10] ),
        .I4(araddr_buffer__0),
        .O(gpio_debug_current_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gpio_debug_current_state[2]_INST_0 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer__0),
        .I2(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[5] ),
        .O(gpio_debug_current_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gpio_debug_current_state[3]_INST_0 
       (.I0(\FSM_onehot_STATE_reg_n_0_[9] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[8] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(gpio_debug_current_state[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[0] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[0] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[10] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[10] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[11] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[11] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[12] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[12] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[13] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[13] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[14] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[14] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[15] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[15] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[16] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[16] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[17] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[17] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[18] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[18] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[19] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[19] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[1] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[1] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[20] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[20] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[21] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[21] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[22] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[22] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[23] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[23] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[24] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[24] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[25] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[25] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[26] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[26] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[27] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[27] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[28] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[28] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[29] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[29] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[2] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[2] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[30] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[30] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[31] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[31] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[3] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[3] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[4] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[4] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[5] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[5] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[6] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[6] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[7] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[7] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[8] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[8] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[9] 
       (.CLR(1'b0),
        .D(\rdata_buffer_reg_n_0_[9] ),
        .G(\FSM_onehot_STATE_reg_n_0_[10] ),
        .GE(1'b1),
        .Q(gpio_rdata[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_resp_reg[0] 
       (.CLR(1'b0),
        .D(\gpio_resp_reg[0]_i_1_n_0 ),
        .G(\gpio_resp_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gpio_resp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \gpio_resp_reg[0]_i_1 
       (.I0(s_axi_bresp[0]),
        .I1(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I2(s_axi_rresp[0]),
        .I3(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(\gpio_resp_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_resp_reg[1] 
       (.CLR(1'b0),
        .D(\gpio_resp_reg[1]_i_1_n_0 ),
        .G(\gpio_resp_reg[1]_i_2_n_0 ),
        .GE(1'b1),
        .Q(gpio_resp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \gpio_resp_reg[1]_i_1 
       (.I0(s_axi_bresp[1]),
        .I1(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I2(s_axi_rresp[1]),
        .I3(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(\gpio_resp_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gpio_resp_reg[1]_i_2 
       (.I0(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(\gpio_resp_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    gpio_resp_valid_reg
       (.CLR(1'b0),
        .D(\gpio_resp_reg[1]_i_2_n_0 ),
        .G(gpio_resp_valid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(gpio_resp_valid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    gpio_resp_valid_reg_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(gpio_resp_valid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    gpio_rvalid_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_STATE_reg_n_0_[10] ),
        .G(gpio_rvalid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(gpio_rvalid));
  LUT2 #(
    .INIT(4'hE)) 
    gpio_rvalid_reg_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(gpio_rvalid_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \rdata_buffer[31]_i_1 
       (.I0(s_axi_rvalid),
        .I1(\FSM_onehot_STATE_reg_n_0_[8] ),
        .I2(ui_clk_sync_rst),
        .O(\rdata_buffer[31]_i_1_n_0 ));
  FDRE \rdata_buffer_reg[0] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[0]),
        .Q(\rdata_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[10] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[10]),
        .Q(\rdata_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[11] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[11]),
        .Q(\rdata_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[12] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[12]),
        .Q(\rdata_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[13] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[13]),
        .Q(\rdata_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[14] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[14]),
        .Q(\rdata_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[15] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[15]),
        .Q(\rdata_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[16] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[16]),
        .Q(\rdata_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[17] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[17]),
        .Q(\rdata_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[18] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[18]),
        .Q(\rdata_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[19] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[19]),
        .Q(\rdata_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[1] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[1]),
        .Q(\rdata_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[20] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[20]),
        .Q(\rdata_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[21] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[21]),
        .Q(\rdata_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[22] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[22]),
        .Q(\rdata_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[23] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[23]),
        .Q(\rdata_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[24] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[24]),
        .Q(\rdata_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[25] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[25]),
        .Q(\rdata_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[26] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[26]),
        .Q(\rdata_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[27] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[27]),
        .Q(\rdata_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[28] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[28]),
        .Q(\rdata_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[29] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[29]),
        .Q(\rdata_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[2] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[2]),
        .Q(\rdata_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[30] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[30]),
        .Q(\rdata_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[31] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[31]),
        .Q(\rdata_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[3] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[3]),
        .Q(\rdata_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[4] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[4]),
        .Q(\rdata_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[5] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[5]),
        .Q(\rdata_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[6] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[6]),
        .Q(\rdata_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[7] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[7]),
        .Q(\rdata_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[8] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[8]),
        .Q(\rdata_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rdata_buffer_reg[9] 
       (.C(ui_clk),
        .CE(\rdata_buffer[31]_i_1_n_0 ),
        .D(s_axi_rdata[9]),
        .Q(\rdata_buffer_reg_n_0_[9] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[0]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[0]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[0]),
        .O(\s_axi_araddr_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[10] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[10]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[10]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[10]),
        .O(\s_axi_araddr_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[11] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[11]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[11]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[11]),
        .O(\s_axi_araddr_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[12] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[12]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[12]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[12]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[12]),
        .O(\s_axi_araddr_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[13] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[13]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[13]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[13]),
        .O(\s_axi_araddr_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[14] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[14]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[14]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[14]),
        .O(\s_axi_araddr_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[15] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[15]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[15]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[15]),
        .O(\s_axi_araddr_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[16] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[16]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[16]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[16]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[16]),
        .O(\s_axi_araddr_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[17] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[17]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[17]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[17]),
        .O(\s_axi_araddr_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[18] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[18]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[18]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[18]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[18]),
        .O(\s_axi_araddr_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[19] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[19]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[19]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[19]),
        .O(\s_axi_araddr_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[1]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[1]),
        .O(\s_axi_araddr_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[20] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[20]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[20]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[20]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[20]),
        .O(\s_axi_araddr_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[21] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[21]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[21]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[21]),
        .O(\s_axi_araddr_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[22] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[22]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[22]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[22]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[22]),
        .O(\s_axi_araddr_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[23] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[23]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[23]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[23]),
        .O(\s_axi_araddr_reg[23]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[24] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[24]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[24]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[24]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[24]),
        .O(\s_axi_araddr_reg[24]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[25] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[25]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[25]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[25]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[25]),
        .O(\s_axi_araddr_reg[25]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[26] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[26]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[26]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[26]),
        .O(\s_axi_araddr_reg[26]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[27] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[27]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[27]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[27]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[27]),
        .O(\s_axi_araddr_reg[27]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[28] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[28]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[28]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[28]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[28]),
        .O(\s_axi_araddr_reg[28]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[29] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[29]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[29]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[29]),
        .O(\s_axi_araddr_reg[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_araddr_reg[29]_i_2 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[7] ),
        .O(\s_axi_araddr_reg[29]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[2] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[2]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[2]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[2]),
        .O(\s_axi_araddr_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[3] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[3]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[3]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[3]),
        .O(\s_axi_araddr_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[4] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[4]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[4]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[4]),
        .O(\s_axi_araddr_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[5] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[5]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[5]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[5]),
        .O(\s_axi_araddr_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[6] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[6]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[6]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[6]),
        .O(\s_axi_araddr_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[7] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[7]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[7]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[7]),
        .O(\s_axi_araddr_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[8] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[8]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[8]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[8]),
        .O(\s_axi_araddr_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[9] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[9]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[9]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(araddr_buffer[9]),
        .O(\s_axi_araddr_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_arvalid_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_STATE_reg_n_0_[7] ),
        .G(s_axi_arvalid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(s_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_arvalid_reg_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[7] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[8] ),
        .O(s_axi_arvalid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[0]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[0]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[0]),
        .O(\s_axi_awaddr_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[10] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[10]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[10]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[10]),
        .O(\s_axi_awaddr_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[11] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[11]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[11]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[11]),
        .O(\s_axi_awaddr_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[12] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[12]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[12]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[12]),
        .O(\s_axi_awaddr_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[13] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[13]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[13]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[13]),
        .O(\s_axi_awaddr_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[14] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[14]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[14]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[14]),
        .O(\s_axi_awaddr_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[15] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[15]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[15]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[15]),
        .O(\s_axi_awaddr_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[16] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[16]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[16]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[16]),
        .O(\s_axi_awaddr_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[17] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[17]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[17]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[17]),
        .O(\s_axi_awaddr_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[18] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[18]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[18]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[18]),
        .O(\s_axi_awaddr_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[19] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[19]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[19]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[19]),
        .O(\s_axi_awaddr_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[1]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[1]),
        .O(\s_axi_awaddr_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[20] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[20]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[20]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[20]),
        .O(\s_axi_awaddr_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[21] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[21]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[21]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[21]),
        .O(\s_axi_awaddr_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[22] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[22]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[22]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[22]),
        .O(\s_axi_awaddr_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[23] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[23]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[23]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[23]),
        .O(\s_axi_awaddr_reg[23]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[24] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[24]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[24]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[24]),
        .O(\s_axi_awaddr_reg[24]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[25] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[25]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[25]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[25]),
        .O(\s_axi_awaddr_reg[25]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[26] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[26]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[26]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[26]),
        .O(\s_axi_awaddr_reg[26]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[27] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[27]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[27]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[27]),
        .O(\s_axi_awaddr_reg[27]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[28] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[28]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[28]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[28]),
        .O(\s_axi_awaddr_reg[28]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[29] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[29]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[29]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[29]),
        .O(\s_axi_awaddr_reg[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_awaddr_reg[29]_i_2 
       (.I0(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .O(\s_axi_awaddr_reg[29]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[2] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[2]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[2]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[2]),
        .O(\s_axi_awaddr_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[3] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[3]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[3]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[3]),
        .O(\s_axi_awaddr_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[4] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[4]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[4]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[4]),
        .O(\s_axi_awaddr_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[5] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[5]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[5]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[5]),
        .O(\s_axi_awaddr_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[6] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[6]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[6]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[6]),
        .O(\s_axi_awaddr_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[7] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[7]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[7]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[7]),
        .O(\s_axi_awaddr_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[8] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[8]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[8]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[8]),
        .O(\s_axi_awaddr_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[9] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[9]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[9]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(awaddr_buffer[9]),
        .O(\s_axi_awaddr_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_awvalid_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_STATE_reg_n_0_[3] ),
        .G(s_axi_awvalid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(s_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_awvalid_reg_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[1] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[4] ),
        .O(s_axi_awvalid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_rready_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_STATE_reg_n_0_[7] ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_rready));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[0] 
       (.CLR(1'b0),
        .D(wdata_buffer[0]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[10] 
       (.CLR(1'b0),
        .D(wdata_buffer[10]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[11] 
       (.CLR(1'b0),
        .D(wdata_buffer[11]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[12] 
       (.CLR(1'b0),
        .D(wdata_buffer[12]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[13] 
       (.CLR(1'b0),
        .D(wdata_buffer[13]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[14] 
       (.CLR(1'b0),
        .D(wdata_buffer[14]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[15] 
       (.CLR(1'b0),
        .D(wdata_buffer[15]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[16] 
       (.CLR(1'b0),
        .D(wdata_buffer[16]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[17] 
       (.CLR(1'b0),
        .D(wdata_buffer[17]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[18] 
       (.CLR(1'b0),
        .D(wdata_buffer[18]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[19] 
       (.CLR(1'b0),
        .D(wdata_buffer[19]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[1] 
       (.CLR(1'b0),
        .D(wdata_buffer[1]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[20] 
       (.CLR(1'b0),
        .D(wdata_buffer[20]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[21] 
       (.CLR(1'b0),
        .D(wdata_buffer[21]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[22] 
       (.CLR(1'b0),
        .D(wdata_buffer[22]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[23] 
       (.CLR(1'b0),
        .D(wdata_buffer[23]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[24] 
       (.CLR(1'b0),
        .D(wdata_buffer[24]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[25] 
       (.CLR(1'b0),
        .D(wdata_buffer[25]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[26] 
       (.CLR(1'b0),
        .D(wdata_buffer[26]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[27] 
       (.CLR(1'b0),
        .D(wdata_buffer[27]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[28] 
       (.CLR(1'b0),
        .D(wdata_buffer[28]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[29] 
       (.CLR(1'b0),
        .D(wdata_buffer[29]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[2] 
       (.CLR(1'b0),
        .D(wdata_buffer[2]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[30] 
       (.CLR(1'b0),
        .D(wdata_buffer[30]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[31] 
       (.CLR(1'b0),
        .D(wdata_buffer[31]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[3] 
       (.CLR(1'b0),
        .D(wdata_buffer[3]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[4] 
       (.CLR(1'b0),
        .D(wdata_buffer[4]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[5] 
       (.CLR(1'b0),
        .D(wdata_buffer[5]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[6] 
       (.CLR(1'b0),
        .D(wdata_buffer[6]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[7] 
       (.CLR(1'b0),
        .D(wdata_buffer[7]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[8] 
       (.CLR(1'b0),
        .D(wdata_buffer[8]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[9] 
       (.CLR(1'b0),
        .D(wdata_buffer[9]),
        .G(\FSM_onehot_STATE_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(s_axi_wdata[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wstrb_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_STATE_reg_n_0_[3] ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wstrb));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[0] 
       (.CLR(1'b0),
        .D(gpio_wdata[0]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[10] 
       (.CLR(1'b0),
        .D(gpio_wdata[10]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[11] 
       (.CLR(1'b0),
        .D(gpio_wdata[11]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[12] 
       (.CLR(1'b0),
        .D(gpio_wdata[12]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[13] 
       (.CLR(1'b0),
        .D(gpio_wdata[13]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[14] 
       (.CLR(1'b0),
        .D(gpio_wdata[14]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[15] 
       (.CLR(1'b0),
        .D(gpio_wdata[15]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[16] 
       (.CLR(1'b0),
        .D(gpio_wdata[16]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[17] 
       (.CLR(1'b0),
        .D(gpio_wdata[17]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[18] 
       (.CLR(1'b0),
        .D(gpio_wdata[18]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[19] 
       (.CLR(1'b0),
        .D(gpio_wdata[19]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[1] 
       (.CLR(1'b0),
        .D(gpio_wdata[1]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[20] 
       (.CLR(1'b0),
        .D(gpio_wdata[20]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[21] 
       (.CLR(1'b0),
        .D(gpio_wdata[21]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[22] 
       (.CLR(1'b0),
        .D(gpio_wdata[22]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[23] 
       (.CLR(1'b0),
        .D(gpio_wdata[23]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[24] 
       (.CLR(1'b0),
        .D(gpio_wdata[24]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[25] 
       (.CLR(1'b0),
        .D(gpio_wdata[25]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[26] 
       (.CLR(1'b0),
        .D(gpio_wdata[26]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[27] 
       (.CLR(1'b0),
        .D(gpio_wdata[27]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[28] 
       (.CLR(1'b0),
        .D(gpio_wdata[28]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[29] 
       (.CLR(1'b0),
        .D(gpio_wdata[29]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[2] 
       (.CLR(1'b0),
        .D(gpio_wdata[2]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[30] 
       (.CLR(1'b0),
        .D(gpio_wdata[30]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[31] 
       (.CLR(1'b0),
        .D(gpio_wdata[31]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[3] 
       (.CLR(1'b0),
        .D(gpio_wdata[3]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[4] 
       (.CLR(1'b0),
        .D(gpio_wdata[4]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[5] 
       (.CLR(1'b0),
        .D(gpio_wdata[5]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[6] 
       (.CLR(1'b0),
        .D(gpio_wdata[6]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[7] 
       (.CLR(1'b0),
        .D(gpio_wdata[7]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[8] 
       (.CLR(1'b0),
        .D(gpio_wdata[8]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wdata_buffer_reg[9] 
       (.CLR(1'b0),
        .D(gpio_wdata[9]),
        .G(wdata_buffer__0),
        .GE(1'b1),
        .Q(wdata_buffer[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
