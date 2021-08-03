-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Aug  3 10:46:53 2021
-- Host        : DESKTOP-J3N7B01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Projet/Desktop/Recherche/gallay_DDR_ZC706/workspace/AXI_DDR_ZC706/AXI_DDR_ZC706.srcs/sources_1/bd/design_v3/ip/design_v3_debounce_0_1/design_v3_debounce_0_1_stub.vhdl
-- Design      : design_v3_debounce_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_v3_debounce_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    button_in : in STD_LOGIC;
    button_out : out STD_LOGIC
  );

end design_v3_debounce_0_1;

architecture stub of design_v3_debounce_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,button_in,button_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "debounce,Vivado 2020.1";
begin
end;
