--*****************************************************************************
-- (c) Copyright 2009 - 2012 Xilinx, Inc. All rights reserved.
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
-- /___/  \  /    Vendor             : Xilinx
-- \   \   \/     Version            : 4.2
--  \   \         Application        : MIG
--  /   /         Filename           : example_top.vhd
-- /___/   /\     Date Last Modified : $Date: 2011/06/02 08:35:03 $
-- \   \  /  \    Date Created       : Wed Feb 01 2012
--  \___\/\___\
--
-- Device           : 7 Series
-- Design Name      : DDR3 SDRAM
-- Purpose          :
--   Top-level  module. This module serves as an example,
--   and allows the user to synthesize a self-contained design,
--   which they can be used to test their hardware.
--   In addition to the memory controller, the module instantiates:
--     1. Synthesizable testbench - used to model user's backend logic
--        and generate different traffic patterns
-- Reference        :
-- Revision History :
--*****************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ddr2_ddr3_chipscope.all;

entity example_top is
  generic (
   --***************************************************************************
   -- Traffic Gen related parameters
   --***************************************************************************
   BL_WIDTH              : integer := 10;
   PORT_MODE             : string  := "BI_MODE";
   DATA_MODE             : std_logic_vector(3 downto 0) := "0010";
   TST_MEM_INSTR_MODE    : string  := "R_W_INSTR_MODE";
   EYE_TEST              : string  := "FALSE";
                                     -- set EYE_TEST = "TRUE" to probe memory
                                     -- signals. Traffic Generator will only
                                     -- write to one single location and no
                                     -- read transactions will be generated.
   DATA_PATTERN          : string  := "DGEN_ALL";
                                      -- For small devices, choose one only.
                                      -- For large device, choose "DGEN_ALL"
                                      -- "DGEN_HAMMER", "DGEN_WALKING1",
                                      -- "DGEN_WALKING0","DGEN_ADDR","
                                      -- "DGEN_NEIGHBOR","DGEN_PRBS","DGEN_ALL"
   CMD_PATTERN           : string  := "CGEN_ALL";
                                      -- "CGEN_PRBS","CGEN_FIXED","CGEN_BRAM",
                                      -- "CGEN_SEQUENTIAL", "CGEN_ALL"
   BEGIN_ADDRESS         : std_logic_vector(31 downto 0) := X"00000000";
   END_ADDRESS           : std_logic_vector(31 downto 0) := X"00ffffff";
   PRBS_EADDR_MASK_POS   : std_logic_vector(31 downto 0) := X"ff000000";
   CMD_WDT               : std_logic_vector(31 downto 0) := X"000003ff";
   WR_WDT                : std_logic_vector(31 downto 0) := X"00001fff";
   RD_WDT                : std_logic_vector(31 downto 0) := X"000003ff";
   --***************************************************************************
   -- The following parameters refer to width of various ports
   --***************************************************************************
   COL_WIDTH             : integer := 10;
                                     -- # of memory Column Address bits.
   CS_WIDTH              : integer := 1;
                                     -- # of unique CS outputs to memory.
   DM_WIDTH              : integer := 8;
                                     -- # of DM (data mask)
   DQ_WIDTH              : integer := 64;
                                     -- # of DQ (data)
   DQS_CNT_WIDTH         : integer := 3;
                                     -- = ceil(log2(DQS_WIDTH))
   DRAM_WIDTH            : integer := 8;
                                     -- # of DQ per DQS
   ECC_TEST              : string  := "OFF";
   RANKS                 : integer := 1;
                                     -- # of Ranks.
   ROW_WIDTH             : integer := 14;
                                     -- # of memory Row Address bits.
   ADDR_WIDTH            : integer := 28;
                                     -- # = RANK_WIDTH + BANK_WIDTH
                                     --     + ROW_WIDTH + COL_WIDTH;
                                     -- Chip Select is always tied to low for
                                     -- single rank devices
   --***************************************************************************
   -- The following parameters are mode register settings
   --***************************************************************************
   BURST_MODE            : string  := "8";
                                     -- DDR3 SDRAM:
                                     -- Burst Length (Mode Register 0).
                                     -- # = "8", "4", "OTF".
                                     -- DDR2 SDRAM:
                                     -- Burst Length (Mode Register).
                                     -- # = "8", "4".
   
   --***************************************************************************
   -- Simulation parameters
   --***************************************************************************
   SIMULATION            : string  := "FALSE";
                                     -- Should be TRUE during design simulations and
                                     -- FALSE during implementations

   --***************************************************************************
   -- IODELAY and PHY related parameters
   --***************************************************************************
   TCQ                   : integer := 100;
   
   DRAM_TYPE             : string  := "DDR3";

   
   --***************************************************************************
   -- System clock frequency parameters
   --***************************************************************************
   nCK_PER_CLK           : integer := 4;
                                     -- # of memory CKs per fabric CLK

   --***************************************************************************
   -- Debug parameters
   --***************************************************************************
   DEBUG_PORT            : string  := "ON";
                                     -- # = "ON" Enable debug signals/controls.
                                     --   = "OFF" Disable debug signals/controls.

   --***************************************************************************
   -- Temparature monitor parameter
   --***************************************************************************
   TEMP_MON_CONTROL         : string  := "INTERNAL";
                                     -- # = "INTERNAL", "EXTERNAL"
      
   RST_ACT_LOW           : integer := 0
                                     -- =1 for active low reset,
                                     -- =0 for active high.
   );
  port (

   -- Inouts
   ddr3_dq                        : inout std_logic_vector(63 downto 0);
   ddr3_dqs_p                     : inout std_logic_vector(7 downto 0);
   ddr3_dqs_n                     : inout std_logic_vector(7 downto 0);

   -- Outputs
   ddr3_addr                      : out   std_logic_vector(13 downto 0);
   ddr3_ba                        : out   std_logic_vector(2 downto 0);
   ddr3_ras_n                     : out   std_logic;
   ddr3_cas_n                     : out   std_logic;
   ddr3_we_n                      : out   std_logic;
   ddr3_reset_n                   : out   std_logic;
   ddr3_ck_p                      : out   std_logic_vector(0 downto 0);
   ddr3_ck_n                      : out   std_logic_vector(0 downto 0);
   ddr3_cke                       : out   std_logic_vector(0 downto 0);
   ddr3_cs_n                      : out   std_logic_vector(0 downto 0);
   ddr3_dm                        : out   std_logic_vector(7 downto 0);
   ddr3_odt                       : out   std_logic_vector(0 downto 0);

   -- Inputs
   -- Differential system clocks
   sys_clk_p                      : in    std_logic;
   sys_clk_n                      : in    std_logic;
   
   
   tg_compare_error              : out std_logic;
   init_calib_complete           : out std_logic;
   
      

   -- System reset - Default polarity of sys_rst pin is Active Low.
   -- System reset polarity will change based on the option 
   -- selected in GUI.
      sys_rst                     : in    std_logic
   );

end entity example_top;

architecture arch_example_top of example_top is


  -- clogb2 function - ceiling of log base 2
  function clogb2 (size : integer) return integer is
    variable base : integer := 1;
    variable inp : integer := 0;
  begin
    inp := size - 1;
    while (inp > 1) loop
      inp := inp/2 ;
      base := base + 1;
    end loop;
    return base;
  end function;function STR_TO_INT(BM : string) return integer is
  begin
   if(BM = "8") then
     return 8;
   elsif(BM = "4") then
     return 4;
   else
     return 0;
   end if;
  end function;

  constant RANK_WIDTH : integer := clogb2(RANKS);

  function XWIDTH return integer is
  begin
    if(CS_WIDTH = 1) then
      return 0;
    else
      return RANK_WIDTH;
    end if;
  end function;
  


  constant CMD_PIPE_PLUS1        : string  := "ON";
                                     -- add pipeline stage between MC and PHY
--  constant ECC_TEST              : string  := "OFF";

  constant tPRDI                 : integer := 1000000;
                                     -- memory tPRDI paramter in pS.
  constant DATA_WIDTH            : integer := 64;
  constant PAYLOAD_WIDTH         : integer := DATA_WIDTH;
  constant BURST_LENGTH          : integer := STR_TO_INT(BURST_MODE);
  constant APP_DATA_WIDTH        : integer := 2 * nCK_PER_CLK * PAYLOAD_WIDTH;
  constant APP_MASK_WIDTH        : integer := APP_DATA_WIDTH / 8;

  --***************************************************************************
  -- Traffic Gen related parameters (derived)
  --***************************************************************************
  constant  TG_ADDR_WIDTH        : integer := XWIDTH + 3 + ROW_WIDTH + COL_WIDTH;
  constant MASK_SIZE             : integer := DATA_WIDTH/8;
      

-- Start of User Design wrapper top component

  component mig_7series_0
    port(
      ddr3_dq       : inout std_logic_vector(63 downto 0);
      ddr3_dqs_p    : inout std_logic_vector(7 downto 0);
      ddr3_dqs_n    : inout std_logic_vector(7 downto 0);

      ddr3_addr     : out   std_logic_vector(13 downto 0);
      ddr3_ba       : out   std_logic_vector(2 downto 0);
      ddr3_ras_n    : out   std_logic;
      ddr3_cas_n    : out   std_logic;
      ddr3_we_n     : out   std_logic;
      ddr3_reset_n  : out   std_logic;
      ddr3_ck_p     : out   std_logic_vector(0 downto 0);
      ddr3_ck_n     : out   std_logic_vector(0 downto 0);
      ddr3_cke      : out   std_logic_vector(0 downto 0);
      ddr3_cs_n     : out   std_logic_vector(0 downto 0);
      ddr3_dm       : out   std_logic_vector(7 downto 0);
      ddr3_odt      : out   std_logic_vector(0 downto 0);
      app_addr                  : in    std_logic_vector(27 downto 0);
      app_cmd                   : in    std_logic_vector(2 downto 0);
      app_en                    : in    std_logic;
      app_wdf_data              : in    std_logic_vector(511 downto 0);
      app_wdf_end               : in    std_logic;
      app_wdf_mask         : in    std_logic_vector(63 downto 0);
      app_wdf_wren              : in    std_logic;
      app_rd_data               : out   std_logic_vector(511 downto 0);
      app_rd_data_end           : out   std_logic;
      app_rd_data_valid         : out   std_logic;
      app_rdy                   : out   std_logic;
      app_wdf_rdy               : out   std_logic;
      app_sr_req                : in    std_logic;
      app_ref_req               : in    std_logic;
      app_zq_req                : in    std_logic;
      app_sr_active             : out   std_logic;
      app_ref_ack               : out   std_logic;
      app_zq_ack                : out   std_logic;
      ui_clk                    : out   std_logic;
      ui_clk_sync_rst           : out   std_logic;
      init_calib_complete       : out   std_logic;
      -- debug signals
      ddr3_ila_wrpath           : out   std_logic_vector(390 downto 0);
      ddr3_ila_rdpath           : out   std_logic_vector(1023 downto 0);
      ddr3_ila_basic            : out   std_logic_vector(119 downto 0);
      ddr3_vio_sync_out         : in    std_logic_vector(13 downto 0);

      dbg_byte_sel              : in    std_logic_vector(3 downto 0);
      dbg_sel_pi_incdec         : in    std_logic;
      dbg_pi_f_inc              : in    std_logic;
      dbg_pi_f_dec              : in    std_logic;
      dbg_sel_po_incdec         : in    std_logic;
      dbg_po_f_inc              : in    std_logic;
      dbg_po_f_stg23_sel        : in    std_logic;
      dbg_po_f_dec              : in    std_logic;
      dbg_pi_counter_read_val   : out   std_logic_vector(5 downto 0);
      dbg_po_counter_read_val   : out   std_logic_vector(8 downto 0);
      dbg_prbs_final_dqs_tap_cnt_r : out   std_logic_vector(107 downto 0);
      dbg_prbs_first_edge_taps     : out   std_logic_vector(107 downto 0);
      dbg_prbs_second_edge_taps    : out   std_logic_vector(107 downto 0);
      -- System Clock Ports
      sys_clk_p                      : in    std_logic;
      sys_clk_n                      : in    std_logic;
      device_temp     : out std_logic_vector(11 downto 0);
      sys_rst             : in std_logic
      );
  end component mig_7series_0;

-- End of User Design wrapper top component



  component mig_7series_v4_2_traffic_gen_top
    generic (
      TCQ                      : integer;
      SIMULATION               : string;
      FAMILY                   : string;
      MEM_TYPE                 : string;
      TST_MEM_INSTR_MODE       : string;
      --BL_WIDTH                 : integer;
      nCK_PER_CLK              : integer;
      NUM_DQ_PINS              : integer;
      MEM_BURST_LEN            : integer;
      MEM_COL_WIDTH            : integer;
      DATA_WIDTH               : integer;
      ADDR_WIDTH               : integer;
      MASK_SIZE                : integer := 8;
      DATA_MODE                : std_logic_vector(3 downto 0);
      BEGIN_ADDRESS            : std_logic_vector(31 downto 0);
      END_ADDRESS              : std_logic_vector(31 downto 0);
      PRBS_EADDR_MASK_POS      : std_logic_vector(31 downto 0);
      CMDS_GAP_DELAY           : std_logic_vector(5 downto 0) := "000000";
      SEL_VICTIM_LINE          : integer := 8;
      CMD_WDT                  : std_logic_vector(31 downto 0) := X"000003ff";
      WR_WDT                   : std_logic_vector(31 downto 0) := X"00001fff";
      RD_WDT                   : std_logic_vector(31 downto 0) := X"000003ff";
      EYE_TEST                 : string;
      PORT_MODE                : string;
      DATA_PATTERN             : string;
      CMD_PATTERN              : string
      );
    port (
      clk                    : in   std_logic;
      rst                    : in   std_logic;
      tg_only_rst            : in   std_logic;
      manual_clear_error     : in   std_logic;
      memc_init_done         : in   std_logic;
      memc_cmd_full          : in   std_logic;
      memc_cmd_en            : out  std_logic;
      memc_cmd_instr         : out  std_logic_vector(2 downto 0);
      memc_cmd_bl            : out  std_logic_vector(5 downto 0);
      memc_cmd_addr          : out  std_logic_vector(31 downto 0);
      memc_wr_en             : out  std_logic;
      memc_wr_end            : out  std_logic;
      memc_wr_mask           : out  std_logic_vector((DATA_WIDTH/8)-1 downto 0);
      memc_wr_data           : out  std_logic_vector(DATA_WIDTH-1 downto 0);
      memc_wr_full           : in   std_logic;
      memc_rd_en             : out  std_logic;
      memc_rd_data           : in   std_logic_vector(DATA_WIDTH-1 downto 0);
      memc_rd_empty          : in   std_logic;
      qdr_wr_cmd_o           : out  std_logic;
      qdr_rd_cmd_o           : out  std_logic;
      vio_pause_traffic      : in   std_logic;
      vio_modify_enable      : in   std_logic;
      vio_data_mode_value    : in   std_logic_vector(3 downto 0);
      vio_addr_mode_value    : in   std_logic_vector(2 downto 0);
      vio_instr_mode_value   : in   std_logic_vector(3 downto 0);
      vio_bl_mode_value      : in   std_logic_vector(1 downto 0);
      vio_fixed_bl_value     : in   std_logic_vector(9 downto 0);
      vio_fixed_instr_value  : in   std_logic_vector(2 downto 0);
      vio_data_mask_gen      : in   std_logic;
      fixed_addr_i           : in   std_logic_vector(31 downto 0);
      fixed_data_i           : in   std_logic_vector(31 downto 0);
      simple_data0           : in   std_logic_vector(31 downto 0);
      simple_data1           : in   std_logic_vector(31 downto 0);
      simple_data2           : in   std_logic_vector(31 downto 0);
      simple_data3           : in   std_logic_vector(31 downto 0);
      simple_data4           : in   std_logic_vector(31 downto 0);
      simple_data5           : in   std_logic_vector(31 downto 0);
      simple_data6           : in   std_logic_vector(31 downto 0);
      simple_data7           : in   std_logic_vector(31 downto 0);
      wdt_en_i               : in   std_logic;
      bram_cmd_i             : in   std_logic_vector(38 downto 0);
      bram_valid_i           : in   std_logic;
      bram_rdy_o             : out  std_logic;
      cmp_data               : out  std_logic_vector(DATA_WIDTH-1 downto 0);
      cmp_data_valid         : out  std_logic;
      cmp_error              : out  std_logic;
      wr_data_counts         : out   std_logic_vector(47 downto 0);
      rd_data_counts         : out   std_logic_vector(47 downto 0);
      dq_error_bytelane_cmp  : out  std_logic_vector((NUM_DQ_PINS/8)-1 downto 0);
      error                  : out  std_logic;
      error_status           : out  std_logic_vector((64+(2*DATA_WIDTH))-1 downto 0);
      cumlative_dq_lane_error : out  std_logic_vector((NUM_DQ_PINS/8)-1 downto 0);
      cmd_wdt_err_o          : out std_logic;
      wr_wdt_err_o           : out std_logic;
      rd_wdt_err_o           : out std_logic;
      mem_pattern_init_done   : out  std_logic
      );
  end component mig_7series_v4_2_traffic_gen_top;
      

  -- Signal declarations
      
  signal app_ecc_multiple_err        : std_logic_vector((2*nCK_PER_CLK)-1 downto 0);
  signal app_ecc_single_err          : std_logic_vector((2*nCK_PER_CLK)-1 downto 0);
  signal app_addr                    : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal app_addr_i                  : std_logic_vector(31 downto 0);
  signal app_cmd                     : std_logic_vector(2 downto 0);
  signal app_en                      : std_logic;
  signal app_rdy                     : std_logic;
  signal app_rdy_i                   : std_logic;
  signal app_rd_data                 : std_logic_vector(APP_DATA_WIDTH-1 downto 0);
  signal app_rd_data_end             : std_logic;
  signal app_rd_data_valid           : std_logic;
  signal app_rd_data_valid_i         : std_logic;
  signal app_wdf_data                : std_logic_vector(APP_DATA_WIDTH-1 downto 0);
  signal app_wdf_end                 : std_logic;
  signal app_wdf_mask                : std_logic_vector(APP_MASK_WIDTH-1 downto 0);
  signal app_wdf_rdy                 : std_logic;
  signal app_wdf_rdy_i               : std_logic;
  signal app_sr_active               : std_logic;
  signal app_ref_ack                 : std_logic;
  signal app_zq_ack                  : std_logic;
  signal app_wdf_wren                : std_logic;
  signal error_status                : std_logic_vector((64 + (4*PAYLOAD_WIDTH*nCK_PER_CLK))-1 downto 0);
  signal cumlative_dq_lane_error     : std_logic_vector((PAYLOAD_WIDTH/8)-1 downto 0);
  signal mem_pattern_init_done       : std_logic_vector(0 downto 0);
  signal modify_enable_sel           : std_logic;
  signal data_mode_manual_sel        : std_logic_vector(2 downto 0);
  signal addr_mode_manual_sel        : std_logic_vector(2 downto 0);
  signal cmp_data                    : std_logic_vector((PAYLOAD_WIDTH*2*nCK_PER_CLK)-1 downto 0);
  signal cmp_data_r                  : std_logic_vector(63 downto 0);
  signal cmp_data_valid              : std_logic;
  signal cmp_data_valid_r            : std_logic;
  signal cmp_error                   : std_logic;
  signal tg_wr_data_counts           : std_logic_vector(47 downto 0);
  signal tg_rd_data_counts           : std_logic_vector(47 downto 0);
  signal dq_error_bytelane_cmp       : std_logic_vector((PAYLOAD_WIDTH/8)-1 downto 0);
  signal init_calib_complete_i       : std_logic;
  signal tg_compare_error_i          : std_logic;
  signal tg_rst                      : std_logic;
  signal po_win_tg_rst               : std_logic;
  signal manual_clear_error          : std_logic_vector(0 downto 0);

  signal clk                         : std_logic;
  signal rst                         : std_logic;

  signal vio_modify_enable           : std_logic_vector(0 downto 0);
  signal vio_data_mode_value         : std_logic_vector(3 downto 0);
  signal vio_pause_traffic           : std_logic_vector(0 downto 0);
  signal vio_addr_mode_value         : std_logic_vector(2 downto 0);
  signal vio_instr_mode_value        : std_logic_vector(3 downto 0);
  signal vio_bl_mode_value           : std_logic_vector(1 downto 0);
  signal vio_fixed_bl_value          : std_logic_vector(BL_WIDTH-1 downto 0);
  signal vio_fixed_instr_value       : std_logic_vector(2 downto 0);
  signal vio_data_mask_gen           : std_logic_vector(0 downto 0);
  signal dbg_clear_error             : std_logic_vector(0 downto 0);
  signal vio_tg_rst                  : std_logic_vector(0 downto 0);
  signal dbg_sel_pi_incdec           : std_logic_vector(0 downto 0);
  signal dbg_pi_f_inc                : std_logic_vector(0 downto 0);
  signal dbg_pi_f_dec                : std_logic_vector(0 downto 0);
  signal dbg_sel_po_incdec           : std_logic_vector(0 downto 0);
  signal dbg_po_f_inc                : std_logic_vector(0 downto 0);
  signal dbg_po_f_stg23_sel          : std_logic_vector(0 downto 0);
  signal dbg_po_f_dec                : std_logic_vector(0 downto 0);
  signal vio_dbg_sel_pi_incdec           : std_logic_vector(0 downto 0);
  signal vio_dbg_pi_f_inc                : std_logic_vector(0 downto 0);
  signal vio_dbg_pi_f_dec                : std_logic_vector(0 downto 0);
  signal vio_dbg_sel_po_incdec           : std_logic_vector(0 downto 0);
  signal vio_dbg_po_f_inc                : std_logic_vector(0 downto 0);
  signal vio_dbg_po_f_stg23_sel          : std_logic_vector(0 downto 0);
  signal vio_dbg_po_f_dec                : std_logic_vector(0 downto 0);
  signal all_zeros1                  : std_logic_vector(31 downto 0):= (others => '0');
  signal all_zeros2                  : std_logic_vector(38 downto 0):= (others => '0');
  signal wdt_en_w                    : std_logic_vector(0 downto 0);
  signal cmd_wdt_err_w               : std_logic;
  signal wr_wdt_err_w                : std_logic;
  signal rd_wdt_err_w                : std_logic;
  signal device_temp                           : std_logic_vector(11 downto 0);
  
  -- Debug port Signal declarations

  signal ddr3_vio_sync_out                        : std_logic_vector(13 downto 0);

  signal ddr3_ila_basic                           : std_logic_vector(255 downto 0);
  signal ddr3_ila_basic_w                         : std_logic_vector(255 downto 0);
  signal ddr3_ila_basic_data                      : std_logic_vector(255 downto 0);
  signal ddr3_ila_wrpath                          : std_logic_vector(390 downto 0);
  signal ddr3_ila_wrpath_w                        : std_logic_vector(390 downto 0);
  signal ddr3_ila_rdpath                          : std_logic_vector(1023 downto 0);
  signal ddr3_ila_rdpath_w                        : std_logic_vector(1023 downto 0);
  signal dbg_dqs                        : std_logic_vector(4 downto 0);
  signal dbg_bit                        : std_logic_vector(8 downto 0);

  signal win_start                      : std_logic_vector(0 downto 0);
  signal win_sel_pi_pon                 : std_logic_vector(0 downto 0);
  signal vio_win_byte_select_inc        : std_logic_vector(0 downto 0);
  signal vio_win_byte_select_dec        : std_logic_vector(0 downto 0);
  signal dbg_pi_counter_read_val        : std_logic_vector(5 downto 0);
  signal dbg_po_counter_read_val        : std_logic_vector(8 downto 0);

  signal dbg_prbs_final_dqs_tap_cnt_r   : std_logic_vector(107 downto 0);
  signal dbg_prbs_first_edge_taps       : std_logic_vector(107 downto 0);
  signal dbg_prbs_second_edge_taps      : std_logic_vector(107 downto 0);
  signal pi_win_left_ram_out            : std_logic_vector(5 downto 0);
  signal pi_win_right_ram_out           : std_logic_vector(5 downto 0);
  signal po_win_left_ram_out            : std_logic_vector(8 downto 0);
  signal po_win_right_ram_out           : std_logic_vector(8 downto 0);
  signal win_clr_error                  : std_logic_vector(0 downto 0);

  signal win_active                     : std_logic_vector(0 downto 0);
  signal vio_sel_mux_rdd                : std_logic_vector(4 downto 0);
  signal win_current_bit                : std_logic_vector(6 downto 0);
  signal win_current_byte               : std_logic_vector(4 downto 0);
  signal dbg_win_chk                    : std_logic_vector(164 downto 0);
  signal pi_win_up                      : std_logic;
  signal pi_win_down                    : std_logic;
  signal po_win_up                      : std_logic;
  signal po_stg23_sel                   : std_logic;
  signal po_win_down                    : std_logic;

  signal app_rd_data_valid_r1           : std_logic;
  signal app_rd_data_valid_r2           : std_logic;
  signal app_rd_data_valid_r3           : std_logic;
  signal win_byte_select                : std_logic_vector(6 downto 0);
  signal app_rd_data_r1                 : std_logic_vector((nCK_PER_CLK*2*PAYLOAD_WIDTH)-1 downto 0);
  signal app_rd_data_r2                 : std_logic_vector((nCK_PER_CLK*2*PAYLOAD_WIDTH)-1 downto 0);
  signal app_rd_data_r3                 : std_logic_vector((nCK_PER_CLK*2*PAYLOAD_WIDTH)-1 downto 0);
  signal dbg_byte_sel_r                 : std_logic_vector(DQS_CNT_WIDTH downto 0);
  signal tg_simple_data                 : std_logic_vector(255 downto 0);
  signal vio_tg_simple_data_sel         : std_logic_vector(1 downto 0);

  signal dbg_extn_trig_out              : std_logic;
  signal dbg_extn_trig_out_ack          : std_logic;
  signal dbg_extn_trig_out_ack_r        : std_logic_vector(7 downto 0);

  -- Signals for creating rising edge pulses for VIO outputs
  signal vio_dbg_pi_f_inc_r1            :std_logic;
  signal vio_dbg_pi_f_dec_r1            :std_logic;
  signal vio_dbg_po_f_inc_r1            :std_logic;
  signal vio_dbg_po_f_dec_r1            :std_logic;
  signal vio_win_byte_select_inc_r1     :std_logic;
  signal vio_win_byte_select_dec_r1     :std_logic;

  signal vio_dbg_pi_f_inc_r2            :std_logic;
  signal vio_dbg_pi_f_dec_r2            :std_logic;
  signal vio_dbg_po_f_inc_r2            :std_logic;
  signal vio_dbg_po_f_dec_r2            :std_logic;
  signal vio_win_byte_select_inc_r2     :std_logic;
  signal vio_win_byte_select_dec_r2     :std_logic;

  signal vio_dbg_pi_f_inc_re            :std_logic;
  signal vio_dbg_pi_f_dec_re            :std_logic;
  signal vio_dbg_po_f_inc_re            :std_logic;
  signal vio_dbg_po_f_dec_re            :std_logic;
  signal vio_win_byte_select_inc_re     :std_logic;
  signal vio_win_byte_select_dec_re     :std_logic;

  signal dbg_init_calib_complete        : std_logic_vector(0 downto 0);
  signal dbg_wrlvl_start                : std_logic_vector(0 downto 0);
  signal dbg_wrlvl_done                 : std_logic_vector(0 downto 0);
  signal dbg_wrlvl_err                  : std_logic_vector(0 downto 0);
  signal dbg_pi_phaselock_start         : std_logic_vector(0 downto 0);
  signal dbg_pi_phaselocked_done        : std_logic_vector(0 downto 0);
  signal dbg_pi_phaselock_err           : std_logic_vector(0 downto 0);
  signal dbg_pi_dqsfound_start          : std_logic_vector(0 downto 0);
  signal dbg_pi_dqsfound_done           : std_logic_vector(0 downto 0);
  signal dbg_pi_dqsfound_err            : std_logic_vector(0 downto 0);
  signal dbg_rdlvl_start                : std_logic_vector(1 downto 0);
  signal dbg_rdlvl_done                 : std_logic_vector(1 downto 0);
  signal dbg_rdlvl_err                  : std_logic_vector(1 downto 0);
  signal dbg_oclkdelay_calib_start      : std_logic_vector(0 downto 0);
  signal dbg_oclkdelay_calib_done       : std_logic_vector(0 downto 0);
  signal dbg_wrcal_start                : std_logic_vector(0 downto 0);
  signal dbg_wrcal_done                 : std_logic_vector(0 downto 0);
  signal dbg_wrcal_err                  : std_logic_vector(0 downto 0);
  signal dbg_phy_init_5_0               : std_logic_vector(5 downto 0);
  signal dbg_rddata_valid_r             : std_logic_vector(0 downto 0);
  signal dbg_rddata_r                   : std_logic_vector(63 downto 0);
  signal dbg_fine_adjust_done_r         : std_logic_vector(0 downto 0);
  signal dbg_cmd_wdt_err_w              : std_logic_vector(0 downto 0);
  signal dbg_rd_wdt_err_w               : std_logic_vector(0 downto 0);
  signal dbg_wr_wdt_err_w               : std_logic_vector(0 downto 0);
  signal dbg_tg_compare_error           : std_logic_vector(0 downto 0);
  signal dbg_cmp_data_valid             : std_logic_vector(0 downto 0);
  signal dbg_cmp_error                  : std_logic_vector(0 downto 0);
  signal dbg_cmp_data_r                 : std_logic_vector(63 downto 0);
  signal dbg_dq_error_bytelane_cmp      : std_logic_vector(7 downto 0);
  signal dbg_cumlative_dq_lane_error    : std_logic_vector(7 downto 0);
  signal dbg_cmp_addr_i                 : std_logic_vector(31 downto 0);
  signal dbg_cmp_bl_i                   : std_logic_vector(5 downto 0);
  signal dbg_mcb_cmd_full_i             : std_logic_vector(0 downto 0);
  signal dbg_mcb_wr_full_i              : std_logic_vector(0 downto 0);
  signal dbg_mcb_rd_empty_i             : std_logic_vector(0 downto 0);
  signal dbg_ddrx_ila_rdpath_765_764    : std_logic_vector(1 downto 0);
  signal dbg_wl_state_r                 : std_logic_vector(4 downto 0);
  signal dbg_dqs_cnt_r                  : std_logic_vector(3 downto 0);
  signal dbg_wl_edge_detect_valid_r     : std_logic_vector(0 downto 0);
  signal dbg_rd_data_edge_detect_r_by_dqs : std_logic_vector(0 downto 0);
  signal dbg_wl_po_fine_cnt_by_dqs      : std_logic_vector(5 downto 0);
  signal dbg_wl_po_coarse_cnt_by_dqs    : std_logic_vector(2 downto 0);

  signal dbg_phy_oclkdelay_zfo          : std_logic_vector(3 downto 0);
  signal dbg_ocal_fuzz2oneeighty        : std_logic_vector(5 downto 0);
  signal dbg_ocal_fuzz2zero             : std_logic_vector(5 downto 0);
  signal dbg_ocal_oneeighty2fuzz        : std_logic_vector(5 downto 0);
  signal dbg_ocal_zero2fuzz             : std_logic_vector(5 downto 0);
  signal dbg_ocal_oclkdelay_calib_cnt   : std_logic_vector(2 downto 0);
  signal dbg_ocal_scan_win_not_found    : std_logic_vector(0 downto 0);
  signal dbg_ocal_lim_done              : std_logic_vector(0 downto 0);
  signal dbg_ocal_stg3_left_lim         : std_logic_vector(5 downto 0);
  signal dbg_ocal_stg3_right_lim        : std_logic_vector(5 downto 0);
  signal dbg_ocal_center_calib_start    : std_logic_vector(0 downto 0);
  signal dbg_ocal_center_calib_done     : std_logic_vector(0 downto 0);
  signal dbg_phy_oclkdelay_cal_taps     : std_logic_vector(53 downto 0);
  signal dbg_ocal_tap_cnt               : std_logic_vector(5 downto 0);

  signal dbg_wrcal_pat_data_match_r     : std_logic_vector(0 downto 0);
  signal dbg_wrcal_pat_data_match_valid_r : std_logic_vector(0 downto 0);
  signal dbg_wrcal_dqs_cnt_r            : std_logic_vector(3 downto 0);
  signal cal2_state_r                   : std_logic_vector(4 downto 0);
  signal not_empty_wait_cnt             : std_logic_vector(4 downto 0);
  signal dbg_early1_data                : std_logic_vector(0 downto 0);
  signal dbg_early2_data                : std_logic_vector(0 downto 0);
  signal dbg_early1_data_match_r        : std_logic_vector(0 downto 0);
  signal dbg_early2_data_match_r        : std_logic_vector(0 downto 0);
  signal dbg_wcal_sanity_pat_data_match_valid_r : std_logic_vector(0 downto 0);
  signal dbg_wcal_sanity_chk_start      : std_logic_vector(0 downto 0);
  signal dbg_wcal_sanity_chk_done       : std_logic_vector(0 downto 0);
  signal dbg_wcal_mux_rd_rise0_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_fall0_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_rise1_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_fall1_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_rise2_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_fall2_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_rise3_r        : std_logic_vector(7 downto 0);
  signal dbg_wcal_mux_rd_fall3_r        : std_logic_vector(7 downto 0);
  signal dbg_phy_oclkdelay_cal_57_54    : std_logic_vector(3 downto 0);
  signal dbg_phy_wrlvl_128_75           : std_logic_vector(53 downto 0);
  signal dbg_phy_wrlvl_155_129          : std_logic_vector(26 downto 0);
  signal dbg_phy_wrcal_po_coarse_cnt    : std_logic_vector(26 downto 0);
  signal dbg_phy_wrcal_po_fine_cnt      : std_logic_vector(53 downto 0);
  signal dbg_pi_phase_locked_phy4lanes  : std_logic_vector(11 downto 0);
  signal dbg_pi_dqs_found_lanes_phy4lanes : std_logic_vector(11 downto 0);
  signal dbg_rd_data_offset             : std_logic_vector(11 downto 0);
  signal dbg_cal1_state_r               : std_logic_vector(5 downto 0);
  signal dbg_cal1_cnt_cpt_r             : std_logic_vector(3 downto 0);
  signal dbg_mux_rd_rise0_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_fall0_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_rise1_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_fall1_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_rise2_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_fall2_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_rise3_r             : std_logic_vector(7 downto 0);
  signal dbg_mux_rd_fall3_r             : std_logic_vector(7 downto 0);
  signal dbg_rdlvl_pat_data_match_r     : std_logic_vector(0 downto 0);
  signal dbg_mux_rd_valid_r             : std_logic_vector(0 downto 0);
  signal dbg_cpt_first_edge_cnt_by_dqs  : std_logic_vector(5 downto 0);
  signal dbg_cpt_second_edge_cnt_by_dqs : std_logic_vector(5 downto 0);
  signal dbg_cpt_tap_cnt_by_dqs         : std_logic_vector(5 downto 0);
  signal dbg_dq_idelay_tap_cnt_by_dqs   : std_logic_vector(4 downto 0);
  signal dbg_dbg_calib_rd_data_offset_1 : std_logic_vector(11 downto 0);
  signal dbg_dbg_calib_rd_data_offset_2 : std_logic_vector(11 downto 0);
  signal dbg_data_offset                : std_logic_vector(5 downto 0);
  signal dbg_data_offset_1              : std_logic_vector(5 downto 0);
  signal dbg_data_offset_2              : std_logic_vector(5 downto 0);
  signal dbg_cpt_first_edge_cnt         : std_logic_vector(107 downto 0);
  signal dbg_cpt_second_edge_cnt        : std_logic_vector(107 downto 0);
  signal dbg_cpt_tap_cnt                : std_logic_vector(107 downto 0);
  signal dbg_dq_idelay_tap_cnt          : std_logic_vector(89 downto 0);
  signal dbg_prbs_rdlvl                 : std_logic_vector(254 downto 0);
  signal tg_compare_error_w             : std_logic_vector(0 downto 0);
  signal dbg_tg_wr_data_counts          : std_logic_vector(47 downto 0);
  signal dbg_tg_rd_data_counts          : std_logic_vector(47 downto 0);

  signal dbg_prbs_rdlvl_left_edge_pb            : std_logic_vector(47 downto 0);
  signal dbg_prbs_rdlvl_left_loss_pb            : std_logic_vector(15 downto 0);
  signal dbg_prbs_rdlvl_right_edge_pb           : std_logic_vector(47 downto 0);
  signal dbg_prbs_rdlvl_right_gain_pb           : std_logic_vector(15 downto 0);
  signal dbg_prbs_rdlvl_pi_counter_read_val     : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_prbs_dqs_tap_cnt_r      : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_prbs_found_1st_edge_r   : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_prbs_found_2nd_edge_r   : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err             : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_phy_if_empty            : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_prbs_rdlvl_start        : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_prbs_rdlvl_done         : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_prbs_dqs_cnt_r          : std_logic_vector( 4 downto 0);
  signal dbg_prbs_rdlvl_left_edge_pb_dqs_cnt    : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_right_edge_pb_dqs_cnt   : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_rd_victim_sel           : std_logic_vector( 2 downto 0);
  signal dbg_prbs_rdlvl_complex_victim_inc      : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_right_gain_pb_dqs_cnt   : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_ref_bit                 : std_logic_vector( 2 downto 0);
  signal dbg_prbs_rdlvl_prbs_state_r1           : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_rd_valid_r2             : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_r0          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_f0          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_r1          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_f1          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_r2          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_f2          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_r3          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_f3          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_left_edge_found_pb      : std_logic_vector( 7 downto 0);
  signal dbg_prbs_rdlvl_right_edge_found_pb     : std_logic_vector( 7 downto 0);
  signal dbg_prbs_rdlvl_largest_left_edge       : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_smallest_right_edge     : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_fine_delay_incdec_pb    : std_logic_vector( 7 downto 0);
  signal dbg_prbs_rdlvl_fine_delay_sel          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_pb_latch_r  : std_logic_vector( 7 downto 0);
  signal dbg_prbs_rdlvl_fine_pi_dec_cnt         : std_logic_vector( 5 downto 0);
  signal dbg_prbs_rdlvl_match_flag_and          : std_logic_vector( 4 downto 0);
  signal dbg_prbs_rdlvl_stage_cnt               : std_logic_vector( 1 downto 0);
  signal dbg_prbs_rdlvl_fine_inc_stage          : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_compare_err_pb_and      : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_right_edge_found        : std_logic_vector( 0 downto 0);
  signal dbg_prbs_rdlvl_fine_dly_error          : std_logic_vector( 0 downto 0);

  attribute mark_debug : string;
  attribute mark_debug of dbg_extn_trig_out                   : signal is "true";
  attribute mark_debug of dbg_extn_trig_out_ack               : signal is "true";
  attribute mark_debug of dbg_init_calib_complete             : signal is "true";
  attribute mark_debug of dbg_wrlvl_start                     : signal is "true";
  attribute mark_debug of dbg_wrlvl_done                      : signal is "true";
  attribute mark_debug of dbg_wrlvl_err                       : signal is "true";
  attribute mark_debug of dbg_pi_phaselock_start              : signal is "true";
  attribute mark_debug of dbg_pi_phaselocked_done             : signal is "true";
  attribute mark_debug of dbg_pi_phaselock_err                : signal is "true";
  attribute mark_debug of dbg_pi_dqsfound_start               : signal is "true";
  attribute mark_debug of dbg_pi_dqsfound_done                : signal is "true";
  attribute mark_debug of dbg_pi_dqsfound_err                 : signal is "true";
  attribute mark_debug of dbg_rdlvl_start                     : signal is "true";
  attribute mark_debug of dbg_rdlvl_done                      : signal is "true";
  attribute mark_debug of dbg_rdlvl_err                       : signal is "true";
  attribute mark_debug of dbg_oclkdelay_calib_start           : signal is "true";
  attribute mark_debug of dbg_oclkdelay_calib_done            : signal is "true";
  attribute mark_debug of dbg_wrcal_start                     : signal is "true";
  attribute mark_debug of dbg_wrcal_done                      : signal is "true";
  attribute mark_debug of dbg_wrcal_err                       : signal is "true";
  attribute mark_debug of dbg_phy_init_5_0                    : signal is "true";
  attribute mark_debug of dbg_rddata_valid_r                  : signal is "true";
  attribute mark_debug of dbg_rddata_r                        : signal is "true";
  attribute mark_debug of dbg_fine_adjust_done_r              : signal is "true";
  attribute mark_debug of dbg_cmd_wdt_err_w                   : signal is "true";
  attribute mark_debug of dbg_rd_wdt_err_w                    : signal is "true";
  attribute mark_debug of dbg_wr_wdt_err_w                    : signal is "true";
  attribute mark_debug of dbg_tg_compare_error                : signal is "true";
  attribute mark_debug of dbg_cmp_data_valid                  : signal is "true";
  attribute mark_debug of dbg_cmp_error                       : signal is "true";
  attribute mark_debug of dbg_cmp_data_r                      : signal is "true";
  attribute mark_debug of dbg_dq_error_bytelane_cmp           : signal is "true";
  attribute mark_debug of dbg_cumlative_dq_lane_error         : signal is "true";
  attribute mark_debug of dbg_cmp_addr_i                      : signal is "true";
  attribute mark_debug of dbg_cmp_bl_i                        : signal is "true";
  attribute mark_debug of dbg_mcb_cmd_full_i                  : signal is "true";
  attribute mark_debug of dbg_mcb_wr_full_i                   : signal is "true";
  attribute mark_debug of dbg_mcb_rd_empty_i                  : signal is "true";
  attribute mark_debug of dbg_ddrx_ila_rdpath_765_764         : signal is "true";
  attribute mark_debug of dbg_wl_state_r                      : signal is "true";
  attribute mark_debug of dbg_dqs_cnt_r                       : signal is "true";
  attribute mark_debug of dbg_wl_edge_detect_valid_r          : signal is "true";
  attribute mark_debug of dbg_rd_data_edge_detect_r_by_dqs    : signal is "true";
  attribute mark_debug of dbg_wl_po_fine_cnt_by_dqs           : signal is "true";
  attribute mark_debug of dbg_wl_po_coarse_cnt_by_dqs         : signal is "true";

  attribute mark_debug of dbg_phy_oclkdelay_zfo               : signal is "true";
  attribute mark_debug of dbg_ocal_fuzz2oneeighty             : signal is "true";
  attribute mark_debug of dbg_ocal_fuzz2zero                  : signal is "true";
  attribute mark_debug of dbg_ocal_oneeighty2fuzz             : signal is "true";
  attribute mark_debug of dbg_ocal_zero2fuzz                  : signal is "true";
  attribute mark_debug of dbg_ocal_oclkdelay_calib_cnt        : signal is "true";
  attribute mark_debug of dbg_ocal_scan_win_not_found         : signal is "true";
  attribute mark_debug of dbg_ocal_lim_done                   : signal is "true";
  attribute mark_debug of dbg_ocal_stg3_left_lim              : signal is "true";
  attribute mark_debug of dbg_ocal_stg3_right_lim             : signal is "true";
  attribute mark_debug of dbg_ocal_center_calib_start         : signal is "true";
  attribute mark_debug of dbg_ocal_center_calib_done          : signal is "true";
  attribute mark_debug of dbg_phy_oclkdelay_cal_taps          : signal is "true";
  attribute mark_debug of dbg_ocal_tap_cnt                    : signal is "true";

  attribute mark_debug of dbg_wrcal_pat_data_match_r          : signal is "true";
  attribute mark_debug of dbg_wrcal_pat_data_match_valid_r    : signal is "true";
  attribute mark_debug of dbg_wrcal_dqs_cnt_r                 : signal is "true";
  attribute mark_debug of cal2_state_r                        : signal is "true";
  attribute mark_debug of not_empty_wait_cnt                  : signal is "true";
  attribute mark_debug of dbg_early1_data                     : signal is "true";
  attribute mark_debug of dbg_early2_data                     : signal is "true";
  attribute mark_debug of dbg_early1_data_match_r             : signal is "true";
  attribute mark_debug of dbg_early2_data_match_r             : signal is "true";
  attribute mark_debug of dbg_wcal_sanity_pat_data_match_valid_r : signal is "true";
  attribute mark_debug of dbg_wcal_sanity_chk_start           : signal is "true";
  attribute mark_debug of dbg_wcal_sanity_chk_done            : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_rise0_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_fall0_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_rise1_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_fall1_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_rise2_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_fall2_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_rise3_r             : signal is "true";
  attribute mark_debug of dbg_wcal_mux_rd_fall3_r             : signal is "true";
  attribute mark_debug of dbg_phy_oclkdelay_cal_57_54         : signal is "true";
  attribute mark_debug of dbg_phy_wrlvl_128_75                : signal is "true";
  attribute mark_debug of dbg_phy_wrlvl_155_129               : signal is "true";
  attribute mark_debug of dbg_phy_wrcal_po_coarse_cnt         : signal is "true";
  attribute mark_debug of dbg_phy_wrcal_po_fine_cnt           : signal is "true";
  attribute mark_debug of dbg_pi_phase_locked_phy4lanes       : signal is "true";
  attribute mark_debug of dbg_pi_dqs_found_lanes_phy4lanes    : signal is "true";
  attribute mark_debug of dbg_rd_data_offset                  : signal is "true";
  attribute mark_debug of dbg_cal1_state_r                    : signal is "true";
  attribute mark_debug of dbg_cal1_cnt_cpt_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_rise0_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_fall0_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_rise1_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_fall1_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_rise2_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_fall2_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_rise3_r                  : signal is "true";
  attribute mark_debug of dbg_mux_rd_fall3_r                  : signal is "true";
  attribute mark_debug of dbg_rdlvl_pat_data_match_r          : signal is "true";
  attribute mark_debug of dbg_mux_rd_valid_r                  : signal is "true";
  attribute mark_debug of dbg_cpt_first_edge_cnt_by_dqs       : signal is "true";
  attribute mark_debug of dbg_cpt_second_edge_cnt_by_dqs      : signal is "true";
  attribute mark_debug of dbg_cpt_tap_cnt_by_dqs              : signal is "true";
  attribute mark_debug of dbg_dq_idelay_tap_cnt_by_dqs        : signal is "true";
  attribute mark_debug of dbg_dbg_calib_rd_data_offset_1      : signal is "true";
  attribute mark_debug of dbg_dbg_calib_rd_data_offset_2      : signal is "true";
  attribute mark_debug of dbg_data_offset                     : signal is "true";
  attribute mark_debug of dbg_data_offset_1                   : signal is "true";
  attribute mark_debug of dbg_data_offset_2                   : signal is "true";
  attribute mark_debug of dbg_cpt_first_edge_cnt              : signal is "true";
  attribute mark_debug of dbg_cpt_second_edge_cnt             : signal is "true";
  attribute mark_debug of dbg_cpt_tap_cnt                     : signal is "true";
  attribute mark_debug of dbg_dq_idelay_tap_cnt               : signal is "true";

  attribute mark_debug of mem_pattern_init_done               : signal is "true";
  attribute mark_debug of vio_modify_enable                   : signal is "true";
  attribute mark_debug of vio_data_mode_value                 : signal is "true";
  attribute mark_debug of vio_pause_traffic                   : signal is "true";
  attribute mark_debug of vio_addr_mode_value                 : signal is "true";
  attribute mark_debug of vio_instr_mode_value                : signal is "true";
  attribute mark_debug of vio_bl_mode_value                   : signal is "true";
  attribute mark_debug of vio_fixed_bl_value                  : signal is "true";
  attribute mark_debug of vio_fixed_instr_value               : signal is "true";
  attribute mark_debug of vio_data_mask_gen                   : signal is "true";
  attribute mark_debug of vio_tg_rst                          : signal is "true";
  attribute mark_debug of vio_dbg_sel_pi_incdec               : signal is "true";
  attribute mark_debug of vio_dbg_pi_f_inc                    : signal is "true";
  attribute mark_debug of vio_dbg_pi_f_dec                    : signal is "true";
  attribute mark_debug of vio_dbg_sel_po_incdec               : signal is "true";
  attribute mark_debug of vio_dbg_po_f_inc                    : signal is "true";
  attribute mark_debug of vio_dbg_po_f_dec                    : signal is "true";
  attribute mark_debug of vio_dbg_po_f_stg23_sel              : signal is "true";
  attribute mark_debug of dbg_dqs                             : signal is "true";
  attribute mark_debug of dbg_bit                             : signal is "true";
  attribute mark_debug of win_start                           : signal is "true";
  attribute mark_debug of win_sel_pi_pon                      : signal is "true";
  attribute mark_debug of vio_win_byte_select_inc             : signal is "true";
  attribute mark_debug of vio_win_byte_select_dec             : signal is "true";
  attribute mark_debug of dbg_pi_counter_read_val             : signal is "true";
  attribute mark_debug of dbg_po_counter_read_val             : signal is "true";
  attribute mark_debug of pi_win_left_ram_out                 : signal is "true";
  attribute mark_debug of pi_win_right_ram_out                : signal is "true";
  attribute mark_debug of po_win_left_ram_out                 : signal is "true";
  attribute mark_debug of po_win_right_ram_out                : signal is "true";
  attribute mark_debug of win_clr_error                       : signal is "true";
  attribute mark_debug of manual_clear_error                  : signal is "true";
  attribute mark_debug of win_active                          : signal is "true";
  attribute mark_debug of vio_sel_mux_rdd                     : signal is "true";
  attribute mark_debug of win_current_bit                     : signal is "true";
  attribute mark_debug of win_current_byte                    : signal is "true";
  attribute mark_debug of dbg_win_chk                         : signal is "true";
  attribute mark_debug of win_byte_select                     : signal is "true";
  attribute mark_debug of vio_tg_simple_data_sel              : signal is "true";
  attribute mark_debug of wdt_en_w                            : signal is "true";
  attribute mark_debug of dbg_clear_error                     : signal is "true";
  attribute mark_debug of tg_compare_error_i                  : signal is "true";
  attribute mark_debug of tg_compare_error_w                  : signal is "true";
  attribute mark_debug of dbg_tg_rd_data_counts               : signal is "true";
  attribute mark_debug of dbg_tg_wr_data_counts               : signal is "true";
  attribute mark_debug of dbg_prbs_final_dqs_tap_cnt_r        : signal is "true";
  attribute mark_debug of dbg_prbs_first_edge_taps            : signal is "true";
  attribute mark_debug of dbg_prbs_second_edge_taps           : signal is "true";

  attribute mark_debug of dbg_prbs_rdlvl_left_edge_pb            : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_left_loss_pb            : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_right_edge_pb           : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_right_gain_pb           : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_pi_counter_read_val     : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_dqs_tap_cnt_r      : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_found_1st_edge_r   : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_found_2nd_edge_r   : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err             : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_phy_if_empty            : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_rdlvl_start        : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_rdlvl_done         : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_dqs_cnt_r          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_left_edge_pb_dqs_cnt    : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_right_edge_pb_dqs_cnt   : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_rd_victim_sel           : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_complex_victim_inc      : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_right_gain_pb_dqs_cnt   : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_ref_bit                 : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_prbs_state_r1           : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_rd_valid_r2             : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_r0          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_f0          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_r1          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_f1          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_r2          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_f2          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_r3          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_f3          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_left_edge_found_pb      : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_right_edge_found_pb     : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_largest_left_edge       : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_smallest_right_edge     : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_fine_delay_incdec_pb    : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_fine_delay_sel          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_pb_latch_r  : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_fine_pi_dec_cnt         : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_match_flag_and          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_stage_cnt               : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_fine_inc_stage          : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_compare_err_pb_and      : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_right_edge_found        : signal is "true";
  attribute mark_debug of dbg_prbs_rdlvl_fine_dly_error          : signal is "true";

  


begin

--***************************************************************************


  init_calib_complete <= init_calib_complete_i;
  tg_compare_error <= tg_compare_error_i;


  app_rdy_i                   <= not(app_rdy);
  app_wdf_rdy_i               <= not(app_wdf_rdy);
  app_rd_data_valid_i         <= not(app_rd_data_valid);
  app_addr                    <= app_addr_i(ADDR_WIDTH-1 downto 0);
      




      

-- Start of User Design top instance
--***************************************************************************
-- The User design is instantiated below. The memory interface ports are
-- connected to the top-level and the application interface ports are
-- connected to the traffic generator module. This provides a reference
-- for connecting the memory controller to system.
--***************************************************************************

  u_mig_7series_0 : mig_7series_0
      port map (
       -- Memory interface ports
       ddr3_addr                      => ddr3_addr,
       ddr3_ba                        => ddr3_ba,
       ddr3_cas_n                     => ddr3_cas_n,
       ddr3_ck_n                      => ddr3_ck_n,
       ddr3_ck_p                      => ddr3_ck_p,
       ddr3_cke                       => ddr3_cke,
       ddr3_ras_n                     => ddr3_ras_n,
       ddr3_reset_n                   => ddr3_reset_n,
       ddr3_we_n                      => ddr3_we_n,
       ddr3_dq                        => ddr3_dq,
       ddr3_dqs_n                     => ddr3_dqs_n,
       ddr3_dqs_p                     => ddr3_dqs_p,
       init_calib_complete  => init_calib_complete_i,
       device_temp                    => device_temp,
       ddr3_cs_n                      => ddr3_cs_n,
       ddr3_dm                        => ddr3_dm,
       ddr3_odt                       => ddr3_odt,
-- Application interface ports
       app_addr                       => app_addr,
       app_cmd                        => app_cmd,
       app_en                         => app_en,
       app_wdf_data                   => app_wdf_data,
       app_wdf_end                    => app_wdf_end,
       app_wdf_wren                   => app_wdf_wren,
       app_rd_data                    => app_rd_data,
       app_rd_data_end                => app_rd_data_end,
       app_rd_data_valid              => app_rd_data_valid,
       app_rdy                        => app_rdy,
       app_wdf_rdy                    => app_wdf_rdy,
       app_sr_req                     => '0',
       app_ref_req                    => '0',
       app_zq_req                     => '0',
       app_sr_active                  => app_sr_active,
       app_ref_ack                    => app_ref_ack,
       app_zq_ack                     => app_zq_ack,
       ui_clk                         => clk,
       ui_clk_sync_rst                => rst,
       app_wdf_mask                   => app_wdf_mask,
-- Debug Ports
       ddr3_ila_basic                           => ddr3_ila_basic_w(119 downto 0),
       ddr3_ila_wrpath                          => ddr3_ila_wrpath_w,
       ddr3_ila_rdpath                          => ddr3_ila_rdpath_w,

       ddr3_vio_sync_out                        => ddr3_vio_sync_out(13 downto 0),

       dbg_pi_counter_read_val        => dbg_pi_counter_read_val,
       dbg_sel_pi_incdec              => dbg_sel_pi_incdec(0),
       dbg_po_counter_read_val        => dbg_po_counter_read_val,

       dbg_sel_po_incdec              => dbg_sel_po_incdec(0),
       dbg_byte_sel                   => dbg_byte_sel_r,
       dbg_pi_f_inc                   => dbg_pi_f_inc(0),
       dbg_pi_f_dec                   => dbg_pi_f_dec(0),
       dbg_po_f_inc                   => dbg_po_f_inc(0),
       dbg_po_f_stg23_sel             => dbg_po_f_stg23_sel(0),
       dbg_po_f_dec                   => dbg_po_f_dec(0),
       dbg_prbs_final_dqs_tap_cnt_r   => dbg_prbs_final_dqs_tap_cnt_r,
       dbg_prbs_first_edge_taps       => dbg_prbs_first_edge_taps,
       dbg_prbs_second_edge_taps      => dbg_prbs_second_edge_taps,
-- System Clock Ports
       sys_clk_p                       => sys_clk_p,
       sys_clk_n                       => sys_clk_n,
        sys_rst                        => sys_rst
        );
-- End of User Design top instance


--***************************************************************************
-- The traffic generation module instantiated below drives traffic (patterns)
-- on the application interface of the memory controller
--***************************************************************************

  tg_rst <= vio_tg_rst(0) or po_win_tg_rst;

  u_traffic_gen_top : mig_7series_v4_2_traffic_gen_top
    generic map (
      TCQ                 => TCQ,
      SIMULATION          => SIMULATION,
      FAMILY              => "VIRTEX7",
      MEM_TYPE            => DRAM_TYPE,
      TST_MEM_INSTR_MODE  => TST_MEM_INSTR_MODE,
      --BL_WIDTH            => BL_WIDTH,
      nCK_PER_CLK         => nCK_PER_CLK,
      NUM_DQ_PINS         => PAYLOAD_WIDTH,
      MEM_BURST_LEN       => BURST_LENGTH,
      MEM_COL_WIDTH       => COL_WIDTH,
      PORT_MODE           => PORT_MODE,
      DATA_PATTERN        => DATA_PATTERN,
      CMD_PATTERN         => CMD_PATTERN,
      ADDR_WIDTH          => TG_ADDR_WIDTH,
      DATA_WIDTH          => APP_DATA_WIDTH,
      BEGIN_ADDRESS       => BEGIN_ADDRESS,
      DATA_MODE           => DATA_MODE,
      END_ADDRESS         => END_ADDRESS,
      PRBS_EADDR_MASK_POS => PRBS_EADDR_MASK_POS,
      CMD_WDT             => CMD_WDT,
      RD_WDT              => RD_WDT,
      WR_WDT              => WR_WDT,
      EYE_TEST            => EYE_TEST
      )
      port map (
        clk                  => clk,
        rst                  => rst,
        tg_only_rst          => tg_rst,
        manual_clear_error   => manual_clear_error(0),
        memc_init_done       => init_calib_complete_i,
        memc_cmd_full        => app_rdy_i,
        memc_cmd_en          => app_en,
        memc_cmd_instr       => app_cmd,
        memc_cmd_bl          => open,
        memc_cmd_addr        => app_addr_i,
        memc_wr_en           => app_wdf_wren,
        memc_wr_end          => app_wdf_end,
        memc_wr_mask         => app_wdf_mask(((PAYLOAD_WIDTH*2*nCK_PER_CLK)/8)-1 downto 0),
        memc_wr_data         => app_wdf_data((PAYLOAD_WIDTH*2*nCK_PER_CLK)-1 downto 0),
        memc_wr_full         => app_wdf_rdy_i,
        memc_rd_en           => open,
        memc_rd_data         => app_rd_data((PAYLOAD_WIDTH*2*nCK_PER_CLK)-1 downto 0),
        memc_rd_empty        => app_rd_data_valid_i,
        qdr_wr_cmd_o         => open,
        qdr_rd_cmd_o         => open,
        vio_pause_traffic    => vio_pause_traffic(0),
        vio_modify_enable    => vio_modify_enable(0),
        vio_data_mode_value  => vio_data_mode_value,
        vio_addr_mode_value  => vio_addr_mode_value,
        vio_instr_mode_value => vio_instr_mode_value,
        vio_bl_mode_value    => vio_bl_mode_value,
        vio_fixed_bl_value   => vio_fixed_bl_value,
        vio_fixed_instr_value=> vio_fixed_instr_value,
        vio_data_mask_gen    => vio_data_mask_gen(0),
        fixed_addr_i         => all_zeros1,
        fixed_data_i         => all_zeros1,
        simple_data0         => all_zeros1,
        simple_data1         => all_zeros1,
        simple_data2         => all_zeros1,
        simple_data3         => all_zeros1,
        simple_data4         => all_zeros1,
        simple_data5         => all_zeros1,
        simple_data6         => all_zeros1,
        simple_data7         => all_zeros1,
        wdt_en_i             => wdt_en_w(0),
        bram_cmd_i           => all_zeros2,
        bram_valid_i         => '0',
        bram_rdy_o           => open,
        cmp_data             => cmp_data,
        cmp_data_valid       => cmp_data_valid,
        cmp_error            => cmp_error,
        wr_data_counts       => tg_wr_data_counts,
        rd_data_counts       => tg_rd_data_counts,
        dq_error_bytelane_cmp => dq_error_bytelane_cmp,
        error                => tg_compare_error_i,
        error_status         => error_status,
        cumlative_dq_lane_error => cumlative_dq_lane_error,
        cmd_wdt_err_o        => cmd_wdt_err_w,
        wr_wdt_err_o         => wr_wdt_err_w,
        rd_wdt_err_o         => rd_wdt_err_w,
        mem_pattern_init_done   => mem_pattern_init_done(0)
        );


  CHIPSCOPE_INST : if (DEBUG_PORT = "ON") generate

    ddr3_vio_sync_out <= dbg_dqs & dbg_bit;

    cmp_data_nck2 : if (nCK_PER_CLK = 2) generate
      process(clk)
      begin
         if (clk'event and clk='1') then
        cmp_data_valid_r  <= cmp_data_valid after (TCQ) * 1 ps;
        if (cmp_data_valid_r= '1') then
               cmp_data_r(7 downto 0)   <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+7 downto (8*to_integer(unsigned(dbg_dqs)))) after (TCQ) * 1 ps;
               cmp_data_r(15 downto 8)  <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(23 downto 16) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+2*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+2*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(31 downto 24) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+3*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+3*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(39 downto 32) <= (others => '0') after (TCQ) * 1 ps;
               cmp_data_r(47 downto 40) <= (others => '0') after (TCQ) * 1 ps;
               cmp_data_r(55 downto 48) <= (others => '0') after (TCQ) * 1 ps;
               cmp_data_r(63 downto 56) <= (others => '0') after (TCQ) * 1 ps;
            else
           cmp_data_r  <= (others => '0') after (TCQ) * 1 ps;
        end if;
         end if;
      end process;
   end generate;

    cmp_data_others : if (nCK_PER_CLK /= 2) generate
      process(clk)
      begin
         if (clk'event and clk='1') then
        cmp_data_valid_r  <= cmp_data_valid after (TCQ) * 1 ps;
            if (cmp_data_valid_r= '1') then
               cmp_data_r(7 downto 0)   <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+7 downto (8*to_integer(unsigned(dbg_dqs)))) after (TCQ) * 1 ps;
               cmp_data_r(15 downto 8)  <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(23 downto 16) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+2*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+2*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(31 downto 24) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+3*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+3*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(39 downto 32) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+4*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+4*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(47 downto 40) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+5*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+5*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(55 downto 48) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+6*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+6*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
               cmp_data_r(63 downto 56) <= cmp_data((8*to_integer(unsigned(dbg_dqs)))+7*PAYLOAD_WIDTH+7 downto (8*to_integer(unsigned(dbg_dqs)))+7*PAYLOAD_WIDTH) after (TCQ) * 1 ps;
            else
           cmp_data_r  <= (others => '0') after (TCQ) * 1 ps;
        end if;
         end if;
      end process;
   end generate;

    ddr3_ila_basic_w(124 downto 120) <= "00000";
    ddr3_ila_basic_w(125)            <= cmd_wdt_err_w;
    ddr3_ila_basic_w(126)            <= rd_wdt_err_w;
    ddr3_ila_basic_w(127)            <= wr_wdt_err_w;
    ddr3_ila_basic_w(128)            <= tg_compare_error_i;
    ddr3_ila_basic_w(129)            <= cmp_data_valid_r;
    ddr3_ila_basic_w(130)            <= cmp_error;
    ddr3_ila_basic_w(194 downto 131) <= cmp_data_r;
    ddr3_ila_basic_w(195+(PAYLOAD_WIDTH/8)-1 downto 195) <= dq_error_bytelane_cmp;
    ddr3_ila_basic_w(204+(PAYLOAD_WIDTH/8)-1 downto 204) <= cumlative_dq_lane_error;
    ddr3_ila_basic_w(244 downto 213)   <= error_status(31 downto 0);  -- cmp_addr_i
    ddr3_ila_basic_w(250 downto 245)   <= error_status(37 downto 32); -- cmp_bl_i
    ddr3_ila_basic_w(251)              <= error_status(40);    -- mcb_cmd_full_i
    ddr3_ila_basic_w(252)              <= error_status(41);    -- mcb_wr_full_i
    ddr3_ila_basic_w(253)              <= error_status(42);    -- mcb_rd_empty_i
    ddr3_ila_basic_w(255 downto 254)   <= ddr3_ila_rdpath(765 downto 764);

    process(clk)
    begin
      if (clk'event and clk='1') then
        if (rst='1') then
          ddr3_ila_basic    <= (others => '0');
          ddr3_ila_rdpath   <= (others => '0');
          ddr3_ila_wrpath   <= (others => '0');
        else
          ddr3_ila_basic    <= ddr3_ila_basic_w;
          ddr3_ila_rdpath   <= ddr3_ila_rdpath_w;
          ddr3_ila_wrpath   <= ddr3_ila_wrpath_w;
        end if;
      end if;
    end process;

    -- Code for creating rising edge pulse for VIO outputs
    process(clk)
    begin
      if (clk'event and clk='1') then
        vio_dbg_pi_f_inc_r1            <= vio_dbg_pi_f_inc(0)        after (TCQ) * 1 ps ;
        vio_dbg_pi_f_dec_r1            <= vio_dbg_pi_f_dec(0)        after (TCQ) * 1 ps ;
        vio_dbg_po_f_inc_r1            <= vio_dbg_po_f_inc(0)        after (TCQ) * 1 ps ;
        vio_dbg_po_f_dec_r1            <= vio_dbg_po_f_dec(0)        after (TCQ) * 1 ps ;
        vio_win_byte_select_inc_r1     <= vio_win_byte_select_inc(0) after (TCQ) * 1 ps ;
        vio_win_byte_select_dec_r1     <= vio_win_byte_select_dec(0) after (TCQ) * 1 ps ;

        vio_dbg_pi_f_inc_r2            <= vio_dbg_pi_f_inc_r1        after (TCQ) * 1 ps ;
        vio_dbg_pi_f_dec_r2            <= vio_dbg_pi_f_dec_r1        after (TCQ) * 1 ps ;
        vio_dbg_po_f_inc_r2            <= vio_dbg_po_f_inc_r1        after (TCQ) * 1 ps ;
        vio_dbg_po_f_dec_r2            <= vio_dbg_po_f_dec_r1        after (TCQ) * 1 ps ;
        vio_win_byte_select_inc_r2     <= vio_win_byte_select_inc_r1 after (TCQ) * 1 ps ;
        vio_win_byte_select_dec_r2     <= vio_win_byte_select_dec_r1 after (TCQ) * 1 ps ;
      end if;
    end process;

    vio_dbg_pi_f_inc_re         <= vio_dbg_pi_f_inc_r1        and (not vio_dbg_pi_f_inc_r2)        ;
    vio_dbg_pi_f_dec_re         <= vio_dbg_pi_f_dec_r1        and (not vio_dbg_pi_f_dec_r2)        ;
    vio_dbg_po_f_inc_re         <= vio_dbg_po_f_inc_r1        and (not vio_dbg_po_f_inc_r2)        ;
    vio_dbg_po_f_dec_re         <= vio_dbg_po_f_dec_r1        and (not vio_dbg_po_f_dec_r2)        ;
    vio_win_byte_select_inc_re  <= vio_win_byte_select_inc_r1 and (not vio_win_byte_select_inc_r2) ;
    vio_win_byte_select_dec_re  <= vio_win_byte_select_dec_r1 and (not vio_win_byte_select_dec_r2) ;

    manual_clear_error(0) <= dbg_clear_error(0)        when (win_active(0) = '0') else win_clr_error(0);
    dbg_sel_pi_incdec(0)  <= vio_dbg_sel_pi_incdec(0)  when (win_active(0) = '0') else '1';
    dbg_sel_po_incdec(0)  <= vio_dbg_sel_po_incdec(0)  when (win_active(0) = '0') else '1';
    dbg_pi_f_inc(0)       <= vio_dbg_pi_f_inc_re       when (win_active(0) = '0') else pi_win_up;
    dbg_pi_f_dec(0)       <= vio_dbg_pi_f_dec_re       when (win_active(0) = '0') else pi_win_down;
    dbg_po_f_inc(0)       <= vio_dbg_po_f_inc_re       when (win_active(0) = '0') else po_win_up;
    dbg_po_f_dec(0)       <= vio_dbg_po_f_dec_re       when (win_active(0) = '0') else po_win_down;
    dbg_po_f_stg23_sel(0) <= vio_dbg_po_f_stg23_sel(0) when (win_active(0) = '0') else po_stg23_sel;

    dbg_init_calib_complete(0)          <= ddr3_ila_basic(0);
    dbg_wrlvl_start(0)                  <= ddr3_ila_basic(1);
    dbg_wrlvl_done(0)                   <= ddr3_ila_basic(2);
    dbg_wrlvl_err(0)                    <= ddr3_ila_basic(3);
    dbg_pi_phaselock_start(0)           <= ddr3_ila_basic(4);
    dbg_pi_phaselocked_done(0)          <= ddr3_ila_basic(5);
    dbg_pi_phaselock_err(0)             <= ddr3_ila_basic(6);
    dbg_pi_dqsfound_start(0)            <= ddr3_ila_basic(7);
    dbg_pi_dqsfound_done(0)             <= ddr3_ila_basic(8);
    dbg_pi_dqsfound_err(0)              <= ddr3_ila_basic(9);
    dbg_rdlvl_start                     <= ddr3_ila_basic(11 downto 10);
    dbg_rdlvl_done                      <= ddr3_ila_basic(13 downto 12);
    dbg_rdlvl_err                       <= ddr3_ila_basic(15 downto 14);
    dbg_oclkdelay_calib_start(0)        <= ddr3_ila_basic(16);
    dbg_oclkdelay_calib_done(0)         <= ddr3_ila_basic(17);
    dbg_wrcal_start(0)                  <= ddr3_ila_basic(19);
    dbg_wrcal_done(0)                   <= ddr3_ila_basic(20);
    dbg_wrcal_err(0)                    <= ddr3_ila_basic(21);
    dbg_phy_init_5_0                    <= ddr3_ila_basic(27 downto 22);
    dbg_rddata_valid_r(0)               <= ddr3_ila_basic(28);
    dbg_rddata_r                        <= ddr3_ila_basic(92 downto 29);
    dbg_fine_adjust_done_r(0)           <= ddr3_ila_basic(93);
    dbg_cmd_wdt_err_w(0)                <= ddr3_ila_basic(125);
    dbg_rd_wdt_err_w(0)                 <= ddr3_ila_basic(126);
    dbg_wr_wdt_err_w(0)                 <= ddr3_ila_basic(127);
    dbg_tg_compare_error(0)             <= ddr3_ila_basic(128);
    dbg_cmp_data_valid(0)               <= ddr3_ila_basic(129);
    dbg_cmp_error(0)                    <= ddr3_ila_basic(130);
    dbg_cmp_data_r                      <= ddr3_ila_basic(194 downto 131);
    dbg_dq_error_bytelane_cmp           <= ddr3_ila_basic(202 downto 195);
    dbg_cumlative_dq_lane_error         <= ddr3_ila_basic(211 downto 204);
    dbg_cmp_addr_i                      <= ddr3_ila_basic(244 downto 213);
    dbg_cmp_bl_i                        <= ddr3_ila_basic(250 downto 245);
    dbg_mcb_cmd_full_i(0)               <= ddr3_ila_basic(251);
    dbg_mcb_wr_full_i(0)                <= ddr3_ila_basic(252);
    dbg_mcb_rd_empty_i(0)               <= ddr3_ila_basic(253);
    dbg_ddrx_ila_rdpath_765_764         <= ddr3_ila_basic(255 downto 254);

    dbg_wl_state_r                      <= ddr3_ila_wrpath(4 downto 0);
    dbg_dqs_cnt_r                       <= ddr3_ila_wrpath(9 downto 6);
    dbg_wl_edge_detect_valid_r(0)       <= ddr3_ila_wrpath(10);
    dbg_rd_data_edge_detect_r_by_dqs(0) <= ddr3_ila_wrpath(11);
    dbg_wl_po_fine_cnt_by_dqs           <= ddr3_ila_wrpath(17 downto 12);
    dbg_wl_po_coarse_cnt_by_dqs         <= ddr3_ila_wrpath(20 downto 18);

    dbg_phy_oclkdelay_zfo               <= ddr3_ila_wrpath(33 downto 30);
    dbg_ocal_fuzz2oneeighty             <= ddr3_ila_wrpath(39 downto 34);
    dbg_ocal_fuzz2zero                  <= ddr3_ila_wrpath(45 downto 40);
    dbg_ocal_oneeighty2fuzz             <= ddr3_ila_wrpath(51 downto 46);
    dbg_ocal_zero2fuzz                  <= ddr3_ila_wrpath(57 downto 52);
    dbg_ocal_oclkdelay_calib_cnt        <= ddr3_ila_wrpath(60 downto 58);
    dbg_ocal_scan_win_not_found(0)      <= ddr3_ila_wrpath(61);
    dbg_ocal_lim_done(0)                <= ddr3_ila_wrpath(62);
    dbg_ocal_stg3_left_lim              <= ddr3_ila_wrpath(246 downto 241);
    dbg_ocal_stg3_right_lim             <= ddr3_ila_wrpath(252 downto 247);
    dbg_ocal_center_calib_start(0)      <= ddr3_ila_wrpath(253);
    dbg_ocal_center_calib_done(0)       <= ddr3_ila_wrpath(254);
    dbg_phy_oclkdelay_cal_taps          <= ddr3_ila_wrpath(308 downto 255);
    dbg_ocal_tap_cnt                    <= ddr3_ila_wrpath(92 downto 87);

    dbg_wrcal_pat_data_match_r(0)       <= ddr3_ila_wrpath(64);
    dbg_wrcal_pat_data_match_valid_r(0) <= ddr3_ila_wrpath(65);
    dbg_wrcal_dqs_cnt_r                 <= ddr3_ila_wrpath(69 downto 66);
    cal2_state_r                        <= ddr3_ila_wrpath(74 downto 70);
    not_empty_wait_cnt                  <= ddr3_ila_wrpath(79 downto 75);
    dbg_early1_data(0)                  <= ddr3_ila_wrpath(80);
    dbg_early2_data(0)                  <= ddr3_ila_wrpath(81);
    dbg_early1_data_match_r(0)          <= ddr3_ila_wrpath(82);
    dbg_early2_data_match_r(0)          <= ddr3_ila_wrpath(83);
    dbg_wcal_sanity_pat_data_match_valid_r(0) <= ddr3_ila_wrpath(84);
    dbg_wcal_sanity_chk_start(0)        <= ddr3_ila_wrpath(85);
    dbg_wcal_sanity_chk_done(0)         <= ddr3_ila_wrpath(86);
    dbg_wcal_mux_rd_rise0_r             <= ddr3_ila_wrpath(184 downto 177);
    dbg_wcal_mux_rd_fall0_r             <= ddr3_ila_wrpath(192 downto 185);
    dbg_wcal_mux_rd_rise1_r             <= ddr3_ila_wrpath(200 downto 193 );
    dbg_wcal_mux_rd_fall1_r             <= ddr3_ila_wrpath(208 downto 201);
    dbg_wcal_mux_rd_rise2_r             <= ddr3_ila_wrpath(216 downto 209);
    dbg_wcal_mux_rd_fall2_r             <= ddr3_ila_wrpath(224 downto 217);
    dbg_wcal_mux_rd_rise3_r             <= ddr3_ila_wrpath(232 downto 225);
    dbg_wcal_mux_rd_fall3_r             <= ddr3_ila_wrpath(240 downto 233);
    dbg_phy_oclkdelay_cal_57_54         <= ddr3_ila_wrpath(91 downto 88);
    dbg_phy_wrlvl_128_75                <= ddr3_ila_wrpath(149 downto 96);
    dbg_phy_wrlvl_155_129               <= ddr3_ila_wrpath(176 downto 150);
    dbg_phy_wrcal_po_coarse_cnt         <= ddr3_ila_wrpath(336 downto 310);
    dbg_phy_wrcal_po_fine_cnt           <= ddr3_ila_wrpath(390 downto 337);
    dbg_pi_phase_locked_phy4lanes       <= ddr3_ila_rdpath(11 downto 0);
    dbg_pi_dqs_found_lanes_phy4lanes    <= ddr3_ila_rdpath(23 downto 12);
    dbg_rd_data_offset                  <= ddr3_ila_rdpath(35 downto 24);
    dbg_cal1_state_r                    <= ddr3_ila_rdpath(45 downto 40);
    dbg_cal1_cnt_cpt_r                  <= ddr3_ila_rdpath(49 downto 46);
    dbg_mux_rd_rise0_r                  <= ddr3_ila_rdpath(57 downto 50);
    dbg_mux_rd_fall0_r                  <= ddr3_ila_rdpath(65 downto 58);
    dbg_mux_rd_rise1_r                  <= ddr3_ila_rdpath(73 downto 66);
    dbg_mux_rd_fall1_r                  <= ddr3_ila_rdpath(81 downto 74);
    dbg_mux_rd_rise2_r                  <= ddr3_ila_rdpath(89 downto 82);
    dbg_mux_rd_fall2_r                  <= ddr3_ila_rdpath(97 downto 90);
    dbg_mux_rd_rise3_r                  <= ddr3_ila_rdpath(105 downto 98);
    dbg_mux_rd_fall3_r                  <= ddr3_ila_rdpath(113 downto 106);
    dbg_rdlvl_pat_data_match_r(0)       <= ddr3_ila_rdpath(114);
    dbg_mux_rd_valid_r(0)               <= ddr3_ila_rdpath(115);
    dbg_cpt_first_edge_cnt_by_dqs       <= ddr3_ila_rdpath(121 downto 116);
    dbg_cpt_second_edge_cnt_by_dqs      <= ddr3_ila_rdpath(127 downto 122);
    dbg_cpt_tap_cnt_by_dqs              <= ddr3_ila_rdpath(133 downto 128);
    dbg_dq_idelay_tap_cnt_by_dqs        <= ddr3_ila_rdpath(138 downto 134);
    dbg_dbg_calib_rd_data_offset_1      <= ddr3_ila_rdpath(175 downto 164);
    dbg_dbg_calib_rd_data_offset_2      <= ddr3_ila_rdpath(187 downto 176);
    dbg_data_offset                     <= ddr3_ila_rdpath(193 downto 188);
    dbg_data_offset_1                   <= ddr3_ila_rdpath(199 downto 194);
    dbg_data_offset_2                   <= ddr3_ila_rdpath(205 downto 200);
    dbg_cpt_first_edge_cnt              <= ddr3_ila_rdpath(313 downto 206);
    dbg_cpt_second_edge_cnt             <= ddr3_ila_rdpath(421 downto 314);
    dbg_cpt_tap_cnt                     <= ddr3_ila_rdpath(529 downto 422);
    dbg_dq_idelay_tap_cnt               <= ddr3_ila_rdpath(619 downto 530);
    dbg_prbs_rdlvl                      <= ddr3_ila_rdpath(874 downto 620);

    dbg_prbs_rdlvl_left_edge_pb  ( 5 downto  0)     <= dbg_prbs_rdlvl (  5 downto   0);
    dbg_prbs_rdlvl_left_loss_pb  ( 1 downto  0)     <= dbg_prbs_rdlvl (  7 downto   6);
    dbg_prbs_rdlvl_left_edge_pb  (11 downto  6)     <= dbg_prbs_rdlvl ( 13 downto   8);
    dbg_prbs_rdlvl_left_loss_pb  ( 3 downto  2)     <= dbg_prbs_rdlvl ( 15 downto  14);
    dbg_prbs_rdlvl_left_edge_pb  (17 downto 12)     <= dbg_prbs_rdlvl ( 21 downto  16);
    dbg_prbs_rdlvl_left_loss_pb  ( 5 downto  4)     <= dbg_prbs_rdlvl ( 23 downto  22);
    dbg_prbs_rdlvl_left_edge_pb  (23 downto 18)     <= dbg_prbs_rdlvl ( 29 downto  24);
    dbg_prbs_rdlvl_left_loss_pb  ( 7 downto  6)     <= dbg_prbs_rdlvl ( 31 downto  30);
    dbg_prbs_rdlvl_left_edge_pb  (29 downto 24)     <= dbg_prbs_rdlvl ( 37 downto  32);
    dbg_prbs_rdlvl_left_loss_pb  ( 9 downto  8)     <= dbg_prbs_rdlvl ( 39 downto  38);
    dbg_prbs_rdlvl_left_edge_pb  (35 downto 30)     <= dbg_prbs_rdlvl ( 45 downto  40);
    dbg_prbs_rdlvl_left_loss_pb  (11 downto 10)     <= dbg_prbs_rdlvl ( 47 downto  46);
    dbg_prbs_rdlvl_left_edge_pb  (41 downto 36)     <= dbg_prbs_rdlvl ( 53 downto  48);
    dbg_prbs_rdlvl_left_loss_pb  (13 downto 12)     <= dbg_prbs_rdlvl ( 55 downto  54);
    dbg_prbs_rdlvl_left_edge_pb  (47 downto 42)     <= dbg_prbs_rdlvl ( 61 downto  56);
    dbg_prbs_rdlvl_left_loss_pb  (15 downto 14)     <= dbg_prbs_rdlvl ( 63 downto  62);
    dbg_prbs_rdlvl_right_edge_pb ( 5 downto  0)     <= dbg_prbs_rdlvl ( 69 downto  64);
    dbg_prbs_rdlvl_right_gain_pb ( 1 downto  0)     <= dbg_prbs_rdlvl ( 71 downto  70);
    dbg_prbs_rdlvl_right_edge_pb (11 downto  6)     <= dbg_prbs_rdlvl ( 77 downto  72);
    dbg_prbs_rdlvl_right_gain_pb ( 3 downto  2)     <= dbg_prbs_rdlvl ( 79 downto  78);
    dbg_prbs_rdlvl_right_edge_pb (17 downto 12)     <= dbg_prbs_rdlvl ( 85 downto  80);
    dbg_prbs_rdlvl_right_gain_pb ( 5 downto  4)     <= dbg_prbs_rdlvl ( 87 downto  86);
    dbg_prbs_rdlvl_right_edge_pb (23 downto 18)     <= dbg_prbs_rdlvl ( 93 downto  88);
    dbg_prbs_rdlvl_right_gain_pb ( 7 downto  6)     <= dbg_prbs_rdlvl ( 95 downto  94);
    dbg_prbs_rdlvl_right_edge_pb (29 downto 24)     <= dbg_prbs_rdlvl (101 downto  96);
    dbg_prbs_rdlvl_right_gain_pb ( 9 downto  8)     <= dbg_prbs_rdlvl (103 downto 102);
    dbg_prbs_rdlvl_right_edge_pb (35 downto 30)     <= dbg_prbs_rdlvl (109 downto 104);
    dbg_prbs_rdlvl_right_gain_pb (11 downto 10)     <= dbg_prbs_rdlvl (111 downto 110);
    dbg_prbs_rdlvl_right_edge_pb (41 downto 36)     <= dbg_prbs_rdlvl (117 downto 112);
    dbg_prbs_rdlvl_right_gain_pb (13 downto 12)     <= dbg_prbs_rdlvl (119 downto 118);
    dbg_prbs_rdlvl_right_edge_pb (47 downto 42)     <= dbg_prbs_rdlvl (125 downto 120);
    dbg_prbs_rdlvl_right_gain_pb (15 downto 14)     <= dbg_prbs_rdlvl (127 downto 126);
    dbg_prbs_rdlvl_pi_counter_read_val              <= dbg_prbs_rdlvl (133 downto 128);
    dbg_prbs_rdlvl_prbs_dqs_tap_cnt_r               <= dbg_prbs_rdlvl (139 downto 134);
    dbg_prbs_rdlvl_prbs_found_1st_edge_r(0)         <= dbg_prbs_rdlvl (140);
    dbg_prbs_rdlvl_prbs_found_2nd_edge_r(0)         <= dbg_prbs_rdlvl (141);
    dbg_prbs_rdlvl_compare_err(0)                   <= dbg_prbs_rdlvl (142);
    dbg_prbs_rdlvl_phy_if_empty(0)                  <= dbg_prbs_rdlvl (143);
    dbg_prbs_rdlvl_prbs_rdlvl_start(0)              <= dbg_prbs_rdlvl (144);
    dbg_prbs_rdlvl_prbs_rdlvl_done(0)               <= dbg_prbs_rdlvl (145);
    dbg_prbs_rdlvl_prbs_dqs_cnt_r                   <= dbg_prbs_rdlvl (150 downto 146);
    dbg_prbs_rdlvl_left_edge_pb_dqs_cnt             <= dbg_prbs_rdlvl (156 downto 151);
    dbg_prbs_rdlvl_right_edge_pb_dqs_cnt            <= dbg_prbs_rdlvl (162 downto 157);
    dbg_prbs_rdlvl_rd_victim_sel                    <= dbg_prbs_rdlvl (165 downto 163);
    dbg_prbs_rdlvl_complex_victim_inc(0)            <= dbg_prbs_rdlvl (166);
    dbg_prbs_rdlvl_right_gain_pb_dqs_cnt            <= dbg_prbs_rdlvl (174 downto 169);
    dbg_prbs_rdlvl_ref_bit                          <= dbg_prbs_rdlvl (177 downto 175);
    dbg_prbs_rdlvl_prbs_state_r1                    <= dbg_prbs_rdlvl (183 downto 178);
    dbg_prbs_rdlvl_rd_valid_r2(0)                   <= dbg_prbs_rdlvl (184);
    dbg_prbs_rdlvl_compare_err_r0(0)                <= dbg_prbs_rdlvl (185);
    dbg_prbs_rdlvl_compare_err_f0(0)                <= dbg_prbs_rdlvl (186);
    dbg_prbs_rdlvl_compare_err_r1(0)                <= dbg_prbs_rdlvl (187);
    dbg_prbs_rdlvl_compare_err_f1(0)                <= dbg_prbs_rdlvl (188);
    dbg_prbs_rdlvl_compare_err_r2(0)                <= dbg_prbs_rdlvl (189);
    dbg_prbs_rdlvl_compare_err_f2(0)                <= dbg_prbs_rdlvl (190);
    dbg_prbs_rdlvl_compare_err_r3(0)                <= dbg_prbs_rdlvl (191);
    dbg_prbs_rdlvl_compare_err_f3(0)                <= dbg_prbs_rdlvl (192);
    dbg_prbs_rdlvl_left_edge_found_pb               <= dbg_prbs_rdlvl (200 downto 193);
    dbg_prbs_rdlvl_right_edge_found_pb              <= dbg_prbs_rdlvl (208 downto 201);
    dbg_prbs_rdlvl_largest_left_edge                <= dbg_prbs_rdlvl (214 downto 209);
    dbg_prbs_rdlvl_smallest_right_edge              <= dbg_prbs_rdlvl (220 downto 215);
    dbg_prbs_rdlvl_fine_delay_incdec_pb             <= dbg_prbs_rdlvl (228 downto 221);
    dbg_prbs_rdlvl_fine_delay_sel(0)                <= dbg_prbs_rdlvl (229);
    dbg_prbs_rdlvl_compare_err_pb_latch_r           <= dbg_prbs_rdlvl (237 downto 230);
    dbg_prbs_rdlvl_fine_pi_dec_cnt                  <= dbg_prbs_rdlvl (243 downto 238);
    dbg_prbs_rdlvl_match_flag_and                   <= dbg_prbs_rdlvl (248 downto 244);
    dbg_prbs_rdlvl_stage_cnt                        <= dbg_prbs_rdlvl (250 downto 249);
    dbg_prbs_rdlvl_fine_inc_stage(0)                <= dbg_prbs_rdlvl (251);
    dbg_prbs_rdlvl_compare_err_pb_and(0)            <= dbg_prbs_rdlvl (252);
    dbg_prbs_rdlvl_right_edge_found(0)              <= dbg_prbs_rdlvl (253);
    dbg_prbs_rdlvl_fine_dly_error(0)                <= dbg_prbs_rdlvl (254);

    process(clk)
    begin
      if (clk'event and clk='1') then
        dbg_extn_trig_out_ack_r(0)          <= dbg_extn_trig_out;
        dbg_extn_trig_out_ack_r(7 downto 1) <= dbg_extn_trig_out_ack_r(6 downto 0);
      end if;
    end process;
    dbg_extn_trig_out_ack                   <= dbg_extn_trig_out_ack_r(7);

    process(clk)
    begin
      if (clk'event and clk='1') then
        tg_compare_error_w(0) <= tg_compare_error_i;
      end if;
    end process;

    dbg_tg_wr_data_counts <= tg_wr_data_counts;
    dbg_tg_rd_data_counts <= tg_rd_data_counts;

    process(clk)
    begin
      if (clk'event and clk='1') then
        app_rd_data_valid_r1  <= app_rd_data_valid after (TCQ) * 1 ps;
        app_rd_data_valid_r2  <= app_rd_data_valid_r1 after (TCQ) * 1 ps;
        app_rd_data_valid_r3  <= app_rd_data_valid_r2 after (TCQ) * 1 ps;
        app_rd_data_r1        <= app_rd_data;
        app_rd_data_r2        <= app_rd_data_r1;
        app_rd_data_r3        <= app_rd_data_r2;
      end if;
    end process;

    process(clk)
    begin
      if (clk'event and clk='1') then
        if (rst='1') then
          win_byte_select <= (others => '0') after (TCQ) * 1 ps;
        elsif (vio_win_byte_select_inc_re = '1') then
          if (to_integer(unsigned(win_byte_select)) = (DQ_WIDTH/DRAM_WIDTH)) then
            win_byte_select <= (others => '0') after (TCQ) * 1 ps;
          else
            win_byte_select <= std_logic_vector(unsigned(win_byte_select) + 1)  after (TCQ) * 1 ps;
          end if;
        elsif (vio_win_byte_select_dec_re = '1') then
          if (win_byte_select = "0000000") then
            win_byte_select <= std_logic_vector(to_unsigned(((DQ_WIDTH/DRAM_WIDTH)-1), 7)) after (TCQ) * 1 ps;
          else
            win_byte_select <= std_logic_vector(unsigned(win_byte_select) - 1) after (TCQ) * 1 ps;
          end if;
        end if;
      end if;
    end process;

    process(clk)
    begin
      if (clk'event and clk='1') then
        if (rst='1') then
          dbg_byte_sel_r <= (others => '0') after (TCQ) * 1 ps;
        else
          if (win_active(0) = '0') then
            dbg_byte_sel_r <= vio_sel_mux_rdd(DQS_CNT_WIDTH downto 0) after (TCQ) * 1 ps;
          else
            dbg_byte_sel_r <= win_current_byte(DQS_CNT_WIDTH downto 0) after (TCQ) * 1 ps;
          end if;
        end if;
      end if;
    end process;

    u_chk_win : mig_7series_v4_2_chk_win
      generic map (
        TCQ         => TCQ,
        nCK_PER_CLK => nCK_PER_CLK,
        DLY_WIDTH   => 26,
        DQ_PER_DQS  => DRAM_WIDTH,
        DQ_WIDTH    => PAYLOAD_WIDTH,
        SC_WIDTH    => 3,
        SDC_WIDTH   => 5,
        WIN_SIZE    => 6,
        SIM_OPTION  => SIMULATION
        )
        port map (
          clk                   => clk,
          rst                   => rst,
          mem_pattern_init_done => mem_pattern_init_done(0),
          win_start             => win_start(0),
          read_valid            => app_rd_data_valid_r2,
          win_bit_select        => (others => '0'),
          win_byte_select       => win_byte_select,
          cmp_data              => cmp_data,
          rd_data               => app_rd_data_r2,
          win_sel_pi_pon        => win_sel_pi_pon(0),
          pi_curr_tap_cnt       => dbg_pi_counter_read_val,
          po_curr_tap_cnt       => dbg_po_counter_read_val,
          pi_left_ram_out       => pi_win_left_ram_out,
          pi_right_ram_out      => pi_win_right_ram_out,
          po_left_ram_out       => po_win_left_ram_out,
          po_right_ram_out      => po_win_right_ram_out,
          win_active            => win_active(0),
          win_clr_error         => win_clr_error(0),
          pi_win_up             => pi_win_up,
          pi_win_down           => pi_win_down,
          po_win_up             => po_win_up,
          po_stg23_sel          => po_stg23_sel,
          po_win_down           => po_win_down,
          po_win_tg_rst         => po_win_tg_rst,
          win_current_bit       => win_current_bit,
          win_current_byte      => win_current_byte(3 downto 0),
          dbg_clear_error       => dbg_clear_error(0),
          dbg_win_chk           => dbg_win_chk
          );

u_vio_twm_ddrx : vio_twm_ddrx
  PORT MAP (
    clk         => clk,
    probe_in0   => win_start,
    probe_in1   => dbg_pi_counter_read_val,
    probe_in2   => pi_win_left_ram_out,
    probe_in3   => pi_win_right_ram_out,
    probe_in4   => win_active,
    probe_in5   => dbg_win_chk(164 downto 0),
    probe_in6   => win_current_bit,
    probe_in7   => win_current_byte(3 downto 0),
    probe_in8   => win_byte_select,
    probe_in9   => po_win_left_ram_out,
    probe_in10  => po_win_right_ram_out,
    probe_in11  => dbg_po_counter_read_val,
    probe_in12  => mem_pattern_init_done,
    probe_in13  => tg_compare_error_w,
    probe_in14  => dbg_tg_wr_data_counts,
    probe_in15  => dbg_tg_rd_data_counts,
    probe_out0  => dbg_bit,
    probe_out1  => dbg_dqs,
    probe_out2  => vio_modify_enable,
    probe_out3  => vio_data_mode_value,
    probe_out4  => vio_addr_mode_value,
    probe_out5  => vio_instr_mode_value,
    probe_out6  => vio_bl_mode_value,
    probe_out7  => vio_fixed_bl_value,
    probe_out8  => vio_data_mask_gen,
    probe_out9  => vio_pause_traffic,
    probe_out10 => vio_fixed_instr_value,
    probe_out11 => dbg_clear_error,
    probe_out12 => vio_tg_rst,
    probe_out13 => wdt_en_w,
    probe_out14 => win_start,
    probe_out15 => win_sel_pi_pon,
    probe_out16 => vio_dbg_sel_pi_incdec,
    probe_out17 => vio_dbg_sel_po_incdec,
    probe_out18 => vio_dbg_pi_f_inc,
    probe_out19 => vio_dbg_pi_f_dec,
    probe_out20 => vio_dbg_po_f_inc,
    probe_out21 => vio_dbg_po_f_dec,
    probe_out22 => vio_dbg_po_f_stg23_sel,
    probe_out23 => vio_win_byte_select_inc,
    probe_out24 => vio_win_byte_select_dec,
    probe_out25 => vio_sel_mux_rdd(3 downto 0),
    probe_out26 => vio_tg_simple_data_sel
  );

u_ila_ddr3_native : ila_ddr3_native
  PORT MAP (
    clk           => clk,
    trig_out      => dbg_extn_trig_out,
    trig_out_ack  => dbg_extn_trig_out_ack,
    probe0        => dbg_init_calib_complete,
    probe1        => dbg_wrlvl_start,
    probe2        => dbg_wrlvl_done,
    probe3        => dbg_wrlvl_err,
    probe4        => dbg_pi_phaselock_start,
    probe5        => dbg_pi_phaselocked_done,
    probe6        => dbg_pi_phaselock_err,
    probe7        => dbg_pi_dqsfound_start,
    probe8        => dbg_pi_dqsfound_done,
    probe9        => dbg_pi_dqsfound_err,
    probe10       => dbg_rdlvl_start,
    probe11       => dbg_rdlvl_done,
    probe12       => dbg_rdlvl_err,
    probe13       => dbg_oclkdelay_calib_start,
    probe14       => dbg_oclkdelay_calib_done,
    probe15       => dbg_wrcal_start,
    probe16       => dbg_wrcal_done,
    probe17       => dbg_wrcal_err,
    probe18       => dbg_phy_init_5_0,
    probe19       => dbg_rddata_valid_r,
    probe20       => dbg_rddata_r,
    probe21       => dbg_fine_adjust_done_r,
    probe22       => dbg_cmd_wdt_err_w,
    probe23       => dbg_rd_wdt_err_w,
    probe24       => dbg_wr_wdt_err_w,
    probe25       => dbg_tg_compare_error,
    probe26       => dbg_cmp_data_valid,
    probe27       => dbg_cmp_error,
    probe28       => dbg_cmp_data_r,
    probe29       => dbg_dq_error_bytelane_cmp,
    probe30       => dbg_cumlative_dq_lane_error,
    probe31       => dbg_cmp_addr_i,
    probe32       => dbg_cmp_bl_i,
    probe33       => dbg_mcb_cmd_full_i,
    probe34       => dbg_mcb_wr_full_i,
    probe35       => dbg_mcb_rd_empty_i,
    probe36       => dbg_ddrx_ila_rdpath_765_764,
    probe37       => dbg_wl_state_r,
    probe38       => dbg_dqs_cnt_r,
    probe39       => dbg_wl_edge_detect_valid_r,
    probe40       => dbg_rd_data_edge_detect_r_by_dqs,
    probe41       => dbg_wl_po_fine_cnt_by_dqs,
    probe42       => dbg_wl_po_coarse_cnt_by_dqs,

    probe43       => dbg_phy_oclkdelay_zfo,
    probe44       => dbg_ocal_fuzz2oneeighty,
    probe45       => dbg_ocal_fuzz2zero,
    probe46       => dbg_ocal_oneeighty2fuzz,
    probe47       => dbg_ocal_zero2fuzz,
    probe48       => dbg_ocal_oclkdelay_calib_cnt,
    probe49       => dbg_ocal_scan_win_not_found,

    probe50       => dbg_wrcal_pat_data_match_r,
    probe51       => dbg_wrcal_pat_data_match_valid_r,
    probe52       => dbg_wrcal_dqs_cnt_r,
    probe53       => cal2_state_r,
    probe54       => not_empty_wait_cnt,
    probe55       => dbg_early1_data,
    probe56       => dbg_early2_data,
    probe57       => dbg_phy_oclkdelay_cal_57_54,
    probe58       => dbg_phy_wrlvl_128_75,
    probe59       => dbg_phy_wrlvl_155_129,
    probe60       => dbg_pi_phase_locked_phy4lanes,
    probe61       => dbg_pi_dqs_found_lanes_phy4lanes,
    probe62       => dbg_rd_data_offset,
    probe63       => dbg_cal1_state_r,
    probe64       => dbg_cal1_cnt_cpt_r,
    probe65       => dbg_mux_rd_rise0_r,
    probe66       => dbg_mux_rd_fall0_r,
    probe67       => dbg_mux_rd_rise1_r,
    probe68       => dbg_mux_rd_fall1_r,
    probe69       => dbg_mux_rd_rise2_r,
    probe70       => dbg_mux_rd_fall2_r,
    probe71       => dbg_mux_rd_rise3_r,
    probe72       => dbg_mux_rd_fall3_r,
    probe73       => dbg_rdlvl_pat_data_match_r,
    probe74       => dbg_mux_rd_valid_r,
    probe75       => dbg_cpt_first_edge_cnt_by_dqs,
    probe76       => dbg_cpt_second_edge_cnt_by_dqs,
    probe77       => dbg_cpt_tap_cnt_by_dqs,
    probe78       => dbg_dq_idelay_tap_cnt_by_dqs,
    probe79       => dbg_dbg_calib_rd_data_offset_1,
    probe80       => dbg_dbg_calib_rd_data_offset_2,
    probe81       => dbg_data_offset,
    probe82       => dbg_data_offset_1,
    probe83       => dbg_data_offset_2,
    probe84       => dbg_cpt_first_edge_cnt,
    probe85       => dbg_cpt_second_edge_cnt,
    probe86       => dbg_cpt_tap_cnt,
    probe87       => dbg_dq_idelay_tap_cnt,

    probe88       => dbg_prbs_rdlvl_left_edge_pb,
    probe89       => dbg_prbs_rdlvl_left_loss_pb,
    probe90       => dbg_prbs_rdlvl_right_edge_pb,
    probe91       => dbg_prbs_rdlvl_right_gain_pb,
    probe92       => dbg_prbs_rdlvl_pi_counter_read_val,
    probe93       => dbg_prbs_rdlvl_prbs_dqs_tap_cnt_r,
    probe94       => dbg_prbs_rdlvl_prbs_found_1st_edge_r,
    probe95       => dbg_prbs_rdlvl_prbs_found_2nd_edge_r,
    probe96       => dbg_prbs_rdlvl_compare_err,
    probe97       => dbg_prbs_rdlvl_phy_if_empty,
    probe98       => dbg_prbs_rdlvl_prbs_rdlvl_start,
    probe99       => dbg_prbs_rdlvl_prbs_rdlvl_done,
    probe100      => dbg_prbs_rdlvl_prbs_dqs_cnt_r,
    probe101      => dbg_prbs_rdlvl_left_edge_pb_dqs_cnt,
    probe102      => dbg_prbs_rdlvl_right_edge_pb_dqs_cnt,
    probe103      => dbg_prbs_rdlvl_rd_victim_sel,
    probe104      => dbg_prbs_rdlvl_complex_victim_inc,
    probe105      => dbg_prbs_rdlvl_right_gain_pb_dqs_cnt,
    probe106      => dbg_prbs_rdlvl_ref_bit,
    probe107      => dbg_prbs_rdlvl_prbs_state_r1,
    probe108      => dbg_prbs_rdlvl_rd_valid_r2,
    probe109      => dbg_prbs_rdlvl_compare_err_r0,
    probe110      => dbg_prbs_rdlvl_compare_err_f0,
    probe111      => dbg_prbs_rdlvl_compare_err_r1,
    probe112      => dbg_prbs_rdlvl_compare_err_f1,
    probe113      => dbg_prbs_rdlvl_compare_err_r2,
    probe114      => dbg_prbs_rdlvl_compare_err_f2,
    probe115      => dbg_prbs_rdlvl_compare_err_r3,
    probe116      => dbg_prbs_rdlvl_compare_err_f3,
    probe117      => dbg_prbs_rdlvl_left_edge_found_pb,
    probe118      => dbg_prbs_rdlvl_right_edge_found_pb,
    probe119      => dbg_prbs_rdlvl_largest_left_edge,
    probe120      => dbg_prbs_rdlvl_smallest_right_edge,
    probe121      => dbg_prbs_rdlvl_fine_delay_incdec_pb,
    probe122      => dbg_prbs_rdlvl_fine_delay_sel,
    probe123      => dbg_prbs_rdlvl_compare_err_pb_latch_r,
    probe124      => dbg_prbs_rdlvl_fine_pi_dec_cnt,
    probe125      => dbg_prbs_rdlvl_match_flag_and,
    probe126      => dbg_prbs_rdlvl_stage_cnt,
    probe127      => dbg_prbs_rdlvl_fine_inc_stage,
    probe128      => dbg_prbs_rdlvl_compare_err_pb_and,
    probe129      => dbg_prbs_rdlvl_right_edge_found,
    probe130      => dbg_prbs_rdlvl_fine_dly_error,

    probe131      => dbg_ocal_lim_done,
    probe132      => dbg_ocal_stg3_left_lim,
    probe133      => dbg_ocal_stg3_right_lim,
    probe134      => dbg_ocal_center_calib_start,

    probe135      => dbg_wcal_mux_rd_rise0_r,
    probe136      => dbg_wcal_mux_rd_fall0_r,
    probe137      => dbg_wcal_mux_rd_rise1_r,
    probe138      => dbg_wcal_mux_rd_fall1_r,
    probe139      => dbg_wcal_mux_rd_rise2_r,
    probe140      => dbg_wcal_mux_rd_fall2_r,
    probe141      => dbg_wcal_mux_rd_rise3_r,
    probe142      => dbg_wcal_mux_rd_fall3_r,
    probe143      => dbg_early1_data_match_r,
    probe144      => dbg_early2_data_match_r,
    probe145      => dbg_wcal_sanity_pat_data_match_valid_r,
    probe146      => dbg_prbs_final_dqs_tap_cnt_r,
    probe147      => dbg_prbs_first_edge_taps,
    probe148      => dbg_prbs_second_edge_taps,
    probe149      => dbg_ocal_center_calib_done,
    probe150      => dbg_phy_oclkdelay_cal_taps,
    probe151      => dbg_ocal_tap_cnt,
    probe152      => device_temp
  );

  end generate;

  NO_CHIPSCOPE : if (not(DEBUG_PORT = "ON")) generate
    vio_modify_enable(0)        <= '0';
    vio_data_mode_value         <= "0010";
    vio_addr_mode_value         <= "011";
    vio_instr_mode_value        <= "0010";
    vio_bl_mode_value           <= "10";
    vio_fixed_bl_value          <= "0000010000";
    vio_data_mask_gen(0)        <= '0';
    vio_pause_traffic(0)        <= '0';
    vio_fixed_instr_value       <= "001";
    dbg_clear_error(0)          <= '0';

    dbg_sel_pi_incdec(0)        <= '0';
    dbg_sel_po_incdec(0)        <= '0';
    manual_clear_error(0)       <= '0';
    dbg_pi_f_inc(0)             <= '0';
    dbg_pi_f_dec(0)             <= '0';
    dbg_po_f_inc(0)             <= '0';
    dbg_po_f_dec(0)             <= '0';
    dbg_po_f_stg23_sel(0)       <= '0';
    win_start(0)                <= '0';
    win_sel_pi_pon(0)           <= '0';

    vio_win_byte_select_inc(0)  <= '0';
    vio_win_byte_select_dec(0)  <= '0';
    vio_sel_mux_rdd             <= (others => '0');
    vio_tg_simple_data_sel      <= (others => '0');
    po_win_tg_rst               <= '0';
    vio_tg_rst(0)               <= '0';
    wdt_en_w(0)                 <= '1';

  end generate;

       

end architecture arch_example_top;


