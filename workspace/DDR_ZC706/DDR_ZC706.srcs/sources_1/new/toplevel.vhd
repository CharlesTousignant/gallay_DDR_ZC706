----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/08/2021 08:40:43 AM
-- Design Name: 
-- Module Name: toplevel - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VComponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity toplevel is
    Port (
        -- System inputs
        sys_clk_p : IN std_logic;
        sys_clk_n : IN std_logic;
        sys_rst : IN std_logic;
        
        -- Memory IOs
            -- INOUTs
        ddr3_dq : inout std_logic_vector(63 downto 0);
        ddr3_dqs_p : inout std_logic_vector(7 downto 0);
        ddr3_dqs_n : inout std_logic_vector(7 downto 0);
        
            -- Outputs
        ddr3_addr : out   std_logic_vector(13 downto 0);
        ddr3_ba : out   std_logic_vector(2 downto 0);
        ddr3_ras_n : out   std_logic;
        ddr3_cas_n : out   std_logic;
        ddr3_we_n : out   std_logic;
        ddr3_reset_n : out   std_logic;
        
        ddr3_ck_p : out   std_logic_vector(0 downto 0);
        ddr3_ck_n : out   std_logic_vector(0 downto 0);
        ddr3_cke : out   std_logic_vector(0 downto 0);
        
        ddr3_cs_n : out   std_logic_vector(0 downto 0);
        ddr3_dm : out   std_logic_vector(7 downto 0);
        ddr3_odt : out   std_logic_vector(0 downto 0)
     );
end toplevel;

architecture Behavioral of toplevel is

-- Application interface ports
signal app_addr : std_logic_vector(27 downto 0);
signal app_cmd : std_logic_vector(2 downto 0);
signal app_en : std_logic;
signal app_wdf_data : std_logic_vector(511 downto 0);
signal app_wdf_end : std_logic;
signal app_wdf_mask : std_logic_vector(63 downto 0) := (63 DOWNTO 0 => '0');
signal app_wdf_wren : std_logic;
signal app_rd_data : std_logic_vector(511 downto 0);
signal app_rd_data_end : std_logic;
signal app_rd_data_valid : std_logic;
signal app_rdy : std_logic;
signal app_wdf_rdy : std_logic;
signal app_sr_req : std_logic := '0';
signal app_ref_req : std_logic;
signal app_zq_req : std_logic;
signal app_sr_active : std_logic;
signal app_ref_ack : std_logic;
signal app_zq_ack : std_logic;

signal ui_clk : std_logic;
signal ui_clk_sync_rst : std_logic;
signal init_calib_complete : std_logic;

-- Debug signals
signal ddr3_ila_wrpath : std_logic_vector(390 downto 0);
signal ddr3_ila_rdpath : std_logic_vector(1023 downto 0);
signal ddr3_ila_basic : std_logic_vector(119 downto 0);
signal ddr3_vio_sync_out : std_logic_vector(13 downto 0);

signal dbg_byte_sel : std_logic_vector(3 downto 0);
signal dbg_sel_pi_incdec : std_logic;
signal dbg_pi_f_inc : std_logic;
signal dbg_pi_f_dec : std_logic;
signal dbg_sel_po_incdec : std_logic;
signal dbg_po_f_inc : std_logic;
signal dbg_po_f_stg23_sel : std_logic;
signal dbg_po_f_dec : std_logic;
signal dbg_pi_counter_read_val : std_logic_vector(5 downto 0);
signal dbg_po_counter_read_val : std_logic_vector(8 downto 0);

-- Commands aliases
constant READ : std_logic_vector(2 downto 0) := "001";
constant WRITE : std_logic_vector(2 downto 0) := "000";

-- Default value to be written and expected after read operation => 1111 1111 1111 1111 0000 0000 0000 0000
constant DEFAULT_VALUE : std_logic_vector(31 downto 0) := (15 downto 0 => '0', others => '1');

-- Internal single ended clock signal
signal internal_clk : std_logic;

-- State signal
signal state : Integer range 0 to 7 := 0;

-- Buffer
signal read_buffer : std_logic_vector(31 downto 0) := (31 downto 0 => '0');

-- Counters
signal led_on_counter_value : Integer range 0 to 268435456 := 0; -- 2**28 = 268 435 456
signal led_off_counter_value : Integer range 0 to 268435456 := 0;

component mig_7series_0
    port (
    
        -- Memory interface ports
        ddr3_dq                        : inout std_logic_vector(63 downto 0);
        ddr3_dqs_p                     : inout std_logic_vector(7 downto 0);
        ddr3_dqs_n                     : inout std_logic_vector(7 downto 0);
        

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
        
        -- Application interface ports
        app_addr                       : in    std_logic_vector(27 downto 0);
        app_cmd                        : in    std_logic_vector(2 downto 0);
        app_en                         : in    std_logic;
        app_wdf_data                   : in    std_logic_vector(511 downto 0);
        app_wdf_end                    : in    std_logic;
        app_wdf_mask                   : in    std_logic_vector(63 downto 0);
        app_wdf_wren                   : in    std_logic;
        app_rd_data                    : out   std_logic_vector(511 downto 0);
        app_rd_data_end                : out   std_logic;
        app_rd_data_valid              : out   std_logic;
        app_rdy                        : out   std_logic;
        app_wdf_rdy                    : out   std_logic;
        app_sr_req                     : in    std_logic;
        app_ref_req                    : in    std_logic;
        app_zq_req                     : in    std_logic;
        app_sr_active                  : out   std_logic;
        app_ref_ack                    : out   std_logic;
        app_zq_ack                     : out   std_logic;
        
        ui_clk                         : out   std_logic;
        ui_clk_sync_rst                : out   std_logic;
        init_calib_complete            : out   std_logic;
        
        -- Debug signals
        ddr3_ila_wrpath                : out   std_logic_vector(390 downto 0);
        ddr3_ila_rdpath                : out   std_logic_vector(1023 downto 0);
        ddr3_ila_basic                 : out   std_logic_vector(119 downto 0);
        ddr3_vio_sync_out              : in    std_logic_vector(13 downto 0);
        

        dbg_byte_sel                   : in    std_logic_vector(3 downto 0);
        dbg_sel_pi_incdec              : in    std_logic;
        dbg_pi_f_inc                   : in    std_logic;
        dbg_pi_f_dec                   : in    std_logic;
        dbg_sel_po_incdec              : in    std_logic;
        dbg_po_f_inc                   : in    std_logic;
        dbg_po_f_stg23_sel             : in    std_logic;
        dbg_po_f_dec                   : in    std_logic;
        dbg_pi_counter_read_val        : out   std_logic_vector(5 downto 0);
        dbg_po_counter_read_val        : out   std_logic_vector(8 downto 0);
        
        -- System Clock Ports
        sys_clk_p                      : in    std_logic;
        sys_clk_n                      : in    std_logic;
        sys_rst                        : in    std_logic
    );

end component mig_7series_0;

begin

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
        
        -- Debug Ports
        ddr3_ila_basic                 => ddr3_ila_basic,
        ddr3_ila_wrpath                => ddr3_ila_wrpath,
        ddr3_ila_rdpath                => ddr3_ila_rdpath,
        ddr3_vio_sync_out              => ddr3_vio_sync_out,
        dbg_pi_counter_read_val        => dbg_pi_counter_read_val,
        dbg_sel_pi_incdec              => dbg_sel_pi_incdec,
        dbg_po_counter_read_val        => dbg_po_counter_read_val,
        dbg_sel_po_incdec              => dbg_sel_po_incdec,
        dbg_byte_sel                   => dbg_byte_sel,
        dbg_pi_f_inc                   => dbg_pi_f_inc,
        dbg_pi_f_dec                   => dbg_pi_f_dec,
        dbg_po_f_inc                   => dbg_po_f_inc,
        dbg_po_f_stg23_sel             => dbg_po_f_stg23_sel,
        dbg_po_f_dec                   => dbg_po_f_dec,
        
        -- System Clock Ports
        sys_clk_p                       => sys_clk_p,
        sys_clk_n                       => sys_clk_n,
        sys_rst                         => sys_rst
    );
    

    -- IBUFDS to transform LVDS (differential) clock to single ended clock.
    IBUFDS_clk : IBUFDS
    port map (
        O => internal_clk,
        I => sys_clk_p,
        IB => sys_clk_n
    );
    
    ROUTINE_PROCESS:
    process(internal_clk)
    begin
        if rising_edge(internal_clk) then
            if app_rdy = '1' then
                
            end if;
        end if;
    end process;
    
    STATE_SET_PROCESS:
    process(internal_clk)
    begin
        if rising_edge(internal_clk) then
            case state is
                -- S0
                when 0 =>
                    if (app_rdy = '0' or app_wdf_rdy = '0') then
                        state <= 0;
                    else
                        state <= 1;
                    end if;
                    
                -- S1
                when 1 =>
                    state <= 2;
                    
                -- S2
                when 2 =>
                    if app_rdy = '1' then
                        state <= 3;
                    else
                        state <= 2;
                    end if;
                    
                -- S3  
                when 3 =>
                    if app_rd_data_valid = '1' then
                        state <= 4;
                    else
                        state <= 3;
                    end if;
                    
                -- S4
                when 4 =>
                    if read_buffer = DEFAULT_VALUE then
                        state <= 6;
                    else
                        state <= 5;
                    end if;
                
                -- S5
                when 5 =>
                    state <= 0;
                when 6 =>
                    if led_on_counter_value = 268435456 then
                        state <= 7;
                    else
                        state <= 6;
                    end if;
                when 7 =>
                    if led_off_counter_value = 268435456 then
                        state <= 0;
                    else
                        state <= 7;
                    end if;
            end case;
        end if;
    end process;
    
    OPERATIONS_PROCESS:
    process(state, internal_clk)
    begin
        if rising_edge(internal_clk) then
            -- WRITING
            if state = 1 then
                -- Writing command
                app_cmd <= WRITE;
                -- Writing address, data and mask
                app_addr <= (app_addr'length - 1 downto 0 => '0');
                app_wdf_data(DEFAULT_VALUE'length - 1 downto 0) <= DEFAULT_VALUE;
                app_wdf_mask <= (app_wdf_mask'length - 1 downto 0 => '0');
                -- Set Write and App enable = 1
                app_wdf_wren <= '1';
                app_en <= '1';
            end if;
            
            -- READING
            if state = 3 then
                -- Reading command
                app_cmd <= READ;
                -- Reading address
                app_addr <= (app_addr'length - 1 downto 0 => '0');
                -- App enable = 1
                app_en <= '1';
            end if;
            
            -- COPYING READ RESULT TO BUFFER
            if state = 4 then
                read_buffer <= app_rd_data(read_buffer'length downto 0);
            end if;
            
            if state = 6 then
                if led_on_counter_value = 268435456 then
                    led_on_counter_value <= 0;
                else
                    led_on_counter_value <= led_on_counter_value + 1;
                end if;
            end if;
            
            if state = 7 then
                if led_off_counter_value = 268435456 then
                    led_off_counter_value <= 0;
                else
                    led_off_counter_value <= led_off_counter_value + 1;
                end if;
            end if;
        end if;
    end process;
    
end Behavioral;
