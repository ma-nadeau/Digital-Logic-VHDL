library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity jatin_patel_FSM is
	Port (seq, enable, reset, clk : in std_logic;
			out_1, out_2 : out std_logic);
end jatin_patel_FSM;

architecture behavioral of jatin_patel_FSM is
	type FSM1_positions is (A1, B1, C1, D1, E1);
	signal position1: FSM1_positions;
	
	type FSM2_positions is (A2, B2, C2, D2, E2);
	signal position2: FSM2_positions;
	
begin
	process(clk, reset, enable)
	begin
		if reset = '0' then
			position1 <= A1;
			out_1 <= '0';
		elsif enable = '1'and rising_edge(clk) then
			case position1 is 
				when A1 => 
					if seq = '0' then
						out_1 <= '0';
						position1 <= A1;
					else
						position1 <= B1;
					end if;
				when B1 =>
					out_1 <= '0';
					if seq = '0' then
						position1 <= C1;
					else 
						position1 <= B1;
					end if;
				when C1 => 
					out_1 <= '0';
					if seq = '0' then
						position1 <= A1;
					else
						position1 <= D1;
					end if;
				when D1 =>
					out_1 <= '0';
					if seq = '0' then
						position1 <= B1;
					else
						position1 <= E1;
					end if;
				when E1 =>
					out_1 <= '1';
					if seq = '0' then
						position1 <= C1;
					else 
						position1 <= B1;
					end if;
			end case;
		end if;
	end process;
	process(clk, reset, enable)
	begin
		if reset = '0' then
			out_2 <= '0';
			position2 <= A2;
		elsif enable = '1' and rising_edge(clk) then 
			case position2 is
				when A2 =>
					out_2 <= '0';
					if seq = '0' then
						position2 <= B2;
					else
						position2 <= A2;
					end if;
				when B2 =>
					out_2 <= '0';
					if seq = '0' then 
						position2 <= C2;
					else 
						position2 <= A2;
					end if;
				when C2 =>
					out_2 <= '0';
					if seq = '0' then 
						position2 <= C2;
					else
						position2 <= D2;
					end if;
				when D2 =>
					out_2 <= '0';
					if seq <= '0' then
						position2 <= E2;
					else
						position2 <= A2;
					end if;
				when E2 =>
					out_2 <= '1';
					if seq = '0' then
						position2 <= C2;
					else
						position2 <= A2;
					end if;
				end case;
			end if;
		end process;
end behavioral;
					
					
	
	
	
	
	
					
						
		