library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity marc_antoine_nadeau_jatin_patel_bcd_behavioral is
port (A : in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		S : out std_logic_vector (3 downto 0);
		C : out std_logic);
end marc_antoine_nadeau_jatin_patel_bcd_behavioral;

ARCHITECTURE BEHAVIORAL OF marc_antoine_nadeau_jatin_patel_bcd_behavioral IS
	signal sum : std_logic_vector (4 downto 0);
	signal sum_with_adjust : std_logic_vector(4 downto 0);
	signal adjust : std_logic;

BEGIN
	sum <= ('0' & A) + B;
	sum_with_adjust <= sum + 6;
	adjust <= '1' WHEN (sum > 9) else '0';
	S(0) <= sum(0) WHEN (adjust = '0') else sum_with_adjust(0);
	S(1) <= sum(1) WHEN (adjust = '0') else sum_with_adjust(1);
	S(2) <= sum(2) WHEN (adjust = '0') else sum_with_adjust(2);
	S(3) <= sum(3) WHEN (adjust = '0') else sum_with_adjust(3);
	C <= adjust;
END BEHAVIORAL;