library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity jatin_patel_jkff is
	Port (clk : in std_logic;
			J : in std_logic;
			K : in std_logic;
			Q : out std_logic);
end jatin_patel_jkff;


Architecture behavioral of jatin_patel_jkff is
	signal internal_temporary_signal : std_logic := '0';
begin 
	PROCESS(clk)
	begin
	if (RISING_EDGE(clk)) THEN
		if (J = '0' and K = '0') THEN
			internal_temporary_signal <= internal_temporary_signal;
		elsif (J = '1' and K = '1') THEN
			internal_temporary_signal <= not internal_temporary_signal;
		elsif (J = '0' and K = '1') THEN
			internal_temporary_signal <= '0';
		elsif (J = '1' and K = '0') THEN
			internal_temporary_signal <= '1';
		end if;
	end if;
	
	Q <= internal_temporary_signal;
	end PROCESS;
end behavioral;
		