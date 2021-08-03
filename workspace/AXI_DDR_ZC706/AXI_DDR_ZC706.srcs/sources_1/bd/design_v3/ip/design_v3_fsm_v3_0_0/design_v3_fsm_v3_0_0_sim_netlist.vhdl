-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Aug  3 18:05:38 2021
-- Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/AXI_DDR_ZC706/AXI_DDR_ZC706.srcs/sources_1/bd/design_v3/ip/design_v3_fsm_v3_0_0/design_v3_fsm_v3_0_0_sim_netlist.vhdl
-- Design      : design_v3_fsm_v3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_v3_fsm_v3_0_0_fifo is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_STATE_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ui_clk_sync_rst : in STD_LOGIC;
    rfifo_wr_en : in STD_LOGIC;
    rfifo_rd_en : in STD_LOGIC;
    \FSM_sequential_STATE_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_STATE_reg[0]_1\ : in STD_LOGIC;
    gpio_wreq : in STD_LOGIC;
    gpio_rreq : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_v3_fsm_v3_0_0_fifo : entity is "fifo";
end design_v3_fsm_v3_0_0_fifo;

architecture STRUCTURE of design_v3_fsm_v3_0_0_fifo is
  signal \FSM_sequential_STATE[0]_i_2_n_0\ : STD_LOGIC;
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \memory_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \memory_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \memory_reg_i_3__0_n_0\ : STD_LOGIC;
  signal nb_values11_out : STD_LOGIC;
  signal \nb_values[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \nb_values[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \nb_values[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \nb_values[6]_i_4__0_n_0\ : STD_LOGIC;
  signal nb_values_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \nb_values_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \nb_values_reg[6]_i_2__0_n_3\ : STD_LOGIC;
  signal \nb_values_reg[6]_i_2__0_n_6\ : STD_LOGIC;
  signal \nb_values_reg[6]_i_2__0_n_7\ : STD_LOGIC;
  signal read_add : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \read_add[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_add[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \read_add__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal write_add : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \write_add[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_add__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_nb_values_reg[6]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_nb_values_reg[6]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg : label is "inst/RFIFO/memory";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of memory_reg : label is "RAM_SDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg : label is 31;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of memory_reg : label is 448;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 31;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \nb_values_reg[4]_i_1__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \nb_values_reg[4]_i_1__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \nb_values_reg[6]_i_2__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \nb_values_reg[6]_i_2__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_add[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_add[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_add[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_add[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_add[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_add[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_add[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_add[4]_i_1\ : label is "soft_lutpair0";
begin
  WEBWE(0) <= \^webwe\(0);
\FSM_sequential_STATE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030B03000F0B03BB"
    )
        port map (
      I0 => \FSM_sequential_STATE[0]_i_2_n_0\,
      I1 => \FSM_sequential_STATE_reg[0]_0\(0),
      I2 => \FSM_sequential_STATE_reg[0]_0\(4),
      I3 => \FSM_sequential_STATE_reg[0]_0\(1),
      I4 => \FSM_sequential_STATE_reg[0]_0\(2),
      I5 => \FSM_sequential_STATE_reg[0]_0\(3),
      O => \FSM_sequential_STATE_reg[0]\(0)
    );
\FSM_sequential_STATE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF5151515151"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg[0]_1\,
      I1 => gpio_wreq,
      I2 => gpio_rreq,
      I3 => \memory_reg_i_3__0_n_0\,
      I4 => nb_values_reg(6),
      I5 => \FSM_sequential_STATE_reg[0]_0\(3),
      O => \FSM_sequential_STATE[0]_i_2_n_0\
    );
memory_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 5) => read_add(5 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 11) => B"111",
      ADDRBWRADDR(10 downto 5) => write_add(5 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => ui_clk,
      CLKBWRCLK => ui_clk,
      DIADI(15 downto 0) => Q(15 downto 0),
      DIBDI(15 downto 0) => Q(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => D(15 downto 0),
      DOBDO(15 downto 0) => D(31 downto 16),
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \memory_reg_i_1__0_n_0\,
      ENBWREN => \memory_reg_i_2__0_n_0\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => \^webwe\(0),
      WEBWE(2) => \^webwe\(0),
      WEBWE(1) => \^webwe\(0),
      WEBWE(0) => \^webwe\(0)
    );
\memory_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => \memory_reg_i_3__0_n_0\,
      I1 => nb_values_reg(6),
      I2 => ui_clk_sync_rst,
      I3 => rfifo_rd_en,
      O => \memory_reg_i_1__0_n_0\
    );
\memory_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F00"
    )
        port map (
      I0 => \memory_reg_i_3__0_n_0\,
      I1 => rfifo_rd_en,
      I2 => nb_values_reg(6),
      I3 => rfifo_wr_en,
      O => \memory_reg_i_2__0_n_0\
    );
memory_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ui_clk_sync_rst,
      O => \^webwe\(0)
    );
\memory_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => nb_values_reg(2),
      I1 => nb_values_reg(3),
      I2 => nb_values_reg(5),
      I3 => nb_values_reg(1),
      I4 => nb_values_reg(4),
      I5 => nb_values_reg(0),
      O => \memory_reg_i_3__0_n_0\
    );
\nb_values[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nb_values_reg(0),
      O => \nb_values[0]_i_1__0_n_0\
    );
\nb_values[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => rfifo_rd_en,
      I1 => nb_values_reg(6),
      I2 => rfifo_wr_en,
      O => nb_values11_out
    );
\nb_values[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(3),
      I1 => nb_values_reg(4),
      O => \nb_values[4]_i_3__0_n_0\
    );
\nb_values[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(2),
      I1 => nb_values_reg(3),
      O => \nb_values[4]_i_4__0_n_0\
    );
\nb_values[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(1),
      I1 => nb_values_reg(2),
      O => \nb_values[4]_i_5__0_n_0\
    );
\nb_values[4]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5559"
    )
        port map (
      I0 => nb_values_reg(1),
      I1 => rfifo_wr_en,
      I2 => nb_values_reg(6),
      I3 => rfifo_rd_en,
      O => \nb_values[4]_i_6__0_n_0\
    );
\nb_values[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E30"
    )
        port map (
      I0 => \memory_reg_i_3__0_n_0\,
      I1 => nb_values_reg(6),
      I2 => rfifo_wr_en,
      I3 => rfifo_rd_en,
      O => \nb_values[6]_i_1__0_n_0\
    );
\nb_values[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(5),
      I1 => nb_values_reg(6),
      O => \nb_values[6]_i_3__0_n_0\
    );
\nb_values[6]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(4),
      I1 => nb_values_reg(5),
      O => \nb_values[6]_i_4__0_n_0\
    );
\nb_values_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values[0]_i_1__0_n_0\,
      Q => nb_values_reg(0),
      R => ui_clk_sync_rst
    );
\nb_values_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values_reg[4]_i_1__0_n_7\,
      Q => nb_values_reg(1),
      R => ui_clk_sync_rst
    );
\nb_values_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values_reg[4]_i_1__0_n_6\,
      Q => nb_values_reg(2),
      R => ui_clk_sync_rst
    );
\nb_values_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values_reg[4]_i_1__0_n_5\,
      Q => nb_values_reg(3),
      R => ui_clk_sync_rst
    );
\nb_values_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values_reg[4]_i_1__0_n_4\,
      Q => nb_values_reg(4),
      R => ui_clk_sync_rst
    );
\nb_values_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nb_values_reg[4]_i_1__0_n_0\,
      CO(2) => \nb_values_reg[4]_i_1__0_n_1\,
      CO(1) => \nb_values_reg[4]_i_1__0_n_2\,
      CO(0) => \nb_values_reg[4]_i_1__0_n_3\,
      CYINIT => nb_values_reg(0),
      DI(3 downto 1) => nb_values_reg(3 downto 1),
      DI(0) => nb_values11_out,
      O(3) => \nb_values_reg[4]_i_1__0_n_4\,
      O(2) => \nb_values_reg[4]_i_1__0_n_5\,
      O(1) => \nb_values_reg[4]_i_1__0_n_6\,
      O(0) => \nb_values_reg[4]_i_1__0_n_7\,
      S(3) => \nb_values[4]_i_3__0_n_0\,
      S(2) => \nb_values[4]_i_4__0_n_0\,
      S(1) => \nb_values[4]_i_5__0_n_0\,
      S(0) => \nb_values[4]_i_6__0_n_0\
    );
\nb_values_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values_reg[6]_i_2__0_n_7\,
      Q => nb_values_reg(5),
      R => ui_clk_sync_rst
    );
\nb_values_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1__0_n_0\,
      D => \nb_values_reg[6]_i_2__0_n_6\,
      Q => nb_values_reg(6),
      R => ui_clk_sync_rst
    );
\nb_values_reg[6]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \nb_values_reg[4]_i_1__0_n_0\,
      CO(3 downto 1) => \NLW_nb_values_reg[6]_i_2__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \nb_values_reg[6]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => nb_values_reg(4),
      O(3 downto 2) => \NLW_nb_values_reg[6]_i_2__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \nb_values_reg[6]_i_2__0_n_6\,
      O(0) => \nb_values_reg[6]_i_2__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \nb_values[6]_i_3__0_n_0\,
      S(0) => \nb_values[6]_i_4__0_n_0\
    );
\read_add[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_add(0),
      O => \read_add[0]_i_1__0_n_0\
    );
\read_add[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_add(0),
      I1 => read_add(1),
      O => \read_add__0\(1)
    );
\read_add[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(0),
      I2 => read_add(1),
      O => \read_add__0\(2)
    );
\read_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(3),
      I2 => read_add(0),
      I3 => read_add(1),
      O => \read_add__0\(3)
    );
\read_add[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \memory_reg_i_3__0_n_0\,
      I1 => nb_values_reg(6),
      I2 => rfifo_rd_en,
      O => \read_add[4]_i_1__0_n_0\
    );
\read_add[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(3),
      I2 => read_add(0),
      I3 => read_add(1),
      I4 => read_add(4),
      O => \read_add__0\(4)
    );
\read_add[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(3),
      I2 => read_add(0),
      I3 => read_add(1),
      I4 => read_add(4),
      I5 => read_add(5),
      O => \read_add__0\(5)
    );
\read_add_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1__0_n_0\,
      D => \read_add[0]_i_1__0_n_0\,
      Q => read_add(0),
      R => ui_clk_sync_rst
    );
\read_add_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1__0_n_0\,
      D => \read_add__0\(1),
      Q => read_add(1),
      R => ui_clk_sync_rst
    );
\read_add_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1__0_n_0\,
      D => \read_add__0\(2),
      Q => read_add(2),
      R => ui_clk_sync_rst
    );
\read_add_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1__0_n_0\,
      D => \read_add__0\(3),
      Q => read_add(3),
      R => ui_clk_sync_rst
    );
\read_add_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1__0_n_0\,
      D => \read_add__0\(4),
      Q => read_add(4),
      R => ui_clk_sync_rst
    );
\read_add_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1__0_n_0\,
      D => \read_add__0\(5),
      Q => read_add(5),
      R => ui_clk_sync_rst
    );
\write_add[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_add(0),
      O => \write_add[0]_i_1__0_n_0\
    );
\write_add[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_add(0),
      I1 => write_add(1),
      O => \write_add__0\(1)
    );
\write_add[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(0),
      I2 => write_add(1),
      O => \write_add__0\(2)
    );
\write_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(3),
      I2 => write_add(0),
      I3 => write_add(1),
      O => \write_add__0\(3)
    );
\write_add[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(3),
      I2 => write_add(0),
      I3 => write_add(1),
      I4 => write_add(4),
      O => \write_add__0\(4)
    );
\write_add[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(3),
      I2 => write_add(0),
      I3 => write_add(1),
      I4 => write_add(4),
      I5 => write_add(5),
      O => \write_add__0\(5)
    );
\write_add_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \memory_reg_i_2__0_n_0\,
      D => \write_add[0]_i_1__0_n_0\,
      Q => write_add(0),
      R => ui_clk_sync_rst
    );
\write_add_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \memory_reg_i_2__0_n_0\,
      D => \write_add__0\(1),
      Q => write_add(1),
      R => ui_clk_sync_rst
    );
\write_add_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \memory_reg_i_2__0_n_0\,
      D => \write_add__0\(2),
      Q => write_add(2),
      R => ui_clk_sync_rst
    );
\write_add_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \memory_reg_i_2__0_n_0\,
      D => \write_add__0\(3),
      Q => write_add(3),
      R => ui_clk_sync_rst
    );
\write_add_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \memory_reg_i_2__0_n_0\,
      D => \write_add__0\(4),
      Q => write_add(4),
      R => ui_clk_sync_rst
    );
\write_add_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \memory_reg_i_2__0_n_0\,
      D => \write_add__0\(5),
      Q => write_add(5),
      R => ui_clk_sync_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_v3_fsm_v3_0_0_fifo_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    empty : out STD_LOGIC;
    ui_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : in STD_LOGIC;
    wfifo_wr_en : in STD_LOGIC;
    wfifo_rd_en : in STD_LOGIC;
    \FSM_sequential_STATE_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_STATE_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_STATE_reg[0]_1\ : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    gpio_rresp_ack : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_v3_fsm_v3_0_0_fifo_0 : entity is "fifo";
end design_v3_fsm_v3_0_0_fifo_0;

architecture STRUCTURE of design_v3_fsm_v3_0_0_fifo_0 is
  signal \FSM_sequential_STATE[4]_i_4_n_0\ : STD_LOGIC;
  signal memory_reg_i_1_n_0 : STD_LOGIC;
  signal memory_reg_i_2_n_0 : STD_LOGIC;
  signal nb_values11_out : STD_LOGIC;
  signal \nb_values[0]_i_1_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_3_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_4_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_5_n_0\ : STD_LOGIC;
  signal \nb_values[4]_i_6_n_0\ : STD_LOGIC;
  signal \nb_values[6]_i_1_n_0\ : STD_LOGIC;
  signal \nb_values[6]_i_3_n_0\ : STD_LOGIC;
  signal \nb_values[6]_i_4_n_0\ : STD_LOGIC;
  signal nb_values_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \nb_values_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \nb_values_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \nb_values_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \nb_values_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \nb_values_reg[6]_i_2_n_7\ : STD_LOGIC;
  signal read_add : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \read_add[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_add[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_add__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal s_axi_wlast_reg_i_2_n_0 : STD_LOGIC;
  signal write_add : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \write_add[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_add__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal NLW_memory_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_memory_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_nb_values_reg[6]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_nb_values_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of memory_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of memory_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of memory_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of memory_reg : label is "inst/WFIFO/memory";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of memory_reg : label is "RAM_SDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of memory_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of memory_reg : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of memory_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of memory_reg : label is 31;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of memory_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of memory_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of memory_reg : label is 448;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of memory_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of memory_reg : label is 31;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \nb_values_reg[4]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \nb_values_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \nb_values_reg[6]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \nb_values_reg[6]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_add[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_add[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_add[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_add[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_add[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_add[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_add[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_add[4]_i_1\ : label is "soft_lutpair4";
begin
\FSM_sequential_STATE[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABABABABABA"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg[0]\,
      I1 => \FSM_sequential_STATE_reg[0]_0\(4),
      I2 => \FSM_sequential_STATE_reg[0]_1\,
      I3 => \FSM_sequential_STATE_reg[0]_0\(0),
      I4 => \FSM_sequential_STATE_reg[0]_0\(1),
      I5 => \FSM_sequential_STATE[4]_i_4_n_0\,
      O => E(0)
    );
\FSM_sequential_STATE[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF001111F0F00000"
    )
        port map (
      I0 => nb_values_reg(6),
      I1 => s_axi_wlast_reg_i_2_n_0,
      I2 => s_axi_rvalid,
      I3 => gpio_rresp_ack,
      I4 => \FSM_sequential_STATE_reg[0]_0\(3),
      I5 => \FSM_sequential_STATE_reg[0]_0\(2),
      O => \FSM_sequential_STATE[4]_i_4_n_0\
    );
memory_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 11) => B"111",
      ADDRARDADDR(10 downto 5) => read_add(5 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(13 downto 11) => B"111",
      ADDRBWRADDR(10 downto 5) => write_add(5 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CLKARDCLK => ui_clk,
      CLKBWRCLK => ui_clk,
      DIADI(15 downto 0) => Q(15 downto 0),
      DIBDI(15 downto 0) => Q(31 downto 16),
      DIPADIP(1 downto 0) => B"11",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => D(15 downto 0),
      DOBDO(15 downto 0) => D(31 downto 16),
      DOPADOP(1 downto 0) => NLW_memory_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_memory_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => memory_reg_i_1_n_0,
      ENBWREN => memory_reg_i_2_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
memory_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => s_axi_wlast_reg_i_2_n_0,
      I1 => nb_values_reg(6),
      I2 => ui_clk_sync_rst,
      I3 => wfifo_rd_en,
      O => memory_reg_i_1_n_0
    );
memory_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F00"
    )
        port map (
      I0 => s_axi_wlast_reg_i_2_n_0,
      I1 => wfifo_rd_en,
      I2 => nb_values_reg(6),
      I3 => wfifo_wr_en,
      O => memory_reg_i_2_n_0
    );
\nb_values[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nb_values_reg(0),
      O => \nb_values[0]_i_1_n_0\
    );
\nb_values[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => wfifo_rd_en,
      I1 => nb_values_reg(6),
      I2 => wfifo_wr_en,
      O => nb_values11_out
    );
\nb_values[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(3),
      I1 => nb_values_reg(4),
      O => \nb_values[4]_i_3_n_0\
    );
\nb_values[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(2),
      I1 => nb_values_reg(3),
      O => \nb_values[4]_i_4_n_0\
    );
\nb_values[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(1),
      I1 => nb_values_reg(2),
      O => \nb_values[4]_i_5_n_0\
    );
\nb_values[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5559"
    )
        port map (
      I0 => nb_values_reg(1),
      I1 => wfifo_wr_en,
      I2 => nb_values_reg(6),
      I3 => wfifo_rd_en,
      O => \nb_values[4]_i_6_n_0\
    );
\nb_values[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E30"
    )
        port map (
      I0 => s_axi_wlast_reg_i_2_n_0,
      I1 => nb_values_reg(6),
      I2 => wfifo_wr_en,
      I3 => wfifo_rd_en,
      O => \nb_values[6]_i_1_n_0\
    );
\nb_values[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(5),
      I1 => nb_values_reg(6),
      O => \nb_values[6]_i_3_n_0\
    );
\nb_values[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nb_values_reg(4),
      I1 => nb_values_reg(5),
      O => \nb_values[6]_i_4_n_0\
    );
\nb_values_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values[0]_i_1_n_0\,
      Q => nb_values_reg(0),
      R => ui_clk_sync_rst
    );
\nb_values_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values_reg[4]_i_1_n_7\,
      Q => nb_values_reg(1),
      R => ui_clk_sync_rst
    );
\nb_values_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values_reg[4]_i_1_n_6\,
      Q => nb_values_reg(2),
      R => ui_clk_sync_rst
    );
\nb_values_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values_reg[4]_i_1_n_5\,
      Q => nb_values_reg(3),
      R => ui_clk_sync_rst
    );
\nb_values_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values_reg[4]_i_1_n_4\,
      Q => nb_values_reg(4),
      R => ui_clk_sync_rst
    );
\nb_values_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \nb_values_reg[4]_i_1_n_0\,
      CO(2) => \nb_values_reg[4]_i_1_n_1\,
      CO(1) => \nb_values_reg[4]_i_1_n_2\,
      CO(0) => \nb_values_reg[4]_i_1_n_3\,
      CYINIT => nb_values_reg(0),
      DI(3 downto 1) => nb_values_reg(3 downto 1),
      DI(0) => nb_values11_out,
      O(3) => \nb_values_reg[4]_i_1_n_4\,
      O(2) => \nb_values_reg[4]_i_1_n_5\,
      O(1) => \nb_values_reg[4]_i_1_n_6\,
      O(0) => \nb_values_reg[4]_i_1_n_7\,
      S(3) => \nb_values[4]_i_3_n_0\,
      S(2) => \nb_values[4]_i_4_n_0\,
      S(1) => \nb_values[4]_i_5_n_0\,
      S(0) => \nb_values[4]_i_6_n_0\
    );
\nb_values_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values_reg[6]_i_2_n_7\,
      Q => nb_values_reg(5),
      R => ui_clk_sync_rst
    );
\nb_values_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \nb_values[6]_i_1_n_0\,
      D => \nb_values_reg[6]_i_2_n_6\,
      Q => nb_values_reg(6),
      R => ui_clk_sync_rst
    );
\nb_values_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \nb_values_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_nb_values_reg[6]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \nb_values_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => nb_values_reg(4),
      O(3 downto 2) => \NLW_nb_values_reg[6]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \nb_values_reg[6]_i_2_n_6\,
      O(0) => \nb_values_reg[6]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \nb_values[6]_i_3_n_0\,
      S(0) => \nb_values[6]_i_4_n_0\
    );
\read_add[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_add(0),
      O => \read_add[0]_i_1_n_0\
    );
\read_add[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_add(0),
      I1 => read_add(1),
      O => \read_add__0\(1)
    );
\read_add[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(0),
      I2 => read_add(1),
      O => \read_add__0\(2)
    );
\read_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(3),
      I2 => read_add(0),
      I3 => read_add(1),
      O => \read_add__0\(3)
    );
\read_add[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => s_axi_wlast_reg_i_2_n_0,
      I1 => nb_values_reg(6),
      I2 => wfifo_rd_en,
      O => \read_add[4]_i_1_n_0\
    );
\read_add[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(3),
      I2 => read_add(0),
      I3 => read_add(1),
      I4 => read_add(4),
      O => \read_add__0\(4)
    );
\read_add[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_add(2),
      I1 => read_add(3),
      I2 => read_add(0),
      I3 => read_add(1),
      I4 => read_add(4),
      I5 => read_add(5),
      O => \read_add__0\(5)
    );
\read_add_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1_n_0\,
      D => \read_add[0]_i_1_n_0\,
      Q => read_add(0),
      R => ui_clk_sync_rst
    );
\read_add_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1_n_0\,
      D => \read_add__0\(1),
      Q => read_add(1),
      R => ui_clk_sync_rst
    );
\read_add_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1_n_0\,
      D => \read_add__0\(2),
      Q => read_add(2),
      R => ui_clk_sync_rst
    );
\read_add_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1_n_0\,
      D => \read_add__0\(3),
      Q => read_add(3),
      R => ui_clk_sync_rst
    );
\read_add_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1_n_0\,
      D => \read_add__0\(4),
      Q => read_add(4),
      R => ui_clk_sync_rst
    );
\read_add_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => \read_add[4]_i_1_n_0\,
      D => \read_add__0\(5),
      Q => read_add(5),
      R => ui_clk_sync_rst
    );
s_axi_wlast_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_wlast_reg_i_2_n_0,
      I1 => nb_values_reg(6),
      O => empty
    );
s_axi_wlast_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => nb_values_reg(2),
      I1 => nb_values_reg(3),
      I2 => nb_values_reg(5),
      I3 => nb_values_reg(1),
      I4 => nb_values_reg(4),
      I5 => nb_values_reg(0),
      O => s_axi_wlast_reg_i_2_n_0
    );
\write_add[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_add(0),
      O => \write_add[0]_i_1_n_0\
    );
\write_add[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_add(0),
      I1 => write_add(1),
      O => \write_add__0\(1)
    );
\write_add[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(0),
      I2 => write_add(1),
      O => \write_add__0\(2)
    );
\write_add[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(3),
      I2 => write_add(0),
      I3 => write_add(1),
      O => \write_add__0\(3)
    );
\write_add[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(3),
      I2 => write_add(0),
      I3 => write_add(1),
      I4 => write_add(4),
      O => \write_add__0\(4)
    );
\write_add[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_add(2),
      I1 => write_add(3),
      I2 => write_add(0),
      I3 => write_add(1),
      I4 => write_add(4),
      I5 => write_add(5),
      O => \write_add__0\(5)
    );
\write_add_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => memory_reg_i_2_n_0,
      D => \write_add[0]_i_1_n_0\,
      Q => write_add(0),
      R => ui_clk_sync_rst
    );
\write_add_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => memory_reg_i_2_n_0,
      D => \write_add__0\(1),
      Q => write_add(1),
      R => ui_clk_sync_rst
    );
\write_add_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => memory_reg_i_2_n_0,
      D => \write_add__0\(2),
      Q => write_add(2),
      R => ui_clk_sync_rst
    );
\write_add_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => memory_reg_i_2_n_0,
      D => \write_add__0\(3),
      Q => write_add(3),
      R => ui_clk_sync_rst
    );
\write_add_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => memory_reg_i_2_n_0,
      D => \write_add__0\(4),
      Q => write_add(4),
      R => ui_clk_sync_rst
    );
\write_add_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => memory_reg_i_2_n_0,
      D => \write_add__0\(5),
      Q => write_add(5),
      R => ui_clk_sync_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_v3_fsm_v3_0_0_fsm_v3 is
  port (
    s_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : out STD_LOGIC;
    s_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : out STD_LOGIC;
    s_axi_wvalid : out STD_LOGIC;
    s_axi_bready : out STD_LOGIC;
    s_axi_araddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : out STD_LOGIC;
    s_axi_rready : out STD_LOGIC;
    gpio_wfifo_ready : out STD_LOGIC;
    gpio_wresp_valid : out STD_LOGIC;
    gpio_wresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_rvalid : out STD_LOGIC;
    gpio_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_rresp_valid : out STD_LOGIC;
    gpio_debug_state : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ui_clk_sync_rst : in STD_LOGIC;
    ui_clk : in STD_LOGIC;
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : in STD_LOGIC;
    gpio_rresp_ack : in STD_LOGIC;
    gpio_wreq : in STD_LOGIC;
    gpio_rreq : in STD_LOGIC;
    gpio_wresp_ack : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    gpio_wack : in STD_LOGIC;
    gpio_rack : in STD_LOGIC;
    s_axi_rlast : in STD_LOGIC;
    gpio_wlast : in STD_LOGIC;
    gpio_rready : in STD_LOGIC;
    gpio_wvalid : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    gpio_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_awaddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    gpio_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_araddr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    gpio_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_v3_fsm_v3_0_0_fsm_v3 : entity is "fsm_v3";
end design_v3_fsm_v3_0_0_fsm_v3;

architecture STRUCTURE of design_v3_fsm_v3_0_0_fsm_v3 is
  signal \FSM_sequential_STATE[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STATE_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_sequential_STATE_reg_n_0_[3]\ : STD_LOGIC;
  signal RFIFO_n_32 : STD_LOGIC;
  signal STATE : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \STATE__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal WFIFO_n_32 : STD_LOGIC;
  signal empty : STD_LOGIC;
  signal \gpio_rdata_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \gpio_rresp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal gpio_rresp_valid_reg_i_1_n_0 : STD_LOGIC;
  signal gpio_rvalid_reg_i_1_n_0 : STD_LOGIC;
  signal gpio_wfifo_ready_reg_i_1_n_0 : STD_LOGIC;
  signal gpio_wfifo_ready_reg_i_2_n_0 : STD_LOGIC;
  signal \gpio_wresp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal gpio_wresp_valid_reg_i_1_n_0 : STD_LOGIC;
  signal rfifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rfifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rfifo_rd_en : STD_LOGIC;
  signal \rfifo_rd_en__0\ : STD_LOGIC;
  signal rfifo_rd_en_reg_i_2_n_0 : STD_LOGIC;
  signal rfifo_wr_en : STD_LOGIC;
  signal \rfifo_wr_en__0\ : STD_LOGIC;
  signal rfifo_wr_en_reg_i_2_n_0 : STD_LOGIC;
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
  signal \s_axi_arburst_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arburst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_arlen_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_arvalid_reg_i_1_n_0 : STD_LOGIC;
  signal s_axi_arvalid_reg_i_2_n_0 : STD_LOGIC;
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
  signal \s_axi_awburst_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awburst_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awlen_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_awvalid_reg_i_1_n_0 : STD_LOGIC;
  signal s_axi_awvalid_reg_i_2_n_0 : STD_LOGIC;
  signal s_axi_bready_reg_i_1_n_0 : STD_LOGIC;
  signal s_axi_bready_reg_i_2_n_0 : STD_LOGIC;
  signal s_axi_rready_reg_i_1_n_0 : STD_LOGIC;
  signal s_axi_rready_reg_i_2_n_0 : STD_LOGIC;
  signal \s_axi_wdata_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_wvalid_reg_i_1_n_0 : STD_LOGIC;
  signal wfifo_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \wfifo_din__0\ : STD_LOGIC;
  signal wfifo_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wfifo_rd_en : STD_LOGIC;
  signal \wfifo_rd_en__0\ : STD_LOGIC;
  signal wfifo_rd_en_reg_i_2_n_0 : STD_LOGIC;
  signal wfifo_wr_en : STD_LOGIC;
  signal \wfifo_wr_en__0\ : STD_LOGIC;
  signal wfifo_wr_en_reg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_STATE[0]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_STATE[1]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_STATE[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_STATE[4]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_STATE[4]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_STATE[4]_i_8\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[0]\ : label is "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[1]\ : label is "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[2]\ : label is "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[3]\ : label is "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STATE_reg[4]\ : label is "read_wait_ack:01111,read_fifo_2_gpio:01101,read_mem_wait_gpio:01100,write_fifo:00011,write_fifo_wait:00010,read_fifo_resp:01110,idle:00001,read_mem_2_fifo:01011,rst:00000,read_mem_wait:01010,write_mem:00110,first_write_mem:00101,read_addr_wait:01001,write_mem_resp:00111,awrite_mem_wait:00100,read_wait_ready:10000,write_fifo_wait_ack:01000";
  attribute SOFT_HLUTNM of \gpio_debug_state[0]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gpio_debug_state[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gpio_debug_state[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gpio_debug_state[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gpio_debug_state[4]_INST_0\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM : string;
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
  attribute XILINX_LEGACY_PRIM of \gpio_rresp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_rresp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of gpio_rresp_valid_reg : label is "LD";
  attribute SOFT_HLUTNM of gpio_rresp_valid_reg_i_1 : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of gpio_rvalid_reg : label is "LD";
  attribute SOFT_HLUTNM of gpio_rvalid_reg_i_1 : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of gpio_wfifo_ready_reg : label is "LD";
  attribute SOFT_HLUTNM of gpio_wfifo_ready_reg_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of gpio_wfifo_ready_reg_i_2 : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \gpio_wresp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \gpio_wresp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \gpio_wresp_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of gpio_wresp_valid_reg : label is "LD";
  attribute SOFT_HLUTNM of gpio_wresp_valid_reg_i_1 : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rfifo_din_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of rfifo_rd_en_reg : label is "LD";
  attribute SOFT_HLUTNM of rfifo_rd_en_reg_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of rfifo_rd_en_reg_i_2 : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of rfifo_wr_en_reg : label is "LD";
  attribute SOFT_HLUTNM of rfifo_wr_en_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of rfifo_wr_en_reg_i_2 : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[0]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[10]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[11]_i_1\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[12]_i_1\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[13]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[14]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[15]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[16]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[17]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[18]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[19]_i_1\ : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[1]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[20]_i_1\ : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[21]_i_1\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[22]_i_1\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[23]_i_1\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[24]_i_1\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[25]_i_1\ : label is "soft_lutpair47";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[26]_i_1\ : label is "soft_lutpair47";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[27]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[28]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[29]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[29]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[3]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[4]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[5]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[6]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[7]_i_1\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[8]_i_1\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of \s_axi_araddr_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_araddr_reg[9]_i_1\ : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM of \s_axi_arburst_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arburst_reg[0]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \s_axi_arburst_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arburst_reg[1]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[1]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[2]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[3]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[4]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[5]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[6]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \s_axi_arlen_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_arlen_reg[7]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of s_axi_arvalid_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_arvalid_reg_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of s_axi_arvalid_reg_i_2 : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[0]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[10]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[11]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[12]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[13]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[14]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[15]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[16]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[17]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[18]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[19]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[1]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[20]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[21]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[22]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[23]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[24]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[25]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[26]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[27]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[28]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[29]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[29]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[2]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[3]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[4]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[5]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[6]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[7]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[8]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \s_axi_awaddr_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awaddr_reg[9]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \s_axi_awburst_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awburst_reg[0]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \s_axi_awburst_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awburst_reg[1]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[0]_i_1\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[1]_i_1\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[2]_i_1\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[3]_i_1\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[4]_i_1\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[5]_i_1\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[6]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \s_axi_awlen_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \s_axi_awlen_reg[7]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of s_axi_awvalid_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_awvalid_reg_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of s_axi_awvalid_reg_i_2 : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of s_axi_bready_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_bready_reg_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_axi_bready_reg_i_2 : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of s_axi_rready_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_rready_reg_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of s_axi_rready_reg_i_2 : label is "soft_lutpair17";
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
  attribute XILINX_LEGACY_PRIM of s_axi_wlast_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of s_axi_wvalid_reg : label is "LD";
  attribute SOFT_HLUTNM of s_axi_wvalid_reg_i_1 : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wfifo_din_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of wfifo_rd_en_reg : label is "LD";
  attribute SOFT_HLUTNM of wfifo_rd_en_reg_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of wfifo_rd_en_reg_i_2 : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of wfifo_wr_en_reg : label is "LD";
  attribute SOFT_HLUTNM of wfifo_wr_en_reg_i_1 : label is "soft_lutpair13";
begin
\FSM_sequential_STATE[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => STATE(4),
      I1 => STATE(2),
      O => \FSM_sequential_STATE[0]_i_3_n_0\
    );
\FSM_sequential_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111005440544"
    )
        port map (
      I0 => STATE(4),
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => \FSM_sequential_STATE[1]_i_2_n_0\,
      I5 => \wfifo_wr_en__0\,
      O => \STATE__0\(1)
    );
\FSM_sequential_STATE[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gpio_wreq,
      I1 => gpio_rreq,
      O => \FSM_sequential_STATE[1]_i_2_n_0\
    );
\FSM_sequential_STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0508071805080710"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I1 => \wfifo_wr_en__0\,
      I2 => STATE(4),
      I3 => STATE(2),
      I4 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I5 => gpio_wlast,
      O => \STATE__0\(2)
    );
\FSM_sequential_STATE[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000112222F888"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => \FSM_sequential_STATE[3]_i_2_n_0\,
      I3 => \wfifo_wr_en__0\,
      I4 => STATE(2),
      I5 => STATE(4),
      O => \STATE__0\(3)
    );
\FSM_sequential_STATE[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBAAFA"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_wlast,
      I2 => gpio_rreq,
      I3 => gpio_wreq,
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => \FSM_sequential_STATE[3]_i_2_n_0\
    );
\FSM_sequential_STATE[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001000100010FFFF"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(2),
      I2 => gpio_rready,
      I3 => \FSM_sequential_STATE[4]_i_5_n_0\,
      I4 => STATE(4),
      I5 => \FSM_sequential_STATE[4]_i_6_n_0\,
      O => \FSM_sequential_STATE[4]_i_2_n_0\
    );
\FSM_sequential_STATE[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE00EE00EE0FEE00"
    )
        port map (
      I0 => \FSM_sequential_STATE[4]_i_7_n_0\,
      I1 => \FSM_sequential_STATE[4]_i_8_n_0\,
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => \wfifo_wr_en__0\,
      I4 => gpio_wack,
      I5 => STATE(2),
      O => \FSM_sequential_STATE[4]_i_3_n_0\
    );
\FSM_sequential_STATE[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I1 => \wfifo_wr_en__0\,
      O => \FSM_sequential_STATE[4]_i_5_n_0\
    );
\FSM_sequential_STATE[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF503F0FFF5F3F0"
    )
        port map (
      I0 => gpio_wvalid,
      I1 => s_axi_awready,
      I2 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I3 => STATE(2),
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I5 => gpio_rready,
      O => \FSM_sequential_STATE[4]_i_6_n_0\
    );
\FSM_sequential_STATE[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0ACFFF"
    )
        port map (
      I0 => s_axi_arready,
      I1 => gpio_wresp_ack,
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => STATE(2),
      I4 => \FSM_sequential_STATE_reg_n_0_[3]\,
      O => \FSM_sequential_STATE[4]_i_7_n_0\
    );
\FSM_sequential_STATE[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => gpio_rack,
      I1 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => s_axi_rlast,
      O => \FSM_sequential_STATE[4]_i_8_n_0\
    );
\FSM_sequential_STATE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => WFIFO_n_32,
      D => \STATE__0\(0),
      Q => \wfifo_wr_en__0\,
      R => ui_clk_sync_rst
    );
\FSM_sequential_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => WFIFO_n_32,
      D => \STATE__0\(1),
      Q => \FSM_sequential_STATE_reg_n_0_[1]\,
      R => ui_clk_sync_rst
    );
\FSM_sequential_STATE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => WFIFO_n_32,
      D => \STATE__0\(2),
      Q => STATE(2),
      R => ui_clk_sync_rst
    );
\FSM_sequential_STATE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => WFIFO_n_32,
      D => \STATE__0\(3),
      Q => \FSM_sequential_STATE_reg_n_0_[3]\,
      R => ui_clk_sync_rst
    );
\FSM_sequential_STATE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ui_clk,
      CE => WFIFO_n_32,
      D => \gpio_rdata_reg[31]_i_1_n_0\,
      Q => STATE(4),
      R => ui_clk_sync_rst
    );
RFIFO: entity work.design_v3_fsm_v3_0_0_fifo
     port map (
      D(31 downto 0) => rfifo_dout(31 downto 0),
      \FSM_sequential_STATE_reg[0]\(0) => \STATE__0\(0),
      \FSM_sequential_STATE_reg[0]_0\(4) => STATE(4),
      \FSM_sequential_STATE_reg[0]_0\(3) => \FSM_sequential_STATE_reg_n_0_[3]\,
      \FSM_sequential_STATE_reg[0]_0\(2) => STATE(2),
      \FSM_sequential_STATE_reg[0]_0\(1) => \FSM_sequential_STATE_reg_n_0_[1]\,
      \FSM_sequential_STATE_reg[0]_0\(0) => \wfifo_wr_en__0\,
      \FSM_sequential_STATE_reg[0]_1\ => \FSM_sequential_STATE[0]_i_3_n_0\,
      Q(31 downto 0) => rfifo_din(31 downto 0),
      WEBWE(0) => RFIFO_n_32,
      gpio_rreq => gpio_rreq,
      gpio_wreq => gpio_wreq,
      rfifo_rd_en => rfifo_rd_en,
      rfifo_wr_en => rfifo_wr_en,
      ui_clk => ui_clk,
      ui_clk_sync_rst => ui_clk_sync_rst
    );
WFIFO: entity work.design_v3_fsm_v3_0_0_fifo_0
     port map (
      D(31 downto 0) => wfifo_dout(31 downto 0),
      E(0) => WFIFO_n_32,
      \FSM_sequential_STATE_reg[0]\ => \FSM_sequential_STATE[4]_i_2_n_0\,
      \FSM_sequential_STATE_reg[0]_0\(4) => STATE(4),
      \FSM_sequential_STATE_reg[0]_0\(3) => \FSM_sequential_STATE_reg_n_0_[3]\,
      \FSM_sequential_STATE_reg[0]_0\(2) => STATE(2),
      \FSM_sequential_STATE_reg[0]_0\(1) => \FSM_sequential_STATE_reg_n_0_[1]\,
      \FSM_sequential_STATE_reg[0]_0\(0) => \wfifo_wr_en__0\,
      \FSM_sequential_STATE_reg[0]_1\ => \FSM_sequential_STATE[4]_i_3_n_0\,
      Q(31 downto 0) => wfifo_din(31 downto 0),
      WEBWE(0) => RFIFO_n_32,
      empty => empty,
      gpio_rresp_ack => gpio_rresp_ack,
      s_axi_rvalid => s_axi_rvalid,
      ui_clk => ui_clk,
      ui_clk_sync_rst => ui_clk_sync_rst,
      wfifo_rd_en => wfifo_rd_en,
      wfifo_wr_en => wfifo_wr_en
    );
\gpio_debug_state[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F5FFF0"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => STATE(4),
      I3 => \wfifo_wr_en__0\,
      I4 => STATE(2),
      O => gpio_debug_state(0)
    );
\gpio_debug_state[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFDFCCEC"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      I1 => STATE(4),
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => gpio_debug_state(1)
    );
\gpio_debug_state[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBFABAA"
    )
        port map (
      I0 => STATE(4),
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => \wfifo_wr_en__0\,
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => STATE(2),
      O => gpio_debug_state(2)
    );
\gpio_debug_state[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFEEAAA"
    )
        port map (
      I0 => STATE(4),
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => \wfifo_wr_en__0\,
      I3 => STATE(2),
      I4 => \FSM_sequential_STATE_reg_n_0_[3]\,
      O => gpio_debug_state(3)
    );
\gpio_debug_state[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => STATE(4),
      I1 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => \wfifo_wr_en__0\,
      O => gpio_debug_state(4)
    );
\gpio_rdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(0),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(0)
    );
\gpio_rdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(10),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(10)
    );
\gpio_rdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(11),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(11)
    );
\gpio_rdata_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(12),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(12)
    );
\gpio_rdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(13),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(13)
    );
\gpio_rdata_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(14),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(14)
    );
\gpio_rdata_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(15),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(15)
    );
\gpio_rdata_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(16),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(16)
    );
\gpio_rdata_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(17),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(17)
    );
\gpio_rdata_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(18),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(18)
    );
\gpio_rdata_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(19),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(19)
    );
\gpio_rdata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(1),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(1)
    );
\gpio_rdata_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(20),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(20)
    );
\gpio_rdata_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(21),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(21)
    );
\gpio_rdata_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(22),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(22)
    );
\gpio_rdata_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(23),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(23)
    );
\gpio_rdata_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(24),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(24)
    );
\gpio_rdata_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(25),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(25)
    );
\gpio_rdata_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(26),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(26)
    );
\gpio_rdata_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(27),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(27)
    );
\gpio_rdata_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(28),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(28)
    );
\gpio_rdata_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(29),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(29)
    );
\gpio_rdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(2),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(2)
    );
\gpio_rdata_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(30),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(30)
    );
\gpio_rdata_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(31),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(31)
    );
\gpio_rdata_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => STATE(4),
      I1 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I2 => STATE(2),
      I3 => \wfifo_wr_en__0\,
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => \gpio_rdata_reg[31]_i_1_n_0\
    );
\gpio_rdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(3),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(3)
    );
\gpio_rdata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(4),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(4)
    );
\gpio_rdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(5),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(5)
    );
\gpio_rdata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(6),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(6)
    );
\gpio_rdata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(7),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(7)
    );
\gpio_rdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(8),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(8)
    );
\gpio_rdata_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rfifo_dout(9),
      G => \gpio_rdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => gpio_rdata(9)
    );
\gpio_rresp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rresp(0),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => gpio_rresp(0)
    );
\gpio_rresp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rresp(1),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => gpio_rresp(1)
    );
\gpio_rresp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => STATE(4),
      I1 => STATE(2),
      I2 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I3 => \wfifo_wr_en__0\,
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => \gpio_rresp_reg[1]_i_1_n_0\
    );
gpio_rresp_valid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_STATE_reg_n_0_[3]\,
      G => gpio_rresp_valid_reg_i_1_n_0,
      GE => '1',
      Q => gpio_rresp_valid
    );
gpio_rresp_valid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400003"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      I1 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I2 => STATE(2),
      I3 => STATE(4),
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => gpio_rresp_valid_reg_i_1_n_0
    );
gpio_rvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_STATE_reg_n_0_[1]\,
      G => gpio_rvalid_reg_i_1_n_0,
      GE => '1',
      Q => gpio_rvalid
    );
gpio_rvalid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200003"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      I1 => STATE(4),
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => \FSM_sequential_STATE_reg_n_0_[3]\,
      O => gpio_rvalid_reg_i_1_n_0
    );
gpio_wfifo_ready_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wfifo_ready_reg_i_1_n_0,
      G => gpio_wfifo_ready_reg_i_2_n_0,
      GE => '1',
      Q => gpio_wfifo_ready
    );
gpio_wfifo_ready_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      O => gpio_wfifo_ready_reg_i_1_n_0
    );
gpio_wfifo_ready_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000026"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I1 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I2 => \wfifo_wr_en__0\,
      I3 => STATE(2),
      I4 => STATE(4),
      O => gpio_wfifo_ready_reg_i_2_n_0
    );
\gpio_wresp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_bresp(0),
      G => \gpio_wresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => gpio_wresp(0)
    );
\gpio_wresp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_bresp(1),
      G => \gpio_wresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => gpio_wresp(1)
    );
\gpio_wresp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => STATE(4),
      I1 => STATE(2),
      I2 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I3 => \wfifo_wr_en__0\,
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => \gpio_wresp_reg[1]_i_1_n_0\
    );
gpio_wresp_valid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wresp_valid_reg_i_1_n_0,
      G => s_axi_bready_reg_i_2_n_0,
      GE => '1',
      Q => gpio_wresp_valid
    );
gpio_wresp_valid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => s_axi_bvalid,
      O => gpio_wresp_valid_reg_i_1_n_0
    );
\rfifo_din_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(0),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(0)
    );
\rfifo_din_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(10),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(10)
    );
\rfifo_din_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(11),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(11)
    );
\rfifo_din_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(12),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(12)
    );
\rfifo_din_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(13),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(13)
    );
\rfifo_din_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(14),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(14)
    );
\rfifo_din_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(15),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(15)
    );
\rfifo_din_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(16),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(16)
    );
\rfifo_din_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(17),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(17)
    );
\rfifo_din_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(18),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(18)
    );
\rfifo_din_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(19),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(19)
    );
\rfifo_din_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(1),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(1)
    );
\rfifo_din_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(20),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(20)
    );
\rfifo_din_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(21),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(21)
    );
\rfifo_din_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(22),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(22)
    );
\rfifo_din_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(23),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(23)
    );
\rfifo_din_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(24),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(24)
    );
\rfifo_din_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(25),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(25)
    );
\rfifo_din_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(26),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(26)
    );
\rfifo_din_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(27),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(27)
    );
\rfifo_din_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(28),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(28)
    );
\rfifo_din_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(29),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(29)
    );
\rfifo_din_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(2),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(2)
    );
\rfifo_din_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(30),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(30)
    );
\rfifo_din_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(31),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(31)
    );
\rfifo_din_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(3),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(3)
    );
\rfifo_din_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(4),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(4)
    );
\rfifo_din_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(5),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(5)
    );
\rfifo_din_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(6),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(6)
    );
\rfifo_din_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(7),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(7)
    );
\rfifo_din_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(8),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(8)
    );
\rfifo_din_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rdata(9),
      G => \gpio_rresp_reg[1]_i_1_n_0\,
      GE => '1',
      Q => rfifo_din(9)
    );
rfifo_rd_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rfifo_rd_en__0\,
      G => rfifo_rd_en_reg_i_2_n_0,
      GE => '1',
      Q => rfifo_rd_en
    );
rfifo_rd_en_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => \rfifo_rd_en__0\
    );
rfifo_rd_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => STATE(4),
      I1 => STATE(2),
      I2 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => \wfifo_wr_en__0\,
      O => rfifo_rd_en_reg_i_2_n_0
    );
rfifo_wr_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rfifo_wr_en__0\,
      G => rfifo_wr_en_reg_i_2_n_0,
      GE => '1',
      Q => rfifo_wr_en
    );
rfifo_wr_en_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_rvalid,
      I1 => STATE(2),
      O => \rfifo_wr_en__0\
    );
rfifo_wr_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000040"
    )
        port map (
      I0 => STATE(4),
      I1 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => \wfifo_wr_en__0\,
      O => rfifo_wr_en_reg_i_2_n_0
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(0),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(10),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(11),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(12),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(13),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(14),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(15),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(16),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(17),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(18),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(19),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(1),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(20),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(21),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(22),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(23),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(24),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(25),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(26),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(27),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(28),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(29),
      O => \s_axi_araddr_reg[29]_i_1_n_0\
    );
\s_axi_araddr_reg[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010001"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(4),
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => \wfifo_wr_en__0\,
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(2),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(3),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(4),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(5),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(6),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(7),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(8),
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
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_araddr(9),
      O => \s_axi_araddr_reg[9]_i_1_n_0\
    );
\s_axi_arburst_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arburst_reg[0]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arburst(0)
    );
\s_axi_arburst_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arburst(0),
      O => \s_axi_arburst_reg[0]_i_1_n_0\
    );
\s_axi_arburst_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arburst_reg[1]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arburst(1)
    );
\s_axi_arburst_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arburst(1),
      O => \s_axi_arburst_reg[1]_i_1_n_0\
    );
\s_axi_arlen_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[0]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(0)
    );
\s_axi_arlen_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(0),
      O => \s_axi_arlen_reg[0]_i_1_n_0\
    );
\s_axi_arlen_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[1]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(1)
    );
\s_axi_arlen_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(1),
      O => \s_axi_arlen_reg[1]_i_1_n_0\
    );
\s_axi_arlen_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[2]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(2)
    );
\s_axi_arlen_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(2),
      O => \s_axi_arlen_reg[2]_i_1_n_0\
    );
\s_axi_arlen_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[3]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(3)
    );
\s_axi_arlen_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(3),
      O => \s_axi_arlen_reg[3]_i_1_n_0\
    );
\s_axi_arlen_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[4]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(4)
    );
\s_axi_arlen_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(4),
      O => \s_axi_arlen_reg[4]_i_1_n_0\
    );
\s_axi_arlen_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[5]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(5)
    );
\s_axi_arlen_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(5),
      O => \s_axi_arlen_reg[5]_i_1_n_0\
    );
\s_axi_arlen_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[6]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(6)
    );
\s_axi_arlen_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(6),
      O => \s_axi_arlen_reg[6]_i_1_n_0\
    );
\s_axi_arlen_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_arlen_reg[7]_i_1_n_0\,
      G => \s_axi_araddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_arlen(7)
    );
\s_axi_arlen_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => gpio_arlen(7),
      O => \s_axi_arlen_reg[7]_i_1_n_0\
    );
s_axi_arvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_arvalid_reg_i_1_n_0,
      G => s_axi_arvalid_reg_i_2_n_0,
      GE => '1',
      Q => s_axi_arvalid
    );
s_axi_arvalid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => s_axi_arvalid_reg_i_1_n_0
    );
s_axi_arvalid_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01100101"
    )
        port map (
      I0 => STATE(2),
      I1 => STATE(4),
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => \wfifo_wr_en__0\,
      I4 => \FSM_sequential_STATE_reg_n_0_[3]\,
      O => s_axi_arvalid_reg_i_2_n_0
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
      I0 => STATE(2),
      I1 => gpio_awaddr(0),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(10),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(11),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(12),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(13),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(14),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(15),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(16),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(17),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(18),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(19),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(1),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(20),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(21),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(22),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(23),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(24),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(25),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(26),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(27),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(28),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(29),
      O => \s_axi_awaddr_reg[29]_i_1_n_0\
    );
\s_axi_awaddr_reg[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(4),
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => \wfifo_wr_en__0\,
      I4 => STATE(2),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(2),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(3),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(4),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(5),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(6),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(7),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(8),
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
      I0 => STATE(2),
      I1 => gpio_awaddr(9),
      O => \s_axi_awaddr_reg[9]_i_1_n_0\
    );
\s_axi_awburst_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awburst_reg[0]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awburst(0)
    );
\s_axi_awburst_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awburst(0),
      O => \s_axi_awburst_reg[0]_i_1_n_0\
    );
\s_axi_awburst_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awburst_reg[1]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awburst(1)
    );
\s_axi_awburst_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awburst(1),
      O => \s_axi_awburst_reg[1]_i_1_n_0\
    );
\s_axi_awlen_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[0]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(0)
    );
\s_axi_awlen_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(0),
      O => \s_axi_awlen_reg[0]_i_1_n_0\
    );
\s_axi_awlen_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[1]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(1)
    );
\s_axi_awlen_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(1),
      O => \s_axi_awlen_reg[1]_i_1_n_0\
    );
\s_axi_awlen_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[2]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(2)
    );
\s_axi_awlen_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(2),
      O => \s_axi_awlen_reg[2]_i_1_n_0\
    );
\s_axi_awlen_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[3]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(3)
    );
\s_axi_awlen_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(3),
      O => \s_axi_awlen_reg[3]_i_1_n_0\
    );
\s_axi_awlen_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[4]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(4)
    );
\s_axi_awlen_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(4),
      O => \s_axi_awlen_reg[4]_i_1_n_0\
    );
\s_axi_awlen_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[5]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(5)
    );
\s_axi_awlen_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(5),
      O => \s_axi_awlen_reg[5]_i_1_n_0\
    );
\s_axi_awlen_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[6]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(6)
    );
\s_axi_awlen_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(6),
      O => \s_axi_awlen_reg[6]_i_1_n_0\
    );
\s_axi_awlen_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \s_axi_awlen_reg[7]_i_1_n_0\,
      G => \s_axi_awaddr_reg[29]_i_2_n_0\,
      GE => '1',
      Q => s_axi_awlen(7)
    );
\s_axi_awlen_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_awlen(7),
      O => \s_axi_awlen_reg[7]_i_1_n_0\
    );
s_axi_awvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_awvalid_reg_i_1_n_0,
      G => s_axi_awvalid_reg_i_2_n_0,
      GE => '1',
      Q => s_axi_awvalid
    );
s_axi_awvalid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => STATE(2),
      I1 => \wfifo_wr_en__0\,
      O => s_axi_awvalid_reg_i_1_n_0
    );
s_axi_awvalid_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(4),
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => s_axi_awvalid_reg_i_2_n_0
    );
s_axi_bready_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_bready_reg_i_1_n_0,
      G => s_axi_bready_reg_i_2_n_0,
      GE => '1',
      Q => s_axi_bready
    );
s_axi_bready_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STATE(2),
      I1 => gpio_wresp_ack,
      O => s_axi_bready_reg_i_1_n_0
    );
s_axi_bready_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000003"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      I1 => STATE(4),
      I2 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => STATE(2),
      O => s_axi_bready_reg_i_2_n_0
    );
s_axi_rready_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_rready_reg_i_1_n_0,
      G => s_axi_rready_reg_i_2_n_0,
      GE => '1',
      Q => s_axi_rready
    );
s_axi_rready_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(2),
      O => s_axi_rready_reg_i_1_n_0
    );
s_axi_rready_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10010401"
    )
        port map (
      I0 => STATE(4),
      I1 => STATE(2),
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => \wfifo_wr_en__0\,
      O => s_axi_rready_reg_i_2_n_0
    );
\s_axi_wdata_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(0),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(0)
    );
\s_axi_wdata_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(10),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(10)
    );
\s_axi_wdata_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(11),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(11)
    );
\s_axi_wdata_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(12),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(12)
    );
\s_axi_wdata_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(13),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(13)
    );
\s_axi_wdata_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(14),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(14)
    );
\s_axi_wdata_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(15),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(15)
    );
\s_axi_wdata_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(16),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(16)
    );
\s_axi_wdata_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(17),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(17)
    );
\s_axi_wdata_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(18),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(18)
    );
\s_axi_wdata_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(19),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(19)
    );
\s_axi_wdata_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(1),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(1)
    );
\s_axi_wdata_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(20),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(20)
    );
\s_axi_wdata_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(21),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(21)
    );
\s_axi_wdata_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(22),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(22)
    );
\s_axi_wdata_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(23),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(23)
    );
\s_axi_wdata_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(24),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(24)
    );
\s_axi_wdata_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(25),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(25)
    );
\s_axi_wdata_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(26),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(26)
    );
\s_axi_wdata_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(27),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(27)
    );
\s_axi_wdata_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(28),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(28)
    );
\s_axi_wdata_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(29),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(29)
    );
\s_axi_wdata_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(2),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(2)
    );
\s_axi_wdata_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(30),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(30)
    );
\s_axi_wdata_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(31),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(31)
    );
\s_axi_wdata_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => STATE(2),
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => STATE(4),
      O => \s_axi_wdata_reg[31]_i_1_n_0\
    );
\s_axi_wdata_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(3),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(3)
    );
\s_axi_wdata_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(4),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(4)
    );
\s_axi_wdata_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(5),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(5)
    );
\s_axi_wdata_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(6),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(6)
    );
\s_axi_wdata_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(7),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(7)
    );
\s_axi_wdata_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(8),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(8)
    );
\s_axi_wdata_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => wfifo_dout(9),
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wdata(9)
    );
s_axi_wlast_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => empty,
      G => \s_axi_wdata_reg[31]_i_1_n_0\,
      GE => '1',
      Q => s_axi_wlast
    );
s_axi_wvalid_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => s_axi_awvalid_reg_i_1_n_0,
      G => s_axi_wvalid_reg_i_1_n_0,
      GE => '1',
      Q => s_axi_wvalid
    );
s_axi_wvalid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(4),
      I2 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I3 => STATE(2),
      O => s_axi_wvalid_reg_i_1_n_0
    );
\wfifo_din_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(0),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(0)
    );
\wfifo_din_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(10),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(10)
    );
\wfifo_din_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(11),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(11)
    );
\wfifo_din_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(12),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(12)
    );
\wfifo_din_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(13),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(13)
    );
\wfifo_din_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(14),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(14)
    );
\wfifo_din_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(15),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(15)
    );
\wfifo_din_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(16),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(16)
    );
\wfifo_din_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(17),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(17)
    );
\wfifo_din_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(18),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(18)
    );
\wfifo_din_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(19),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(19)
    );
\wfifo_din_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(1),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(1)
    );
\wfifo_din_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(20),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(20)
    );
\wfifo_din_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(21),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(21)
    );
\wfifo_din_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(22),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(22)
    );
\wfifo_din_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(23),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(23)
    );
\wfifo_din_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(24),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(24)
    );
\wfifo_din_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(25),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(25)
    );
\wfifo_din_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(26),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(26)
    );
\wfifo_din_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(27),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(27)
    );
\wfifo_din_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(28),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(28)
    );
\wfifo_din_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(29),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(29)
    );
\wfifo_din_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(2),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(2)
    );
\wfifo_din_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(30),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(30)
    );
\wfifo_din_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(31),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(31)
    );
\wfifo_din_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => STATE(2),
      I1 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I2 => \wfifo_wr_en__0\,
      I3 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I4 => STATE(4),
      O => \wfifo_din__0\
    );
\wfifo_din_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(3),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(3)
    );
\wfifo_din_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(4),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(4)
    );
\wfifo_din_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(5),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(5)
    );
\wfifo_din_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(6),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(6)
    );
\wfifo_din_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(7),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(7)
    );
\wfifo_din_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(8),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(8)
    );
\wfifo_din_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => gpio_wdata(9),
      G => \wfifo_din__0\,
      GE => '1',
      Q => wfifo_din(9)
    );
wfifo_rd_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wfifo_rd_en__0\,
      G => wfifo_rd_en_reg_i_2_n_0,
      GE => '1',
      Q => wfifo_rd_en
    );
wfifo_rd_en_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wfifo_wr_en__0\,
      I1 => s_axi_wready,
      O => \wfifo_rd_en__0\
    );
wfifo_rd_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101000"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(4),
      I2 => STATE(2),
      I3 => \wfifo_wr_en__0\,
      I4 => \FSM_sequential_STATE_reg_n_0_[1]\,
      O => wfifo_rd_en_reg_i_2_n_0
    );
wfifo_wr_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wfifo_wr_en__0\,
      G => wfifo_wr_en_reg_i_1_n_0,
      GE => '1',
      Q => wfifo_wr_en
    );
wfifo_wr_en_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001106"
    )
        port map (
      I0 => \FSM_sequential_STATE_reg_n_0_[3]\,
      I1 => STATE(2),
      I2 => \wfifo_wr_en__0\,
      I3 => \FSM_sequential_STATE_reg_n_0_[1]\,
      I4 => STATE(4),
      O => wfifo_wr_en_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_v3_fsm_v3_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_v3_fsm_v3_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_v3_fsm_v3_0_0 : entity is "design_v3_fsm_v3_0_0,fsm_v3,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_v3_fsm_v3_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_v3_fsm_v3_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_v3_fsm_v3_0_0 : entity is "fsm_v3,Vivado 2020.1";
end design_v3_fsm_v3_0_0;

architecture STRUCTURE of design_v3_fsm_v3_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of ui_clk : signal is "XIL_INTERFACENAME ui_clk, ASSOCIATED_RESET ui_clk_sync_rst, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN design_v3_mig_7series_0_0_ui_clk, INSERT_VIP 0";
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
  s_axi_arcache(3) <= \<const0>\;
  s_axi_arcache(2) <= \<const0>\;
  s_axi_arcache(1) <= \<const0>\;
  s_axi_arcache(0) <= \<const0>\;
  s_axi_arid(3) <= \<const0>\;
  s_axi_arid(2) <= \<const0>\;
  s_axi_arid(1) <= \<const0>\;
  s_axi_arid(0) <= \<const0>\;
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
  s_axi_awcache(3) <= \<const0>\;
  s_axi_awcache(2) <= \<const0>\;
  s_axi_awcache(1) <= \<const0>\;
  s_axi_awcache(0) <= \<const0>\;
  s_axi_awid(3) <= \<const0>\;
  s_axi_awid(2) <= \<const0>\;
  s_axi_awid(1) <= \<const0>\;
  s_axi_awid(0) <= \<const0>\;
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
  s_axi_wstrb(3) <= \<const1>\;
  s_axi_wstrb(2) <= \<const1>\;
  s_axi_wstrb(1) <= \<const1>\;
  s_axi_wstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_v3_fsm_v3_0_0_fsm_v3
     port map (
      gpio_araddr(29 downto 0) => gpio_araddr(29 downto 0),
      gpio_arburst(1 downto 0) => gpio_arburst(1 downto 0),
      gpio_arlen(7 downto 0) => gpio_arlen(7 downto 0),
      gpio_awaddr(29 downto 0) => gpio_awaddr(29 downto 0),
      gpio_awburst(1 downto 0) => gpio_awburst(1 downto 0),
      gpio_awlen(7 downto 0) => gpio_awlen(7 downto 0),
      gpio_debug_state(4 downto 0) => gpio_debug_state(4 downto 0),
      gpio_rack => gpio_rack,
      gpio_rdata(31 downto 0) => gpio_rdata(31 downto 0),
      gpio_rready => gpio_rready,
      gpio_rreq => gpio_rreq,
      gpio_rresp(1 downto 0) => gpio_rresp(1 downto 0),
      gpio_rresp_ack => gpio_rresp_ack,
      gpio_rresp_valid => gpio_rresp_valid,
      gpio_rvalid => gpio_rvalid,
      gpio_wack => gpio_wack,
      gpio_wdata(31 downto 0) => gpio_wdata(31 downto 0),
      gpio_wfifo_ready => gpio_wfifo_ready,
      gpio_wlast => gpio_wlast,
      gpio_wreq => gpio_wreq,
      gpio_wresp(1 downto 0) => gpio_wresp(1 downto 0),
      gpio_wresp_ack => gpio_wresp_ack,
      gpio_wresp_valid => gpio_wresp_valid,
      gpio_wvalid => gpio_wvalid,
      s_axi_araddr(29 downto 0) => s_axi_araddr(29 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(29 downto 0) => s_axi_awaddr(29 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      ui_clk => ui_clk,
      ui_clk_sync_rst => ui_clk_sync_rst
    );
end STRUCTURE;
