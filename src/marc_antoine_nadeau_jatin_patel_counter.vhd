library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity marc_antoine_nadeau_jatin_patel_counter is
Port (enable : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		count : out std_logic_vector(2 downto 0));
end marc_antoine_nadeau_jatin_patel_counter;

Architecture behavioral of marc_antoine_nadeau_jatin_patel_counter is
	signal internal_temporary_signal : std_logic_vector(2 downto 0) := "000";
begin
	PROCESS (reset, clk)
	BEGIN
		if reset = '0' THEN
			internal_temporary_signal <= "000";
		elsif RISING_EDGE(clk) THEN
			if enable = '1' THEN
				if internal_temporary_signal = "111" THEN
					internal_temporary_signal <= "000";
				else
					internal_temporary_signal <= internal_temporary_signal + 1;
				end if;
			end if;
		end if;
		
	count <= internal_temporary_signal;
	end process;
END behavioral;