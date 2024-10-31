library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity marc_antoine_nadeau_jatin_patel_comparator is 
Port ( A, B 	: in std_logic_vector(3 downto 0);
AgtBplusOne : out std_logic;
AgteBplusOne : out std_logic;
AltBplusOne : out std_logic;
AlteBplusOne : out std_logic;
AeqBplusOne : out std_logic;
overflow : out std_logic);

end marc_antoine_nadeau_jatin_patel_comparator;

ARCHITECTURE Structural of marc_antoine_nadeau_jatin_patel_comparator is
	signal Bplus1 : std_logic_vector(4 downto 0);
	
	
BEGIN
	Bplus1 <= ('0' & B) + 1;
	overflow <= '1' WHEN (Bplus1 > 15) ELSE '0';
	PROCESS (A,Bplus1)
	BEGIN
	IF Bplus1 > 15 THEN
		AgtBplusOne <= '0';
		AgteBplusOne <= '0';
		AltBplusOne <= '0';
		AlteBplusOne <= '0';
		AeqBplusOne <= '0';
	ELSE
		IF A = Bplus1 THEN
			AgtBplusOne <= '0';
			AgteBplusOne <= '1';
			AltBplusOne <= '0';
			AlteBplusOne <= '1';
			AeqBplusOne <= '1';
		ELSIF A > Bplus1 THEN 
			AgtBplusOne <= '1';
			AgteBplusOne <= '1';
			AltBplusOne <= '0';
			AlteBplusOne <= '0';
			AeqBplusOne <= '0';
		
		ELSIF A < Bplus1 THEN
			AgtBplusOne <= '0';
			AgteBplusOne <= '0';
			AltBplusOne <= '1';
			AlteBplusOne <= '1';
			AeqBplusOne <= '0';
		END IF;
	END IF;
	END PROCESS;
END Structural;
	
	
	