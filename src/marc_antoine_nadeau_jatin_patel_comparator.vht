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
-- Generated on "04/04/2023 12:39:47"
                                                            
-- Vhdl Test Bench template for design  :  marc_antoine_nadeau_jatin_patel_comparator
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY marc_antoine_nadeau_jatin_patel_comparator_vhd_tst IS
END marc_antoine_nadeau_jatin_patel_comparator_vhd_tst;
ARCHITECTURE marc_antoine_nadeau_jatin_patel_comparator_arch OF marc_antoine_nadeau_jatin_patel_comparator_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL AeqBplusOne : STD_LOGIC;
SIGNAL AgtBplusOne : STD_LOGIC;
SIGNAL AgteBplusOne : STD_LOGIC;
SIGNAL AltBplusOne : STD_LOGIC;
SIGNAL AlteBplusOne : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
COMPONENT marc_antoine_nadeau_jatin_patel_comparator
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	AeqBplusOne : BUFFER STD_LOGIC;
	AgtBplusOne : BUFFER STD_LOGIC;
	AgteBplusOne : BUFFER STD_LOGIC;
	AltBplusOne : BUFFER STD_LOGIC;
	AlteBplusOne : BUFFER STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	overflow : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : marc_antoine_nadeau_jatin_patel_comparator
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AeqBplusOne => AeqBplusOne,
	AgtBplusOne => AgtBplusOne,
	AgteBplusOne => AgteBplusOne,
	AltBplusOne => AltBplusOne,
	AlteBplusOne => AlteBplusOne,
	B => B,
	overflow => overflow
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END marc_antoine_nadeau_jatin_patel_comparator_arch;
