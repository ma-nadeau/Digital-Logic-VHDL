library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity marc_antoine_nadeau_jatin_patel_wrapper_VHDL6 is 
	Port (enable, reset, clk : in std_logic;
			HEX0 : out std_logic_vector (6 downto 0));
end marc_antoine_nadeau_jatin_patel_wrapper_VHDL6;

Architecture behavioral of marc_antoine_nadeau_jatin_patel_wrapper_VHDL6 is

	component marc_antoine_nadeau_jatin_patel_clock_divider is
		Port (enable, reset, clk : in std_logic;
				en_out : out std_logic);
	end component;
	
	component marc_antoine_nadeau_jatin_patel_counter is 
		Port (enable : in std_logic;
				reset : in std_logic;
				clk : in std_logic;
				count : out std_logic_vector(2 downto 0));
	end component;

	component seven_segment_decoder is
		port (code : in std_logic_vector(3 downto 0);
				segments_out : out std_logic_vector(6 downto 0));
	end component; 
	
	signal enable_at_one_second_interval : std_logic;
	signal counter_sum : std_logic_vector(2 downto 0);
	signal seven_segment_input : std_logic_vector(3 downto 0);
	
begin
clock_divider : marc_antoine_nadeau_jatin_patel_clock_divider port map(enable, reset, clk, enable_at_one_second_interval);
counter : marc_antoine_nadeau_jatin_patel_counter port map(enable_at_one_second_interval, reset, clk, counter_sum);
seven_segment_input <= "0" & counter_sum;
decoder : seven_segment_decoder port map(seven_segment_input, HEX0);
end behavioral;