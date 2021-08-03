// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Aug  3 10:46:54 2021
// Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/AXI_DDR_ZC706/AXI_DDR_ZC706.srcs/sources_1/bd/design_v3/ip/design_v3_fsm_v3_0_0/design_v3_fsm_v3_0_0_sim_netlist.v
// Design      : design_v3_fsm_v3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_v3_fsm_v3_0_0,fsm_v3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fsm_v3,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_v3_fsm_v3_0_0
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
    gpio_wreq,
    gpio_rreq,
    gpio_wvalid,
    gpio_wlast,
    gpio_wack,
    gpio_awaddr,
    gpio_wdata,
    gpio_awlen,
    gpio_awburst,
    gpio_wfifo_ready,
    gpio_wresp_valid,
    gpio_wresp,
    gpio_wresp_ack,
    gpio_rready,
    gpio_rack,
    gpio_araddr,
    gpio_arlen,
    gpio_arburst,
    gpio_rresp,
    gpio_rvalid,
    gpio_rdata,
    gpio_rresp_valid,
    gpio_rresp_ack,
    gpio_debug_state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ui_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ui_clk, ASSOCIATED_RESET ui_clk_sync_rst, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_v3_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input ui_clk;
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

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]gpio_araddr;
  wire [31:0]gpio_arburst;
  wire [31:0]gpio_arlen;
  wire [31:0]gpio_awaddr;
  wire [31:0]gpio_awburst;
  wire [31:0]gpio_awlen;
  wire [4:0]gpio_debug_state;
  wire gpio_rack;
  wire [31:0]gpio_rdata;
  wire gpio_rready;
  wire gpio_rreq;
  wire [1:0]gpio_rresp;
  wire gpio_rresp_ack;
  wire gpio_rresp_valid;
  wire gpio_rvalid;
  wire gpio_wack;
  wire [31:0]gpio_wdata;
  wire gpio_wfifo_ready;
  wire gpio_wlast;
  wire gpio_wreq;
  wire [1:0]gpio_wresp;
  wire gpio_wresp_ack;
  wire gpio_wresp_valid;
  wire gpio_wvalid;
  wire [29:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [29:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire ui_clk;
  wire ui_clk_sync_rst;

  assign s_axi_arcache[3] = \<const0> ;
  assign s_axi_arcache[2] = \<const0> ;
  assign s_axi_arcache[1] = \<const0> ;
  assign s_axi_arcache[0] = \<const0> ;
  assign s_axi_arid[3] = \<const0> ;
  assign s_axi_arid[2] = \<const0> ;
  assign s_axi_arid[1] = \<const0> ;
  assign s_axi_arid[0] = \<const0> ;
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
  assign s_axi_awcache[3] = \<const0> ;
  assign s_axi_awcache[2] = \<const0> ;
  assign s_axi_awcache[1] = \<const0> ;
  assign s_axi_awcache[0] = \<const0> ;
  assign s_axi_awid[3] = \<const0> ;
  assign s_axi_awid[2] = \<const0> ;
  assign s_axi_awid[1] = \<const0> ;
  assign s_axi_awid[0] = \<const0> ;
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
  assign s_axi_wstrb[3] = \<const0> ;
  assign s_axi_wstrb[2] = \<const0> ;
  assign s_axi_wstrb[1] = \<const0> ;
  assign s_axi_wstrb[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_v3_fsm_v3_0_0_fsm_v3 inst
       (.gpio_araddr(gpio_araddr[29:0]),
        .gpio_arburst(gpio_arburst[1:0]),
        .gpio_arlen(gpio_arlen[7:0]),
        .gpio_awaddr(gpio_awaddr[29:0]),
        .gpio_awburst(gpio_awburst[1:0]),
        .gpio_awlen(gpio_awlen[7:0]),
        .gpio_debug_state(gpio_debug_state),
        .gpio_rack(gpio_rack),
        .gpio_rdata(gpio_rdata),
        .gpio_rready(gpio_rready),
        .gpio_rreq(gpio_rreq),
        .gpio_rresp(gpio_rresp),
        .gpio_rresp_ack(gpio_rresp_ack),
        .gpio_rresp_valid(gpio_rresp_valid),
        .gpio_rvalid(gpio_rvalid),
        .gpio_wack(gpio_wack),
        .gpio_wdata(gpio_wdata),
        .gpio_wfifo_ready(gpio_wfifo_ready),
        .gpio_wlast(gpio_wlast),
        .gpio_wreq(gpio_wreq),
        .gpio_wresp(gpio_wresp),
        .gpio_wresp_ack(gpio_wresp_ack),
        .gpio_wresp_valid(gpio_wresp_valid),
        .gpio_wvalid(gpio_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .ui_clk(ui_clk),
        .ui_clk_sync_rst(ui_clk_sync_rst));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_v3_fsm_v3_0_0_fifo
   (D,
    WEBWE,
    \FSM_sequential_STATE_reg[0] ,
    ui_clk,
    Q,
    ui_clk_sync_rst,
    rfifo_wr_en,
    rfifo_rd_en,
    \FSM_sequential_STATE_reg[0]_0 ,
    \FSM_sequential_STATE_reg[0]_1 ,
    gpio_wreq,
    gpio_rreq);
  output [31:0]D;
  output [0:0]WEBWE;
  output [0:0]\FSM_sequential_STATE_reg[0] ;
  input ui_clk;
  input [31:0]Q;
  input ui_clk_sync_rst;
  input rfifo_wr_en;
  input rfifo_rd_en;
  input [4:0]\FSM_sequential_STATE_reg[0]_0 ;
  input \FSM_sequential_STATE_reg[0]_1 ;
  input gpio_wreq;
  input gpio_rreq;

  wire [31:0]D;
  wire \FSM_sequential_STATE[0]_i_2_n_0 ;
  wire [0:0]\FSM_sequential_STATE_reg[0] ;
  wire [4:0]\FSM_sequential_STATE_reg[0]_0 ;
  wire \FSM_sequential_STATE_reg[0]_1 ;
  wire [31:0]Q;
  wire [0:0]WEBWE;
  wire gpio_rreq;
  wire gpio_wreq;
  wire memory_reg_i_1__0_n_0;
  wire memory_reg_i_2__0_n_0;
  wire memory_reg_i_3__0_n_0;
  wire nb_values11_out;
  wire \nb_values[0]_i_1__0_n_0 ;
  wire \nb_values[4]_i_3__0_n_0 ;
  wire \nb_values[4]_i_4__0_n_0 ;
  wire \nb_values[4]_i_5__0_n_0 ;
  wire \nb_values[4]_i_6__0_n_0 ;
  wire \nb_values[6]_i_1__0_n_0 ;
  wire \nb_values[6]_i_3__0_n_0 ;
  wire \nb_values[6]_i_4__0_n_0 ;
  wire [6:0]nb_values_reg;
  wire \nb_values_reg[4]_i_1__0_n_0 ;
  wire \nb_values_reg[4]_i_1__0_n_1 ;
  wire \nb_values_reg[4]_i_1__0_n_2 ;
  wire \nb_values_reg[4]_i_1__0_n_3 ;
  wire \nb_values_reg[4]_i_1__0_n_4 ;
  wire \nb_values_reg[4]_i_1__0_n_5 ;
  wire \nb_values_reg[4]_i_1__0_n_6 ;
  wire \nb_values_reg[4]_i_1__0_n_7 ;
  wire \nb_values_reg[6]_i_2__0_n_3 ;
  wire \nb_values_reg[6]_i_2__0_n_6 ;
  wire \nb_values_reg[6]_i_2__0_n_7 ;
  wire [5:0]read_add;
  wire \read_add[0]_i_1__0_n_0 ;
  wire \read_add[4]_i_1__0_n_0 ;
  wire [5:1]read_add__0;
  wire rfifo_rd_en;
  wire rfifo_wr_en;
  wire ui_clk;
  wire ui_clk_sync_rst;
  wire [5:0]write_add;
  wire \write_add[0]_i_1__0_n_0 ;
  wire [5:1]write_add__0;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;
  wire [3:1]\NLW_nb_values_reg[6]_i_2__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_nb_values_reg[6]_i_2__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h030B03000F0B03BB)) 
    \FSM_sequential_STATE[0]_i_1 
       (.I0(\FSM_sequential_STATE[0]_i_2_n_0 ),
        .I1(\FSM_sequential_STATE_reg[0]_0 [0]),
        .I2(\FSM_sequential_STATE_reg[0]_0 [4]),
        .I3(\FSM_sequential_STATE_reg[0]_0 [1]),
        .I4(\FSM_sequential_STATE_reg[0]_0 [2]),
        .I5(\FSM_sequential_STATE_reg[0]_0 [3]),
        .O(\FSM_sequential_STATE_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFF5151515151)) 
    \FSM_sequential_STATE[0]_i_2 
       (.I0(\FSM_sequential_STATE_reg[0]_1 ),
        .I1(gpio_wreq),
        .I2(gpio_rreq),
        .I3(memory_reg_i_3__0_n_0),
        .I4(nb_values_reg[6]),
        .I5(\FSM_sequential_STATE_reg[0]_0 [3]),
        .O(\FSM_sequential_STATE[0]_i_2_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "inst/RFIFO/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "448" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    memory_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,read_add,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,write_add,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ui_clk),
        .CLKBWRCLK(ui_clk),
        .DIADI(Q[15:0]),
        .DIBDI(Q[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(D[15:0]),
        .DOBDO(D[31:16]),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(memory_reg_i_1__0_n_0),
        .ENBWREN(memory_reg_i_2__0_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT4 #(
    .INIT(16'h0E00)) 
    memory_reg_i_1__0
       (.I0(memory_reg_i_3__0_n_0),
        .I1(nb_values_reg[6]),
        .I2(ui_clk_sync_rst),
        .I3(rfifo_rd_en),
        .O(memory_reg_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4F00)) 
    memory_reg_i_2__0
       (.I0(memory_reg_i_3__0_n_0),
        .I1(rfifo_rd_en),
        .I2(nb_values_reg[6]),
        .I3(rfifo_wr_en),
        .O(memory_reg_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    memory_reg_i_3
       (.I0(ui_clk_sync_rst),
        .O(WEBWE));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    memory_reg_i_3__0
       (.I0(nb_values_reg[2]),
        .I1(nb_values_reg[3]),
        .I2(nb_values_reg[5]),
        .I3(nb_values_reg[1]),
        .I4(nb_values_reg[4]),
        .I5(nb_values_reg[0]),
        .O(memory_reg_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \nb_values[0]_i_1__0 
       (.I0(nb_values_reg[0]),
        .O(\nb_values[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \nb_values[4]_i_2__0 
       (.I0(rfifo_rd_en),
        .I1(nb_values_reg[6]),
        .I2(rfifo_wr_en),
        .O(nb_values11_out));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[4]_i_3__0 
       (.I0(nb_values_reg[3]),
        .I1(nb_values_reg[4]),
        .O(\nb_values[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[4]_i_4__0 
       (.I0(nb_values_reg[2]),
        .I1(nb_values_reg[3]),
        .O(\nb_values[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[4]_i_5__0 
       (.I0(nb_values_reg[1]),
        .I1(nb_values_reg[2]),
        .O(\nb_values[4]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h5559)) 
    \nb_values[4]_i_6__0 
       (.I0(nb_values_reg[1]),
        .I1(rfifo_wr_en),
        .I2(nb_values_reg[6]),
        .I3(rfifo_rd_en),
        .O(\nb_values[4]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h0E30)) 
    \nb_values[6]_i_1__0 
       (.I0(memory_reg_i_3__0_n_0),
        .I1(nb_values_reg[6]),
        .I2(rfifo_wr_en),
        .I3(rfifo_rd_en),
        .O(\nb_values[6]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[6]_i_3__0 
       (.I0(nb_values_reg[5]),
        .I1(nb_values_reg[6]),
        .O(\nb_values[6]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[6]_i_4__0 
       (.I0(nb_values_reg[4]),
        .I1(nb_values_reg[5]),
        .O(\nb_values[6]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[0] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values[0]_i_1__0_n_0 ),
        .Q(nb_values_reg[0]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[1] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values_reg[4]_i_1__0_n_7 ),
        .Q(nb_values_reg[1]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[2] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values_reg[4]_i_1__0_n_6 ),
        .Q(nb_values_reg[2]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[3] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values_reg[4]_i_1__0_n_5 ),
        .Q(nb_values_reg[3]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[4] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values_reg[4]_i_1__0_n_4 ),
        .Q(nb_values_reg[4]),
        .R(ui_clk_sync_rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \nb_values_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\nb_values_reg[4]_i_1__0_n_0 ,\nb_values_reg[4]_i_1__0_n_1 ,\nb_values_reg[4]_i_1__0_n_2 ,\nb_values_reg[4]_i_1__0_n_3 }),
        .CYINIT(nb_values_reg[0]),
        .DI({nb_values_reg[3:1],nb_values11_out}),
        .O({\nb_values_reg[4]_i_1__0_n_4 ,\nb_values_reg[4]_i_1__0_n_5 ,\nb_values_reg[4]_i_1__0_n_6 ,\nb_values_reg[4]_i_1__0_n_7 }),
        .S({\nb_values[4]_i_3__0_n_0 ,\nb_values[4]_i_4__0_n_0 ,\nb_values[4]_i_5__0_n_0 ,\nb_values[4]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[5] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values_reg[6]_i_2__0_n_7 ),
        .Q(nb_values_reg[5]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[6] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1__0_n_0 ),
        .D(\nb_values_reg[6]_i_2__0_n_6 ),
        .Q(nb_values_reg[6]),
        .R(ui_clk_sync_rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \nb_values_reg[6]_i_2__0 
       (.CI(\nb_values_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_nb_values_reg[6]_i_2__0_CO_UNCONNECTED [3:1],\nb_values_reg[6]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,nb_values_reg[4]}),
        .O({\NLW_nb_values_reg[6]_i_2__0_O_UNCONNECTED [3:2],\nb_values_reg[6]_i_2__0_n_6 ,\nb_values_reg[6]_i_2__0_n_7 }),
        .S({1'b0,1'b0,\nb_values[6]_i_3__0_n_0 ,\nb_values[6]_i_4__0_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \read_add[0]_i_1__0 
       (.I0(read_add[0]),
        .O(\read_add[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_add[1]_i_1 
       (.I0(read_add[0]),
        .I1(read_add[1]),
        .O(read_add__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \read_add[2]_i_1 
       (.I0(read_add[2]),
        .I1(read_add[0]),
        .I2(read_add[1]),
        .O(read_add__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \read_add[3]_i_1 
       (.I0(read_add[2]),
        .I1(read_add[3]),
        .I2(read_add[0]),
        .I3(read_add[1]),
        .O(read_add__0[3]));
  LUT3 #(
    .INIT(8'hE0)) 
    \read_add[4]_i_1__0 
       (.I0(memory_reg_i_3__0_n_0),
        .I1(nb_values_reg[6]),
        .I2(rfifo_rd_en),
        .O(\read_add[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_add[4]_i_2 
       (.I0(read_add[2]),
        .I1(read_add[3]),
        .I2(read_add[0]),
        .I3(read_add[1]),
        .I4(read_add[4]),
        .O(read_add__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_add[5]_i_1 
       (.I0(read_add[2]),
        .I1(read_add[3]),
        .I2(read_add[0]),
        .I3(read_add[1]),
        .I4(read_add[4]),
        .I5(read_add[5]),
        .O(read_add__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[0] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1__0_n_0 ),
        .D(\read_add[0]_i_1__0_n_0 ),
        .Q(read_add[0]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[1] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1__0_n_0 ),
        .D(read_add__0[1]),
        .Q(read_add[1]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[2] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1__0_n_0 ),
        .D(read_add__0[2]),
        .Q(read_add[2]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[3] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1__0_n_0 ),
        .D(read_add__0[3]),
        .Q(read_add[3]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[4] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1__0_n_0 ),
        .D(read_add__0[4]),
        .Q(read_add[4]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[5] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1__0_n_0 ),
        .D(read_add__0[5]),
        .Q(read_add[5]),
        .R(ui_clk_sync_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \write_add[0]_i_1__0 
       (.I0(write_add[0]),
        .O(\write_add[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_add[1]_i_1 
       (.I0(write_add[0]),
        .I1(write_add[1]),
        .O(write_add__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_add[2]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[0]),
        .I2(write_add[1]),
        .O(write_add__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \write_add[3]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[3]),
        .I2(write_add[0]),
        .I3(write_add[1]),
        .O(write_add__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_add[4]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[3]),
        .I2(write_add[0]),
        .I3(write_add[1]),
        .I4(write_add[4]),
        .O(write_add__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_add[5]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[3]),
        .I2(write_add[0]),
        .I3(write_add[1]),
        .I4(write_add[4]),
        .I5(write_add[5]),
        .O(write_add__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[0] 
       (.C(ui_clk),
        .CE(memory_reg_i_2__0_n_0),
        .D(\write_add[0]_i_1__0_n_0 ),
        .Q(write_add[0]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[1] 
       (.C(ui_clk),
        .CE(memory_reg_i_2__0_n_0),
        .D(write_add__0[1]),
        .Q(write_add[1]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[2] 
       (.C(ui_clk),
        .CE(memory_reg_i_2__0_n_0),
        .D(write_add__0[2]),
        .Q(write_add[2]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[3] 
       (.C(ui_clk),
        .CE(memory_reg_i_2__0_n_0),
        .D(write_add__0[3]),
        .Q(write_add[3]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[4] 
       (.C(ui_clk),
        .CE(memory_reg_i_2__0_n_0),
        .D(write_add__0[4]),
        .Q(write_add[4]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[5] 
       (.C(ui_clk),
        .CE(memory_reg_i_2__0_n_0),
        .D(write_add__0[5]),
        .Q(write_add[5]),
        .R(ui_clk_sync_rst));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_v3_fsm_v3_0_0_fifo_0
   (D,
    E,
    empty,
    ui_clk,
    Q,
    WEBWE,
    ui_clk_sync_rst,
    wfifo_wr_en,
    wfifo_rd_en,
    \FSM_sequential_STATE_reg[0] ,
    \FSM_sequential_STATE_reg[0]_0 ,
    \FSM_sequential_STATE_reg[0]_1 ,
    s_axi_rvalid,
    gpio_rresp_ack);
  output [31:0]D;
  output [0:0]E;
  output empty;
  input ui_clk;
  input [31:0]Q;
  input [0:0]WEBWE;
  input ui_clk_sync_rst;
  input wfifo_wr_en;
  input wfifo_rd_en;
  input \FSM_sequential_STATE_reg[0] ;
  input [4:0]\FSM_sequential_STATE_reg[0]_0 ;
  input \FSM_sequential_STATE_reg[0]_1 ;
  input s_axi_rvalid;
  input gpio_rresp_ack;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_STATE[4]_i_4_n_0 ;
  wire \FSM_sequential_STATE_reg[0] ;
  wire [4:0]\FSM_sequential_STATE_reg[0]_0 ;
  wire \FSM_sequential_STATE_reg[0]_1 ;
  wire [31:0]Q;
  wire [0:0]WEBWE;
  wire empty;
  wire gpio_rresp_ack;
  wire memory_reg_i_1_n_0;
  wire memory_reg_i_2_n_0;
  wire nb_values11_out;
  wire \nb_values[0]_i_1_n_0 ;
  wire \nb_values[4]_i_3_n_0 ;
  wire \nb_values[4]_i_4_n_0 ;
  wire \nb_values[4]_i_5_n_0 ;
  wire \nb_values[4]_i_6_n_0 ;
  wire \nb_values[6]_i_1_n_0 ;
  wire \nb_values[6]_i_3_n_0 ;
  wire \nb_values[6]_i_4_n_0 ;
  wire [6:0]nb_values_reg;
  wire \nb_values_reg[4]_i_1_n_0 ;
  wire \nb_values_reg[4]_i_1_n_1 ;
  wire \nb_values_reg[4]_i_1_n_2 ;
  wire \nb_values_reg[4]_i_1_n_3 ;
  wire \nb_values_reg[4]_i_1_n_4 ;
  wire \nb_values_reg[4]_i_1_n_5 ;
  wire \nb_values_reg[4]_i_1_n_6 ;
  wire \nb_values_reg[4]_i_1_n_7 ;
  wire \nb_values_reg[6]_i_2_n_3 ;
  wire \nb_values_reg[6]_i_2_n_6 ;
  wire \nb_values_reg[6]_i_2_n_7 ;
  wire [5:0]read_add;
  wire \read_add[0]_i_1_n_0 ;
  wire \read_add[4]_i_1_n_0 ;
  wire [5:1]read_add__0;
  wire s_axi_rvalid;
  wire s_axi_wlast_reg_i_2_n_0;
  wire ui_clk;
  wire ui_clk_sync_rst;
  wire wfifo_rd_en;
  wire wfifo_wr_en;
  wire [5:0]write_add;
  wire \write_add[0]_i_1_n_0 ;
  wire [5:1]write_add__0;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;
  wire [3:1]\NLW_nb_values_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_nb_values_reg[6]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBABBBABABABABABA)) 
    \FSM_sequential_STATE[4]_i_1 
       (.I0(\FSM_sequential_STATE_reg[0] ),
        .I1(\FSM_sequential_STATE_reg[0]_0 [4]),
        .I2(\FSM_sequential_STATE_reg[0]_1 ),
        .I3(\FSM_sequential_STATE_reg[0]_0 [0]),
        .I4(\FSM_sequential_STATE_reg[0]_0 [1]),
        .I5(\FSM_sequential_STATE[4]_i_4_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFF001111F0F00000)) 
    \FSM_sequential_STATE[4]_i_4 
       (.I0(nb_values_reg[6]),
        .I1(s_axi_wlast_reg_i_2_n_0),
        .I2(s_axi_rvalid),
        .I3(gpio_rresp_ack),
        .I4(\FSM_sequential_STATE_reg[0]_0 [3]),
        .I5(\FSM_sequential_STATE_reg[0]_0 [2]),
        .O(\FSM_sequential_STATE[4]_i_4_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "inst/WFIFO/memory" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "448" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    memory_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,read_add,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,write_add,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ui_clk),
        .CLKBWRCLK(ui_clk),
        .DIADI(Q[15:0]),
        .DIBDI(Q[31:16]),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(D[15:0]),
        .DOBDO(D[31:16]),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(memory_reg_i_1_n_0),
        .ENBWREN(memory_reg_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT4 #(
    .INIT(16'h0E00)) 
    memory_reg_i_1
       (.I0(s_axi_wlast_reg_i_2_n_0),
        .I1(nb_values_reg[6]),
        .I2(ui_clk_sync_rst),
        .I3(wfifo_rd_en),
        .O(memory_reg_i_1_n_0));
  LUT4 #(
    .INIT(16'h4F00)) 
    memory_reg_i_2
       (.I0(s_axi_wlast_reg_i_2_n_0),
        .I1(wfifo_rd_en),
        .I2(nb_values_reg[6]),
        .I3(wfifo_wr_en),
        .O(memory_reg_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \nb_values[0]_i_1 
       (.I0(nb_values_reg[0]),
        .O(\nb_values[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \nb_values[4]_i_2 
       (.I0(wfifo_rd_en),
        .I1(nb_values_reg[6]),
        .I2(wfifo_wr_en),
        .O(nb_values11_out));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[4]_i_3 
       (.I0(nb_values_reg[3]),
        .I1(nb_values_reg[4]),
        .O(\nb_values[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[4]_i_4 
       (.I0(nb_values_reg[2]),
        .I1(nb_values_reg[3]),
        .O(\nb_values[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[4]_i_5 
       (.I0(nb_values_reg[1]),
        .I1(nb_values_reg[2]),
        .O(\nb_values[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5559)) 
    \nb_values[4]_i_6 
       (.I0(nb_values_reg[1]),
        .I1(wfifo_wr_en),
        .I2(nb_values_reg[6]),
        .I3(wfifo_rd_en),
        .O(\nb_values[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0E30)) 
    \nb_values[6]_i_1 
       (.I0(s_axi_wlast_reg_i_2_n_0),
        .I1(nb_values_reg[6]),
        .I2(wfifo_wr_en),
        .I3(wfifo_rd_en),
        .O(\nb_values[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[6]_i_3 
       (.I0(nb_values_reg[5]),
        .I1(nb_values_reg[6]),
        .O(\nb_values[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \nb_values[6]_i_4 
       (.I0(nb_values_reg[4]),
        .I1(nb_values_reg[5]),
        .O(\nb_values[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[0] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values[0]_i_1_n_0 ),
        .Q(nb_values_reg[0]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[1] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values_reg[4]_i_1_n_7 ),
        .Q(nb_values_reg[1]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[2] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values_reg[4]_i_1_n_6 ),
        .Q(nb_values_reg[2]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[3] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values_reg[4]_i_1_n_5 ),
        .Q(nb_values_reg[3]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[4] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values_reg[4]_i_1_n_4 ),
        .Q(nb_values_reg[4]),
        .R(ui_clk_sync_rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \nb_values_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\nb_values_reg[4]_i_1_n_0 ,\nb_values_reg[4]_i_1_n_1 ,\nb_values_reg[4]_i_1_n_2 ,\nb_values_reg[4]_i_1_n_3 }),
        .CYINIT(nb_values_reg[0]),
        .DI({nb_values_reg[3:1],nb_values11_out}),
        .O({\nb_values_reg[4]_i_1_n_4 ,\nb_values_reg[4]_i_1_n_5 ,\nb_values_reg[4]_i_1_n_6 ,\nb_values_reg[4]_i_1_n_7 }),
        .S({\nb_values[4]_i_3_n_0 ,\nb_values[4]_i_4_n_0 ,\nb_values[4]_i_5_n_0 ,\nb_values[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[5] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values_reg[6]_i_2_n_7 ),
        .Q(nb_values_reg[5]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \nb_values_reg[6] 
       (.C(ui_clk),
        .CE(\nb_values[6]_i_1_n_0 ),
        .D(\nb_values_reg[6]_i_2_n_6 ),
        .Q(nb_values_reg[6]),
        .R(ui_clk_sync_rst));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \nb_values_reg[6]_i_2 
       (.CI(\nb_values_reg[4]_i_1_n_0 ),
        .CO({\NLW_nb_values_reg[6]_i_2_CO_UNCONNECTED [3:1],\nb_values_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,nb_values_reg[4]}),
        .O({\NLW_nb_values_reg[6]_i_2_O_UNCONNECTED [3:2],\nb_values_reg[6]_i_2_n_6 ,\nb_values_reg[6]_i_2_n_7 }),
        .S({1'b0,1'b0,\nb_values[6]_i_3_n_0 ,\nb_values[6]_i_4_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \read_add[0]_i_1 
       (.I0(read_add[0]),
        .O(\read_add[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_add[1]_i_1 
       (.I0(read_add[0]),
        .I1(read_add[1]),
        .O(read_add__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \read_add[2]_i_1 
       (.I0(read_add[2]),
        .I1(read_add[0]),
        .I2(read_add[1]),
        .O(read_add__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \read_add[3]_i_1 
       (.I0(read_add[2]),
        .I1(read_add[3]),
        .I2(read_add[0]),
        .I3(read_add[1]),
        .O(read_add__0[3]));
  LUT3 #(
    .INIT(8'hE0)) 
    \read_add[4]_i_1 
       (.I0(s_axi_wlast_reg_i_2_n_0),
        .I1(nb_values_reg[6]),
        .I2(wfifo_rd_en),
        .O(\read_add[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_add[4]_i_2 
       (.I0(read_add[2]),
        .I1(read_add[3]),
        .I2(read_add[0]),
        .I3(read_add[1]),
        .I4(read_add[4]),
        .O(read_add__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_add[5]_i_1 
       (.I0(read_add[2]),
        .I1(read_add[3]),
        .I2(read_add[0]),
        .I3(read_add[1]),
        .I4(read_add[4]),
        .I5(read_add[5]),
        .O(read_add__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[0] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1_n_0 ),
        .D(\read_add[0]_i_1_n_0 ),
        .Q(read_add[0]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[1] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1_n_0 ),
        .D(read_add__0[1]),
        .Q(read_add[1]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[2] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1_n_0 ),
        .D(read_add__0[2]),
        .Q(read_add[2]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[3] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1_n_0 ),
        .D(read_add__0[3]),
        .Q(read_add[3]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[4] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1_n_0 ),
        .D(read_add__0[4]),
        .Q(read_add[4]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \read_add_reg[5] 
       (.C(ui_clk),
        .CE(\read_add[4]_i_1_n_0 ),
        .D(read_add__0[5]),
        .Q(read_add[5]),
        .R(ui_clk_sync_rst));
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_wlast_reg_i_1
       (.I0(s_axi_wlast_reg_i_2_n_0),
        .I1(nb_values_reg[6]),
        .O(empty));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi_wlast_reg_i_2
       (.I0(nb_values_reg[2]),
        .I1(nb_values_reg[3]),
        .I2(nb_values_reg[5]),
        .I3(nb_values_reg[1]),
        .I4(nb_values_reg[4]),
        .I5(nb_values_reg[0]),
        .O(s_axi_wlast_reg_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_add[0]_i_1 
       (.I0(write_add[0]),
        .O(\write_add[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_add[1]_i_1 
       (.I0(write_add[0]),
        .I1(write_add[1]),
        .O(write_add__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_add[2]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[0]),
        .I2(write_add[1]),
        .O(write_add__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \write_add[3]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[3]),
        .I2(write_add[0]),
        .I3(write_add[1]),
        .O(write_add__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_add[4]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[3]),
        .I2(write_add[0]),
        .I3(write_add[1]),
        .I4(write_add[4]),
        .O(write_add__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_add[5]_i_1 
       (.I0(write_add[2]),
        .I1(write_add[3]),
        .I2(write_add[0]),
        .I3(write_add[1]),
        .I4(write_add[4]),
        .I5(write_add[5]),
        .O(write_add__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[0] 
       (.C(ui_clk),
        .CE(memory_reg_i_2_n_0),
        .D(\write_add[0]_i_1_n_0 ),
        .Q(write_add[0]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[1] 
       (.C(ui_clk),
        .CE(memory_reg_i_2_n_0),
        .D(write_add__0[1]),
        .Q(write_add[1]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[2] 
       (.C(ui_clk),
        .CE(memory_reg_i_2_n_0),
        .D(write_add__0[2]),
        .Q(write_add[2]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[3] 
       (.C(ui_clk),
        .CE(memory_reg_i_2_n_0),
        .D(write_add__0[3]),
        .Q(write_add[3]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[4] 
       (.C(ui_clk),
        .CE(memory_reg_i_2_n_0),
        .D(write_add__0[4]),
        .Q(write_add[4]),
        .R(ui_clk_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    \write_add_reg[5] 
       (.C(ui_clk),
        .CE(memory_reg_i_2_n_0),
        .D(write_add__0[5]),
        .Q(write_add[5]),
        .R(ui_clk_sync_rst));
endmodule

(* ORIG_REF_NAME = "fsm_v3" *) 
module design_v3_fsm_v3_0_0_fsm_v3
   (s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_rready,
    gpio_wfifo_ready,
    gpio_wresp_valid,
    gpio_wresp,
    gpio_rresp,
    gpio_rvalid,
    gpio_rdata,
    gpio_rresp_valid,
    gpio_debug_state,
    ui_clk_sync_rst,
    ui_clk,
    s_axi_bresp,
    s_axi_rresp,
    gpio_wdata,
    s_axi_rdata,
    s_axi_rvalid,
    gpio_rresp_ack,
    gpio_wreq,
    gpio_rreq,
    gpio_wresp_ack,
    s_axi_bvalid,
    s_axi_wready,
    gpio_wack,
    gpio_rack,
    s_axi_rlast,
    gpio_wlast,
    gpio_rready,
    gpio_wvalid,
    s_axi_awready,
    s_axi_arready,
    gpio_awburst,
    gpio_arburst,
    gpio_awaddr,
    gpio_awlen,
    gpio_araddr,
    gpio_arlen);
  output [29:0]s_axi_awaddr;
  output [7:0]s_axi_awlen;
  output [1:0]s_axi_awburst;
  output s_axi_awvalid;
  output [31:0]s_axi_wdata;
  output s_axi_wlast;
  output s_axi_wvalid;
  output s_axi_bready;
  output [29:0]s_axi_araddr;
  output [7:0]s_axi_arlen;
  output [1:0]s_axi_arburst;
  output s_axi_arvalid;
  output s_axi_rready;
  output gpio_wfifo_ready;
  output gpio_wresp_valid;
  output [1:0]gpio_wresp;
  output [1:0]gpio_rresp;
  output gpio_rvalid;
  output [31:0]gpio_rdata;
  output gpio_rresp_valid;
  output [4:0]gpio_debug_state;
  input ui_clk_sync_rst;
  input ui_clk;
  input [1:0]s_axi_bresp;
  input [1:0]s_axi_rresp;
  input [31:0]gpio_wdata;
  input [31:0]s_axi_rdata;
  input s_axi_rvalid;
  input gpio_rresp_ack;
  input gpio_wreq;
  input gpio_rreq;
  input gpio_wresp_ack;
  input s_axi_bvalid;
  input s_axi_wready;
  input gpio_wack;
  input gpio_rack;
  input s_axi_rlast;
  input gpio_wlast;
  input gpio_rready;
  input gpio_wvalid;
  input s_axi_awready;
  input s_axi_arready;
  input [1:0]gpio_awburst;
  input [1:0]gpio_arburst;
  input [29:0]gpio_awaddr;
  input [7:0]gpio_awlen;
  input [29:0]gpio_araddr;
  input [7:0]gpio_arlen;

  wire \FSM_sequential_STATE[0]_i_3_n_0 ;
  wire \FSM_sequential_STATE[1]_i_2_n_0 ;
  wire \FSM_sequential_STATE[3]_i_2_n_0 ;
  wire \FSM_sequential_STATE[4]_i_2_n_0 ;
  wire \FSM_sequential_STATE[4]_i_3_n_0 ;
  wire \FSM_sequential_STATE[4]_i_5_n_0 ;
  wire \FSM_sequential_STATE[4]_i_6_n_0 ;
  wire \FSM_sequential_STATE[4]_i_7_n_0 ;
  wire \FSM_sequential_STATE[4]_i_8_n_0 ;
  wire \FSM_sequential_STATE_reg_n_0_[1] ;
  wire \FSM_sequential_STATE_reg_n_0_[3] ;
  wire RFIFO_n_32;
  wire [4:2]STATE;
  wire [3:0]STATE__0;
  wire WFIFO_n_32;
  wire empty;
  wire [29:0]gpio_araddr;
  wire [1:0]gpio_arburst;
  wire [7:0]gpio_arlen;
  wire [29:0]gpio_awaddr;
  wire [1:0]gpio_awburst;
  wire [7:0]gpio_awlen;
  wire [4:0]gpio_debug_state;
  wire gpio_rack;
  wire [31:0]gpio_rdata;
  wire \gpio_rdata_reg[31]_i_1_n_0 ;
  wire gpio_rready;
  wire gpio_rreq;
  wire [1:0]gpio_rresp;
  wire gpio_rresp_ack;
  wire \gpio_rresp_reg[1]_i_1_n_0 ;
  wire gpio_rresp_valid;
  wire gpio_rresp_valid_reg_i_1_n_0;
  wire gpio_rvalid;
  wire gpio_rvalid_reg_i_1_n_0;
  wire gpio_wack;
  wire [31:0]gpio_wdata;
  wire gpio_wfifo_ready;
  wire gpio_wfifo_ready_reg_i_1_n_0;
  wire gpio_wfifo_ready_reg_i_2_n_0;
  wire gpio_wlast;
  wire gpio_wreq;
  wire [1:0]gpio_wresp;
  wire gpio_wresp_ack;
  wire \gpio_wresp_reg[1]_i_1_n_0 ;
  wire gpio_wresp_valid;
  wire gpio_wresp_valid_reg_i_1_n_0;
  wire gpio_wvalid;
  wire [31:0]rfifo_din;
  wire [31:0]rfifo_dout;
  wire rfifo_rd_en;
  wire rfifo_rd_en__0;
  wire rfifo_rd_en_reg_i_2_n_0;
  wire rfifo_wr_en;
  wire rfifo_wr_en__0;
  wire rfifo_wr_en_reg_i_2_n_0;
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
  wire [1:0]s_axi_arburst;
  wire \s_axi_arburst_reg[0]_i_1_n_0 ;
  wire \s_axi_arburst_reg[1]_i_1_n_0 ;
  wire [7:0]s_axi_arlen;
  wire \s_axi_arlen_reg[0]_i_1_n_0 ;
  wire \s_axi_arlen_reg[1]_i_1_n_0 ;
  wire \s_axi_arlen_reg[2]_i_1_n_0 ;
  wire \s_axi_arlen_reg[3]_i_1_n_0 ;
  wire \s_axi_arlen_reg[4]_i_1_n_0 ;
  wire \s_axi_arlen_reg[5]_i_1_n_0 ;
  wire \s_axi_arlen_reg[6]_i_1_n_0 ;
  wire \s_axi_arlen_reg[7]_i_1_n_0 ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_reg_i_1_n_0;
  wire s_axi_arvalid_reg_i_2_n_0;
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
  wire [1:0]s_axi_awburst;
  wire \s_axi_awburst_reg[0]_i_1_n_0 ;
  wire \s_axi_awburst_reg[1]_i_1_n_0 ;
  wire [7:0]s_axi_awlen;
  wire \s_axi_awlen_reg[0]_i_1_n_0 ;
  wire \s_axi_awlen_reg[1]_i_1_n_0 ;
  wire \s_axi_awlen_reg[2]_i_1_n_0 ;
  wire \s_axi_awlen_reg[3]_i_1_n_0 ;
  wire \s_axi_awlen_reg[4]_i_1_n_0 ;
  wire \s_axi_awlen_reg[5]_i_1_n_0 ;
  wire \s_axi_awlen_reg[6]_i_1_n_0 ;
  wire \s_axi_awlen_reg[7]_i_1_n_0 ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_awvalid_reg_i_1_n_0;
  wire s_axi_awvalid_reg_i_2_n_0;
  wire s_axi_bready;
  wire s_axi_bready_reg_i_1_n_0;
  wire s_axi_bready_reg_i_2_n_0;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rready_reg_i_1_n_0;
  wire s_axi_rready_reg_i_2_n_0;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire \s_axi_wdata_reg[31]_i_1_n_0 ;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axi_wvalid_reg_i_1_n_0;
  wire ui_clk;
  wire ui_clk_sync_rst;
  wire [31:0]wfifo_din;
  wire wfifo_din__0;
  wire [31:0]wfifo_dout;
  wire wfifo_rd_en;
  wire wfifo_rd_en__0;
  wire wfifo_rd_en_reg_i_2_n_0;
  wire wfifo_wr_en;
  wire wfifo_wr_en__0;
  wire wfifo_wr_en_reg_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_STATE[0]_i_3 
       (.I0(STATE[4]),
        .I1(STATE[2]),
        .O(\FSM_sequential_STATE[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111111005440544)) 
    \FSM_sequential_STATE[1]_i_1 
       (.I0(STATE[4]),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(\FSM_sequential_STATE[1]_i_2_n_0 ),
        .I5(wfifo_wr_en__0),
        .O(STATE__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_STATE[1]_i_2 
       (.I0(gpio_wreq),
        .I1(gpio_rreq),
        .O(\FSM_sequential_STATE[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0508071805080710)) 
    \FSM_sequential_STATE[2]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I1(wfifo_wr_en__0),
        .I2(STATE[4]),
        .I3(STATE[2]),
        .I4(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I5(gpio_wlast),
        .O(STATE__0[2]));
  LUT6 #(
    .INIT(64'h000000112222F888)) 
    \FSM_sequential_STATE[3]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(\FSM_sequential_STATE[3]_i_2_n_0 ),
        .I3(wfifo_wr_en__0),
        .I4(STATE[2]),
        .I5(STATE[4]),
        .O(STATE__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hBBBBAAFA)) 
    \FSM_sequential_STATE[3]_i_2 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_wlast),
        .I2(gpio_rreq),
        .I3(gpio_wreq),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(\FSM_sequential_STATE[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001000100010FFFF)) 
    \FSM_sequential_STATE[4]_i_2 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[2]),
        .I2(gpio_rready),
        .I3(\FSM_sequential_STATE[4]_i_5_n_0 ),
        .I4(STATE[4]),
        .I5(\FSM_sequential_STATE[4]_i_6_n_0 ),
        .O(\FSM_sequential_STATE[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEE00EE00EE0FEE00)) 
    \FSM_sequential_STATE[4]_i_3 
       (.I0(\FSM_sequential_STATE[4]_i_7_n_0 ),
        .I1(\FSM_sequential_STATE[4]_i_8_n_0 ),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(wfifo_wr_en__0),
        .I4(gpio_wack),
        .I5(STATE[2]),
        .O(\FSM_sequential_STATE[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_STATE[4]_i_5 
       (.I0(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I1(wfifo_wr_en__0),
        .O(\FSM_sequential_STATE[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF503F0FFF5F3F0)) 
    \FSM_sequential_STATE[4]_i_6 
       (.I0(gpio_wvalid),
        .I1(s_axi_awready),
        .I2(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I3(STATE[2]),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I5(gpio_rready),
        .O(\FSM_sequential_STATE[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0F0ACFFF)) 
    \FSM_sequential_STATE[4]_i_7 
       (.I0(s_axi_arready),
        .I1(gpio_wresp_ack),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(STATE[2]),
        .I4(\FSM_sequential_STATE_reg_n_0_[3] ),
        .O(\FSM_sequential_STATE[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \FSM_sequential_STATE[4]_i_8 
       (.I0(gpio_rack),
        .I1(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(s_axi_rlast),
        .O(\FSM_sequential_STATE[4]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STATE_reg[0] 
       (.C(ui_clk),
        .CE(WFIFO_n_32),
        .D(STATE__0[0]),
        .Q(wfifo_wr_en__0),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STATE_reg[1] 
       (.C(ui_clk),
        .CE(WFIFO_n_32),
        .D(STATE__0[1]),
        .Q(\FSM_sequential_STATE_reg_n_0_[1] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STATE_reg[2] 
       (.C(ui_clk),
        .CE(WFIFO_n_32),
        .D(STATE__0[2]),
        .Q(STATE[2]),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STATE_reg[3] 
       (.C(ui_clk),
        .CE(WFIFO_n_32),
        .D(STATE__0[3]),
        .Q(\FSM_sequential_STATE_reg_n_0_[3] ),
        .R(ui_clk_sync_rst));
  (* FSM_ENCODED_STATES = "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STATE_reg[4] 
       (.C(ui_clk),
        .CE(WFIFO_n_32),
        .D(\gpio_rdata_reg[31]_i_1_n_0 ),
        .Q(STATE[4]),
        .R(ui_clk_sync_rst));
  design_v3_fsm_v3_0_0_fifo RFIFO
       (.D(rfifo_dout),
        .\FSM_sequential_STATE_reg[0] (STATE__0[0]),
        .\FSM_sequential_STATE_reg[0]_0 ({STATE[4],\FSM_sequential_STATE_reg_n_0_[3] ,STATE[2],\FSM_sequential_STATE_reg_n_0_[1] ,wfifo_wr_en__0}),
        .\FSM_sequential_STATE_reg[0]_1 (\FSM_sequential_STATE[0]_i_3_n_0 ),
        .Q(rfifo_din),
        .WEBWE(RFIFO_n_32),
        .gpio_rreq(gpio_rreq),
        .gpio_wreq(gpio_wreq),
        .rfifo_rd_en(rfifo_rd_en),
        .rfifo_wr_en(rfifo_wr_en),
        .ui_clk(ui_clk),
        .ui_clk_sync_rst(ui_clk_sync_rst));
  design_v3_fsm_v3_0_0_fifo_0 WFIFO
       (.D(wfifo_dout),
        .E(WFIFO_n_32),
        .\FSM_sequential_STATE_reg[0] (\FSM_sequential_STATE[4]_i_2_n_0 ),
        .\FSM_sequential_STATE_reg[0]_0 ({STATE[4],\FSM_sequential_STATE_reg_n_0_[3] ,STATE[2],\FSM_sequential_STATE_reg_n_0_[1] ,wfifo_wr_en__0}),
        .\FSM_sequential_STATE_reg[0]_1 (\FSM_sequential_STATE[4]_i_3_n_0 ),
        .Q(wfifo_din),
        .WEBWE(RFIFO_n_32),
        .empty(empty),
        .gpio_rresp_ack(gpio_rresp_ack),
        .s_axi_rvalid(s_axi_rvalid),
        .ui_clk(ui_clk),
        .ui_clk_sync_rst(ui_clk_sync_rst),
        .wfifo_rd_en(wfifo_rd_en),
        .wfifo_wr_en(wfifo_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF2F5FFF0)) 
    \gpio_debug_state[0]_INST_0 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(STATE[4]),
        .I3(wfifo_wr_en__0),
        .I4(STATE[2]),
        .O(gpio_debug_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEFDFCCEC)) 
    \gpio_debug_state[1]_INST_0 
       (.I0(wfifo_wr_en__0),
        .I1(STATE[4]),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(gpio_debug_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFBBFABAA)) 
    \gpio_debug_state[2]_INST_0 
       (.I0(STATE[4]),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(wfifo_wr_en__0),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(STATE[2]),
        .O(gpio_debug_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFBFEEAAA)) 
    \gpio_debug_state[3]_INST_0 
       (.I0(STATE[4]),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(wfifo_wr_en__0),
        .I3(STATE[2]),
        .I4(\FSM_sequential_STATE_reg_n_0_[3] ),
        .O(gpio_debug_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \gpio_debug_state[4]_INST_0 
       (.I0(STATE[4]),
        .I1(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(wfifo_wr_en__0),
        .O(gpio_debug_state[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[0] 
       (.CLR(1'b0),
        .D(rfifo_dout[0]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[10] 
       (.CLR(1'b0),
        .D(rfifo_dout[10]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[11] 
       (.CLR(1'b0),
        .D(rfifo_dout[11]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[12] 
       (.CLR(1'b0),
        .D(rfifo_dout[12]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[13] 
       (.CLR(1'b0),
        .D(rfifo_dout[13]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[14] 
       (.CLR(1'b0),
        .D(rfifo_dout[14]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[15] 
       (.CLR(1'b0),
        .D(rfifo_dout[15]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[16] 
       (.CLR(1'b0),
        .D(rfifo_dout[16]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[17] 
       (.CLR(1'b0),
        .D(rfifo_dout[17]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[18] 
       (.CLR(1'b0),
        .D(rfifo_dout[18]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[19] 
       (.CLR(1'b0),
        .D(rfifo_dout[19]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[1] 
       (.CLR(1'b0),
        .D(rfifo_dout[1]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[20] 
       (.CLR(1'b0),
        .D(rfifo_dout[20]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[21] 
       (.CLR(1'b0),
        .D(rfifo_dout[21]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[22] 
       (.CLR(1'b0),
        .D(rfifo_dout[22]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[23] 
       (.CLR(1'b0),
        .D(rfifo_dout[23]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[24] 
       (.CLR(1'b0),
        .D(rfifo_dout[24]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[25] 
       (.CLR(1'b0),
        .D(rfifo_dout[25]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[26] 
       (.CLR(1'b0),
        .D(rfifo_dout[26]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[27] 
       (.CLR(1'b0),
        .D(rfifo_dout[27]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[28] 
       (.CLR(1'b0),
        .D(rfifo_dout[28]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[29] 
       (.CLR(1'b0),
        .D(rfifo_dout[29]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[2] 
       (.CLR(1'b0),
        .D(rfifo_dout[2]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[30] 
       (.CLR(1'b0),
        .D(rfifo_dout[30]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[31] 
       (.CLR(1'b0),
        .D(rfifo_dout[31]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[31]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gpio_rdata_reg[31]_i_1 
       (.I0(STATE[4]),
        .I1(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I2(STATE[2]),
        .I3(wfifo_wr_en__0),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(\gpio_rdata_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[3] 
       (.CLR(1'b0),
        .D(rfifo_dout[3]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[4] 
       (.CLR(1'b0),
        .D(rfifo_dout[4]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[5] 
       (.CLR(1'b0),
        .D(rfifo_dout[5]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[6] 
       (.CLR(1'b0),
        .D(rfifo_dout[6]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[7] 
       (.CLR(1'b0),
        .D(rfifo_dout[7]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[8] 
       (.CLR(1'b0),
        .D(rfifo_dout[8]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rdata_reg[9] 
       (.CLR(1'b0),
        .D(rfifo_dout[9]),
        .G(\gpio_rdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rdata[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rresp_reg[0] 
       (.CLR(1'b0),
        .D(s_axi_rresp[0]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rresp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_rresp_reg[1] 
       (.CLR(1'b0),
        .D(s_axi_rresp[1]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_rresp[1]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \gpio_rresp_reg[1]_i_1 
       (.I0(STATE[4]),
        .I1(STATE[2]),
        .I2(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I3(wfifo_wr_en__0),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(\gpio_rresp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    gpio_rresp_valid_reg
       (.CLR(1'b0),
        .D(\FSM_sequential_STATE_reg_n_0_[3] ),
        .G(gpio_rresp_valid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(gpio_rresp_valid));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00400003)) 
    gpio_rresp_valid_reg_i_1
       (.I0(wfifo_wr_en__0),
        .I1(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I2(STATE[2]),
        .I3(STATE[4]),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(gpio_rresp_valid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    gpio_rvalid_reg
       (.CLR(1'b0),
        .D(\FSM_sequential_STATE_reg_n_0_[1] ),
        .G(gpio_rvalid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(gpio_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30200003)) 
    gpio_rvalid_reg_i_1
       (.I0(wfifo_wr_en__0),
        .I1(STATE[4]),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(\FSM_sequential_STATE_reg_n_0_[3] ),
        .O(gpio_rvalid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    gpio_wfifo_ready_reg
       (.CLR(1'b0),
        .D(gpio_wfifo_ready_reg_i_1_n_0),
        .G(gpio_wfifo_ready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(gpio_wfifo_ready));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gpio_wfifo_ready_reg_i_1
       (.I0(wfifo_wr_en__0),
        .O(gpio_wfifo_ready_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000026)) 
    gpio_wfifo_ready_reg_i_2
       (.I0(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I1(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I2(wfifo_wr_en__0),
        .I3(STATE[2]),
        .I4(STATE[4]),
        .O(gpio_wfifo_ready_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_wresp_reg[0] 
       (.CLR(1'b0),
        .D(s_axi_bresp[0]),
        .G(\gpio_wresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_wresp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \gpio_wresp_reg[1] 
       (.CLR(1'b0),
        .D(s_axi_bresp[1]),
        .G(\gpio_wresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(gpio_wresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \gpio_wresp_reg[1]_i_1 
       (.I0(STATE[4]),
        .I1(STATE[2]),
        .I2(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I3(wfifo_wr_en__0),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(\gpio_wresp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    gpio_wresp_valid_reg
       (.CLR(1'b0),
        .D(gpio_wresp_valid_reg_i_1_n_0),
        .G(s_axi_bready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(gpio_wresp_valid));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gpio_wresp_valid_reg_i_1
       (.I0(STATE[2]),
        .I1(s_axi_bvalid),
        .O(gpio_wresp_valid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[0] 
       (.CLR(1'b0),
        .D(s_axi_rdata[0]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[10] 
       (.CLR(1'b0),
        .D(s_axi_rdata[10]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[11] 
       (.CLR(1'b0),
        .D(s_axi_rdata[11]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[12] 
       (.CLR(1'b0),
        .D(s_axi_rdata[12]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[13] 
       (.CLR(1'b0),
        .D(s_axi_rdata[13]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[14] 
       (.CLR(1'b0),
        .D(s_axi_rdata[14]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[15] 
       (.CLR(1'b0),
        .D(s_axi_rdata[15]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[16] 
       (.CLR(1'b0),
        .D(s_axi_rdata[16]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[17] 
       (.CLR(1'b0),
        .D(s_axi_rdata[17]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[18] 
       (.CLR(1'b0),
        .D(s_axi_rdata[18]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[19] 
       (.CLR(1'b0),
        .D(s_axi_rdata[19]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[1] 
       (.CLR(1'b0),
        .D(s_axi_rdata[1]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[20] 
       (.CLR(1'b0),
        .D(s_axi_rdata[20]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[21] 
       (.CLR(1'b0),
        .D(s_axi_rdata[21]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[22] 
       (.CLR(1'b0),
        .D(s_axi_rdata[22]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[23] 
       (.CLR(1'b0),
        .D(s_axi_rdata[23]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[24] 
       (.CLR(1'b0),
        .D(s_axi_rdata[24]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[25] 
       (.CLR(1'b0),
        .D(s_axi_rdata[25]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[26] 
       (.CLR(1'b0),
        .D(s_axi_rdata[26]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[27] 
       (.CLR(1'b0),
        .D(s_axi_rdata[27]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[28] 
       (.CLR(1'b0),
        .D(s_axi_rdata[28]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[29] 
       (.CLR(1'b0),
        .D(s_axi_rdata[29]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[2] 
       (.CLR(1'b0),
        .D(s_axi_rdata[2]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[30] 
       (.CLR(1'b0),
        .D(s_axi_rdata[30]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[31] 
       (.CLR(1'b0),
        .D(s_axi_rdata[31]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[3] 
       (.CLR(1'b0),
        .D(s_axi_rdata[3]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[4] 
       (.CLR(1'b0),
        .D(s_axi_rdata[4]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[5] 
       (.CLR(1'b0),
        .D(s_axi_rdata[5]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[6] 
       (.CLR(1'b0),
        .D(s_axi_rdata[6]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[7] 
       (.CLR(1'b0),
        .D(s_axi_rdata[7]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[8] 
       (.CLR(1'b0),
        .D(s_axi_rdata[8]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rfifo_din_reg[9] 
       (.CLR(1'b0),
        .D(s_axi_rdata[9]),
        .G(\gpio_rresp_reg[1]_i_1_n_0 ),
        .GE(1'b1),
        .Q(rfifo_din[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    rfifo_rd_en_reg
       (.CLR(1'b0),
        .D(rfifo_rd_en__0),
        .G(rfifo_rd_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(rfifo_rd_en));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    rfifo_rd_en_reg_i_1
       (.I0(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(rfifo_rd_en__0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    rfifo_rd_en_reg_i_2
       (.I0(STATE[4]),
        .I1(STATE[2]),
        .I2(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(wfifo_wr_en__0),
        .O(rfifo_rd_en_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    rfifo_wr_en_reg
       (.CLR(1'b0),
        .D(rfifo_wr_en__0),
        .G(rfifo_wr_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(rfifo_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rfifo_wr_en_reg_i_1
       (.I0(s_axi_rvalid),
        .I1(STATE[2]),
        .O(rfifo_wr_en__0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h04000040)) 
    rfifo_wr_en_reg_i_2
       (.I0(STATE[4]),
        .I1(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(wfifo_wr_en__0),
        .O(rfifo_wr_en_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_araddr_reg[0]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_araddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[0]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[10]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[10]),
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
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[11]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[11]),
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
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[12]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[12]),
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
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[13]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[13]),
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
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[14]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[14]),
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[15]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[15]),
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
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[16]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[16]),
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
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[17]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[17]),
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
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[18]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[18]),
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
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[19]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[19]),
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
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[1]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[20]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[20]),
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
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[21]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[21]),
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
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[22]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[22]),
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
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[23]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[23]),
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
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[24]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[24]),
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
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[25]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[25]),
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
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[26]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[26]),
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[27]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[27]),
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[28]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[28]),
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[29]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[29]),
        .O(\s_axi_araddr_reg[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01010001)) 
    \s_axi_araddr_reg[29]_i_2 
       (.I0(STATE[2]),
        .I1(STATE[4]),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(wfifo_wr_en__0),
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
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[2]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[3]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[4]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[5]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[5]),
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
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[6]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[7]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[7]),
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
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[8]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[8]),
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
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr_reg[9]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_araddr[9]),
        .O(\s_axi_araddr_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arburst_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_arburst_reg[0]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arburst[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arburst_reg[0]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arburst[0]),
        .O(\s_axi_arburst_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arburst_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_arburst_reg[1]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arburst[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arburst_reg[1]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arburst[1]),
        .O(\s_axi_arburst_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[0]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[0]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[0]),
        .O(\s_axi_arlen_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[1]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[1]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[1]),
        .O(\s_axi_arlen_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[2] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[2]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[2]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[2]),
        .O(\s_axi_arlen_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[3] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[3]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[3]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[3]),
        .O(\s_axi_arlen_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[4] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[4]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[4]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[4]),
        .O(\s_axi_arlen_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[5] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[5]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[5]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[5]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[5]),
        .O(\s_axi_arlen_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[6] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[6]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[6]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[6]),
        .O(\s_axi_arlen_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_arlen_reg[7] 
       (.CLR(1'b0),
        .D(\s_axi_arlen_reg[7]_i_1_n_0 ),
        .G(\s_axi_araddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_arlen[7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arlen_reg[7]_i_1 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(gpio_arlen[7]),
        .O(\s_axi_arlen_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_arvalid_reg
       (.CLR(1'b0),
        .D(s_axi_arvalid_reg_i_1_n_0),
        .G(s_axi_arvalid_reg_i_2_n_0),
        .GE(1'b1),
        .Q(s_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arvalid_reg_i_1
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(s_axi_arvalid_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h01100101)) 
    s_axi_arvalid_reg_i_2
       (.I0(STATE[2]),
        .I1(STATE[4]),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(wfifo_wr_en__0),
        .I4(\FSM_sequential_STATE_reg_n_0_[3] ),
        .O(s_axi_arvalid_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_awaddr_reg[0]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awaddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[0]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[10]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[10]),
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[11]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[11]),
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[12]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[12]),
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[13]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[13]),
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[14]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[14]),
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[15]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[15]),
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[16]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[16]),
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[17]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[17]),
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[18]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[18]),
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[19]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[19]),
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[1]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[20]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[20]),
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[21]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[21]),
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[22]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[22]),
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[23]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[23]),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[24]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[24]),
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[25]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[25]),
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[26]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[26]),
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[27]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[27]),
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[28]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[28]),
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[29]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[29]),
        .O(\s_axi_awaddr_reg[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    \s_axi_awaddr_reg[29]_i_2 
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[4]),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(wfifo_wr_en__0),
        .I4(STATE[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[2]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[3]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[4]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[4]),
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[5]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[5]),
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[6]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[6]),
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[7]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[7]),
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
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[8]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[8]),
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
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awaddr_reg[9]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awaddr[9]),
        .O(\s_axi_awaddr_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awburst_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_awburst_reg[0]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awburst[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awburst_reg[0]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awburst[0]),
        .O(\s_axi_awburst_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awburst_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_awburst_reg[1]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awburst[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awburst_reg[1]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awburst[1]),
        .O(\s_axi_awburst_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[0]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[0]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[0]),
        .O(\s_axi_awlen_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[1]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[1]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[1]),
        .O(\s_axi_awlen_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[2] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[2]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[2]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[2]),
        .O(\s_axi_awlen_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[3] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[3]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[3]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[3]),
        .O(\s_axi_awlen_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[4] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[4]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[4]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[4]),
        .O(\s_axi_awlen_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[5] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[5]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[5]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[5]),
        .O(\s_axi_awlen_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[6] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[6]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[6]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[6]),
        .O(\s_axi_awlen_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_awlen_reg[7] 
       (.CLR(1'b0),
        .D(\s_axi_awlen_reg[7]_i_1_n_0 ),
        .G(\s_axi_awaddr_reg[29]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s_axi_awlen[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_awlen_reg[7]_i_1 
       (.I0(STATE[2]),
        .I1(gpio_awlen[7]),
        .O(\s_axi_awlen_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_awvalid_reg
       (.CLR(1'b0),
        .D(s_axi_awvalid_reg_i_1_n_0),
        .G(s_axi_awvalid_reg_i_2_n_0),
        .GE(1'b1),
        .Q(s_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awvalid_reg_i_1
       (.I0(STATE[2]),
        .I1(wfifo_wr_en__0),
        .O(s_axi_awvalid_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    s_axi_awvalid_reg_i_2
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[4]),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(s_axi_awvalid_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_bready_reg
       (.CLR(1'b0),
        .D(s_axi_bready_reg_i_1_n_0),
        .G(s_axi_bready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(s_axi_bready));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_bready_reg_i_1
       (.I0(STATE[2]),
        .I1(gpio_wresp_ack),
        .O(s_axi_bready_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h02000003)) 
    s_axi_bready_reg_i_2
       (.I0(wfifo_wr_en__0),
        .I1(STATE[4]),
        .I2(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(STATE[2]),
        .O(s_axi_bready_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_rready_reg
       (.CLR(1'b0),
        .D(s_axi_rready_reg_i_1_n_0),
        .G(s_axi_rready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(s_axi_rready));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rready_reg_i_1
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[2]),
        .O(s_axi_rready_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h10010401)) 
    s_axi_rready_reg_i_2
       (.I0(STATE[4]),
        .I1(STATE[2]),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(wfifo_wr_en__0),
        .O(s_axi_rready_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[0] 
       (.CLR(1'b0),
        .D(wfifo_dout[0]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[10] 
       (.CLR(1'b0),
        .D(wfifo_dout[10]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[11] 
       (.CLR(1'b0),
        .D(wfifo_dout[11]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[12] 
       (.CLR(1'b0),
        .D(wfifo_dout[12]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[13] 
       (.CLR(1'b0),
        .D(wfifo_dout[13]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[14] 
       (.CLR(1'b0),
        .D(wfifo_dout[14]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[15] 
       (.CLR(1'b0),
        .D(wfifo_dout[15]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[16] 
       (.CLR(1'b0),
        .D(wfifo_dout[16]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[17] 
       (.CLR(1'b0),
        .D(wfifo_dout[17]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[18] 
       (.CLR(1'b0),
        .D(wfifo_dout[18]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[19] 
       (.CLR(1'b0),
        .D(wfifo_dout[19]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[1] 
       (.CLR(1'b0),
        .D(wfifo_dout[1]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[20] 
       (.CLR(1'b0),
        .D(wfifo_dout[20]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[21] 
       (.CLR(1'b0),
        .D(wfifo_dout[21]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[22] 
       (.CLR(1'b0),
        .D(wfifo_dout[22]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[23] 
       (.CLR(1'b0),
        .D(wfifo_dout[23]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[24] 
       (.CLR(1'b0),
        .D(wfifo_dout[24]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[25] 
       (.CLR(1'b0),
        .D(wfifo_dout[25]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[26] 
       (.CLR(1'b0),
        .D(wfifo_dout[26]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[27] 
       (.CLR(1'b0),
        .D(wfifo_dout[27]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[28] 
       (.CLR(1'b0),
        .D(wfifo_dout[28]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[29] 
       (.CLR(1'b0),
        .D(wfifo_dout[29]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[2] 
       (.CLR(1'b0),
        .D(wfifo_dout[2]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[30] 
       (.CLR(1'b0),
        .D(wfifo_dout[30]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[31] 
       (.CLR(1'b0),
        .D(wfifo_dout[31]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[31]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \s_axi_wdata_reg[31]_i_1 
       (.I0(wfifo_wr_en__0),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(STATE[2]),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(STATE[4]),
        .O(\s_axi_wdata_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[3] 
       (.CLR(1'b0),
        .D(wfifo_dout[3]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[4] 
       (.CLR(1'b0),
        .D(wfifo_dout[4]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[5] 
       (.CLR(1'b0),
        .D(wfifo_dout[5]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[6] 
       (.CLR(1'b0),
        .D(wfifo_dout[6]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[7] 
       (.CLR(1'b0),
        .D(wfifo_dout[7]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[8] 
       (.CLR(1'b0),
        .D(wfifo_dout[8]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[9] 
       (.CLR(1'b0),
        .D(wfifo_dout[9]),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wdata[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_wlast_reg
       (.CLR(1'b0),
        .D(empty),
        .G(\s_axi_wdata_reg[31]_i_1_n_0 ),
        .GE(1'b1),
        .Q(s_axi_wlast));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    s_axi_wvalid_reg
       (.CLR(1'b0),
        .D(s_axi_awvalid_reg_i_1_n_0),
        .G(s_axi_wvalid_reg_i_1_n_0),
        .GE(1'b1),
        .Q(s_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    s_axi_wvalid_reg_i_1
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[4]),
        .I2(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I3(STATE[2]),
        .O(s_axi_wvalid_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[0] 
       (.CLR(1'b0),
        .D(gpio_wdata[0]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[10] 
       (.CLR(1'b0),
        .D(gpio_wdata[10]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[11] 
       (.CLR(1'b0),
        .D(gpio_wdata[11]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[12] 
       (.CLR(1'b0),
        .D(gpio_wdata[12]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[13] 
       (.CLR(1'b0),
        .D(gpio_wdata[13]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[14] 
       (.CLR(1'b0),
        .D(gpio_wdata[14]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[15] 
       (.CLR(1'b0),
        .D(gpio_wdata[15]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[16] 
       (.CLR(1'b0),
        .D(gpio_wdata[16]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[17] 
       (.CLR(1'b0),
        .D(gpio_wdata[17]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[18] 
       (.CLR(1'b0),
        .D(gpio_wdata[18]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[19] 
       (.CLR(1'b0),
        .D(gpio_wdata[19]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[1] 
       (.CLR(1'b0),
        .D(gpio_wdata[1]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[20] 
       (.CLR(1'b0),
        .D(gpio_wdata[20]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[21] 
       (.CLR(1'b0),
        .D(gpio_wdata[21]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[22] 
       (.CLR(1'b0),
        .D(gpio_wdata[22]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[23] 
       (.CLR(1'b0),
        .D(gpio_wdata[23]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[24] 
       (.CLR(1'b0),
        .D(gpio_wdata[24]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[25] 
       (.CLR(1'b0),
        .D(gpio_wdata[25]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[26] 
       (.CLR(1'b0),
        .D(gpio_wdata[26]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[27] 
       (.CLR(1'b0),
        .D(gpio_wdata[27]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[28] 
       (.CLR(1'b0),
        .D(gpio_wdata[28]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[29] 
       (.CLR(1'b0),
        .D(gpio_wdata[29]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[2] 
       (.CLR(1'b0),
        .D(gpio_wdata[2]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[30] 
       (.CLR(1'b0),
        .D(gpio_wdata[30]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[31] 
       (.CLR(1'b0),
        .D(gpio_wdata[31]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[31]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \wfifo_din_reg[31]_i_1 
       (.I0(STATE[2]),
        .I1(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I2(wfifo_wr_en__0),
        .I3(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I4(STATE[4]),
        .O(wfifo_din__0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[3] 
       (.CLR(1'b0),
        .D(gpio_wdata[3]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[4] 
       (.CLR(1'b0),
        .D(gpio_wdata[4]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[5] 
       (.CLR(1'b0),
        .D(gpio_wdata[5]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[6] 
       (.CLR(1'b0),
        .D(gpio_wdata[6]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[7] 
       (.CLR(1'b0),
        .D(gpio_wdata[7]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[8] 
       (.CLR(1'b0),
        .D(gpio_wdata[8]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wfifo_din_reg[9] 
       (.CLR(1'b0),
        .D(gpio_wdata[9]),
        .G(wfifo_din__0),
        .GE(1'b1),
        .Q(wfifo_din[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    wfifo_rd_en_reg
       (.CLR(1'b0),
        .D(wfifo_rd_en__0),
        .G(wfifo_rd_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(wfifo_rd_en));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wfifo_rd_en_reg_i_1
       (.I0(wfifo_wr_en__0),
        .I1(s_axi_wready),
        .O(wfifo_rd_en__0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00101000)) 
    wfifo_rd_en_reg_i_2
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[4]),
        .I2(STATE[2]),
        .I3(wfifo_wr_en__0),
        .I4(\FSM_sequential_STATE_reg_n_0_[1] ),
        .O(wfifo_rd_en_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    wfifo_wr_en_reg
       (.CLR(1'b0),
        .D(wfifo_wr_en__0),
        .G(wfifo_wr_en_reg_i_1_n_0),
        .GE(1'b1),
        .Q(wfifo_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00001106)) 
    wfifo_wr_en_reg_i_1
       (.I0(\FSM_sequential_STATE_reg_n_0_[3] ),
        .I1(STATE[2]),
        .I2(wfifo_wr_en__0),
        .I3(\FSM_sequential_STATE_reg_n_0_[1] ),
        .I4(STATE[4]),
        .O(wfifo_wr_en_reg_i_1_n_0));
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
