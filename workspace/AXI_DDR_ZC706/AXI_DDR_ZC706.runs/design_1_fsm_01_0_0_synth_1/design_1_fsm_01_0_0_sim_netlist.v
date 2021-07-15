// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Jul 15 09:53:22 2021
// Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fsm_01_0_0_sim_netlist.v
// Design      : design_1_fsm_01_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fsm_01_0_0,fsm_01,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fsm_01,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (din,
    clk,
    reset,
    valid,
    ready,
    led);
  input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input valid;
  output ready;
  output led;

  wire clk;
  wire [31:0]din;
  wire led;
  wire ready;
  wire reset;
  wire valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_01 inst
       (.clk(clk),
        .din(din[31:4]),
        .led(led),
        .ready(ready),
        .reset(reset),
        .valid(valid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_01
   (ready,
    led,
    clk,
    reset,
    din,
    valid);
  output ready;
  output led;
  input clk;
  input reset;
  input [27:0]din;
  input valid;

  wire \FSM_onehot_STATE[0]_i_1_n_0 ;
  wire \FSM_onehot_STATE[1]_i_1_n_0 ;
  wire \FSM_onehot_STATE[2]_i_1_n_0 ;
  wire \FSM_onehot_STATE[3]_i_1_n_0 ;
  wire \FSM_onehot_STATE[4]_i_1_n_0 ;
  wire \FSM_onehot_STATE[4]_i_2_n_0 ;
  wire \FSM_onehot_STATE[4]_i_3_n_0 ;
  wire \FSM_onehot_STATE[4]_i_4_n_0 ;
  wire \FSM_onehot_STATE[4]_i_5_n_0 ;
  wire \FSM_onehot_STATE[4]_i_6_n_0 ;
  wire \FSM_onehot_STATE[4]_i_7_n_0 ;
  wire \FSM_onehot_STATE[4]_i_8_n_0 ;
  wire \FSM_onehot_STATE_reg_n_0_[0] ;
  wire \FSM_onehot_STATE_reg_n_0_[2] ;
  wire \FSM_onehot_STATE_reg_n_0_[3] ;
  wire \FSM_onehot_STATE_reg_n_0_[4] ;
  wire REG_VALID;
  wire REG_VALID__0;
  wire [31:4]REG_VALUE;
  wire clk;
  wire [27:0]din;
  wire led;
  wire ready;
  wire ready_reg_i_1_n_0;
  wire ready_reg_i_2_n_0;
  wire reset;
  wire valid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_STATE[0]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I1(valid),
        .O(\FSM_onehot_STATE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F444)) 
    \FSM_onehot_STATE[1]_i_1 
       (.I0(REG_VALID),
        .I1(REG_VALID__0),
        .I2(valid),
        .I3(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I5(\FSM_onehot_STATE_reg_n_0_[3] ),
        .O(\FSM_onehot_STATE[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_STATE[2]_i_1 
       (.I0(REG_VALID__0),
        .I1(REG_VALID),
        .O(\FSM_onehot_STATE[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF444444444)) 
    \FSM_onehot_STATE[3]_i_1 
       (.I0(valid),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(\FSM_onehot_STATE[4]_i_2_n_0 ),
        .I3(\FSM_onehot_STATE[4]_i_3_n_0 ),
        .I4(\FSM_onehot_STATE[4]_i_4_n_0 ),
        .I5(\FSM_onehot_STATE_reg_n_0_[2] ),
        .O(\FSM_onehot_STATE[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F44444444)) 
    \FSM_onehot_STATE[4]_i_1 
       (.I0(valid),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(\FSM_onehot_STATE[4]_i_2_n_0 ),
        .I3(\FSM_onehot_STATE[4]_i_3_n_0 ),
        .I4(\FSM_onehot_STATE[4]_i_4_n_0 ),
        .I5(\FSM_onehot_STATE_reg_n_0_[2] ),
        .O(\FSM_onehot_STATE[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \FSM_onehot_STATE[4]_i_2 
       (.I0(REG_VALUE[22]),
        .I1(REG_VALUE[21]),
        .I2(\FSM_onehot_STATE[4]_i_5_n_0 ),
        .I3(REG_VALUE[8]),
        .I4(REG_VALUE[9]),
        .O(\FSM_onehot_STATE[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_STATE[4]_i_3 
       (.I0(\FSM_onehot_STATE[4]_i_6_n_0 ),
        .I1(REG_VALUE[31]),
        .I2(REG_VALUE[17]),
        .I3(REG_VALUE[18]),
        .O(\FSM_onehot_STATE[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_STATE[4]_i_4 
       (.I0(\FSM_onehot_STATE[4]_i_7_n_0 ),
        .I1(\FSM_onehot_STATE[4]_i_8_n_0 ),
        .I2(REG_VALUE[19]),
        .I3(REG_VALUE[20]),
        .O(\FSM_onehot_STATE[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \FSM_onehot_STATE[4]_i_5 
       (.I0(REG_VALUE[6]),
        .I1(REG_VALUE[7]),
        .I2(REG_VALUE[4]),
        .I3(REG_VALUE[5]),
        .I4(REG_VALUE[10]),
        .O(\FSM_onehot_STATE[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_STATE[4]_i_6 
       (.I0(REG_VALUE[26]),
        .I1(REG_VALUE[25]),
        .I2(REG_VALUE[24]),
        .I3(REG_VALUE[23]),
        .O(\FSM_onehot_STATE[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_STATE[4]_i_7 
       (.I0(REG_VALUE[30]),
        .I1(REG_VALUE[29]),
        .I2(REG_VALUE[28]),
        .I3(REG_VALUE[27]),
        .O(\FSM_onehot_STATE[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_STATE[4]_i_8 
       (.I0(REG_VALUE[11]),
        .I1(REG_VALUE[12]),
        .I2(REG_VALUE[13]),
        .I3(REG_VALUE[14]),
        .I4(REG_VALUE[16]),
        .I5(REG_VALUE[15]),
        .O(\FSM_onehot_STATE[4]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_STATE_reg[0] 
       (.C(clk),
        .CE(ready_reg_i_2_n_0),
        .D(\FSM_onehot_STATE[0]_i_1_n_0 ),
        .PRE(reset),
        .Q(\FSM_onehot_STATE_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[1] 
       (.C(clk),
        .CE(ready_reg_i_2_n_0),
        .CLR(reset),
        .D(\FSM_onehot_STATE[1]_i_1_n_0 ),
        .Q(REG_VALID__0));
  (* FSM_ENCODED_STATES = "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[2] 
       (.C(clk),
        .CE(ready_reg_i_2_n_0),
        .CLR(reset),
        .D(\FSM_onehot_STATE[2]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[3] 
       (.C(clk),
        .CE(ready_reg_i_2_n_0),
        .CLR(reset),
        .D(\FSM_onehot_STATE[3]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[4] 
       (.C(clk),
        .CE(ready_reg_i_2_n_0),
        .CLR(reset),
        .D(\FSM_onehot_STATE[4]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    REG_VALID_reg
       (.CLR(1'b0),
        .D(REG_VALID__0),
        .G(ready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(REG_VALID));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[10] 
       (.CLR(1'b0),
        .D(din[6]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[11] 
       (.CLR(1'b0),
        .D(din[7]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[12] 
       (.CLR(1'b0),
        .D(din[8]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[13] 
       (.CLR(1'b0),
        .D(din[9]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[14] 
       (.CLR(1'b0),
        .D(din[10]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[15] 
       (.CLR(1'b0),
        .D(din[11]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[16] 
       (.CLR(1'b0),
        .D(din[12]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[17] 
       (.CLR(1'b0),
        .D(din[13]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[18] 
       (.CLR(1'b0),
        .D(din[14]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[19] 
       (.CLR(1'b0),
        .D(din[15]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[20] 
       (.CLR(1'b0),
        .D(din[16]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[21] 
       (.CLR(1'b0),
        .D(din[17]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[22] 
       (.CLR(1'b0),
        .D(din[18]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[23] 
       (.CLR(1'b0),
        .D(din[19]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[24] 
       (.CLR(1'b0),
        .D(din[20]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[25] 
       (.CLR(1'b0),
        .D(din[21]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[26] 
       (.CLR(1'b0),
        .D(din[22]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[27] 
       (.CLR(1'b0),
        .D(din[23]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[28] 
       (.CLR(1'b0),
        .D(din[24]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[29] 
       (.CLR(1'b0),
        .D(din[25]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[30] 
       (.CLR(1'b0),
        .D(din[26]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[31] 
       (.CLR(1'b0),
        .D(din[27]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[4] 
       (.CLR(1'b0),
        .D(din[0]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[5] 
       (.CLR(1'b0),
        .D(din[1]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[6] 
       (.CLR(1'b0),
        .D(din[2]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[7] 
       (.CLR(1'b0),
        .D(din[3]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[8] 
       (.CLR(1'b0),
        .D(din[4]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \REG_VALUE_reg[9] 
       (.CLR(1'b0),
        .D(din[5]),
        .G(REG_VALID__0),
        .GE(1'b1),
        .Q(REG_VALUE[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    led_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_STATE_reg_n_0_[3] ),
        .G(ready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(led));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ready_reg
       (.CLR(1'b0),
        .D(ready_reg_i_1_n_0),
        .G(ready_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ready_reg_i_1
       (.I0(\FSM_onehot_STATE_reg_n_0_[0] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(\FSM_onehot_STATE_reg_n_0_[3] ),
        .O(ready_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ready_reg_i_2
       (.I0(\FSM_onehot_STATE_reg_n_0_[2] ),
        .I1(REG_VALID__0),
        .I2(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I3(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[0] ),
        .O(ready_reg_i_2_n_0));
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
