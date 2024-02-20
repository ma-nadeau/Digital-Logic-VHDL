library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
port(
    clk : in std_logic;
    reset : in std_logic;
    data : out std_logic
);
end ROM;

architecture arch of ROM is

    type rom_type is array (0 to 255) of std_logic;
	signal cnt : std_logic_vector(7 downto 0);
    
    signal sevenSegment_ROM : rom_type := (
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '1',
                            '1',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '0',
                            '0',
                            '0',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '0', 
                            '0', 
                            '1', 
                            '1', 
                            '0', 
                            '1', 
                            '0', 
                            '1', 
                            '1', 
                            '0', 
                            '0', 
                            '0', 
                            '0', 
                            '0', 
                            '1', 
                            '0', 
                            '1', 
                            '1', 
                            '0', 
                            '0', 
                            '0', 
                            '1',
                            '1', 
                            '1', 
                            '1', 
                            '0', 
                            '1', 
                            '1', 
                            '1', 
                            '0', 
                            '0', 
                            '1', 
                            '0', 
                            '0', 
                            '1', 
                            '1', 
                            '0', 
                            '1', 
                            '1', 
                            '1', 
                            '0', 
                            '1', 
                            '0', 
                            '1',
                            '1', 
                            '0', 
                            '0', 
                            '1', 
                            '0', 
                            '0',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '0',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '1',
                            '1',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '0',
                            '0',
                            '0',
                            '0',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1',
                            '1',
                            '0',
                            '1', 
                            '0', 
                            '1', 
                            '1', 
                            '0', 
                            '0', 
                            '0', 
                            '1',
                            '1', 
                            '1', 
                            '1', 
                            '0', 
                            '1', 
                            '1', 
                            '1', 
                            '0', 
                            '0', 
                            '1', 
                            '0', 
                            '0'
);
begin
    process (clk, reset) begin
        if (reset = '1') then
            cnt <= (others=>'0');
        elsif (rising_edge(clk)) then
            cnt <= std_logic_vector(unsigned(cnt) + 1);
        end if;
    end process;
    data <= sevenSegment_ROM(to_integer(unsigned(cnt)));
end arch;