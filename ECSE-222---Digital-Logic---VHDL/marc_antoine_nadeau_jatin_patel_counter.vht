LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                 

ENTITY jatin_patel_counter_vhd_tst IS
END jatin_patel_counter_vhd_tst;
ARCHITECTURE jatin_patel_counter_arch OF jatin_patel_counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT jatin_patel_counter
	PORT (
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;

constant clock : time := 10ns;

BEGIN
	i1 : jatin_patel_counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	enable => enable,
	reset => reset
	);
	
clock_generation: process
begin
clk <= '1';
wait for clock/2;
clk <= '0';
wait for clock/2;
end process clock_generation;	

always : PROCESS                                                                                    
BEGIN                                                         
	reset <= '0';
	enable <= '0';
	wait for 10ns;
	
	reset <= '0';
	enable <= '1';
	wait for 10ns;
	
	reset <= '1';
	enable <= '0';
	wait for 10ns;
	
	reset <= '1';
	enable <= '1';
	wait for 100ns;
WAIT;                                                        
END PROCESS always;                                          
END jatin_patel_counter_arch;
