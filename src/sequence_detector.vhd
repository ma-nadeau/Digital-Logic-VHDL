library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sequence_detector is
	Port (seq, enable, reset, clk : in std_logic;
			cnt_1, cnt_2 : out std_logic_vector(2 downto 0));
end sequence_detector;

architecture behavioral of sequence_detector is

	component FSM is 
		Port (seq, enable, reset, clk : in std_logic;
				out_1, out_2 : out std_logic);
	end component;
	
	component counter is
		Port (enable, reset, clk : in std_logic;
				count : out std_logic_vector(2 downto 0));
	end component;
	
	signal internal_temporary_signal1, internal_temporary_signal2 : std_logic;
	
begin
fsm : FSM Port map(seq, enable, reset, clk, internal_temporary_signal1, internal_temporary_signal2);
sequence_counter1 : counter Port map(internal_temporary_signal1, reset, clk, cnt_1);
sequence_counter2 : counter Port map(internal_temporary_signal2, reset, clk, cnt_2);
end behavioral;