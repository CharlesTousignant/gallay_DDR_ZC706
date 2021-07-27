----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/27/2021 03:00:12 PM
-- Design Name: 
-- Module Name: debounce_n - Behavioral
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

entity debounce_n is
    Port ( 
        clk : IN std_logic;
        button_in : IN std_logic;
        button_out : OUT std_logic
    );
end debounce_n;

architecture Behavioral of debounce_n is

signal FF1 : std_logic := '0';
signal FF2 : std_logic := '0';
signal FF3 : std_logic := '0';

begin

    process(clk)
    -- Reset should be pressed for ~0.5s 
    variable counter : INTEGER range 0 to 134217728;
    begin
        if rising_edge(clk) then
            FF1 <= button_in;
            FF2 <= FF1;

            if FF1 /= FF2 then
                counter := 0;
            else
                counter := counter + 1;
            end if;
            
            if counter = 134217728 then
                FF3 <= FF2;
            end if;
        end if;
    end process;
    
    button_out <= not FF3;

end Behavioral;
