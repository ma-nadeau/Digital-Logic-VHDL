
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY jatin_patel_sequence_detector_vhd_tst IS
END jatin_patel_sequence_detector_vhd_tst;
ARCHITECTURE jatin_patel_sequence_detector_arch OF jatin_patel_sequence_detector_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cnt_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL cnt_2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL seq : STD_LOGIC;
COMPONENT jatin_patel_sequence_detector
	PORT (
	clk : IN STD_LOGIC;
	cnt_1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	cnt_2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	seq : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : jatin_patel_sequence_detector
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt_1 => cnt_1,
	cnt_2 => cnt_2,
	enable => enable,
	reset => reset,
	seq => seq
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

enable <= '0';
reset <= '0';
wait for 10 ns;                                                         

enable <= '1';
reset <= '1';

seq <= '0';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '0';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '1';
wait for 20ns;

seq <= '0';
wait for 20ns;

WAIT;                                                        
END PROCESS always;                                          
END jatin_patel_sequence_detector_arch;
