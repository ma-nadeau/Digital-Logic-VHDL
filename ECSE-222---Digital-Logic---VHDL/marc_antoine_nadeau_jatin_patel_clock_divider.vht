LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY jatin_patel_clock_divider_vhd_tst IS
END jatin_patel_clock_divider_vhd_tst;
ARCHITECTURE jatin_patel_clock_divider_arch OF jatin_patel_clock_divider_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en_out : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT jatin_patel_clock_divider
	PORT (
	clk : IN STD_LOGIC;
	en_out : OUT STD_LOGIC;
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : jatin_patel_clock_divider
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en_out => en_out,
	enable => enable,
	reset => reset
	);
	
clock_generation: process
begin
clk <= '1';
wait for 10ns;
clk <= '0';
wait for 10ns;
end process clock_generation;
                                          
always : PROCESS                                                                                
BEGIN                                                         
	reset <= '0';
	enable <= '1';
	wait for 50ns;
	
	reset <= '1';
	enable <= '1';
	wait for 1000ms;
	
WAIT;                                                        
END PROCESS always;                                          
END jatin_patel_clock_divider_arch;
