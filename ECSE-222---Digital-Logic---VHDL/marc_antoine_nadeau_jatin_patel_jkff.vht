LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY jatin_patel_jkff_vhd_tst IS
END jatin_patel_jkff_vhd_tst;
ARCHITECTURE jatin_patel_jkff_arch OF jatin_patel_jkff_vhd_tst IS
-- constants                                                
-- signals                                             
SIGNAL clk : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT jatin_patel_jkff
	PORT (
	clk : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : jatin_patel_jkff
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	J => J,
	K => K,
	Q => Q
	);
	
clock_generation: process
begin
	clk <= '1';
	wait for 5ns;
	clk <= '0';
	wait for 5ns;
end process clock_generation;
 	
always : PROCESS                                                                                  
BEGIN                                                         
	J <= '0';
	K <= '0';
	WAIT for 50ns;
	J <= '0';
	K <= '1';
	WAIT for 50ns;		
	J <= '1';
	K <= '0';
	WAIT for 50ns;		
	J <= '1';
	K <= '1';
	WAIT for 50ns;	
WAIT;                                                        
END PROCESS always;                                          
END jatin_patel_jkff_arch;
