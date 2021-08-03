-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Aug  3 18:05:38 2021
-- Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/AXI_DDR_ZC706/AXI_DDR_ZC706.srcs/sources_1/bd/design_v3/ip/design_v3_fsm_v3_0_0/design_v3_fsm_v3_0_0_stub.vhdl
-- Design      : design_v3_fsm_v3_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_v3_fsm_v3_0_0 is
  Port ( 
    ui_clk : in STD_LOGIC;
    ui_clk_sync_rst : in STD_LOGIC;
    s_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : out STD_LOGIC;
    s_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : out STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    s_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : out STD_LOGIC;
    s_axi_wvalid : out STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    s_axi_bready : out STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC;
    s_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : out STD_LOGIC;
    s_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : out STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_rready : out STD_LOGIC;
    s_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    gpio_wreq : in STD_LOGIC;
    gpio_rreq : in STD_LOGIC;
    gpio_wvalid : in STD_LOGIC;
    gpio_wlast : in STD_LOGIC;
    gpio_wack : in STD_LOGIC;
    gpio_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_awlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_awburst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_wfifo_ready : out STD_LOGIC;
    gpio_wresp_valid : out STD_LOGIC;
    gpio_wresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_wresp_ack : in STD_LOGIC;
    gpio_rready : in STD_LOGIC;
    gpio_rack : in STD_LOGIC;
    gpio_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_arburst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rvalid : out STD_LOGIC;
    gpio_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_rresp_valid : out STD_LOGIC;
    gpio_rresp_ack : in STD_LOGIC;
    gpio_debug_state : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end design_v3_fsm_v3_0_0;

architecture stub of design_v3_fsm_v3_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ui_clk,ui_clk_sync_rst,s_axi_awid[3:0],s_axi_awaddr[29:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock,s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awqos[3:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_arid[3:0],s_axi_araddr[29:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock,s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arqos[3:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rid[3:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,gpio_wreq,gpio_rreq,gpio_wvalid,gpio_wlast,gpio_wack,gpio_awaddr[31:0],gpio_wdata[31:0],gpio_awlen[31:0],gpio_awburst[31:0],gpio_wfifo_ready,gpio_wresp_valid,gpio_wresp[1:0],gpio_wresp_ack,gpio_rready,gpio_rack,gpio_araddr[31:0],gpio_arlen[31:0],gpio_arburst[31:0],gpio_rresp[1:0],gpio_rvalid,gpio_rdata[31:0],gpio_rresp_valid,gpio_rresp_ack,gpio_debug_state[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fsm_v3,Vivado 2020.1";
begin
end;
