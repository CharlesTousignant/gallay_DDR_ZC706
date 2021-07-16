----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/16/2021 10:25:14 AM
-- Design Name: 
-- Module Name: ps_to_mig_interface - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ps_to_mig_interface is
    Port (
        ui_clk : IN std_logic;
        ui_clk_sync_rst : IN std_logic;
        
        -- S_AXI interface
        -- Address Write Signals
        s_axi_awid : OUT std_logic_vector(3 downto 0);
        s_axi_awaddr : OUT std_logic_vector(29 downto 0);
        s_axi_awlen : OUT std_logic_vector(7 downto 0);
        s_axi_awsize : OUT std_logic_vector(2 downto 0);
        s_axi_awburst : OUT std_logic_vector(1 downto 0);
        s_axi_awlock : OUT std_logic;
        s_axi_awcache : OUT std_logic_vector(3 downto 0);
        s_axi_awprot : OUT std_logic_vector(2 downto 0);
        s_axi_awqos : OUT std_logic_vector(3 downto 0);
        s_axi_awvalid : OUT std_logic;
        s_axi_awready : IN std_logic;
        -- Address Write Data Signals
        s_axi_wdata : OUT std_logic_vector(31 downto 0);
        s_axi_wstrb : OUT std_logic_vector(3 downto 0);
        s_axi_wlast : OUT std_logic;
        s_axi_wvalid : OUT std_logic;
        s_axi_wready : IN std_logic;
        -- Write Response Signals
        s_axi_bready : OUT std_logic;
        s_axi_bid : IN std_logic_vector(3 downto 0);
        s_axi_bresp : IN std_logic_vector(1 downto 0);
        s_axi_bvalid : IN std_logic;
        
        -- Address Read Signals
        s_axi_arid : OUT std_logic_vector(3 downto 0);
        s_axi_araddr : OUT std_logic_vector(29 downto 0);
        s_axi_arlen : OUT std_logic_vector(7 downto 0);
        s_axi_arsize : OUT std_logic_vector(2 downto 0);
        s_axi_arburst : OUT std_logic_vector(1 downto 0);
        s_axi_arlock : OUT std_logic;
        s_axi_arcache : OUT std_logic_vector(3 downto 0);
        s_axi_arprot : OUT std_logic_vector(2 downto 0);
        s_axi_arqos : OUT std_logic_vector(3 downto 0);
        s_axi_arvalid : OUT std_logic;
        s_axi_arready : IN std_logic;
        -- Response Read Signals
        s_axi_rready : OUT std_logic;
        s_axi_rid : IN std_logic_vector(3 downto 0);
        s_axi_rdata : IN std_logic_vector(31 downto 0);
        s_axi_rresp : IN std_logic_vector(1 downto 0);
        s_axi_rlast : IN std_logic;
        s_axi_rvalid : IN std_logic;
        
        -- ARM interface
        gpio_wdata : IN std_logic_vector(31 downto 0);
        gpio_wvalid : IN std_logic;
        gpio_address : IN std_logic_vector(29 downto 0);
        gpio_rready : IN std_logic;
        gpio_rdata : OUT std_logic_vector(31 downto 0);
        gpio_rvalid : OUT std_logic;
        gpio_resp : OUT std_logic_vector(1 downto 0);
        gpio_state : OUT std_logic
        
        
    );
end ps_to_mig_interface;

architecture Behavioral of ps_to_mig_interface is

constant READY : std_logic := '0';
constant BUSY : std_logic := '1';


type STATE_TYPE is (IDLE, WRITING, WRITING_WAIT, WRITING_RESP, READING, READING_WAIT, READING_RESP);
signal STATE : STATE_TYPE := IDLE;

begin

    -- STATE transition management process
    process(ui_clk)
    begin
        if(rising_edge(ui_clk)) then
            if ui_clk_sync_rst = '1' then
                STATE <= IDLE;
            else
                case STATE is
                    when IDLE =>
                        if gpio_wvalid = gpio_rready then
                            STATE <= IDLE;
                        elsif gpio_wvalid = '1' then
                            STATE <= WRITING;
                        else
                            STATE <= READING;
                        end if;
                    when WRITING =>
                        if s_axi_awready = '1' and s_axi_wready = '1' then
                            STATE <= WRITING_WAIT;
                        end if;
                    when WRITING_WAIT =>
                        if s_axi_bvalid = '1' then
                            STATE <= WRITING_RESP;
                        end if;
                    when WRITING_RESP =>
                        STATE <= IDLE;
                    when READING =>
                        if s_axi_arready = '1' then
                            STATE <= READING_WAIT;
                        end if;
                    when READING_WAIT =>
                        if s_axi_rvalid = '1' then
                            STATE <= READING_RESP;
                        end if;
                    when READING_RESP =>
                        STATE <= IDLE;
                end case;
            end if;
        end if;
    end process;
    
    -- Outputs process
    process(state)
    begin
        case STATE is
                    when IDLE =>
                        
                        s_axi_wvalid <= '0';
                        s_axi_awvalid <= '0';
                        s_axi_arvalid <= '0';
                        s_axi_rready <= '0';
                        
                        s_axi_wstrb <= "0000";
                        s_axi_bready <= '0';
                        s_axi_rready <= '0';
                        
                        gpio_state <= READY;
                        
                    when WRITING =>
                        s_axi_wdata <= gpio_wdata;
                        s_axi_awaddr <= gpio_address;
                        
                        s_axi_wstrb <= "1111";
                        s_axi_wlast <= '1';
                        
                        s_axi_awlen <= "00000000";
                        s_axi_awsize <= "010"; -- 4 bytes = 32 bits de transfert
                        s_axi_awburst <= "00";
                        
                        s_axi_wvalid <= '1';
                        s_axi_awvalid <= '1';
                        
                        gpio_state <= BUSY;
                        
                    when WRITING_WAIT =>
                        s_axi_bready <= '1';
                        
                    when WRITING_RESP =>
                        s_axi_wvalid <= '0';
                        s_axi_awvalid <= '0';
                        s_axi_bready <= '0';
                        gpio_resp <= s_axi_bresp;
                        
                    when READING =>
                        s_axi_araddr <= gpio_address;
                        s_axi_arlen <= "00000000";
                        s_axi_arsize <= "010"; -- 4 bytes = 32 bits de transfert
                        s_axi_arburst <= "00";
                        
                        s_axi_arvalid <= '1';
                        
                        gpio_state <= BUSY;
                        
                    when READING_WAIT =>
                        s_axi_rready <= '1';
                        
                    when READING_RESP =>
                        s_axi_rready <= '0';
                        s_axi_arvalid <= '0';
                        gpio_rdata <= s_axi_rdata;
                        gpio_rvalid <= '1';
                        gpio_resp <= s_axi_rresp;
                        
                end case;
    end process; 

end Behavioral;
