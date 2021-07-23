-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jul 23 16:42:49 2021
-- Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/AXI_DDR_ZC706/AXI_DDR_ZC706.srcs/sources_1/bd/axi_ddr_design/ip/axi_ddr_design_ps_to_mig_interface_0_0/axi_ddr_design_ps_to_mig_interface_0_0_sim_netlist.vhdl
-- Design      : axi_ddr_design_ps_to_mig_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_ddr_design_ps_to_mig_interface_0_0_ps_to_mig_interface is
  port (
    s_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_wvalid : out STD_LOGIC;
    s_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arvalid : out STD_LOGIC;
    s_axi_rready : out STD_LOGIC;
    gpio_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_rvalid : out STD_LOGIC;
    gpio_resp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_resp_valid : out STD_LOGIC;
    s_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_debug_current_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aresetn_sync_out : out STD_LOGIC;
    aresetn_in : in STD_LOGIC;
    ui_clk_sync_rst : in STD_LOGIC;
    ui_clk : in STD_LOGIC;
    gpio_address : in STD_LOGIC_VECTOR ( 29 downto 0 );
    gpio_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    gpio_rdata_ack : in STD_LOGIC;
    gpio_resp_ack : in STD_LOGIC;
    gpio_wvalid : in STD_LOGIC;
    gpio_rready : in STD_LOGIC;
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_ddr_design_ps_to_mig_interface_0_0_ps_to_mig_interface : entity is "ps_to_mig_interface";
end axi_ddr_design_ps_to_mig_interface_0_0_ps_to_mig_interface;

architecture STRUCTURE of axi_ddr_design_ps_to_mig_interface_0_0_ps_to_mig_interface is
  signal \FSM_onehot_STATE[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[10]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[9]\ : STD_LOGIC;
  signal araddr_buffer : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \araddr_buffer__0\ : STD_LOGIC;
  signal aresetn_sync_out_i_1_n_0 : STD_LOGIC;
  signal awaddr_buffer : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \gpio_resp_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_resp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_resp_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal gpio_resp_valid_reg_i_1_n_0 : STD_LOGIC;
  signal gpio_rvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \rdata_buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \rdata_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \s_axi_araddr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_arvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \s_axi_awaddr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_awvalid_reg_i_1_n_0 : STD_LOGIC;
  signal wdata_buffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \wdata_buffer__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[6]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[0]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[10]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[1]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[2]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[3]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[4]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[5]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[6]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[7]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[8]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[9]\ : label is "write:00000001000,write_wait:00000010000,write_buffer:00000000100,read_resp:10000000000,idle:00000000010,reset:00000000001,read_buffer_data:01000000000,read:00010000000,read_wait:00100000000,read_buffer_addr:00001000000,write_resp:00000100000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \araddr_buffer_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \awaddr_buffer_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \gpio_debug_current_state[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gpio_debug_current_state[3]_INST_0\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rdata_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_resp_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \gpio_resp_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \gpio_resp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \gpio_resp_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gpio_resp_reg[1]_i_2\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of gpio_resp_valid_reg : label is "LD";
  attribute SOFT_HLUTNM of gpio_resp_valid_reg_i_1 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of gpio_rvalid_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[10]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[11]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[12]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[13]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[14]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[15]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[16]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[17]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[18]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[19]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[1]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[20]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[21]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[22]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[23]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[24]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[25]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[26]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[27]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[28]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[2]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[3]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[4]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[5]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[6]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[7]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[8]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[9]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of s_axi_arvalid_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_arvalid_reg_i_1 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[0]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[10]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[11]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[12]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[13]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[14]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[15]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[16]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[17]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[18]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[19]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[20]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[21]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[22]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[23]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[24]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[25]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[26]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[27]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[28]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[4]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[5]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[6]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[7]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[8]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[9]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of s_axi_awvalid_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_awvalid_reg_i_1 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of s_axi_rready_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wdata_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_wstrb_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wdata_buffer_reg[9]\ : label is "LD";
begin
\FSM_onehot_STATE[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \araddr_buffer__0\,
      I3 => \FSM_onehot_STATE[10]_i_2_n_0\,
      I4 => \FSM_onehot_STATE[10]_i_3_n_0\,
      I5 => \FSM_onehot_STATE[10]_i_4_n_0\,
      O => \FSM_onehot_STATE[10]_i_1_n_0\
    );
\FSM_onehot_STATE[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => s_axi_bvalid,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => s_axi_awready,
      I3 => s_axi_wready,
      I4 => \FSM_onehot_STATE_reg_n_0_[3]\,
      O => \FSM_onehot_STATE[10]_i_2_n_0\
    );
\FSM_onehot_STATE[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => s_axi_rvalid,
      I1 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I2 => gpio_rdata_ack,
      I3 => gpio_resp_ack,
      I4 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => \FSM_onehot_STATE[10]_i_3_n_0\
    );
\FSM_onehot_STATE[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \wdata_buffer__0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I3 => gpio_resp_ack,
      I4 => \FSM_onehot_STATE_reg_n_0_[9]\,
      O => \FSM_onehot_STATE[10]_i_4_n_0\
    );
\FSM_onehot_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I3 => gpio_wvalid,
      I4 => gpio_rready,
      I5 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => \FSM_onehot_STATE[1]_i_1_n_0\
    );
\FSM_onehot_STATE[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => gpio_rready,
      I2 => gpio_wvalid,
      O => \FSM_onehot_STATE[2]_i_1_n_0\
    );
\FSM_onehot_STATE[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => gpio_rready,
      I2 => gpio_wvalid,
      O => \FSM_onehot_STATE[6]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_STATE_reg_n_0_[0]\,
      S => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE_reg_n_0_[9]\,
      Q => \FSM_onehot_STATE_reg_n_0_[10]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE[1]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[1]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE[2]_i_1_n_0\,
      Q => \wdata_buffer__0\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \wdata_buffer__0\,
      Q => \FSM_onehot_STATE_reg_n_0_[3]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE_reg_n_0_[3]\,
      Q => \FSM_onehot_STATE_reg_n_0_[4]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE_reg_n_0_[4]\,
      Q => \FSM_onehot_STATE_reg_n_0_[5]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE[6]_i_1_n_0\,
      Q => \araddr_buffer__0\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \araddr_buffer__0\,
      Q => \FSM_onehot_STATE_reg_n_0_[7]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE_reg_n_0_[7]\,
      Q => \FSM_onehot_STATE_reg_n_0_[8]\,
      R => ui_clk_sync_rst
    );
\FSM_onehot_STATE_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \FSM_onehot_STATE[10]_i_1_n_0\,
      D => \FSM_onehot_STATE_reg_n_0_[8]\,
      Q => \FSM_onehot_STATE_reg_n_0_[9]\,
      R => ui_clk_sync_rst
    );
\araddr_buffer_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(0),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(0)
    );
\araddr_buffer_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(10),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(10)
    );
\araddr_buffer_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(11),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(11)
    );
\araddr_buffer_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(12),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(12)
    );
\araddr_buffer_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(13),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(13)
    );
\araddr_buffer_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(14),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(14)
    );
\araddr_buffer_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(15),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(15)
    );
\araddr_buffer_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(16),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(16)
    );
\araddr_buffer_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(17),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(17)
    );
\araddr_buffer_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(18),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(18)
    );
\araddr_buffer_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(19),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(19)
    );
\araddr_buffer_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(1),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(1)
    );
\araddr_buffer_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(20),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(20)
    );
\araddr_buffer_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(21),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(21)
    );
\araddr_buffer_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(22),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(22)
    );
\araddr_buffer_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(23),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(23)
    );
\araddr_buffer_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(24),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(24)
    );
\araddr_buffer_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(25),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(25)
    );
\araddr_buffer_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(26),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(26)
    );
\araddr_buffer_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(27),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(27)
    );
\araddr_buffer_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(28),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(28)
    );
\araddr_buffer_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(29),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(29)
    );
\araddr_buffer_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(2),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(2)
    );
\araddr_buffer_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(3),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(3)
    );
\araddr_buffer_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(4),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(4)
    );
\araddr_buffer_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(5),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(5)
    );
\araddr_buffer_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(6),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(6)
    );
\araddr_buffer_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(7),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(7)
    );
\araddr_buffer_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(8),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(8)
    );
\araddr_buffer_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(9),
      G => \araddr_buffer__0\,
      GE => '1',
      Q => araddr_buffer(9)
    );
aresetn_sync_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => aresetn_in,
      O => aresetn_sync_out_i_1_n_0
    );
aresetn_sync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => '1',
      D => aresetn_sync_out_i_1_n_0,
      Q => aresetn_sync_out,
      R => '0'
    );
\awaddr_buffer_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(0),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(0)
    );
\awaddr_buffer_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(10),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(10)
    );
\awaddr_buffer_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(11),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(11)
    );
\awaddr_buffer_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(12),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(12)
    );
\awaddr_buffer_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(13),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(13)
    );
\awaddr_buffer_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(14),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(14)
    );
\awaddr_buffer_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(15),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(15)
    );
\awaddr_buffer_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(16),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(16)
    );
\awaddr_buffer_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(17),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(17)
    );
\awaddr_buffer_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(18),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(18)
    );
\awaddr_buffer_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(19),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(19)
    );
\awaddr_buffer_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(1),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(1)
    );
\awaddr_buffer_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(20),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(20)
    );
\awaddr_buffer_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(21),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(21)
    );
\awaddr_buffer_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(22),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(22)
    );
\awaddr_buffer_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(23),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(23)
    );
\awaddr_buffer_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(24),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(24)
    );
\awaddr_buffer_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(25),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(25)
    );
\awaddr_buffer_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(26),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(26)
    );
\awaddr_buffer_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(27),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(27)
    );
\awaddr_buffer_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(28),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(28)
    );
\awaddr_buffer_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(29),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(29)
    );
\awaddr_buffer_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(2),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(2)
    );
\awaddr_buffer_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(3),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(3)
    );
\awaddr_buffer_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(4),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(4)
    );
\awaddr_buffer_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(5),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(5)
    );
\awaddr_buffer_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(6),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(6)
    );
\awaddr_buffer_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(7),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(7)
    );
\awaddr_buffer_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(8),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(8)
    );
\awaddr_buffer_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_address(9),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => awaddr_buffer(9)
    );
\gpio_debug_current_state[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => gpio_debug_current_state(0)
    );
\gpio_debug_current_state[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \wdata_buffer__0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I4 => \araddr_buffer__0\,
      O => gpio_debug_current_state(1)
    );
\gpio_debug_current_state[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \araddr_buffer__0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => gpio_debug_current_state(2)
    );
\gpio_debug_current_state[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => gpio_debug_current_state(3)
    );
\gpio_rdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[0]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(0)
    );
\gpio_rdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[10]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(10)
    );
\gpio_rdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[11]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(11)
    );
\gpio_rdata_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[12]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(12)
    );
\gpio_rdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[13]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(13)
    );
\gpio_rdata_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[14]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(14)
    );
\gpio_rdata_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[15]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(15)
    );
\gpio_rdata_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[16]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(16)
    );
\gpio_rdata_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[17]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(17)
    );
\gpio_rdata_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[18]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(18)
    );
\gpio_rdata_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[19]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(19)
    );
\gpio_rdata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[1]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(1)
    );
\gpio_rdata_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[20]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(20)
    );
\gpio_rdata_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[21]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(21)
    );
\gpio_rdata_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[22]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(22)
    );
\gpio_rdata_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[23]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(23)
    );
\gpio_rdata_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[24]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(24)
    );
\gpio_rdata_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[25]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(25)
    );
\gpio_rdata_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[26]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(26)
    );
\gpio_rdata_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[27]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(27)
    );
\gpio_rdata_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[28]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(28)
    );
\gpio_rdata_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[29]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(29)
    );
\gpio_rdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[2]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(2)
    );
\gpio_rdata_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[30]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(30)
    );
\gpio_rdata_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[31]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(31)
    );
\gpio_rdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[3]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(3)
    );
\gpio_rdata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[4]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(4)
    );
\gpio_rdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[5]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(5)
    );
\gpio_rdata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[6]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(6)
    );
\gpio_rdata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[7]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(7)
    );
\gpio_rdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[8]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(8)
    );
\gpio_rdata_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rdata_buffer_reg_n_0_[9]\,
      G => \FSM_onehot_STATE_reg_n_0_[10]\,
      GE => '1',
      Q => gpio_rdata(9)
    );
\gpio_resp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \gpio_resp_reg[0]_i_1_n_0\,
      G => \gpio_resp_reg[1]_i_2_n_0\,
      GE => '1',
      Q => gpio_resp(0)
    );
\gpio_resp_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bresp(0),
      I1 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I2 => s_axi_rresp(0),
      I3 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => \gpio_resp_reg[0]_i_1_n_0\
    );
\gpio_resp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \gpio_resp_reg[1]_i_1_n_0\,
      G => \gpio_resp_reg[1]_i_2_n_0\,
      GE => '1',
      Q => gpio_resp(1)
    );
\gpio_resp_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bresp(1),
      I1 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I2 => s_axi_rresp(1),
      I3 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => \gpio_resp_reg[1]_i_1_n_0\
    );
\gpio_resp_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => \gpio_resp_reg[1]_i_2_n_0\
    );
gpio_resp_valid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \gpio_resp_reg[1]_i_2_n_0\,
      G => gpio_resp_valid_reg_i_1_n_0,
      GE => '1',
      Q => gpio_resp_valid
    );
gpio_resp_valid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => gpio_resp_valid_reg_i_1_n_0
    );
gpio_rvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_STATE_reg_n_0_[10]\,
      G => gpio_rvalid_reg_i_1_n_0,
      GE => '1',
      Q => gpio_rvalid
    );
gpio_rvalid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[10]\,
      O => gpio_rvalid_reg_i_1_n_0
    );
\rdata_buffer[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_rvalid,
      I1 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I2 => ui_clk_sync_rst,
      O => \rdata_buffer[31]_i_1_n_0\
    );
\rdata_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(0),
      Q => \rdata_buffer_reg_n_0_[0]\,
      R => '0'
    );
\rdata_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(10),
      Q => \rdata_buffer_reg_n_0_[10]\,
      R => '0'
    );
\rdata_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(11),
      Q => \rdata_buffer_reg_n_0_[11]\,
      R => '0'
    );
\rdata_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(12),
      Q => \rdata_buffer_reg_n_0_[12]\,
      R => '0'
    );
\rdata_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(13),
      Q => \rdata_buffer_reg_n_0_[13]\,
      R => '0'
    );
\rdata_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(14),
      Q => \rdata_buffer_reg_n_0_[14]\,
      R => '0'
    );
\rdata_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(15),
      Q => \rdata_buffer_reg_n_0_[15]\,
      R => '0'
    );
\rdata_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(16),
      Q => \rdata_buffer_reg_n_0_[16]\,
      R => '0'
    );
\rdata_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(17),
      Q => \rdata_buffer_reg_n_0_[17]\,
      R => '0'
    );
\rdata_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(18),
      Q => \rdata_buffer_reg_n_0_[18]\,
      R => '0'
    );
\rdata_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(19),
      Q => \rdata_buffer_reg_n_0_[19]\,
      R => '0'
    );
\rdata_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(1),
      Q => \rdata_buffer_reg_n_0_[1]\,
      R => '0'
    );
\rdata_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(20),
      Q => \rdata_buffer_reg_n_0_[20]\,
      R => '0'
    );
\rdata_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(21),
      Q => \rdata_buffer_reg_n_0_[21]\,
      R => '0'
    );
\rdata_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(22),
      Q => \rdata_buffer_reg_n_0_[22]\,
      R => '0'
    );
\rdata_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(23),
      Q => \rdata_buffer_reg_n_0_[23]\,
      R => '0'
    );
\rdata_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(24),
      Q => \rdata_buffer_reg_n_0_[24]\,
      R => '0'
    );
\rdata_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(25),
      Q => \rdata_buffer_reg_n_0_[25]\,
      R => '0'
    );
\rdata_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(26),
      Q => \rdata_buffer_reg_n_0_[26]\,
      R => '0'
    );
\rdata_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(27),
      Q => \rdata_buffer_reg_n_0_[27]\,
      R => '0'
    );
\rdata_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(28),
      Q => \rdata_buffer_reg_n_0_[28]\,
      R => '0'
    );
\rdata_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(29),
      Q => \rdata_buffer_reg_n_0_[29]\,
      R => '0'
    );
\rdata_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(2),
      Q => \rdata_buffer_reg_n_0_[2]\,
      R => '0'
    );
\rdata_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(30),
      Q => \rdata_buffer_reg_n_0_[30]\,
      R => '0'
    );
\rdata_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(31),
      Q => \rdata_buffer_reg_n_0_[31]\,
      R => '0'
    );
\rdata_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(3),
      Q => \rdata_buffer_reg_n_0_[3]\,
      R => '0'
    );
\rdata_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(4),
      Q => \rdata_buffer_reg_n_0_[4]\,
      R => '0'
    );
\rdata_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(5),
      Q => \rdata_buffer_reg_n_0_[5]\,
      R => '0'
    );
\rdata_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(6),
      Q => \rdata_buffer_reg_n_0_[6]\,
      R => '0'
    );
\rdata_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(7),
      Q => \rdata_buffer_reg_n_0_[7]\,
      R => '0'
    );
\rdata_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(8),
      Q => \rdata_buffer_reg_n_0_[8]\,
      R => '0'
    );
\rdata_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ui_clk,
      CE => \rdata_buffer[31]_i_1_n_0\,
      D => s_axi_rdata(9),
      Q => \rdata_buffer_reg_n_0_[9]\,
      R => '0'
    );
\s_axi_araddr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[0]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(0)
    );
\s_axi_araddr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(0),
      O => \s_axi_araddr_reg[0]_i_1_n_0\
    );
\s_axi_araddr_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[10]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(10)
    );
\s_axi_araddr_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(10),
      O => \s_axi_araddr_reg[10]_i_1_n_0\
    );
\s_axi_araddr_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[11]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(11)
    );
\s_axi_araddr_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(11),
      O => \s_axi_araddr_reg[11]_i_1_n_0\
    );
\s_axi_araddr_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[12]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(12)
    );
\s_axi_araddr_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(12),
      O => \s_axi_araddr_reg[12]_i_1_n_0\
    );
\s_axi_araddr_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[13]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(13)
    );
\s_axi_araddr_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(13),
      O => \s_axi_araddr_reg[13]_i_1_n_0\
    );
\s_axi_araddr_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[14]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(14)
    );
\s_axi_araddr_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(14),
      O => \s_axi_araddr_reg[14]_i_1_n_0\
    );
\s_axi_araddr_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[15]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(15)
    );
\s_axi_araddr_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(15),
      O => \s_axi_araddr_reg[15]_i_1_n_0\
    );
\s_axi_araddr_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[16]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(16)
    );
\s_axi_araddr_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(16),
      O => \s_axi_araddr_reg[16]_i_1_n_0\
    );
\s_axi_araddr_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[17]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(17)
    );
\s_axi_araddr_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(17),
      O => \s_axi_araddr_reg[17]_i_1_n_0\
    );
\s_axi_araddr_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[18]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(18)
    );
\s_axi_araddr_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(18),
      O => \s_axi_araddr_reg[18]_i_1_n_0\
    );
\s_axi_araddr_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[19]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(19)
    );
\s_axi_araddr_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(19),
      O => \s_axi_araddr_reg[19]_i_1_n_0\
    );
\s_axi_araddr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[1]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(1)
    );
\s_axi_araddr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(1),
      O => \s_axi_araddr_reg[1]_i_1_n_0\
    );
\s_axi_araddr_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[20]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(20)
    );
\s_axi_araddr_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(20),
      O => \s_axi_araddr_reg[20]_i_1_n_0\
    );
\s_axi_araddr_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[21]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(21)
    );
\s_axi_araddr_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(21),
      O => \s_axi_araddr_reg[21]_i_1_n_0\
    );
\s_axi_araddr_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[22]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(22)
    );
\s_axi_araddr_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(22),
      O => \s_axi_araddr_reg[22]_i_1_n_0\
    );
\s_axi_araddr_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[23]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(23)
    );
\s_axi_araddr_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(23),
      O => \s_axi_araddr_reg[23]_i_1_n_0\
    );
\s_axi_araddr_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[24]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(24)
    );
\s_axi_araddr_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(24),
      O => \s_axi_araddr_reg[24]_i_1_n_0\
    );
\s_axi_araddr_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[25]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(25)
    );
\s_axi_araddr_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(25),
      O => \s_axi_araddr_reg[25]_i_1_n_0\
    );
\s_axi_araddr_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[26]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(26)
    );
\s_axi_araddr_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(26),
      O => \s_axi_araddr_reg[26]_i_1_n_0\
    );
\s_axi_araddr_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[27]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(27)
    );
\s_axi_araddr_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(27),
      O => \s_axi_araddr_reg[27]_i_1_n_0\
    );
\s_axi_araddr_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[28]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(28)
    );
\s_axi_araddr_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(28),
      O => \s_axi_araddr_reg[28]_i_1_n_0\
    );
\s_axi_araddr_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[29]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(29)
    );
\s_axi_araddr_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(29),
      O => \s_axi_araddr_reg[29]_i_1_n_0\
    );
\s_axi_araddr_reg[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[7]\,
      O => \s_axi_araddr_reg[29]_i_2_n_0\
    );
\s_axi_araddr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[2]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(2)
    );
\s_axi_araddr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(2),
      O => \s_axi_araddr_reg[2]_i_1_n_0\
    );
\s_axi_araddr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[3]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(3)
    );
\s_axi_araddr_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(3),
      O => \s_axi_araddr_reg[3]_i_1_n_0\
    );
\s_axi_araddr_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[4]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(4)
    );
\s_axi_araddr_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(4),
      O => \s_axi_araddr_reg[4]_i_1_n_0\
    );
\s_axi_araddr_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[5]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(5)
    );
\s_axi_araddr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(5),
      O => \s_axi_araddr_reg[5]_i_1_n_0\
    );
\s_axi_araddr_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[6]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(6)
    );
\s_axi_araddr_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(6),
      O => \s_axi_araddr_reg[6]_i_1_n_0\
    );
\s_axi_araddr_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[7]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(7)
    );
\s_axi_araddr_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(7),
      O => \s_axi_araddr_reg[7]_i_1_n_0\
    );
\s_axi_araddr_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[8]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(8)
    );
\s_axi_araddr_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(8),
      O => \s_axi_araddr_reg[8]_i_1_n_0\
    );
\s_axi_araddr_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_araddr_reg[9]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_araddr(9)
    );
\s_axi_araddr_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => araddr_buffer(9),
      O => \s_axi_araddr_reg[9]_i_1_n_0\
    );
s_axi_arvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_STATE_reg_n_0_[7]\,
      G => s_axi_arvalid_reg_i_1_n_0,
      GE => '1',
      Q => s_axi_arvalid
    );
s_axi_arvalid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[7]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[8]\,
      O => s_axi_arvalid_reg_i_1_n_0
    );
\s_axi_awaddr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[0]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(0)
    );
\s_axi_awaddr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(0),
      O => \s_axi_awaddr_reg[0]_i_1_n_0\
    );
\s_axi_awaddr_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[10]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(10)
    );
\s_axi_awaddr_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(10),
      O => \s_axi_awaddr_reg[10]_i_1_n_0\
    );
\s_axi_awaddr_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[11]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(11)
    );
\s_axi_awaddr_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(11),
      O => \s_axi_awaddr_reg[11]_i_1_n_0\
    );
\s_axi_awaddr_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[12]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(12)
    );
\s_axi_awaddr_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(12),
      O => \s_axi_awaddr_reg[12]_i_1_n_0\
    );
\s_axi_awaddr_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[13]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(13)
    );
\s_axi_awaddr_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(13),
      O => \s_axi_awaddr_reg[13]_i_1_n_0\
    );
\s_axi_awaddr_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[14]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(14)
    );
\s_axi_awaddr_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(14),
      O => \s_axi_awaddr_reg[14]_i_1_n_0\
    );
\s_axi_awaddr_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[15]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(15)
    );
\s_axi_awaddr_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(15),
      O => \s_axi_awaddr_reg[15]_i_1_n_0\
    );
\s_axi_awaddr_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[16]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(16)
    );
\s_axi_awaddr_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(16),
      O => \s_axi_awaddr_reg[16]_i_1_n_0\
    );
\s_axi_awaddr_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[17]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(17)
    );
\s_axi_awaddr_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(17),
      O => \s_axi_awaddr_reg[17]_i_1_n_0\
    );
\s_axi_awaddr_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[18]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(18)
    );
\s_axi_awaddr_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(18),
      O => \s_axi_awaddr_reg[18]_i_1_n_0\
    );
\s_axi_awaddr_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[19]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(19)
    );
\s_axi_awaddr_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(19),
      O => \s_axi_awaddr_reg[19]_i_1_n_0\
    );
\s_axi_awaddr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[1]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(1)
    );
\s_axi_awaddr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(1),
      O => \s_axi_awaddr_reg[1]_i_1_n_0\
    );
\s_axi_awaddr_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[20]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(20)
    );
\s_axi_awaddr_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(20),
      O => \s_axi_awaddr_reg[20]_i_1_n_0\
    );
\s_axi_awaddr_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[21]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(21)
    );
\s_axi_awaddr_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(21),
      O => \s_axi_awaddr_reg[21]_i_1_n_0\
    );
\s_axi_awaddr_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[22]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(22)
    );
\s_axi_awaddr_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(22),
      O => \s_axi_awaddr_reg[22]_i_1_n_0\
    );
\s_axi_awaddr_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[23]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(23)
    );
\s_axi_awaddr_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(23),
      O => \s_axi_awaddr_reg[23]_i_1_n_0\
    );
\s_axi_awaddr_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[24]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(24)
    );
\s_axi_awaddr_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(24),
      O => \s_axi_awaddr_reg[24]_i_1_n_0\
    );
\s_axi_awaddr_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[25]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(25)
    );
\s_axi_awaddr_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(25),
      O => \s_axi_awaddr_reg[25]_i_1_n_0\
    );
\s_axi_awaddr_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[26]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(26)
    );
\s_axi_awaddr_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(26),
      O => \s_axi_awaddr_reg[26]_i_1_n_0\
    );
\s_axi_awaddr_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[27]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(27)
    );
\s_axi_awaddr_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(27),
      O => \s_axi_awaddr_reg[27]_i_1_n_0\
    );
\s_axi_awaddr_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[28]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(28)
    );
\s_axi_awaddr_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(28),
      O => \s_axi_awaddr_reg[28]_i_1_n_0\
    );
\s_axi_awaddr_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[29]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(29)
    );
\s_axi_awaddr_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(29),
      O => \s_axi_awaddr_reg[29]_i_1_n_0\
    );
\s_axi_awaddr_reg[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      O => \s_axi_awaddr_reg[29]_i_2_n_0\
    );
\s_axi_awaddr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[2]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(2)
    );
\s_axi_awaddr_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(2),
      O => \s_axi_awaddr_reg[2]_i_1_n_0\
    );
\s_axi_awaddr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[3]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(3)
    );
\s_axi_awaddr_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(3),
      O => \s_axi_awaddr_reg[3]_i_1_n_0\
    );
\s_axi_awaddr_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[4]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(4)
    );
\s_axi_awaddr_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(4),
      O => \s_axi_awaddr_reg[4]_i_1_n_0\
    );
\s_axi_awaddr_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[5]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(5)
    );
\s_axi_awaddr_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(5),
      O => \s_axi_awaddr_reg[5]_i_1_n_0\
    );
\s_axi_awaddr_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[6]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(6)
    );
\s_axi_awaddr_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(6),
      O => \s_axi_awaddr_reg[6]_i_1_n_0\
    );
\s_axi_awaddr_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[7]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(7)
    );
\s_axi_awaddr_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(7),
      O => \s_axi_awaddr_reg[7]_i_1_n_0\
    );
\s_axi_awaddr_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[8]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(8)
    );
\s_axi_awaddr_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(8),
      O => \s_axi_awaddr_reg[8]_i_1_n_0\
    );
\s_axi_awaddr_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awaddr_reg[9]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awaddr(9)
    );
\s_axi_awaddr_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => awaddr_buffer(9),
      O => \s_axi_awaddr_reg[9]_i_1_n_0\
    );
s_axi_awvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_STATE_reg_n_0_[3]\,
      G => s_axi_awvalid_reg_i_1_n_0,
      GE => '1',
      Q => s_axi_wvalid
    );
s_axi_awvalid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[4]\,
      O => s_axi_awvalid_reg_i_1_n_0
    );
s_axi_rready_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_STATE_reg_n_0_[7]\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_rready
    );
\s_axi_wdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(0),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(0)
    );
\s_axi_wdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(10),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(10)
    );
\s_axi_wdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(11),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(11)
    );
\s_axi_wdata_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(12),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(12)
    );
\s_axi_wdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(13),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(13)
    );
\s_axi_wdata_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(14),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(14)
    );
\s_axi_wdata_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(15),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(15)
    );
\s_axi_wdata_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(16),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(16)
    );
\s_axi_wdata_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(17),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(17)
    );
\s_axi_wdata_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(18),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(18)
    );
\s_axi_wdata_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(19),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(19)
    );
\s_axi_wdata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(1),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(1)
    );
\s_axi_wdata_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(20),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(20)
    );
\s_axi_wdata_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(21),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(21)
    );
\s_axi_wdata_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(22),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(22)
    );
\s_axi_wdata_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(23),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(23)
    );
\s_axi_wdata_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(24),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(24)
    );
\s_axi_wdata_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(25),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(25)
    );
\s_axi_wdata_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(26),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(26)
    );
\s_axi_wdata_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(27),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(27)
    );
\s_axi_wdata_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(28),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(28)
    );
\s_axi_wdata_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(29),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(29)
    );
\s_axi_wdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(2),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(2)
    );
\s_axi_wdata_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(30),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(30)
    );
\s_axi_wdata_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(31),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(31)
    );
\s_axi_wdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(3),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(3)
    );
\s_axi_wdata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(4),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(4)
    );
\s_axi_wdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(5),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(5)
    );
\s_axi_wdata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(6),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(6)
    );
\s_axi_wdata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(7),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(7)
    );
\s_axi_wdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(8),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(8)
    );
\s_axi_wdata_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wdata_buffer(9),
      G => \FSM_onehot_STATE_reg_n_0_[3]\,
      GE => '1',
      Q => s_axi_wdata(9)
    );
\s_axi_wstrb_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_STATE_reg_n_0_[3]\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_wstrb(0)
    );
\wdata_buffer_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(0),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(0)
    );
\wdata_buffer_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(10),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(10)
    );
\wdata_buffer_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(11),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(11)
    );
\wdata_buffer_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(12),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(12)
    );
\wdata_buffer_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(13),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(13)
    );
\wdata_buffer_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(14),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(14)
    );
\wdata_buffer_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(15),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(15)
    );
\wdata_buffer_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(16),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(16)
    );
\wdata_buffer_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(17),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(17)
    );
\wdata_buffer_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(18),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(18)
    );
\wdata_buffer_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(19),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(19)
    );
\wdata_buffer_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(1),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(1)
    );
\wdata_buffer_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(20),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(20)
    );
\wdata_buffer_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(21),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(21)
    );
\wdata_buffer_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(22),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(22)
    );
\wdata_buffer_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(23),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(23)
    );
\wdata_buffer_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(24),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(24)
    );
\wdata_buffer_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(25),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(25)
    );
\wdata_buffer_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(26),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(26)
    );
\wdata_buffer_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(27),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(27)
    );
\wdata_buffer_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(28),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(28)
    );
\wdata_buffer_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(29),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(29)
    );
\wdata_buffer_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(2),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(2)
    );
\wdata_buffer_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(30),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(30)
    );
\wdata_buffer_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(31),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(31)
    );
\wdata_buffer_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(3),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(3)
    );
\wdata_buffer_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(4),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(4)
    );
\wdata_buffer_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(5),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(5)
    );
\wdata_buffer_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(6),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(6)
    );
\wdata_buffer_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(7),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(7)
    );
\wdata_buffer_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(8),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(8)
    );
\wdata_buffer_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(9),
      G => \wdata_buffer__0\,
      GE => '1',
      Q => wdata_buffer(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_ddr_design_ps_to_mig_interface_0_0 is
  port (
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
    gpio_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_wvalid : in STD_LOGIC;
    gpio_rready : in STD_LOGIC;
    gpio_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_rvalid : out STD_LOGIC;
    gpio_rdata_ack : in STD_LOGIC;
    gpio_resp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_resp_valid : out STD_LOGIC;
    gpio_resp_ack : in STD_LOGIC;
    gpio_debug_current_state : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aresetn_in : in STD_LOGIC;
    aresetn_sync_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_ddr_design_ps_to_mig_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_ddr_design_ps_to_mig_interface_0_0 : entity is "axi_ddr_design_ps_to_mig_interface_0_0,ps_to_mig_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_ddr_design_ps_to_mig_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of axi_ddr_design_ps_to_mig_interface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_ddr_design_ps_to_mig_interface_0_0 : entity is "ps_to_mig_interface,Vivado 2020.1";
end axi_ddr_design_ps_to_mig_interface_0_0;

architecture STRUCTURE of axi_ddr_design_ps_to_mig_interface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_rvalid : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 30, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of ui_clk : signal is "xilinx.com:signal:clock:1.0 ui_clk CLK";
  attribute X_INTERFACE_PARAMETER of ui_clk : signal is "XIL_INTERFACENAME ui_clk, ASSOCIATED_RESET ui_clk_sync_rst, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN axi_ddr_design_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ui_clk_sync_rst : signal is "xilinx.com:signal:reset:1.0 ui_clk_sync_rst RST";
  attribute X_INTERFACE_PARAMETER of ui_clk_sync_rst : signal is "XIL_INTERFACENAME ui_clk_sync_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 s_axi ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 s_axi ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 s_axi AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 s_axi AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 s_axi BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 s_axi RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_arburst(1) <= \<const0>\;
  s_axi_arburst(0) <= \<const0>\;
  s_axi_arcache(3) <= \<const0>\;
  s_axi_arcache(2) <= \<const0>\;
  s_axi_arcache(1) <= \<const0>\;
  s_axi_arcache(0) <= \<const0>\;
  s_axi_arid(3) <= \<const0>\;
  s_axi_arid(2) <= \<const0>\;
  s_axi_arid(1) <= \<const0>\;
  s_axi_arid(0) <= \<const0>\;
  s_axi_arlen(7) <= \<const0>\;
  s_axi_arlen(6) <= \<const0>\;
  s_axi_arlen(5) <= \<const0>\;
  s_axi_arlen(4) <= \<const0>\;
  s_axi_arlen(3) <= \<const0>\;
  s_axi_arlen(2) <= \<const0>\;
  s_axi_arlen(1) <= \<const0>\;
  s_axi_arlen(0) <= \<const0>\;
  s_axi_arlock <= \<const0>\;
  s_axi_arprot(2) <= \<const0>\;
  s_axi_arprot(1) <= \<const1>\;
  s_axi_arprot(0) <= \<const0>\;
  s_axi_arqos(3) <= \<const0>\;
  s_axi_arqos(2) <= \<const0>\;
  s_axi_arqos(1) <= \<const0>\;
  s_axi_arqos(0) <= \<const0>\;
  s_axi_arsize(2) <= \<const0>\;
  s_axi_arsize(1) <= \<const1>\;
  s_axi_arsize(0) <= \<const0>\;
  s_axi_awburst(1) <= \<const0>\;
  s_axi_awburst(0) <= \<const0>\;
  s_axi_awcache(3) <= \<const0>\;
  s_axi_awcache(2) <= \<const0>\;
  s_axi_awcache(1) <= \<const0>\;
  s_axi_awcache(0) <= \<const0>\;
  s_axi_awid(3) <= \<const0>\;
  s_axi_awid(2) <= \<const0>\;
  s_axi_awid(1) <= \<const0>\;
  s_axi_awid(0) <= \<const0>\;
  s_axi_awlen(7) <= \<const0>\;
  s_axi_awlen(6) <= \<const0>\;
  s_axi_awlen(5) <= \<const0>\;
  s_axi_awlen(4) <= \<const0>\;
  s_axi_awlen(3) <= \<const0>\;
  s_axi_awlen(2) <= \<const0>\;
  s_axi_awlen(1) <= \<const0>\;
  s_axi_awlen(0) <= \<const0>\;
  s_axi_awlock <= \<const0>\;
  s_axi_awprot(2) <= \<const0>\;
  s_axi_awprot(1) <= \<const1>\;
  s_axi_awprot(0) <= \<const0>\;
  s_axi_awqos(3) <= \<const0>\;
  s_axi_awqos(2) <= \<const0>\;
  s_axi_awqos(1) <= \<const0>\;
  s_axi_awqos(0) <= \<const0>\;
  s_axi_awsize(2) <= \<const0>\;
  s_axi_awsize(1) <= \<const1>\;
  s_axi_awsize(0) <= \<const0>\;
  s_axi_awvalid <= \^s_axi_wvalid\;
  s_axi_bready <= \^s_axi_wstrb\(2);
  s_axi_wlast <= \<const1>\;
  s_axi_wstrb(3) <= \^s_axi_wstrb\(2);
  s_axi_wstrb(2) <= \^s_axi_wstrb\(2);
  s_axi_wstrb(1) <= \^s_axi_wstrb\(2);
  s_axi_wstrb(0) <= \^s_axi_wstrb\(2);
  s_axi_wvalid <= \^s_axi_wvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.axi_ddr_design_ps_to_mig_interface_0_0_ps_to_mig_interface
     port map (
      aresetn_in => aresetn_in,
      aresetn_sync_out => aresetn_sync_out,
      gpio_address(29 downto 0) => gpio_address(29 downto 0),
      gpio_debug_current_state(3 downto 0) => gpio_debug_current_state(3 downto 0),
      gpio_rdata(31 downto 0) => gpio_rdata(31 downto 0),
      gpio_rdata_ack => gpio_rdata_ack,
      gpio_resp(1 downto 0) => gpio_resp(1 downto 0),
      gpio_resp_ack => gpio_resp_ack,
      gpio_resp_valid => gpio_resp_valid,
      gpio_rready => gpio_rready,
      gpio_rvalid => gpio_rvalid,
      gpio_wdata(31 downto 0) => gpio_wdata(31 downto 0),
      gpio_wvalid => gpio_wvalid,
      s_axi_araddr(29 downto 0) => s_axi_araddr(29 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(29 downto 0) => s_axi_awaddr(29 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(0) => \^s_axi_wstrb\(2),
      s_axi_wvalid => \^s_axi_wvalid\,
      ui_clk => ui_clk,
      ui_clk_sync_rst => ui_clk_sync_rst
    );
end STRUCTURE;
