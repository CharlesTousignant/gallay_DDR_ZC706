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
--  /   /         Filename           : mig_7series_nodebug.vhd
-- /___/   /\     Date Last Modified : $Date: 2011/06/02 08:35:03 $
-- \   \  /  \    Date Created       : Wed Feb 01 2012
--  \___\/\___\
--
-- Device           : 7 Series
-- Design Name      : DDR3 SDRAM
-- Purpose          :
--   Wrapper module for the user design top level file. This module can be 
--   instantiated in the system and interconnect as shown in example design 
--   (example_top module).
-- Revision History :
--*****************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mig_7series_nodebug is
  port (
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
      -- System Clock Ports
      sys_clk_p                      : in    std_logic;
      sys_clk_n                      : in    std_logic;
      device_temp                      : out std_logic_vector(11 downto 0);
    sys_rst                     : in    std_logic
  );
end entity mig_7series_nodebug;

architecture arch_mig_7series_nodebug of mig_7series_nodebug is

-- Start of IP top component

  component mig_7series_nodebug_mig
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
      -- System Clock Ports
      sys_clk_p                      : in    std_logic;
      sys_clk_n                      : in    std_logic;
      device_temp                      : out std_logic_vector(11 downto 0);
      sys_rst             : in std_logic
      );
  end component mig_7series_nodebug_mig;

-- End of IP top component

begin

-- Start of IP top instance
  u_mig_7series_nodebug_mig : mig_7series_nodebug_mig
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
       init_calib_complete            => init_calib_complete,
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
       app_sr_req                     => app_sr_req,
       app_ref_req                    => app_ref_req,
       app_zq_req                     => app_zq_req,
       app_sr_active                  => app_sr_active,
       app_ref_ack                    => app_ref_ack,
       app_zq_ack                     => app_zq_ack,
       ui_clk                         => ui_clk,
       ui_clk_sync_rst                => ui_clk_sync_rst,
       app_wdf_mask                   => app_wdf_mask,
       -- System Clock Ports
       sys_clk_p                       => sys_clk_p,
       sys_clk_n                       => sys_clk_n,
	  device_temp                      => device_temp,
      sys_rst                        => sys_rst
    );
-- End of IP top instance

end architecture arch_mig_7series_nodebug;

