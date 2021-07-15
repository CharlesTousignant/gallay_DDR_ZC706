-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Jul 15 09:53:22 2021
-- Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fsm_01_0_0_sim_netlist.vhdl
-- Design      : design_1_fsm_01_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_01 is
  port (
    ready : out STD_LOGIC;
    led : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 27 downto 0 );
    valid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_01;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_01 is
  signal \FSM_onehot_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[4]\ : STD_LOGIC;
  signal REG_VALID : STD_LOGIC;
  signal \REG_VALID__0\ : STD_LOGIC;
  signal REG_VALUE : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal ready_reg_i_1_n_0 : STD_LOGIC;
  signal ready_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[0]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[0]\ : label is "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[1]\ : label is "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[2]\ : label is "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[3]\ : label is "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[4]\ : label is "IDLE:00001,COMP:00100,GREATER:01000,LOWER:10000,WRITE_REG:00010";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of REG_VALID_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \REG_VALUE_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of led_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of ready_reg : label is "LD";
  attribute SOFT_HLUTNM of ready_reg_i_1 : label is "soft_lutpair0";
begin
\FSM_onehot_STATE[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => valid,
      O => \FSM_onehot_STATE[0]_i_1_n_0\
    );
\FSM_onehot_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F4F4F444"
    )
        port map (
      I0 => REG_VALID,
      I1 => \REG_VALID__0\,
      I2 => valid,
      I3 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I5 => \FSM_onehot_STATE_reg_n_0_[3]\,
      O => \FSM_onehot_STATE[1]_i_1_n_0\
    );
\FSM_onehot_STATE[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \REG_VALID__0\,
      I1 => REG_VALID,
      O => \FSM_onehot_STATE[2]_i_1_n_0\
    );
\FSM_onehot_STATE[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF444444444"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I2 => \FSM_onehot_STATE[4]_i_2_n_0\,
      I3 => \FSM_onehot_STATE[4]_i_3_n_0\,
      I4 => \FSM_onehot_STATE[4]_i_4_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[2]\,
      O => \FSM_onehot_STATE[3]_i_1_n_0\
    );
\FSM_onehot_STATE[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => \FSM_onehot_STATE[4]_i_2_n_0\,
      I3 => \FSM_onehot_STATE[4]_i_3_n_0\,
      I4 => \FSM_onehot_STATE[4]_i_4_n_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[2]\,
      O => \FSM_onehot_STATE[4]_i_1_n_0\
    );
\FSM_onehot_STATE[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
        port map (
      I0 => REG_VALUE(22),
      I1 => REG_VALUE(21),
      I2 => \FSM_onehot_STATE[4]_i_5_n_0\,
      I3 => REG_VALUE(8),
      I4 => REG_VALUE(9),
      O => \FSM_onehot_STATE[4]_i_2_n_0\
    );
\FSM_onehot_STATE[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE[4]_i_6_n_0\,
      I1 => REG_VALUE(31),
      I2 => REG_VALUE(17),
      I3 => REG_VALUE(18),
      O => \FSM_onehot_STATE[4]_i_3_n_0\
    );
\FSM_onehot_STATE[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE[4]_i_7_n_0\,
      I1 => \FSM_onehot_STATE[4]_i_8_n_0\,
      I2 => REG_VALUE(19),
      I3 => REG_VALUE(20),
      O => \FSM_onehot_STATE[4]_i_4_n_0\
    );
\FSM_onehot_STATE[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => REG_VALUE(6),
      I1 => REG_VALUE(7),
      I2 => REG_VALUE(4),
      I3 => REG_VALUE(5),
      I4 => REG_VALUE(10),
      O => \FSM_onehot_STATE[4]_i_5_n_0\
    );
\FSM_onehot_STATE[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => REG_VALUE(26),
      I1 => REG_VALUE(25),
      I2 => REG_VALUE(24),
      I3 => REG_VALUE(23),
      O => \FSM_onehot_STATE[4]_i_6_n_0\
    );
\FSM_onehot_STATE[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => REG_VALUE(30),
      I1 => REG_VALUE(29),
      I2 => REG_VALUE(28),
      I3 => REG_VALUE(27),
      O => \FSM_onehot_STATE[4]_i_7_n_0\
    );
\FSM_onehot_STATE[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => REG_VALUE(11),
      I1 => REG_VALUE(12),
      I2 => REG_VALUE(13),
      I3 => REG_VALUE(14),
      I4 => REG_VALUE(16),
      I5 => REG_VALUE(15),
      O => \FSM_onehot_STATE[4]_i_8_n_0\
    );
\FSM_onehot_STATE_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ready_reg_i_2_n_0,
      D => \FSM_onehot_STATE[0]_i_1_n_0\,
      PRE => reset,
      Q => \FSM_onehot_STATE_reg_n_0_[0]\
    );
\FSM_onehot_STATE_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ready_reg_i_2_n_0,
      CLR => reset,
      D => \FSM_onehot_STATE[1]_i_1_n_0\,
      Q => \REG_VALID__0\
    );
\FSM_onehot_STATE_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ready_reg_i_2_n_0,
      CLR => reset,
      D => \FSM_onehot_STATE[2]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[2]\
    );
\FSM_onehot_STATE_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ready_reg_i_2_n_0,
      CLR => reset,
      D => \FSM_onehot_STATE[3]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[3]\
    );
\FSM_onehot_STATE_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => ready_reg_i_2_n_0,
      CLR => reset,
      D => \FSM_onehot_STATE[4]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[4]\
    );
REG_VALID_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \REG_VALID__0\,
      G => ready_reg_i_2_n_0,
      GE => '1',
      Q => REG_VALID
    );
\REG_VALUE_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(6),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(10)
    );
\REG_VALUE_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(7),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(11)
    );
\REG_VALUE_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(8),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(12)
    );
\REG_VALUE_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(9),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(13)
    );
\REG_VALUE_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(10),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(14)
    );
\REG_VALUE_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(11),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(15)
    );
\REG_VALUE_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(12),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(16)
    );
\REG_VALUE_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(13),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(17)
    );
\REG_VALUE_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(14),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(18)
    );
\REG_VALUE_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(15),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(19)
    );
\REG_VALUE_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(16),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(20)
    );
\REG_VALUE_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(17),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(21)
    );
\REG_VALUE_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(18),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(22)
    );
\REG_VALUE_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(19),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(23)
    );
\REG_VALUE_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(20),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(24)
    );
\REG_VALUE_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(21),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(25)
    );
\REG_VALUE_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(22),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(26)
    );
\REG_VALUE_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(23),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(27)
    );
\REG_VALUE_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(24),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(28)
    );
\REG_VALUE_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(25),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(29)
    );
\REG_VALUE_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(26),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(30)
    );
\REG_VALUE_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(27),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(31)
    );
\REG_VALUE_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(0),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(4)
    );
\REG_VALUE_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(1),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(5)
    );
\REG_VALUE_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(2),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(6)
    );
\REG_VALUE_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(3),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(7)
    );
\REG_VALUE_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(4),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(8)
    );
\REG_VALUE_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => din(5),
      G => \REG_VALID__0\,
      GE => '1',
      Q => REG_VALUE(9)
    );
led_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_STATE_reg_n_0_[3]\,
      G => ready_reg_i_2_n_0,
      GE => '1',
      Q => led
    );
ready_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ready_reg_i_1_n_0,
      G => ready_reg_i_2_n_0,
      GE => '1',
      Q => ready
    );
ready_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[3]\,
      O => ready_reg_i_1_n_0
    );
ready_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I1 => \REG_VALID__0\,
      I2 => \FSM_onehot_STATE_reg_n_0_[3]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => ready_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    valid : in STD_LOGIC;
    ready : out STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_fsm_01_0_0,fsm_01,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fsm_01,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fsm_01
     port map (
      clk => clk,
      din(27 downto 0) => din(31 downto 4),
      led => led,
      ready => ready,
      reset => reset,
      valid => valid
    );
end STRUCTURE;
