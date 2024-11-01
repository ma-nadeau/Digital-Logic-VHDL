library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity rca_structural is
	port(A: in std_logic_vector (3 downto 0);
		  B: in std_logic_vector (3 downto 0);
		  S: out std_logic_vector (4 downto 0));
end rca_structural;

ARCHITECTURE STRUCT of rca_structural is 
	signal c1,c2,c3 : std_logic;
	
	COMPONENT full_adder
		PORT (a : IN STD_LOGIC;
				b : IN STD_LOGIC;
				c_in : IN STD_LOGIC;
				c_out : OUT STD_LOGIC;
				s : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT half_adder
		PORT (a : IN STD_LOGIC;
				b : IN STD_LOGIC;
				c : OUT STD_LOGIC;
				s : OUT STD_LOGIC);
	END COMPONENT;

BEGIN
	half_adder1 : half_adder port map(A(0), B(0), c1, S(0));
	full_adder2 : full_adder port map(A(1), B(1), c1, c2, S(1));
	full_adder3 : full_adder port map(A(2), B(2), c2, c3,  S(2));
	full_adder4 : full_adder port map(A(3), B(3), c3, s(4), S(3));
END STRUCT;