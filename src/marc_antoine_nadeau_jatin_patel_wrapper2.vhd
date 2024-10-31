library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity marc_antoine_nadeau_jatin_patel_wrapper2 is
	Port (reset, clk : in std_logic;
			HEX0, HEX5 : out std_logic_vector (6 downto 0));
end marc_antoine_nadeau_jatin_patel_wrapper2;

architecture behavioral of marc_antoine_nadeau_jatin_patel_wrapper2 is

	component marc_antoine_nadeau_jatin_patel_clock_divider is
		Port (enable, reset, clk : in std_logic;
				en_out : out std_logic);
	end component;
	
	component ROM is
		Port(clk, reset : in std_logic;
			  data : out std_logic);
	end component;
	
	component marc_antoine_nadeau_jatin_patel_sequence_detector is
		Port (seq, enable, reset, clk : in std_logic;
			cnt_1, cnt_2 : out std_logic_vector(2 downto 0));
	end component;
	
	component seven_segment_decoder is
		port ( code : in std_logic_vector(3 downto 0);
		 segments_out : out std_logic_vector(6 downto 0));
	end component;
	  
	signal enable_signal : std_logic;
	signal rom_output : std_logic;
	signal HEX0_decoder_input, HEX5_decoder_input : std_logic_vector(2 downto 0);
	signal invertedReset : std_logic;
	signal temporary_hex0_signal : std_logic_vector(3 downto 0);
	signal temporary_hex5_signal : std_logic_vector(3 downto 0);
	
begin
invertedReset <= not reset;
clock_divider : marc_antoine_nadeau_jatin_patel_clock_divider Port map('1', reset, clk, enable_signal);
rom_component : ROM Port map(enable_signal, invertedReset, rom_output);
sequence_detector :  marc_antoine_nadeau_jatin_patel_sequence_detector Port map(rom_output, '1', reset, enable_signal, HEX0_decoder_input, HEX5_decoder_input);
temporary_hex0_signal <= "0" & HEX0_decoder_input;
temporary_hex5_signal <= "0" & HEX5_decoder_input;
HEX0_seven_segment : seven_segment_decoder Port map(temporary_hex0_signal, HEX0);
HEX5_seven_segment : seven_segment_decoder Port map(temporary_hex5_signal, HEX5);
end behavioral;


				