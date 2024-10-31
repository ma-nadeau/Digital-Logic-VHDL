library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity marc_antoine_nadeau_jatin_patel_clock_divider is
	Port (enable, reset, clk : in std_logic;
			en_out : out std_logic);
end marc_antoine_nadeau_jatin_patel_clock_divider;

architecture behavioral of marc_antoine_nadeau_jatin_patel_clock_divider is 

	signal clk_cycles : integer := 50000000;
	signal clk_down_counter : integer := clk_cycles - 1;
	
begin 
	process(clk, enable, reset)
	
	begin 
	if reset = '0' then
		en_out <= '0';
		clk_down_counter <= clk_cycles - 1;
		
	elsif (rising_edge(clk)) then
		if enable = '1' then
			if clk_down_counter = 0 then
				en_out <= '1';
				clk_down_counter <= clk_cycles - 1;
				
		
			else 
				en_out <= '0';
				clk_down_counter <= clk_down_counter - 1;
				
			end if;
		end if;
	end if;
	end process;
end behavioral;
