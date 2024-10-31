-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/12/2023 10:08:46"
                                                            
-- Vhdl Test Bench template for design  :  marc_antoine_nadeau_jatin_patel_FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY marc_antoine_nadeau_jatin_patel_FSM_vhd_tst IS
END marc_antoine_nadeau_jatin_patel_FSM_vhd_tst;
ARCHITECTURE marc_antoine_nadeau_jatin_patel_FSM_arch OF marc_antoine_nadeau_jatin_patel_FSM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL out_1 : STD_LOGIC;
SIGNAL out_2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL seq : STD_LOGIC;
COMPONENT marc_antoine_nadeau_jatin_patel_FSM
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	out_1 : OUT STD_LOGIC;
	out_2 : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	seq : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : marc_antoine_nadeau_jatin_patel_FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	out_1 => out_1,
	out_2 => out_2,
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
END marc_antoine_nadeau_jatin_patel_FSM_arch;
