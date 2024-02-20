library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity jatin_patel_rca_behavioral is
	port(A: in std_logic_vector (3 downto 0);
		  B: in std_logic_vector (3 downto 0);
		  S: out std_logic_vector (4 downto 0));
end jatin_patel_rca_behavioral;

ARCHITECTURE behavioral of jatin_patel_rca_behavioral is

signal s1, s2 : std_logic_vector(4 downto 0);

BEGIN
	s1 <= '0' & A;
	s2 <= '0' & B;
	S <= std_logic_vector(unsigned(s1) + unsigned(s2));

END behavioral;