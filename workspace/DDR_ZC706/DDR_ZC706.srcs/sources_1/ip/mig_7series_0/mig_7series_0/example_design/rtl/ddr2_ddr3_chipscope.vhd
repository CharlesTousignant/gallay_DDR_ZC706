--*****************************************************************************
-- (c) Copyright 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--*****************************************************************************
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor                : Xilinx
-- \   \   \/     Version               : %version
--  \   \         Application           : MIG
--  /   /         Filename              : ddr2_ddr3_chipscope.vhd
-- /___/   /\     Date Last Modified    : $date$
-- \   \  /  \    Date Created          : Feb 08 2012
--  \___\/\___\
--
--Device            : 7-Series
--Design Name       : DDR2/3 SDRAM
--Purpose           : Chipscope cores declarations used if debug option is
--                    enabled in MIG when generating design. These are
--                    empty declarations to allow compilation to pass both in
--                    simulation and synthesis. The proper .ngc files must be
--                    referenced during the actual ISE build.
--Reference         :
--Revision History  :
--*****************************************************************************

library ieee;
use ieee.std_logic_1164.all;

package ddr2_ddr3_chipscope is

component mig_7series_v4_2_chk_win
  generic (
    TCQ                      : integer;
    nCK_PER_CLK              : integer;
    DLY_WIDTH                : integer;
    DQ_PER_DQS               : integer;
    DQ_WIDTH                 : integer;
    SC_WIDTH                 : integer;
    SDC_WIDTH                : integer;
    WIN_SIZE                 : integer;
    SIM_OPTION               : string
    );
  port (
    clk                    : in   std_logic;
    rst                    : in   std_logic;
    mem_pattern_init_done  : in   std_logic;
    win_start              : in   std_logic;
    win_sel_pi_pon         : in   std_logic;
    read_valid             : in   std_logic;
    win_bit_select         : in   std_logic_vector(6 downto 0);
    win_byte_select        : in   std_logic_vector(6 downto 0);
    cmp_data               : in   std_logic_vector(DQ_WIDTH*2*nCK_PER_CLK-1 downto 0);
    rd_data                : in   std_logic_vector(DQ_WIDTH*2*nCK_PER_CLK-1 downto 0);
    pi_curr_tap_cnt        : in   std_logic_vector(5 downto 0);
    po_curr_tap_cnt        : in   std_logic_vector(8 downto 0);
    pi_left_ram_out        : out  std_logic_vector(5 downto 0);
    pi_right_ram_out       : out  std_logic_vector(5 downto 0);
    po_left_ram_out        : out  std_logic_vector(8 downto 0);
    po_right_ram_out       : out  std_logic_vector(8 downto 0);
    win_active             : out  std_logic;
    win_clr_error          : out  std_logic;
    pi_win_up              : out  std_logic;
    pi_win_down            : out  std_logic;
    po_win_up              : out  std_logic;
    po_stg23_sel           : out  std_logic;
    po_win_down            : out  std_logic;
    po_win_tg_rst          : out  std_logic;
    win_current_bit        : out  std_logic_vector(6 downto 0);
    win_current_byte       : out  std_logic_vector(3 downto 0);
    dbg_win_chk            : out  std_logic_vector(164 downto 0);
    dbg_clear_error        : in   std_logic
    );
end component mig_7series_v4_2_chk_win;

component vio_twm_ddrx
  port (
    clk         : IN STD_LOGIC;
    probe_in0   : IN STD_LOGIC_VECTOR   (  0 DOWNTO 0);
    probe_in1   : IN STD_LOGIC_VECTOR   (  5 DOWNTO 0);
    probe_in2   : IN STD_LOGIC_VECTOR   (  5 DOWNTO 0);
    probe_in3   : IN STD_LOGIC_VECTOR   (  5 DOWNTO 0);
    probe_in4   : IN STD_LOGIC_VECTOR   (  0 DOWNTO 0);
    probe_in5   : IN STD_LOGIC_VECTOR   (164 DOWNTO 0);
    probe_in6   : IN STD_LOGIC_VECTOR   (  6 DOWNTO 0);
    probe_in7   : IN STD_LOGIC_VECTOR   (  3 DOWNTO 0);
    probe_in8   : IN STD_LOGIC_VECTOR   (  6 DOWNTO 0);
    probe_in9   : IN STD_LOGIC_VECTOR   (  8 DOWNTO 0);
    probe_in10  : IN STD_LOGIC_VECTOR   (  8 DOWNTO 0);
    probe_in11  : IN STD_LOGIC_VECTOR   (  8 DOWNTO 0);
    probe_in12  : IN STD_LOGIC_VECTOR   (  0 DOWNTO 0);
    probe_in13  : IN STD_LOGIC_VECTOR   (  0 DOWNTO 0);
    probe_in14  : IN STD_LOGIC_VECTOR   ( 47 DOWNTO 0);
    probe_in15  : IN STD_LOGIC_VECTOR   ( 47 DOWNTO 0);
    probe_out0  : OUT STD_LOGIC_VECTOR  (  8 DOWNTO 0);
    probe_out1  : OUT STD_LOGIC_VECTOR  (  4 DOWNTO 0);
    probe_out2  : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out3  : OUT STD_LOGIC_VECTOR  (  3 DOWNTO 0);
    probe_out4  : OUT STD_LOGIC_VECTOR  (  2 DOWNTO 0);
    probe_out5  : OUT STD_LOGIC_VECTOR  (  3 DOWNTO 0);
    probe_out6  : OUT STD_LOGIC_VECTOR  (  1 DOWNTO 0);
    probe_out7  : OUT STD_LOGIC_VECTOR  (  9 DOWNTO 0);
    probe_out8  : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out9  : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out10 : OUT STD_LOGIC_VECTOR  (  2 DOWNTO 0);
    probe_out11 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out12 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out13 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out14 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out15 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out16 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out17 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out18 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out19 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out20 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out21 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out22 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out23 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out24 : OUT STD_LOGIC_VECTOR  (  0 DOWNTO 0);
    probe_out25 : OUT STD_LOGIC_VECTOR  (  3 DOWNTO 0);
    probe_out26 : OUT STD_LOGIC_VECTOR  (  1 DOWNTO 0)
  );
end component;

component ila_ddr3_native
  port (
    clk        : IN STD_LOGIC;
    trig_out   : OUT STD_LOGIC;
    trig_out_ack : IN STD_LOGIC;
    probe0     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe1     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe2     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe3     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe4     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe5     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe6     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe7     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe8     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe9     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe10    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe11    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe12    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe13    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe14    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe15    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe16    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe17    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe18    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe19    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe20    : IN STD_LOGIC_VECTOR( 63 DOWNTO 0);
    probe21    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe22    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe23    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe24    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe25    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe26    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe27    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe28    : IN STD_LOGIC_VECTOR( 63 DOWNTO 0);
    probe29    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe30    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe31    : IN STD_LOGIC_VECTOR( 31 DOWNTO 0);
    probe32    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe33    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe34    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe35    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe36    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe37    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe38    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe39    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe40    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe41    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe42    : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe43    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe44    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe45    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe46    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe47    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe48    : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe49    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe50    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe51    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe52    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe53    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe54    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe55    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe56    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe57    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe58    : IN STD_LOGIC_VECTOR( 53 DOWNTO 0);
    probe59    : IN STD_LOGIC_VECTOR( 26 DOWNTO 0);
    probe60    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe61    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe62    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe63    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe64    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe65    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe66    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe67    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe68    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe69    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe70    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe71    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe72    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe73    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe74    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe75    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe76    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe77    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe78    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe79    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe80    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe81    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe82    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe83    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe84    : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe85    : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe86    : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe87    : IN STD_LOGIC_VECTOR( 89 DOWNTO 0);
    probe88    : IN STD_LOGIC_VECTOR( 47 DOWNTO 0);
    probe89    : IN STD_LOGIC_VECTOR( 15 DOWNTO 0);
    probe90    : IN STD_LOGIC_VECTOR( 47 DOWNTO 0);
    probe91    : IN STD_LOGIC_VECTOR( 15 DOWNTO 0);
    probe92    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe93    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe94    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe95    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe96    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe97    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe98    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe99    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe100   : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe101   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe102   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe103   : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe104   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe105   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe106   : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe107   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe108   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe109   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe110   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe111   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe112   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe113   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe114   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe115   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe116   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe117   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe118   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe119   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe120   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe121   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe122   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe123   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe124   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe125   : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe126   : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe127   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe128   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe129   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe130   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe131   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0); 
    probe132   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0); 
    probe133   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0); 
    probe134   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe135   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe136   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe137   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe138   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe139   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe140   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe141   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe142   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe143   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe144   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe145   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe146   : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe147   : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe148   : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe149   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe150   : IN STD_LOGIC_VECTOR( 53 DOWNTO 0);
    probe151   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe152   : IN STD_LOGIC_VECTOR( 11 DOWNTO 0)
  );
end component;

component ila_ddr2_native
  port (
    clk        : IN STD_LOGIC;
    trig_out   : OUT STD_LOGIC;
    trig_out_ack : IN STD_LOGIC;
    probe0     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe1     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe2     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe3     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe4     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe5     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe6     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe7     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe8     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe9     : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe10    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe11    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe12    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe13    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe14    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe15    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe16    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe17    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe18    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe19    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe20    : IN STD_LOGIC_VECTOR( 63 DOWNTO 0);
    probe21    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe22    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe23    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe24    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe25    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe26    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe27    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe28    : IN STD_LOGIC_VECTOR( 63 DOWNTO 0);
    probe29    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe30    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe31    : IN STD_LOGIC_VECTOR( 31 DOWNTO 0);
    probe32    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe33    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe34    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe35    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe36    : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe37    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe38    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe39    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe40    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe41    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe42    : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe43    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe44    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe45    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe46    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe47    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe48    : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe49    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe50    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe51    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe52    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe53    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe54    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe55    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe56    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe57    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe58    : IN STD_LOGIC_VECTOR( 53 DOWNTO 0);
    probe59    : IN STD_LOGIC_VECTOR( 26 DOWNTO 0);
    probe60    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe61    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe62    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe63    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe64    : IN STD_LOGIC_VECTOR(  3 DOWNTO 0);
    probe65    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe66    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe67    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe68    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe69    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe70    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe71    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe72    : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe73    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe74    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe75    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe76    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe77    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe78    : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe79    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe80    : IN STD_LOGIC_VECTOR( 11 DOWNTO 0);
    probe81    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe82    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe83    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe84    : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe85    : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe86    : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe87    : IN STD_LOGIC_VECTOR( 89 DOWNTO 0);
    probe88    : IN STD_LOGIC_VECTOR( 47 DOWNTO 0);
    probe89    : IN STD_LOGIC_VECTOR( 15 DOWNTO 0);
    probe90    : IN STD_LOGIC_VECTOR( 47 DOWNTO 0);
    probe91    : IN STD_LOGIC_VECTOR( 15 DOWNTO 0);
    probe92    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe93    : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe94    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe95    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe96    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe97    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe98    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe99    : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe100   : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe101   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe102   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe103   : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe104   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe105   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe106   : IN STD_LOGIC_VECTOR(  2 DOWNTO 0);
    probe107   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe108   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe109   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe110   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe111   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe112   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe113   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe114   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe115   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe116   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe117   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe118   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe119   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe120   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe121   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe122   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe123   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe124   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0);
    probe125   : IN STD_LOGIC_VECTOR(  4 DOWNTO 0);
    probe126   : IN STD_LOGIC_VECTOR(  1 DOWNTO 0);
    probe127   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe128   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe129   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe130   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe131   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0); 
    probe132   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0); 
    probe133   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0); 
    probe134   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe135   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe136   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe137   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe138   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe139   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe140   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe141   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe142   : IN STD_LOGIC_VECTOR(  7 DOWNTO 0);
    probe143   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe144   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe145   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe146   : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe147   : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe148   : IN STD_LOGIC_VECTOR(107 DOWNTO 0);
    probe149   : IN STD_LOGIC_VECTOR(  0 DOWNTO 0);
    probe150   : IN STD_LOGIC_VECTOR( 53 DOWNTO 0);
    probe151   : IN STD_LOGIC_VECTOR(  5 DOWNTO 0)
  );
end component;

end package ddr2_ddr3_chipscope;

