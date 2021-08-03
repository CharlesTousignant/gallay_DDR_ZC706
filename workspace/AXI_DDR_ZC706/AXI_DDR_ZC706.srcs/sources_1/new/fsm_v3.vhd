----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.08.2021 11:56:05
-- Design Name: 
-- Module Name: fsm_v3 - Behavioral
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

entity fsm_v3 is
  Port ( 
        ui_clk : IN std_logic;
        ui_clk_sync_rst : IN std_logic;
        
        -- S_AXI interface
        -- Address Write Signals
        s_axi_awid : OUT std_logic_vector(3 downto 0) := "0000";
        s_axi_awaddr : OUT std_logic_vector(29 downto 0);
        s_axi_awlen : OUT std_logic_vector(7 downto 0);
        s_axi_awsize : OUT std_logic_vector(2 downto 0);
        s_axi_awburst : OUT std_logic_vector(1 downto 0);
        s_axi_awlock : OUT std_logic := '0';
        s_axi_awcache : OUT std_logic_vector(3 downto 0) := "0000";
        s_axi_awprot : OUT std_logic_vector(2 downto 0);
        s_axi_awqos : OUT std_logic_vector(3 downto 0) := "0000";
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
        s_axi_arid : OUT std_logic_vector(3 downto 0) := "0000";
        s_axi_araddr : OUT std_logic_vector(29 downto 0);
        s_axi_arlen : OUT std_logic_vector(7 downto 0);
        s_axi_arsize : OUT std_logic_vector(2 downto 0);
        s_axi_arburst : OUT std_logic_vector(1 downto 0);
        s_axi_arlock : OUT std_logic := '0';
        s_axi_arcache : OUT std_logic_vector(3 downto 0) := "0000";
        s_axi_arprot : OUT std_logic_vector(2 downto 0);
        s_axi_arqos : OUT std_logic_vector(3 downto 0) := "0000";
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
        gpio_wreq : IN std_logic;
        gpio_rreq : IN std_logic;
        gpio_wvalid : IN std_logic;
        gpio_wlast : IN std_logic;
        gpio_wack : IN std_logic;
        
        gpio_awaddr : IN std_logic_vector(31 downto 0);
        gpio_wdata : IN std_logic_vector(31 downto 0);
        gpio_awlen : IN std_logic_vector(31 downto 0);
        gpio_awburst : IN std_logic_vector(31 downto 0);
        gpio_wfifo_ready : OUT std_logic;
        gpio_wresp_valid : OUT std_logic;
        gpio_wresp : OUT std_logic_vector(1 downto 0);
        gpio_wresp_ack : IN std_logic;
        
        gpio_rready : IN std_logic;
        gpio_rack : IN std_logic;
        
        gpio_araddr : IN std_logic_vector(31 downto 0);
        gpio_arlen : IN std_logic_vector(31 downto 0);
        gpio_arburst : IN std_logic_vector(31 downto 0);
        gpio_rresp : OUT std_logic_vector(1 downto 0);
        gpio_rvalid : OUT std_logic;
        gpio_rdata : OUT std_logic_vector(31 downto 0);
        gpio_rresp_valid : OUT std_logic;
        gpio_rresp_ack : IN std_logic;
        
        gpio_debug_state : OUT std_logic_vector(4 downto 0)
  );
end fsm_v3;

architecture Behavioral of fsm_v3 is

type STATE_TYPE is (RST, IDLE, WRITE_FIFO_WAIT, WRITE_FIFO, WRITE_FIFO_WAIT_ACK, AWRITE_MEM_WAIT, FIRST_WRITE_MEM, WRITE_MEM, WRITE_MEM_RESP, READ_ADDR_WAIT, READ_MEM_WAIT, READ_MEM_2_FIFO, READ_MEM_WAIT_GPIO, READ_FIFO_2_GPIO, READ_WAIT_ACK, READ_WAIT_READY, READ_FIFO_RESP);

component fifo
generic(
    D : positive := 1024; -- la profondeur (le nombre d'éléments) dans la file
    W : positive := 8    -- la largeur (en bits) de la file
);
port(
    clk   : in std_logic;
    reset : in std_logic;                         -- actif haut: un '1' réinitialise la file
    din   : in std_logic_vector(W - 1 downto 0);  -- données entrant dans la file
    dout  : out std_logic_vector(W - 1 downto 0); -- données sortant de la file
    wr_en : in std_logic;                         -- write-enable: si actif, une donnée sera lue de din et
                                                        -- entrée dans la file au prochain front montant de clk
    rd_en : in std_logic;                         -- read-enable: si actif, une donnée sera sortie de la file
                                                  -- et placée sur dout au prochain front montant de clk
    empty : out std_logic;                        -- indique que la file est vide
    full  : out std_logic                         -- indique que la file est pleine
);
end component;

signal STATE : STATE_TYPE := RST;

signal wfifo_din : std_logic_vector(31 downto 0);
signal wfifo_dout : std_logic_vector(31 downto 0);
signal wfifo_wr_en : std_logic := '0';
signal wfifo_rd_en : std_logic := '0';
signal wfifo_empty : std_logic := '0';
signal wfifo_full : std_logic := '0';

signal rfifo_din : std_logic_vector(31 downto 0);
signal rfifo_dout : std_logic_vector(31 downto 0);
signal rfifo_wr_en : std_logic := '0';
signal rfifo_rd_en : std_logic := '0';
signal rfifo_empty : std_logic := '0';
signal rfifo_full : std_logic := '0';

begin

    WFIFO : fifo
    generic map(
        D => 64,
        W => 32
    )
    port map(
        clk => ui_clk,
        reset => ui_clk_sync_rst,
        din => wfifo_din,
        dout => wfifo_dout,
        wr_en => wfifo_wr_en,
        rd_en => wfifo_rd_en,
        empty => wfifo_empty,
        full => wfifo_full
    );
    
    RFIFO : fifo
    generic map(
        D => 64,
        W => 32
    )
    port map(
        clk => ui_clk,
        reset => ui_clk_sync_rst,
        din => rfifo_din,
        dout => rfifo_dout,
        wr_en => rfifo_wr_en,
        rd_en => rfifo_rd_en,
        empty => rfifo_empty,
        full => rfifo_full
    );

STATE_PROCESS:
process(ui_clk)
begin
    if rising_edge(ui_clk) then
        if ui_clk_sync_rst = '1' then
            STATE <= RST;
        else
            case STATE is
            when RST =>
                STATE <= IDLE;
                
            when IDLE =>
                if gpio_wreq = gpio_rreq then
                    STATE <= IDLE;
                elsif gpio_wreq = '1' then
                    STATE <= WRITE_FIFO_WAIT;
                else
                    STATE <= READ_ADDR_WAIT;
                end if;
                
            --------
            -- WRITE
            --------
            
            when WRITE_FIFO_WAIT =>
                if gpio_wvalid = '1' then
                    STATE <= WRITE_FIFO;
                end if;
                
            when WRITE_FIFO =>
                if gpio_wlast = '1' then
                    STATE <= AWRITE_MEM_WAIT;
                else
                    STATE <= WRITE_FIFO_WAIT_ACK;
                end if;
                
            when WRITE_FIFO_WAIT_ACK =>
                if gpio_wack = '1' then
                    STATE <= WRITE_FIFO_WAIT;
                end if;
                
            when AWRITE_MEM_WAIT =>
                if s_axi_awready = '1' then
                    STATE <= FIRST_WRITE_MEM;
                end if;
                
            when FIRST_WRITE_MEM =>
                STATE <= WRITE_MEM;
            
            when WRITE_MEM =>
                if wfifo_empty = '1' then
                    STATE <= WRITE_MEM_RESP;
                end if;
            
            when WRITE_MEM_RESP =>
                if gpio_wresp_ack = '1' then
                    STATE <= IDLE;
                end if;
                
            -------
            -- READ
            -------
            
            when READ_ADDR_WAIT =>
                if s_axi_arready = '1' then
                    STATE <= READ_MEM_WAIT;
                end if;
                
            when READ_MEM_WAIT =>
                if s_axi_rvalid = '1' then
                    STATE <= READ_MEM_2_FIFO;
                end if;
            
            when READ_MEM_2_FIFO =>
                if s_axi_rlast = '1' then
                    STATE <= READ_MEM_WAIT_GPIO;
                end if;
                
            when READ_MEM_WAIT_GPIO =>
                if gpio_rready = '1' then
                    STATE <= READ_FIFO_2_GPIO;
                end if;
            
            when READ_FIFO_2_GPIO =>
                if rfifo_empty = '1' then
                    STATE <= READ_FIFO_RESP;
                else
                    STATE <= READ_WAIT_ACK;
                end if;
                
            when READ_WAIT_ACK =>
                if gpio_rack = '1' then
                    STATE <= READ_WAIT_READY;
                end if;
            
            when READ_WAIT_READY =>
                if gpio_rready = '1' then
                    STATE <= READ_FIFO_2_GPIO;
                end if;
            
            when READ_FIFO_RESP =>
                if gpio_rresp_ack = '1' then
                    STATE <= IDLE;
                end if;
            
            when others => null;
            end case;
        end if;
    end if;
end process;

OUTPUT_PROCESS:
process(STATE, wfifo_empty, wfifo_dout, s_axi_wready, gpio_wresp_ack, s_axi_bvalid, s_axi_bresp, s_axi_rdata, s_axi_rvalid, s_axi_rresp, rfifo_dout, gpio_rresp_ack)
begin
    case STATE is
    
    
            when RST =>
                s_axi_awaddr <= (s_axi_awaddr'length - 1 downto 0 => '0');
                s_axi_awlen <= (s_axi_awlen'length - 1 downto 0 => '0');
                s_axi_awburst <= (s_axi_awburst'length - 1 downto 0 => '0');
                s_axi_awsize <= "010";
                
                s_axi_araddr <= (s_axi_araddr'length - 1 downto 0 => '0');
                s_axi_arlen <= (s_axi_arlen'length - 1 downto 0 => '0');
                s_axi_arburst <= (s_axi_arburst'length - 1 downto 0 => '0');
                s_axi_arsize <= "010";
                
                s_axi_awvalid <= '0';
                s_axi_wvalid <= '0';
                s_axi_bready <= '0';
                
                s_axi_wstrb <= "1111";
                
                s_axi_arvalid <= '0';
                s_axi_rready <= '0';
                
                s_axi_awprot <= "010";
                s_axi_arprot <= "010";
                
                gpio_wresp_valid <= '0';
                
                gpio_rvalid <= '0';
                gpio_rresp_valid <= '0';
            
            
            when IDLE =>
                s_axi_awaddr <= (s_axi_awaddr'length - 1 downto 0 => '0');
                s_axi_awlen <= (s_axi_awlen'length - 1 downto 0 => '0');
                s_axi_awburst <= (s_axi_awburst'length - 1 downto 0 => '0');
                s_axi_awsize <= "010";
                
                s_axi_araddr <= (s_axi_araddr'length - 1 downto 0 => '0');
                s_axi_arlen <= (s_axi_arlen'length - 1 downto 0 => '0');
                s_axi_arburst <= (s_axi_arburst'length - 1 downto 0 => '0');
                s_axi_arsize <= "010";
                
                s_axi_awvalid <= '0';
                s_axi_wvalid <= '0';
                s_axi_bready <= '0';
                
                s_axi_wstrb <= "1111";
                
                s_axi_arvalid <= '0';
                s_axi_rready <= '0';
                
                s_axi_awprot <= "010";
                s_axi_arprot <= "010";
                
                gpio_wresp_valid <= '0';
                
                gpio_rvalid <= '0';
                gpio_rresp_valid <= '0';
                
            --------
            -- WRITE
            --------
            
            when WRITE_FIFO_WAIT =>
                gpio_wfifo_ready <= '1';
                wfifo_wr_en <= '0';
                
            when WRITE_FIFO =>
                gpio_wfifo_ready <= '0';
                wfifo_din <= gpio_wdata;
                wfifo_wr_en <= '1';
                
            when WRITE_FIFO_WAIT_ACK =>
                gpio_wfifo_ready <= '1';
                wfifo_wr_en <= '0';
                
            when AWRITE_MEM_WAIT =>
                wfifo_wr_en <= '0';
                
                s_axi_awaddr <= gpio_awaddr(29 downto 0);
                s_axi_awlen <= gpio_awlen(7 downto 0);
                s_axi_awburst <= gpio_awburst(1 downto 0);
                s_axi_awvalid <= '1';
                
            when FIRST_WRITE_MEM =>
                s_axi_awvalid <= '0';
                wfifo_rd_en <= '1';
            
            when WRITE_MEM =>
                s_axi_wdata <= wfifo_dout;
                s_axi_wvalid <= '1';
                s_axi_wlast <= wfifo_empty;
                wfifo_rd_en <= s_axi_wready;
            
            when WRITE_MEM_RESP =>
                s_axi_wvalid <= '0';
                s_axi_bready <= gpio_wresp_ack;
                gpio_wresp_valid <= s_axi_bvalid;
                gpio_wresp <= s_axi_bresp;
            
            -------
            -- READ
            -------
            
            when READ_ADDR_WAIT =>
                s_axi_araddr <= gpio_araddr(29 downto 0);
                s_axi_arlen <= gpio_arlen(7 downto 0);
                s_axi_arburst <= gpio_arburst(1 downto 0);
                s_axi_arvalid <= '1';
                
            when READ_MEM_WAIT =>
                s_axi_arvalid <= '0';
            
            when READ_MEM_2_FIFO =>
                rfifo_din <= s_axi_rdata;
                rfifo_wr_en <= s_axi_rvalid;
                s_axi_rready <= '1';
                gpio_rresp <= s_axi_rresp;
            
            when READ_MEM_WAIT_GPIO =>
                rfifo_wr_en <= '0';
                s_axi_rready <= '0';
            
            when READ_FIFO_2_GPIO =>
                rfifo_rd_en <= '1';
                gpio_rvalid <= '0';
            
            when READ_WAIT_ACK =>
                gpio_rdata <= rfifo_dout;
                gpio_rvalid <= '1';
                rfifo_rd_en <= '0';
            
            when READ_FIFO_RESP =>
                rfifo_rd_en <= '0';
                gpio_rresp_valid <= '1';
                gpio_rvalid <= '1';
            
            when others => null;
            end case;
end process;

gpio_debug_state <= std_logic_vector(to_unsigned(STATE_TYPE'POS(STATE), gpio_debug_state'length));

end Behavioral;
