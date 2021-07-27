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
use IEEE.numeric_std.ALL;

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
        gpio_address : IN std_logic_vector(31 downto 0);
        
        gpio_wdata : IN std_logic_vector(31 downto 0);
        gpio_wvalid : IN std_logic;
        
        gpio_rready : IN std_logic;
        gpio_rdata : OUT std_logic_vector(31 downto 0);
        gpio_rvalid : OUT std_logic;
        gpio_rdata_ack : IN std_logic;
        
        gpio_resp : OUT std_logic_vector(1 downto 0);
        gpio_resp_valid : OUT std_logic;
        gpio_resp_ack : IN std_logic;
        
        gpio_debug_current_state : OUT std_logic_vector(3 downto 0);
        
        aresetn_in : IN std_logic;
        aresetn_sync_out : OUT std_logic
    );
end ps_to_mig_interface;

architecture Behavioral of ps_to_mig_interface is

type STATE_TYPE is (RESET, IDLE, WRITE_BUFFER, WRITE, WRITE_WAIT, WRITE_RESP, READ_BUFFER_ADDR, READ, READ_WAIT, READ_BUFFER_DATA, READ_RESP);
signal STATE : STATE_TYPE := RESET;

signal wdata_buffer : std_logic_vector(31 downto 0);
signal awaddr_buffer : std_logic_vector(29 downto 0);

signal rdata_buffer : std_logic_vector(31 downto 0);
signal araddr_buffer : std_logic_vector(29 downto 0);

begin

    -- STATE transition process
    process(ui_clk)
    begin
        if rising_edge(ui_clk) then
            if ui_clk_sync_rst = '1' then
                STATE <= RESET;  
            else
                case STATE is
                when RESET =>
                    STATE <= IDLE;
                when IDLE =>
                    if gpio_wvalid = gpio_rready then
                        STATE <= IDLE;
                    elsif gpio_wvalid = '1' then
                        STATE <= WRITE_BUFFER;
                    else
                        STATE <= READ_BUFFER_ADDR;
                    end if;
                    
                when WRITE_BUFFER =>
                    STATE <= WRITE;
                    
                when WRITE =>
                    if s_axi_awready = '1' and s_axi_wready = '1' then
                        STATE <= WRITE_WAIT;
                    end if;
                    
                when WRITE_WAIT =>
                    if s_axi_bvalid = '1' then
                        STATE <= WRITE_RESP;
                    end if;
                    
                when WRITE_RESP =>
                    if gpio_resp_ack = '1' then
                        STATE <= IDLE;
                    end if;
                    
                when READ_BUFFER_ADDR =>
                    STATE <= READ;
                    
                when READ =>
                    if s_axi_arready = '1' then
                        STATE <= READ_WAIT;
                    end if;
                    STATE <= READ_WAIT;
                    
                when READ_WAIT =>
                    if s_axi_rvalid = '1' then
                        STATE <= READ_BUFFER_DATA;
                        -- Not sure about the following line
                        rdata_buffer <= s_axi_rdata;
                    end if;
                    
                when READ_BUFFER_DATA =>
                    STATE <= READ_RESP;
                    
                when READ_RESP =>
                    if gpio_rdata_ack = '1' and gpio_resp_ack = '1' then
                        STATE <= IDLE;
                    end if;
                end case;
            end if;
        end if;
    end process;
    
    -- Actions process
    process(ui_clk)
    begin
        case STATE is
            when WRITE_BUFFER =>
                wdata_buffer <= gpio_wdata;
                awaddr_buffer <= gpio_address(29 downto 0);
            when READ_BUFFER_ADDR =>
                araddr_buffer <= gpio_address(29 downto 0);
            when others =>
                null;
        end case;
    end process;

    -- Outputs process
    process(state)
    begin
        case STATE is
                when RESET =>
                    null;
                when IDLE =>
                    
                    s_axi_awaddr <= (s_axi_awaddr'length - 1 downto 0 => '0');
                    s_axi_awprot <= "010"; -- data access - non secure access - unprivileged access
                    s_axi_awvalid <= '0';
                    s_axi_bready <= '0';
                    s_axi_wvalid <= '0';
                    
                    
                    s_axi_araddr <= (s_axi_araddr'length - 1 downto 0 => '0');
                    s_axi_arprot <= "010"; -- data access - non secure access - unprivileged access
                    s_axi_arvalid <= '0';
                    s_axi_rready <= '0';
                    
                    s_axi_wstrb <= "0000";
                    
                    gpio_rvalid <= '0';
                    gpio_resp_valid <= '0';

                when WRITE_BUFFER =>
                    null;
                    
                when WRITE =>
                    s_axi_wdata <= wdata_buffer;
                    s_axi_awaddr <= awaddr_buffer;
                    s_axi_wstrb <= "1111";
                    s_axi_wlast <= '1';
                    
                    s_axi_awlen <= "00000000";
                    s_axi_awsize <= "010"; -- 4 bytes = 32 bits de transfert
                    s_axi_awburst <= "00";
                    
                    s_axi_wvalid <= '1';
                    s_axi_awvalid <= '1';
                    
                    s_axi_bready <= '1';
                    
                when WRITE_WAIT =>
                    s_axi_wvalid <= '0';
                    s_axi_awvalid <= '0';
                    
                when WRITE_RESP =>
                    gpio_resp_valid <= '1';
                    gpio_resp <= s_axi_bresp;
                    
                when READ_BUFFER_ADDR =>
                    null;
                    
                when READ =>
                    s_axi_araddr <= araddr_buffer;
                    
                    s_axi_arlen <= "00000000";
                    s_axi_arsize <= "010"; -- 4 bytes = 32 bits de transfert
                    s_axi_arburst <= "00";
                    
                    s_axi_arvalid <= '1';
                    s_axi_rready <= '1';
                    
                when READ_WAIT =>
                    s_axi_arvalid <= '0';
                    
                when READ_BUFFER_DATA =>
                    null;
                    
                when READ_RESP =>
                    gpio_rdata <= rdata_buffer;
                    gpio_rvalid <= '1';
                    gpio_resp_valid <= '1';
                    gpio_resp <= s_axi_rresp;
                    
            end case;
    end process;
    
    -- Syncing aresetn asynchronous input to aresetn_sync_out
    process(ui_clk)
    begin
        if rising_edge(ui_clk) then
            if STATE /= RESET then
                aresetn_sync_out <= aresetn_in;
            else
                aresetn_sync_out <= '0';
            end if;
        end if;
    end process;
    
    gpio_debug_current_state <= std_logic_vector(to_unsigned(STATE_TYPE'POS(STATE), gpio_debug_current_state'length));

end Behavioral;
