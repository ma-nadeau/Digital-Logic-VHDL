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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "04/13/2023 11:22:11"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	wrapper2 IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END wrapper2;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF wrapper2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_divider|Add0~2\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[1]~17_combout\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[2]~16_combout\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[3]~15_combout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[4]~14_combout\ : std_logic;
SIGNAL \clock_divider|Add0~58\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[5]~13_combout\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[6]~12_combout\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~90\ : std_logic;
SIGNAL \clock_divider|Add0~105_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~106\ : std_logic;
SIGNAL \clock_divider|Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~94\ : std_logic;
SIGNAL \clock_divider|Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~98\ : std_logic;
SIGNAL \clock_divider|Add0~101_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~102\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[12]~11_combout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[13]~10_combout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[14]~9_combout\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[15]~8_combout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~34\ : std_logic;
SIGNAL \clock_divider|Add0~109_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~110\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[17]~7_combout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~113_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~114\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[19]~6_combout\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[20]~5_combout\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[21]~4_combout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[22]~3_combout\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[23]~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~117_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~118\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[25]~1_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~6\ : std_logic;
SIGNAL \clock_divider|Add0~121_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~122\ : std_logic;
SIGNAL \clock_divider|Add0~125_sumout\ : std_logic;
SIGNAL \clock_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|Add0~126\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~81_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~82\ : std_logic;
SIGNAL \clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~78\ : std_logic;
SIGNAL \clock_divider|Add0~85_sumout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider|en_out~feeder_combout\ : std_logic;
SIGNAL \clock_divider|en_out~q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter1|internal_temporary_signal[0]~1_combout\ : std_logic;
SIGNAL \rom_component|cnt[0]~0_combout\ : std_logic;
SIGNAL \rom_component|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \rom_component|Add0~25_sumout\ : std_logic;
SIGNAL \rom_component|Add0~26\ : std_logic;
SIGNAL \rom_component|Add0~5_sumout\ : std_logic;
SIGNAL \rom_component|Add0~6\ : std_logic;
SIGNAL \rom_component|Add0~21_sumout\ : std_logic;
SIGNAL \rom_component|cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \rom_component|Add0~22\ : std_logic;
SIGNAL \rom_component|Add0~13_sumout\ : std_logic;
SIGNAL \rom_component|Add0~14\ : std_logic;
SIGNAL \rom_component|Add0~17_sumout\ : std_logic;
SIGNAL \rom_component|Add0~18\ : std_logic;
SIGNAL \rom_component|Add0~9_sumout\ : std_logic;
SIGNAL \rom_component|Add0~10\ : std_logic;
SIGNAL \rom_component|Add0~1_sumout\ : std_logic;
SIGNAL \rom_component|Mux0~1_combout\ : std_logic;
SIGNAL \rom_component|Mux0~2_combout\ : std_logic;
SIGNAL \rom_component|cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \rom_component|Mux0~0_combout\ : std_logic;
SIGNAL \rom_component|Mux0~3_combout\ : std_logic;
SIGNAL \rom_component|Mux0~4_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position1~10_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position1.D1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|Selector2~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position1.B1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|position1~9_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position1.E1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|Selector3~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position1.C1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|Selector1~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position1.A1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|position1.E1~DUPLICATE_q\ : std_logic;
SIGNAL \sequence_detector|fsm|Selector0~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|out_1~q\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux5~1_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter1|internal_temporary_signal[2]~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0_seven_segment|Mux0~0_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[0]~1_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[0]~feeder_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position2~14_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position2.A2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|Selector4~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position2.C2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|position2~13_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position2.D2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|position2~12_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|position2.E2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|out_2~feeder_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|out_2~q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux5~1_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[1]~feeder_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[2]~0_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal[2]~feeder_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux6~0_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux5~0_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux4~0_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux3~0_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux2~0_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux1~0_combout\ : std_logic;
SIGNAL \HEX5_seven_segment|Mux0~0_combout\ : std_logic;
SIGNAL \clock_divider|clk_down_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sequence_detector|sequence_counter1|internal_temporary_signal\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sequence_detector|sequence_counter2|internal_temporary_signal\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rom_component|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sequence_detector|fsm|ALT_INV_position1.E1~DUPLICATE_q\ : std_logic;
SIGNAL \rom_component|ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \rom_component|ALT_INV_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \rom_component|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[0]~1_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position2.A2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position2.C2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position1.B1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position2.D2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position1.D1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position1.C1~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position2.E2~q\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position1.E1~q\ : std_logic;
SIGNAL \rom_component|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \rom_component|ALT_INV_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom_component|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \rom_component|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \rom_component|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \rom_component|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_position1.A1~q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_clk_down_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[2]~0_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_out_2~q\ : std_logic;
SIGNAL \HEX5_seven_segment|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \sequence_detector|fsm|ALT_INV_out_1~q\ : std_logic;
SIGNAL \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\sequence_detector|fsm|ALT_INV_position1.E1~DUPLICATE_q\ <= NOT \sequence_detector|fsm|position1.E1~DUPLICATE_q\;
\rom_component|ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \rom_component|cnt[1]~DUPLICATE_q\;
\rom_component|ALT_INV_cnt[2]~DUPLICATE_q\ <= NOT \rom_component|cnt[2]~DUPLICATE_q\;
\rom_component|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \rom_component|cnt[0]~DUPLICATE_q\;
\clock_divider|ALT_INV_clk_down_counter[12]~DUPLICATE_q\ <= NOT \clock_divider|clk_down_counter[12]~DUPLICATE_q\;
\clock_divider|ALT_INV_clk_down_counter[13]~DUPLICATE_q\ <= NOT \clock_divider|clk_down_counter[13]~DUPLICATE_q\;
\clock_divider|ALT_INV_clk_down_counter[15]~DUPLICATE_q\ <= NOT \clock_divider|clk_down_counter[15]~DUPLICATE_q\;
\clock_divider|ALT_INV_clk_down_counter[17]~DUPLICATE_q\ <= NOT \clock_divider|clk_down_counter[17]~DUPLICATE_q\;
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[2]~DUPLICATE_q\ <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE_q\;
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[0]~DUPLICATE_q\ <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal[0]~DUPLICATE_q\;
\clock_divider|ALT_INV_clk_down_counter[24]~DUPLICATE_q\ <= NOT \clock_divider|clk_down_counter[24]~DUPLICATE_q\;
\clock_divider|ALT_INV_clk_down_counter[7]~DUPLICATE_q\ <= NOT \clock_divider|clk_down_counter[7]~DUPLICATE_q\;
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[0]~1_combout\ <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal[0]~1_combout\;
\sequence_detector|fsm|ALT_INV_position2.A2~q\ <= NOT \sequence_detector|fsm|position2.A2~q\;
\sequence_detector|fsm|ALT_INV_position2.C2~q\ <= NOT \sequence_detector|fsm|position2.C2~q\;
\sequence_detector|fsm|ALT_INV_position1.B1~q\ <= NOT \sequence_detector|fsm|position1.B1~q\;
\sequence_detector|fsm|ALT_INV_position2.D2~q\ <= NOT \sequence_detector|fsm|position2.D2~q\;
\sequence_detector|fsm|ALT_INV_position1.D1~q\ <= NOT \sequence_detector|fsm|position1.D1~q\;
\sequence_detector|fsm|ALT_INV_position1.C1~q\ <= NOT \sequence_detector|fsm|position1.C1~q\;
\sequence_detector|fsm|ALT_INV_position2.E2~q\ <= NOT \sequence_detector|fsm|position2.E2~q\;
\sequence_detector|fsm|ALT_INV_position1.E1~q\ <= NOT \sequence_detector|fsm|position1.E1~q\;
\rom_component|ALT_INV_Mux0~4_combout\ <= NOT \rom_component|Mux0~4_combout\;
\rom_component|ALT_INV_cnt\(1) <= NOT \rom_component|cnt\(1);
\rom_component|ALT_INV_cnt\(3) <= NOT \rom_component|cnt\(3);
\rom_component|ALT_INV_Mux0~3_combout\ <= NOT \rom_component|Mux0~3_combout\;
\rom_component|ALT_INV_Mux0~2_combout\ <= NOT \rom_component|Mux0~2_combout\;
\rom_component|ALT_INV_Mux0~1_combout\ <= NOT \rom_component|Mux0~1_combout\;
\rom_component|ALT_INV_Mux0~0_combout\ <= NOT \rom_component|Mux0~0_combout\;
\rom_component|ALT_INV_cnt\(5) <= NOT \rom_component|cnt\(5);
\rom_component|ALT_INV_cnt\(4) <= NOT \rom_component|cnt\(4);
\rom_component|ALT_INV_cnt\(6) <= NOT \rom_component|cnt\(6);
\rom_component|ALT_INV_cnt\(2) <= NOT \rom_component|cnt\(2);
\rom_component|ALT_INV_cnt\(7) <= NOT \rom_component|cnt\(7);
\rom_component|ALT_INV_cnt\(0) <= NOT \rom_component|cnt\(0);
\sequence_detector|fsm|ALT_INV_position1.A1~q\ <= NOT \sequence_detector|fsm|position1.A1~q\;
\clock_divider|ALT_INV_Equal0~6_combout\ <= NOT \clock_divider|Equal0~6_combout\;
\clock_divider|ALT_INV_Equal0~5_combout\ <= NOT \clock_divider|Equal0~5_combout\;
\clock_divider|ALT_INV_Equal0~4_combout\ <= NOT \clock_divider|Equal0~4_combout\;
\clock_divider|ALT_INV_Equal0~3_combout\ <= NOT \clock_divider|Equal0~3_combout\;
\clock_divider|ALT_INV_Equal0~2_combout\ <= NOT \clock_divider|Equal0~2_combout\;
\clock_divider|ALT_INV_clk_down_counter\(1) <= NOT \clock_divider|clk_down_counter\(1);
\clock_divider|ALT_INV_clk_down_counter\(2) <= NOT \clock_divider|clk_down_counter\(2);
\clock_divider|ALT_INV_clk_down_counter\(3) <= NOT \clock_divider|clk_down_counter\(3);
\clock_divider|ALT_INV_clk_down_counter\(4) <= NOT \clock_divider|clk_down_counter\(4);
\clock_divider|ALT_INV_clk_down_counter\(5) <= NOT \clock_divider|clk_down_counter\(5);
\clock_divider|ALT_INV_clk_down_counter\(6) <= NOT \clock_divider|clk_down_counter\(6);
\clock_divider|ALT_INV_Equal0~1_combout\ <= NOT \clock_divider|Equal0~1_combout\;
\clock_divider|ALT_INV_clk_down_counter\(12) <= NOT \clock_divider|clk_down_counter\(12);
\clock_divider|ALT_INV_clk_down_counter\(13) <= NOT \clock_divider|clk_down_counter\(13);
\clock_divider|ALT_INV_clk_down_counter\(14) <= NOT \clock_divider|clk_down_counter\(14);
\clock_divider|ALT_INV_clk_down_counter\(15) <= NOT \clock_divider|clk_down_counter\(15);
\clock_divider|ALT_INV_clk_down_counter\(17) <= NOT \clock_divider|clk_down_counter\(17);
\clock_divider|ALT_INV_clk_down_counter\(19) <= NOT \clock_divider|clk_down_counter\(19);
\clock_divider|ALT_INV_Equal0~0_combout\ <= NOT \clock_divider|Equal0~0_combout\;
\clock_divider|ALT_INV_clk_down_counter\(20) <= NOT \clock_divider|clk_down_counter\(20);
\clock_divider|ALT_INV_clk_down_counter\(21) <= NOT \clock_divider|clk_down_counter\(21);
\clock_divider|ALT_INV_clk_down_counter\(22) <= NOT \clock_divider|clk_down_counter\(22);
\clock_divider|ALT_INV_clk_down_counter\(23) <= NOT \clock_divider|clk_down_counter\(23);
\clock_divider|ALT_INV_clk_down_counter\(25) <= NOT \clock_divider|clk_down_counter\(25);
\clock_divider|ALT_INV_clk_down_counter\(0) <= NOT \clock_divider|clk_down_counter\(0);
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[2]~0_combout\ <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal[2]~0_combout\;
\sequence_detector|fsm|ALT_INV_out_2~q\ <= NOT \sequence_detector|fsm|out_2~q\;
\HEX5_seven_segment|ALT_INV_Mux5~1_combout\ <= NOT \HEX5_seven_segment|Mux5~1_combout\;
\sequence_detector|fsm|ALT_INV_out_1~q\ <= NOT \sequence_detector|fsm|out_1~q\;
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2) <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal\(2);
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0) <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal\(0);
\sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1) <= NOT \sequence_detector|sequence_counter2|internal_temporary_signal\(1);
\sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2) <= NOT \sequence_detector|sequence_counter1|internal_temporary_signal\(2);
\sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0) <= NOT \sequence_detector|sequence_counter1|internal_temporary_signal\(0);
\sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1) <= NOT \sequence_detector|sequence_counter1|internal_temporary_signal\(1);
\clock_divider|ALT_INV_Add0~69_sumout\ <= NOT \clock_divider|Add0~69_sumout\;
\clock_divider|ALT_INV_Add0~65_sumout\ <= NOT \clock_divider|Add0~65_sumout\;
\clock_divider|ALT_INV_Add0~61_sumout\ <= NOT \clock_divider|Add0~61_sumout\;
\clock_divider|ALT_INV_Add0~57_sumout\ <= NOT \clock_divider|Add0~57_sumout\;
\clock_divider|ALT_INV_Add0~53_sumout\ <= NOT \clock_divider|Add0~53_sumout\;
\clock_divider|ALT_INV_Add0~49_sumout\ <= NOT \clock_divider|Add0~49_sumout\;
\clock_divider|ALT_INV_Add0~45_sumout\ <= NOT \clock_divider|Add0~45_sumout\;
\clock_divider|ALT_INV_Add0~41_sumout\ <= NOT \clock_divider|Add0~41_sumout\;
\clock_divider|ALT_INV_Add0~37_sumout\ <= NOT \clock_divider|Add0~37_sumout\;
\clock_divider|ALT_INV_Add0~33_sumout\ <= NOT \clock_divider|Add0~33_sumout\;
\clock_divider|ALT_INV_Add0~29_sumout\ <= NOT \clock_divider|Add0~29_sumout\;
\clock_divider|ALT_INV_Add0~25_sumout\ <= NOT \clock_divider|Add0~25_sumout\;
\clock_divider|ALT_INV_Add0~21_sumout\ <= NOT \clock_divider|Add0~21_sumout\;
\clock_divider|ALT_INV_Add0~17_sumout\ <= NOT \clock_divider|Add0~17_sumout\;
\clock_divider|ALT_INV_Add0~13_sumout\ <= NOT \clock_divider|Add0~13_sumout\;
\clock_divider|ALT_INV_Add0~9_sumout\ <= NOT \clock_divider|Add0~9_sumout\;
\clock_divider|ALT_INV_Add0~5_sumout\ <= NOT \clock_divider|Add0~5_sumout\;
\clock_divider|ALT_INV_Add0~1_sumout\ <= NOT \clock_divider|Add0~1_sumout\;
\clock_divider|ALT_INV_clk_down_counter\(27) <= NOT \clock_divider|clk_down_counter\(27);
\clock_divider|ALT_INV_clk_down_counter\(26) <= NOT \clock_divider|clk_down_counter\(26);
\clock_divider|ALT_INV_clk_down_counter\(24) <= NOT \clock_divider|clk_down_counter\(24);
\clock_divider|ALT_INV_clk_down_counter\(18) <= NOT \clock_divider|clk_down_counter\(18);
\clock_divider|ALT_INV_clk_down_counter\(16) <= NOT \clock_divider|clk_down_counter\(16);
\clock_divider|ALT_INV_clk_down_counter\(8) <= NOT \clock_divider|clk_down_counter\(8);
\clock_divider|ALT_INV_clk_down_counter\(11) <= NOT \clock_divider|clk_down_counter\(11);
\clock_divider|ALT_INV_clk_down_counter\(10) <= NOT \clock_divider|clk_down_counter\(10);
\clock_divider|ALT_INV_clk_down_counter\(9) <= NOT \clock_divider|clk_down_counter\(9);
\clock_divider|ALT_INV_clk_down_counter\(7) <= NOT \clock_divider|clk_down_counter\(7);
\clock_divider|ALT_INV_clk_down_counter\(31) <= NOT \clock_divider|clk_down_counter\(31);
\clock_divider|ALT_INV_clk_down_counter\(29) <= NOT \clock_divider|clk_down_counter\(29);
\clock_divider|ALT_INV_clk_down_counter\(30) <= NOT \clock_divider|clk_down_counter\(30);
\clock_divider|ALT_INV_clk_down_counter\(28) <= NOT \clock_divider|clk_down_counter\(28);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_seven_segment|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5_seven_segment|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y4_N0
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( !\clock_divider|clk_down_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \clock_divider|Add0~2\ = CARRY(( !\clock_divider|clk_down_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(0),
	cin => GND,
	sumout => \clock_divider|Add0~1_sumout\,
	cout => \clock_divider|Add0~2\);

-- Location: MLABCELL_X87_Y4_N18
\clock_divider|clk_down_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[0]~0_combout\ = ( !\clock_divider|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~1_sumout\,
	combout => \clock_divider|clk_down_counter[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y4_N20
\clock_divider|clk_down_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[0]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(0));

-- Location: LABCELL_X88_Y4_N3
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( !\clock_divider|clk_down_counter\(1) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))
-- \clock_divider|Add0~70\ = CARRY(( !\clock_divider|clk_down_counter\(1) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(1),
	cin => \clock_divider|Add0~2\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: MLABCELL_X87_Y4_N54
\clock_divider|clk_down_counter[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[1]~17_combout\ = ( !\clock_divider|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~69_sumout\,
	combout => \clock_divider|clk_down_counter[1]~17_combout\);

-- Location: FF_X88_Y4_N59
\clock_divider|clk_down_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[1]~17_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(1));

-- Location: LABCELL_X88_Y4_N6
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( !\clock_divider|clk_down_counter\(2) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~66\ = CARRY(( !\clock_divider|clk_down_counter\(2) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(2),
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: MLABCELL_X87_Y4_N36
\clock_divider|clk_down_counter[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[2]~16_combout\ = !\clock_divider|Add0~65_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~65_sumout\,
	combout => \clock_divider|clk_down_counter[2]~16_combout\);

-- Location: FF_X88_Y4_N2
\clock_divider|clk_down_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[2]~16_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(2));

-- Location: LABCELL_X88_Y4_N9
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( !\clock_divider|clk_down_counter\(3) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~62\ = CARRY(( !\clock_divider|clk_down_counter\(3) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(3),
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: MLABCELL_X87_Y4_N9
\clock_divider|clk_down_counter[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[3]~15_combout\ = ( !\clock_divider|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~61_sumout\,
	combout => \clock_divider|clk_down_counter[3]~15_combout\);

-- Location: FF_X88_Y4_N47
\clock_divider|clk_down_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[3]~15_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(3));

-- Location: LABCELL_X88_Y4_N12
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( !\clock_divider|clk_down_counter\(4) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~58\ = CARRY(( !\clock_divider|clk_down_counter\(4) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(4),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~57_sumout\,
	cout => \clock_divider|Add0~58\);

-- Location: MLABCELL_X87_Y4_N51
\clock_divider|clk_down_counter[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[4]~14_combout\ = ( !\clock_divider|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~57_sumout\,
	combout => \clock_divider|clk_down_counter[4]~14_combout\);

-- Location: FF_X88_Y4_N5
\clock_divider|clk_down_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[4]~14_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(4));

-- Location: LABCELL_X88_Y4_N15
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( !\clock_divider|clk_down_counter\(5) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))
-- \clock_divider|Add0~54\ = CARRY(( !\clock_divider|clk_down_counter\(5) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(5),
	cin => \clock_divider|Add0~58\,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: MLABCELL_X87_Y4_N45
\clock_divider|clk_down_counter[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[5]~13_combout\ = ( !\clock_divider|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clock_divider|ALT_INV_Add0~53_sumout\,
	combout => \clock_divider|clk_down_counter[5]~13_combout\);

-- Location: FF_X88_Y4_N41
\clock_divider|clk_down_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[5]~13_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(5));

-- Location: LABCELL_X88_Y4_N18
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( !\clock_divider|clk_down_counter\(6) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~50\ = CARRY(( !\clock_divider|clk_down_counter\(6) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_clk_down_counter\(6),
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: MLABCELL_X87_Y4_N39
\clock_divider|clk_down_counter[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[6]~12_combout\ = ( !\clock_divider|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~49_sumout\,
	combout => \clock_divider|clk_down_counter[6]~12_combout\);

-- Location: FF_X88_Y4_N11
\clock_divider|clk_down_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|clk_down_counter[6]~12_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(6));

-- Location: LABCELL_X88_Y4_N21
\clock_divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~89_sumout\ = SUM(( \clock_divider|clk_down_counter\(7) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~90\ = CARRY(( \clock_divider|clk_down_counter\(7) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(7),
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~89_sumout\,
	cout => \clock_divider|Add0~90\);

-- Location: FF_X88_Y4_N22
\clock_divider|clk_down_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(7));

-- Location: LABCELL_X88_Y4_N24
\clock_divider|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~105_sumout\ = SUM(( \clock_divider|clk_down_counter\(8) ) + ( VCC ) + ( \clock_divider|Add0~90\ ))
-- \clock_divider|Add0~106\ = CARRY(( \clock_divider|clk_down_counter\(8) ) + ( VCC ) + ( \clock_divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_clk_down_counter\(8),
	cin => \clock_divider|Add0~90\,
	sumout => \clock_divider|Add0~105_sumout\,
	cout => \clock_divider|Add0~106\);

-- Location: FF_X88_Y4_N25
\clock_divider|clk_down_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(8));

-- Location: LABCELL_X88_Y4_N27
\clock_divider|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~93_sumout\ = SUM(( \clock_divider|clk_down_counter\(9) ) + ( VCC ) + ( \clock_divider|Add0~106\ ))
-- \clock_divider|Add0~94\ = CARRY(( \clock_divider|clk_down_counter\(9) ) + ( VCC ) + ( \clock_divider|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(9),
	cin => \clock_divider|Add0~106\,
	sumout => \clock_divider|Add0~93_sumout\,
	cout => \clock_divider|Add0~94\);

-- Location: FF_X88_Y4_N28
\clock_divider|clk_down_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(9));

-- Location: LABCELL_X88_Y4_N30
\clock_divider|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~97_sumout\ = SUM(( \clock_divider|clk_down_counter\(10) ) + ( VCC ) + ( \clock_divider|Add0~94\ ))
-- \clock_divider|Add0~98\ = CARRY(( \clock_divider|clk_down_counter\(10) ) + ( VCC ) + ( \clock_divider|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(10),
	cin => \clock_divider|Add0~94\,
	sumout => \clock_divider|Add0~97_sumout\,
	cout => \clock_divider|Add0~98\);

-- Location: FF_X88_Y4_N31
\clock_divider|clk_down_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(10));

-- Location: LABCELL_X88_Y4_N33
\clock_divider|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~101_sumout\ = SUM(( \clock_divider|clk_down_counter\(11) ) + ( VCC ) + ( \clock_divider|Add0~98\ ))
-- \clock_divider|Add0~102\ = CARRY(( \clock_divider|clk_down_counter\(11) ) + ( VCC ) + ( \clock_divider|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(11),
	cin => \clock_divider|Add0~98\,
	sumout => \clock_divider|Add0~101_sumout\,
	cout => \clock_divider|Add0~102\);

-- Location: FF_X88_Y4_N35
\clock_divider|clk_down_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(11));

-- Location: LABCELL_X88_Y4_N36
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( !\clock_divider|clk_down_counter[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~102\ ))
-- \clock_divider|Add0~46\ = CARRY(( !\clock_divider|clk_down_counter[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter[12]~DUPLICATE_q\,
	cin => \clock_divider|Add0~102\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: MLABCELL_X87_Y4_N6
\clock_divider|clk_down_counter[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[12]~11_combout\ = !\clock_divider|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~45_sumout\,
	combout => \clock_divider|clk_down_counter[12]~11_combout\);

-- Location: FF_X87_Y4_N7
\clock_divider|clk_down_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[12]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y4_N39
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( !\clock_divider|clk_down_counter[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~42\ = CARRY(( !\clock_divider|clk_down_counter[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter[13]~DUPLICATE_q\,
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: MLABCELL_X87_Y4_N3
\clock_divider|clk_down_counter[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[13]~10_combout\ = ( !\clock_divider|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~41_sumout\,
	combout => \clock_divider|clk_down_counter[13]~10_combout\);

-- Location: FF_X87_Y4_N4
\clock_divider|clk_down_counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[13]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y4_N42
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( !\clock_divider|clk_down_counter\(14) ) + ( VCC ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~38\ = CARRY(( !\clock_divider|clk_down_counter\(14) ) + ( VCC ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(14),
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: MLABCELL_X87_Y4_N21
\clock_divider|clk_down_counter[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[14]~9_combout\ = !\clock_divider|Add0~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~37_sumout\,
	combout => \clock_divider|clk_down_counter[14]~9_combout\);

-- Location: FF_X87_Y4_N22
\clock_divider|clk_down_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[14]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(14));

-- Location: LABCELL_X88_Y4_N45
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( !\clock_divider|clk_down_counter[15]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~38\ ))
-- \clock_divider|Add0~34\ = CARRY(( !\clock_divider|clk_down_counter[15]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter[15]~DUPLICATE_q\,
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~33_sumout\,
	cout => \clock_divider|Add0~34\);

-- Location: MLABCELL_X87_Y4_N24
\clock_divider|clk_down_counter[15]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[15]~8_combout\ = ( !\clock_divider|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~33_sumout\,
	combout => \clock_divider|clk_down_counter[15]~8_combout\);

-- Location: FF_X87_Y4_N25
\clock_divider|clk_down_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[15]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y4_N48
\clock_divider|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~109_sumout\ = SUM(( \clock_divider|clk_down_counter\(16) ) + ( VCC ) + ( \clock_divider|Add0~34\ ))
-- \clock_divider|Add0~110\ = CARRY(( \clock_divider|clk_down_counter\(16) ) + ( VCC ) + ( \clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(16),
	cin => \clock_divider|Add0~34\,
	sumout => \clock_divider|Add0~109_sumout\,
	cout => \clock_divider|Add0~110\);

-- Location: FF_X88_Y3_N38
\clock_divider|clk_down_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(16));

-- Location: LABCELL_X88_Y4_N51
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( !\clock_divider|clk_down_counter[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~110\ ))
-- \clock_divider|Add0~30\ = CARRY(( !\clock_divider|clk_down_counter[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter[17]~DUPLICATE_q\,
	cin => \clock_divider|Add0~110\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: MLABCELL_X87_Y4_N57
\clock_divider|clk_down_counter[17]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[17]~7_combout\ = ( !\clock_divider|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~29_sumout\,
	combout => \clock_divider|clk_down_counter[17]~7_combout\);

-- Location: FF_X87_Y4_N58
\clock_divider|clk_down_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[17]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y4_N54
\clock_divider|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~113_sumout\ = SUM(( \clock_divider|clk_down_counter\(18) ) + ( VCC ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~114\ = CARRY(( \clock_divider|clk_down_counter\(18) ) + ( VCC ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(18),
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~113_sumout\,
	cout => \clock_divider|Add0~114\);

-- Location: FF_X88_Y4_N56
\clock_divider|clk_down_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(18));

-- Location: LABCELL_X88_Y4_N57
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( !\clock_divider|clk_down_counter\(19) ) + ( VCC ) + ( \clock_divider|Add0~114\ ))
-- \clock_divider|Add0~26\ = CARRY(( !\clock_divider|clk_down_counter\(19) ) + ( VCC ) + ( \clock_divider|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(19),
	cin => \clock_divider|Add0~114\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: MLABCELL_X87_Y4_N48
\clock_divider|clk_down_counter[19]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[19]~6_combout\ = ( !\clock_divider|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~25_sumout\,
	combout => \clock_divider|clk_down_counter[19]~6_combout\);

-- Location: FF_X87_Y4_N49
\clock_divider|clk_down_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[19]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(19));

-- Location: LABCELL_X88_Y3_N0
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( !\clock_divider|clk_down_counter\(20) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~22\ = CARRY(( !\clock_divider|clk_down_counter\(20) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(20),
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: LABCELL_X88_Y3_N45
\clock_divider|clk_down_counter[20]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[20]~5_combout\ = !\clock_divider|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~21_sumout\,
	combout => \clock_divider|clk_down_counter[20]~5_combout\);

-- Location: FF_X88_Y3_N46
\clock_divider|clk_down_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[20]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(20));

-- Location: LABCELL_X88_Y3_N3
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( !\clock_divider|clk_down_counter\(21) ) + ( VCC ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~18\ = CARRY(( !\clock_divider|clk_down_counter\(21) ) + ( VCC ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(21),
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: LABCELL_X88_Y3_N54
\clock_divider|clk_down_counter[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[21]~4_combout\ = ( !\clock_divider|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~17_sumout\,
	combout => \clock_divider|clk_down_counter[21]~4_combout\);

-- Location: FF_X88_Y3_N56
\clock_divider|clk_down_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[21]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(21));

-- Location: LABCELL_X88_Y3_N6
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( !\clock_divider|clk_down_counter\(22) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))
-- \clock_divider|Add0~14\ = CARRY(( !\clock_divider|clk_down_counter\(22) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_clk_down_counter\(22),
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: LABCELL_X88_Y3_N51
\clock_divider|clk_down_counter[22]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[22]~3_combout\ = ( !\clock_divider|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~13_sumout\,
	combout => \clock_divider|clk_down_counter[22]~3_combout\);

-- Location: FF_X88_Y3_N52
\clock_divider|clk_down_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[22]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(22));

-- Location: LABCELL_X88_Y3_N9
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( !\clock_divider|clk_down_counter\(23) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~10\ = CARRY(( !\clock_divider|clk_down_counter\(23) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(23),
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: LABCELL_X88_Y3_N48
\clock_divider|clk_down_counter[23]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[23]~2_combout\ = ( !\clock_divider|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~9_sumout\,
	combout => \clock_divider|clk_down_counter[23]~2_combout\);

-- Location: FF_X88_Y3_N50
\clock_divider|clk_down_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[23]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(23));

-- Location: LABCELL_X88_Y3_N12
\clock_divider|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~117_sumout\ = SUM(( \clock_divider|clk_down_counter\(24) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~118\ = CARRY(( \clock_divider|clk_down_counter\(24) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_clk_down_counter\(24),
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~117_sumout\,
	cout => \clock_divider|Add0~118\);

-- Location: FF_X88_Y3_N14
\clock_divider|clk_down_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(24));

-- Location: LABCELL_X88_Y3_N15
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( !\clock_divider|clk_down_counter\(25) ) + ( VCC ) + ( \clock_divider|Add0~118\ ))
-- \clock_divider|Add0~6\ = CARRY(( !\clock_divider|clk_down_counter\(25) ) + ( VCC ) + ( \clock_divider|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(25),
	cin => \clock_divider|Add0~118\,
	sumout => \clock_divider|Add0~5_sumout\,
	cout => \clock_divider|Add0~6\);

-- Location: LABCELL_X88_Y3_N42
\clock_divider|clk_down_counter[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|clk_down_counter[25]~1_combout\ = ( !\clock_divider|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~5_sumout\,
	combout => \clock_divider|clk_down_counter[25]~1_combout\);

-- Location: FF_X88_Y3_N43
\clock_divider|clk_down_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[25]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(25));

-- Location: LABCELL_X88_Y3_N39
\clock_divider|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~0_combout\ = ( \clock_divider|clk_down_counter\(22) & ( \clock_divider|clk_down_counter\(0) & ( (\clock_divider|clk_down_counter\(21) & (\clock_divider|clk_down_counter\(25) & (\clock_divider|clk_down_counter\(20) & 
-- \clock_divider|clk_down_counter\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(21),
	datab => \clock_divider|ALT_INV_clk_down_counter\(25),
	datac => \clock_divider|ALT_INV_clk_down_counter\(20),
	datad => \clock_divider|ALT_INV_clk_down_counter\(23),
	datae => \clock_divider|ALT_INV_clk_down_counter\(22),
	dataf => \clock_divider|ALT_INV_clk_down_counter\(0),
	combout => \clock_divider|Equal0~0_combout\);

-- Location: FF_X87_Y4_N5
\clock_divider|clk_down_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[13]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(13));

-- Location: FF_X87_Y4_N59
\clock_divider|clk_down_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[17]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(17));

-- Location: FF_X87_Y4_N26
\clock_divider|clk_down_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[15]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(15));

-- Location: FF_X87_Y4_N8
\clock_divider|clk_down_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|clk_down_counter[12]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(12));

-- Location: MLABCELL_X87_Y4_N12
\clock_divider|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~1_combout\ = ( \clock_divider|clk_down_counter\(19) & ( \clock_divider|clk_down_counter\(14) & ( (\clock_divider|clk_down_counter\(13) & (\clock_divider|clk_down_counter\(17) & (\clock_divider|clk_down_counter\(15) & 
-- \clock_divider|clk_down_counter\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(13),
	datab => \clock_divider|ALT_INV_clk_down_counter\(17),
	datac => \clock_divider|ALT_INV_clk_down_counter\(15),
	datad => \clock_divider|ALT_INV_clk_down_counter\(12),
	datae => \clock_divider|ALT_INV_clk_down_counter\(19),
	dataf => \clock_divider|ALT_INV_clk_down_counter\(14),
	combout => \clock_divider|Equal0~1_combout\);

-- Location: MLABCELL_X87_Y4_N30
\clock_divider|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~2_combout\ = ( \clock_divider|clk_down_counter\(5) & ( \clock_divider|clk_down_counter\(3) & ( (\clock_divider|clk_down_counter\(2) & (\clock_divider|clk_down_counter\(1) & (\clock_divider|clk_down_counter\(4) & 
-- \clock_divider|clk_down_counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(2),
	datab => \clock_divider|ALT_INV_clk_down_counter\(1),
	datac => \clock_divider|ALT_INV_clk_down_counter\(4),
	datad => \clock_divider|ALT_INV_clk_down_counter\(6),
	datae => \clock_divider|ALT_INV_clk_down_counter\(5),
	dataf => \clock_divider|ALT_INV_clk_down_counter\(3),
	combout => \clock_divider|Equal0~2_combout\);

-- Location: LABCELL_X88_Y3_N18
\clock_divider|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~121_sumout\ = SUM(( \clock_divider|clk_down_counter\(26) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))
-- \clock_divider|Add0~122\ = CARRY(( \clock_divider|clk_down_counter\(26) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_clk_down_counter\(26),
	cin => \clock_divider|Add0~6\,
	sumout => \clock_divider|Add0~121_sumout\,
	cout => \clock_divider|Add0~122\);

-- Location: FF_X88_Y3_N19
\clock_divider|clk_down_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(26));

-- Location: LABCELL_X88_Y3_N21
\clock_divider|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~125_sumout\ = SUM(( \clock_divider|clk_down_counter\(27) ) + ( VCC ) + ( \clock_divider|Add0~122\ ))
-- \clock_divider|Add0~126\ = CARRY(( \clock_divider|clk_down_counter\(27) ) + ( VCC ) + ( \clock_divider|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(27),
	cin => \clock_divider|Add0~122\,
	sumout => \clock_divider|Add0~125_sumout\,
	cout => \clock_divider|Add0~126\);

-- Location: FF_X88_Y3_N23
\clock_divider|clk_down_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(27));

-- Location: LABCELL_X88_Y3_N57
\clock_divider|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~5_combout\ = (!\clock_divider|clk_down_counter\(27) & !\clock_divider|clk_down_counter\(26))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(27),
	datac => \clock_divider|ALT_INV_clk_down_counter\(26),
	combout => \clock_divider|Equal0~5_combout\);

-- Location: FF_X88_Y3_N13
\clock_divider|clk_down_counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter[24]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y3_N42
\clock_divider|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~4_combout\ = ( !\clock_divider|clk_down_counter\(18) & ( !\clock_divider|clk_down_counter\(8) & ( (!\clock_divider|clk_down_counter[24]~DUPLICATE_q\ & (!\clock_divider|clk_down_counter\(16) & (!\clock_divider|clk_down_counter\(10) & 
-- !\clock_divider|clk_down_counter\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter[24]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_clk_down_counter\(16),
	datac => \clock_divider|ALT_INV_clk_down_counter\(10),
	datad => \clock_divider|ALT_INV_clk_down_counter\(11),
	datae => \clock_divider|ALT_INV_clk_down_counter\(18),
	dataf => \clock_divider|ALT_INV_clk_down_counter\(8),
	combout => \clock_divider|Equal0~4_combout\);

-- Location: LABCELL_X88_Y3_N24
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( \clock_divider|clk_down_counter\(28) ) + ( VCC ) + ( \clock_divider|Add0~126\ ))
-- \clock_divider|Add0~74\ = CARRY(( \clock_divider|clk_down_counter\(28) ) + ( VCC ) + ( \clock_divider|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_clk_down_counter\(28),
	cin => \clock_divider|Add0~126\,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: FF_X88_Y3_N25
\clock_divider|clk_down_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(28));

-- Location: LABCELL_X88_Y3_N27
\clock_divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~81_sumout\ = SUM(( \clock_divider|clk_down_counter\(29) ) + ( VCC ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~82\ = CARRY(( \clock_divider|clk_down_counter\(29) ) + ( VCC ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(29),
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~81_sumout\,
	cout => \clock_divider|Add0~82\);

-- Location: FF_X88_Y3_N29
\clock_divider|clk_down_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(29));

-- Location: LABCELL_X88_Y3_N30
\clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~77_sumout\ = SUM(( \clock_divider|clk_down_counter\(30) ) + ( VCC ) + ( \clock_divider|Add0~82\ ))
-- \clock_divider|Add0~78\ = CARRY(( \clock_divider|clk_down_counter\(30) ) + ( VCC ) + ( \clock_divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_clk_down_counter\(30),
	cin => \clock_divider|Add0~82\,
	sumout => \clock_divider|Add0~77_sumout\,
	cout => \clock_divider|Add0~78\);

-- Location: FF_X88_Y3_N32
\clock_divider|clk_down_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(30));

-- Location: LABCELL_X88_Y3_N33
\clock_divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~85_sumout\ = SUM(( \clock_divider|clk_down_counter\(31) ) + ( VCC ) + ( \clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(31),
	cin => \clock_divider|Add0~78\,
	sumout => \clock_divider|Add0~85_sumout\);

-- Location: FF_X88_Y3_N34
\clock_divider|clk_down_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter\(31));

-- Location: FF_X88_Y4_N23
\clock_divider|clk_down_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|clk_down_counter[7]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y3_N36
\clock_divider|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~3_combout\ = ( !\clock_divider|clk_down_counter\(9) & ( !\clock_divider|clk_down_counter\(30) & ( (!\clock_divider|clk_down_counter\(31) & (!\clock_divider|clk_down_counter\(28) & (!\clock_divider|clk_down_counter[7]~DUPLICATE_q\ & 
-- !\clock_divider|clk_down_counter\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_clk_down_counter\(31),
	datab => \clock_divider|ALT_INV_clk_down_counter\(28),
	datac => \clock_divider|ALT_INV_clk_down_counter[7]~DUPLICATE_q\,
	datad => \clock_divider|ALT_INV_clk_down_counter\(29),
	datae => \clock_divider|ALT_INV_clk_down_counter\(9),
	dataf => \clock_divider|ALT_INV_clk_down_counter\(30),
	combout => \clock_divider|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y3_N0
\clock_divider|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~6_combout\ = ( \clock_divider|Equal0~4_combout\ & ( \clock_divider|Equal0~3_combout\ & ( (\clock_divider|Equal0~0_combout\ & (\clock_divider|Equal0~1_combout\ & (\clock_divider|Equal0~2_combout\ & \clock_divider|Equal0~5_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_Equal0~0_combout\,
	datab => \clock_divider|ALT_INV_Equal0~1_combout\,
	datac => \clock_divider|ALT_INV_Equal0~2_combout\,
	datad => \clock_divider|ALT_INV_Equal0~5_combout\,
	datae => \clock_divider|ALT_INV_Equal0~4_combout\,
	dataf => \clock_divider|ALT_INV_Equal0~3_combout\,
	combout => \clock_divider|Equal0~6_combout\);

-- Location: LABCELL_X85_Y5_N15
\clock_divider|en_out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|en_out~feeder_combout\ = \clock_divider|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_Equal0~6_combout\,
	combout => \clock_divider|en_out~feeder_combout\);

-- Location: FF_X85_Y5_N17
\clock_divider|en_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clock_divider|en_out~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|en_out~q\);

-- Location: MLABCELL_X84_Y8_N51
\sequence_detector|sequence_counter1|internal_temporary_signal[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter1|internal_temporary_signal[0]~1_combout\ = !\sequence_detector|sequence_counter1|internal_temporary_signal\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	combout => \sequence_detector|sequence_counter1|internal_temporary_signal[0]~1_combout\);

-- Location: MLABCELL_X84_Y8_N21
\rom_component|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|cnt[0]~0_combout\ = !\rom_component|cnt[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_component|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \rom_component|cnt[0]~0_combout\);

-- Location: FF_X85_Y8_N38
\rom_component|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|cnt[0]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y8_N0
\rom_component|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~25_sumout\ = SUM(( \rom_component|cnt[0]~DUPLICATE_q\ ) + ( \rom_component|cnt\(1) ) + ( !VCC ))
-- \rom_component|Add0~26\ = CARRY(( \rom_component|cnt[0]~DUPLICATE_q\ ) + ( \rom_component|cnt\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \rom_component|ALT_INV_cnt\(1),
	cin => GND,
	sumout => \rom_component|Add0~25_sumout\,
	cout => \rom_component|Add0~26\);

-- Location: FF_X85_Y8_N26
\rom_component|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(1));

-- Location: LABCELL_X85_Y8_N3
\rom_component|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~5_sumout\ = SUM(( \rom_component|cnt\(2) ) + ( GND ) + ( \rom_component|Add0~26\ ))
-- \rom_component|Add0~6\ = CARRY(( \rom_component|cnt\(2) ) + ( GND ) + ( \rom_component|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_component|ALT_INV_cnt\(2),
	cin => \rom_component|Add0~26\,
	sumout => \rom_component|Add0~5_sumout\,
	cout => \rom_component|Add0~6\);

-- Location: FF_X85_Y8_N32
\rom_component|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(2));

-- Location: LABCELL_X85_Y8_N6
\rom_component|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~21_sumout\ = SUM(( \rom_component|cnt\(3) ) + ( GND ) + ( \rom_component|Add0~6\ ))
-- \rom_component|Add0~22\ = CARRY(( \rom_component|cnt\(3) ) + ( GND ) + ( \rom_component|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rom_component|ALT_INV_cnt\(3),
	cin => \rom_component|Add0~6\,
	sumout => \rom_component|Add0~21_sumout\,
	cout => \rom_component|Add0~22\);

-- Location: FF_X85_Y8_N56
\rom_component|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(3));

-- Location: FF_X85_Y8_N25
\rom_component|cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y8_N9
\rom_component|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~13_sumout\ = SUM(( \rom_component|cnt\(4) ) + ( GND ) + ( \rom_component|Add0~22\ ))
-- \rom_component|Add0~14\ = CARRY(( \rom_component|cnt\(4) ) + ( GND ) + ( \rom_component|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rom_component|ALT_INV_cnt\(4),
	cin => \rom_component|Add0~22\,
	sumout => \rom_component|Add0~13_sumout\,
	cout => \rom_component|Add0~14\);

-- Location: FF_X85_Y8_N29
\rom_component|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(4));

-- Location: LABCELL_X85_Y8_N12
\rom_component|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~17_sumout\ = SUM(( \rom_component|cnt\(5) ) + ( GND ) + ( \rom_component|Add0~14\ ))
-- \rom_component|Add0~18\ = CARRY(( \rom_component|cnt\(5) ) + ( GND ) + ( \rom_component|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rom_component|ALT_INV_cnt\(5),
	cin => \rom_component|Add0~14\,
	sumout => \rom_component|Add0~17_sumout\,
	cout => \rom_component|Add0~18\);

-- Location: FF_X85_Y8_N44
\rom_component|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(5));

-- Location: LABCELL_X85_Y8_N15
\rom_component|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~9_sumout\ = SUM(( \rom_component|cnt\(6) ) + ( GND ) + ( \rom_component|Add0~18\ ))
-- \rom_component|Add0~10\ = CARRY(( \rom_component|cnt\(6) ) + ( GND ) + ( \rom_component|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_component|ALT_INV_cnt\(6),
	cin => \rom_component|Add0~18\,
	sumout => \rom_component|Add0~9_sumout\,
	cout => \rom_component|Add0~10\);

-- Location: FF_X85_Y8_N41
\rom_component|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(6));

-- Location: LABCELL_X85_Y8_N18
\rom_component|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Add0~1_sumout\ = SUM(( \rom_component|cnt\(7) ) + ( GND ) + ( \rom_component|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rom_component|ALT_INV_cnt\(7),
	cin => \rom_component|Add0~10\,
	sumout => \rom_component|Add0~1_sumout\);

-- Location: FF_X85_Y8_N53
\rom_component|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(7));

-- Location: LABCELL_X85_Y8_N45
\rom_component|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Mux0~1_combout\ = ( \rom_component|cnt[0]~DUPLICATE_q\ & ( \rom_component|cnt\(6) & ( (!\rom_component|cnt\(2) & (!\rom_component|cnt\(5) $ (((!\rom_component|cnt\(4)) # (\rom_component|cnt\(7)))))) # (\rom_component|cnt\(2) & 
-- ((!\rom_component|cnt\(5) & ((!\rom_component|cnt\(7)))) # (\rom_component|cnt\(5) & (\rom_component|cnt\(4))))) ) ) ) # ( !\rom_component|cnt[0]~DUPLICATE_q\ & ( \rom_component|cnt\(6) & ( (!\rom_component|cnt\(2) & (\rom_component|cnt\(4) & 
-- ((\rom_component|cnt\(7))))) # (\rom_component|cnt\(2) & ((!\rom_component|cnt\(5) & ((\rom_component|cnt\(7)))) # (\rom_component|cnt\(5) & (!\rom_component|cnt\(4))))) ) ) ) # ( \rom_component|cnt[0]~DUPLICATE_q\ & ( !\rom_component|cnt\(6) & ( 
-- (!\rom_component|cnt\(2) & (!\rom_component|cnt\(4) $ (((\rom_component|cnt\(7)))))) # (\rom_component|cnt\(2) & ((!\rom_component|cnt\(4) & (\rom_component|cnt\(5) & \rom_component|cnt\(7))) # (\rom_component|cnt\(4) & (!\rom_component|cnt\(5) & 
-- !\rom_component|cnt\(7))))) ) ) ) # ( !\rom_component|cnt[0]~DUPLICATE_q\ & ( !\rom_component|cnt\(6) & ( (!\rom_component|cnt\(7) & (!\rom_component|cnt\(5) $ (((\rom_component|cnt\(4) & \rom_component|cnt\(2)))))) # (\rom_component|cnt\(7) & 
-- (!\rom_component|cnt\(4) & (\rom_component|cnt\(5) & !\rom_component|cnt\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100100100000101001000101001000000010010111100110110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_cnt\(4),
	datab => \rom_component|ALT_INV_cnt\(5),
	datac => \rom_component|ALT_INV_cnt\(2),
	datad => \rom_component|ALT_INV_cnt\(7),
	datae => \rom_component|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \rom_component|ALT_INV_cnt\(6),
	combout => \rom_component|Mux0~1_combout\);

-- Location: LABCELL_X85_Y8_N33
\rom_component|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Mux0~2_combout\ = ( \rom_component|cnt[0]~DUPLICATE_q\ & ( \rom_component|cnt\(6) & ( (!\rom_component|cnt\(2) & (((!\rom_component|cnt\(5) & \rom_component|cnt\(7))))) # (\rom_component|cnt\(2) & (!\rom_component|cnt\(4) $ 
-- (((!\rom_component|cnt\(5)) # (\rom_component|cnt\(7)))))) ) ) ) # ( !\rom_component|cnt[0]~DUPLICATE_q\ & ( \rom_component|cnt\(6) & ( (!\rom_component|cnt\(5) & (((\rom_component|cnt\(7))))) # (\rom_component|cnt\(5) & ((!\rom_component|cnt\(4) & 
-- (\rom_component|cnt\(2) & !\rom_component|cnt\(7))) # (\rom_component|cnt\(4) & (!\rom_component|cnt\(2) & \rom_component|cnt\(7))))) ) ) ) # ( \rom_component|cnt[0]~DUPLICATE_q\ & ( !\rom_component|cnt\(6) & ( (!\rom_component|cnt\(5) & 
-- (!\rom_component|cnt\(4) $ (!\rom_component|cnt\(2) $ (\rom_component|cnt\(7))))) # (\rom_component|cnt\(5) & (((!\rom_component|cnt\(4) & \rom_component|cnt\(7))) # (\rom_component|cnt\(2)))) ) ) ) # ( !\rom_component|cnt[0]~DUPLICATE_q\ & ( 
-- !\rom_component|cnt\(6) & ( (\rom_component|cnt\(5) & ((!\rom_component|cnt\(7)) # ((!\rom_component|cnt\(4) & \rom_component|cnt\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000010010010111010011100000010110111000000011011000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_cnt\(4),
	datab => \rom_component|ALT_INV_cnt\(5),
	datac => \rom_component|ALT_INV_cnt\(2),
	datad => \rom_component|ALT_INV_cnt\(7),
	datae => \rom_component|ALT_INV_cnt[0]~DUPLICATE_q\,
	dataf => \rom_component|ALT_INV_cnt\(6),
	combout => \rom_component|Mux0~2_combout\);

-- Location: FF_X85_Y8_N37
\rom_component|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|cnt[0]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt\(0));

-- Location: FF_X85_Y8_N31
\rom_component|cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \rom_component|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rom_component|cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y8_N48
\rom_component|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Mux0~0_combout\ = ( \rom_component|cnt\(4) & ( \rom_component|cnt\(6) & ( (!\rom_component|cnt\(0) & (!\rom_component|cnt[2]~DUPLICATE_q\ $ (((\rom_component|cnt\(7) & \rom_component|cnt\(5)))))) # (\rom_component|cnt\(0) & 
-- (\rom_component|cnt\(5) & ((!\rom_component|cnt\(7)) # (\rom_component|cnt[2]~DUPLICATE_q\)))) ) ) ) # ( !\rom_component|cnt\(4) & ( \rom_component|cnt\(6) & ( (!\rom_component|cnt\(7) & (!\rom_component|cnt\(0) & (!\rom_component|cnt[2]~DUPLICATE_q\))) # 
-- (\rom_component|cnt\(7) & (!\rom_component|cnt\(5) & (!\rom_component|cnt\(0) $ (\rom_component|cnt[2]~DUPLICATE_q\)))) ) ) ) # ( \rom_component|cnt\(4) & ( !\rom_component|cnt\(6) & ( !\rom_component|cnt\(0) $ (!\rom_component|cnt\(5) $ 
-- (((\rom_component|cnt\(7) & !\rom_component|cnt[2]~DUPLICATE_q\)))) ) ) ) # ( !\rom_component|cnt\(4) & ( !\rom_component|cnt\(6) & ( (!\rom_component|cnt\(0) & ((!\rom_component|cnt\(5) & (\rom_component|cnt\(7))) # (\rom_component|cnt\(5) & 
-- ((\rom_component|cnt[2]~DUPLICATE_q\))))) # (\rom_component|cnt\(0) & (!\rom_component|cnt\(7) $ (((!\rom_component|cnt[2]~DUPLICATE_q\) # (\rom_component|cnt\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000011101011000111001110011000001100000001100000010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_cnt\(7),
	datab => \rom_component|ALT_INV_cnt\(0),
	datac => \rom_component|ALT_INV_cnt[2]~DUPLICATE_q\,
	datad => \rom_component|ALT_INV_cnt\(5),
	datae => \rom_component|ALT_INV_cnt\(4),
	dataf => \rom_component|ALT_INV_cnt\(6),
	combout => \rom_component|Mux0~0_combout\);

-- Location: LABCELL_X85_Y8_N27
\rom_component|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Mux0~3_combout\ = ( \rom_component|cnt\(4) & ( \rom_component|cnt[2]~DUPLICATE_q\ & ( (!\rom_component|cnt\(7) & (!\rom_component|cnt[0]~DUPLICATE_q\ $ (((!\rom_component|cnt\(5) & !\rom_component|cnt\(6)))))) # (\rom_component|cnt\(7) & 
-- ((!\rom_component|cnt\(5)) # ((\rom_component|cnt[0]~DUPLICATE_q\ & !\rom_component|cnt\(6))))) ) ) ) # ( !\rom_component|cnt\(4) & ( \rom_component|cnt[2]~DUPLICATE_q\ & ( (!\rom_component|cnt[0]~DUPLICATE_q\ & (!\rom_component|cnt\(5) $ 
-- (((!\rom_component|cnt\(6)) # (\rom_component|cnt\(7)))))) # (\rom_component|cnt[0]~DUPLICATE_q\ & ((!\rom_component|cnt\(6) & ((!\rom_component|cnt\(5)) # (!\rom_component|cnt\(7)))) # (\rom_component|cnt\(6) & ((\rom_component|cnt\(7)))))) ) ) ) # ( 
-- \rom_component|cnt\(4) & ( !\rom_component|cnt[2]~DUPLICATE_q\ & ( (!\rom_component|cnt[0]~DUPLICATE_q\ & (!\rom_component|cnt\(6) $ (((\rom_component|cnt\(7)) # (\rom_component|cnt\(5)))))) # (\rom_component|cnt[0]~DUPLICATE_q\ & (\rom_component|cnt\(5) 
-- & (!\rom_component|cnt\(6) & \rom_component|cnt\(7)))) ) ) ) # ( !\rom_component|cnt\(4) & ( !\rom_component|cnt[2]~DUPLICATE_q\ & ( (!\rom_component|cnt\(5) & (((!\rom_component|cnt[0]~DUPLICATE_q\ & \rom_component|cnt\(7))) # (\rom_component|cnt\(6)))) 
-- # (\rom_component|cnt\(5) & (!\rom_component|cnt[0]~DUPLICATE_q\ $ (((!\rom_component|cnt\(6)) # (!\rom_component|cnt\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110110011110100000100001101001111000011001110110101011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_cnt[0]~DUPLICATE_q\,
	datab => \rom_component|ALT_INV_cnt\(5),
	datac => \rom_component|ALT_INV_cnt\(6),
	datad => \rom_component|ALT_INV_cnt\(7),
	datae => \rom_component|ALT_INV_cnt\(4),
	dataf => \rom_component|ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \rom_component|Mux0~3_combout\);

-- Location: LABCELL_X85_Y8_N39
\rom_component|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rom_component|Mux0~4_combout\ = ( \rom_component|Mux0~0_combout\ & ( \rom_component|Mux0~3_combout\ & ( (!\rom_component|cnt\(3) & ((!\rom_component|cnt[1]~DUPLICATE_q\) # ((!\rom_component|Mux0~2_combout\)))) # (\rom_component|cnt\(3) & 
-- (((\rom_component|Mux0~1_combout\)) # (\rom_component|cnt[1]~DUPLICATE_q\))) ) ) ) # ( !\rom_component|Mux0~0_combout\ & ( \rom_component|Mux0~3_combout\ & ( (!\rom_component|cnt\(3) & (\rom_component|cnt[1]~DUPLICATE_q\ & 
-- ((!\rom_component|Mux0~2_combout\)))) # (\rom_component|cnt\(3) & (((\rom_component|Mux0~1_combout\)) # (\rom_component|cnt[1]~DUPLICATE_q\))) ) ) ) # ( \rom_component|Mux0~0_combout\ & ( !\rom_component|Mux0~3_combout\ & ( (!\rom_component|cnt\(3) & 
-- ((!\rom_component|cnt[1]~DUPLICATE_q\) # ((!\rom_component|Mux0~2_combout\)))) # (\rom_component|cnt\(3) & (!\rom_component|cnt[1]~DUPLICATE_q\ & (\rom_component|Mux0~1_combout\))) ) ) ) # ( !\rom_component|Mux0~0_combout\ & ( 
-- !\rom_component|Mux0~3_combout\ & ( (!\rom_component|cnt\(3) & (\rom_component|cnt[1]~DUPLICATE_q\ & ((!\rom_component|Mux0~2_combout\)))) # (\rom_component|cnt\(3) & (!\rom_component|cnt[1]~DUPLICATE_q\ & (\rom_component|Mux0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000100101011101000110000110111000101011011111110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_cnt\(3),
	datab => \rom_component|ALT_INV_cnt[1]~DUPLICATE_q\,
	datac => \rom_component|ALT_INV_Mux0~1_combout\,
	datad => \rom_component|ALT_INV_Mux0~2_combout\,
	datae => \rom_component|ALT_INV_Mux0~0_combout\,
	dataf => \rom_component|ALT_INV_Mux0~3_combout\,
	combout => \rom_component|Mux0~4_combout\);

-- Location: MLABCELL_X84_Y8_N15
\sequence_detector|fsm|position1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|position1~10_combout\ = (\rom_component|Mux0~4_combout\ & \sequence_detector|fsm|position1.C1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_Mux0~4_combout\,
	datac => \sequence_detector|fsm|ALT_INV_position1.C1~q\,
	combout => \sequence_detector|fsm|position1~10_combout\);

-- Location: FF_X84_Y8_N17
\sequence_detector|fsm|position1.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|position1~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position1.D1~q\);

-- Location: MLABCELL_X84_Y8_N39
\sequence_detector|fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|Selector2~0_combout\ = (!\rom_component|Mux0~4_combout\ & (\sequence_detector|fsm|position1.D1~q\)) # (\rom_component|Mux0~4_combout\ & (!\sequence_detector|fsm|position1.D1~q\ & !\sequence_detector|fsm|position1.C1~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001001100010011000100110001001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_Mux0~4_combout\,
	datab => \sequence_detector|fsm|ALT_INV_position1.D1~q\,
	datac => \sequence_detector|fsm|ALT_INV_position1.C1~q\,
	combout => \sequence_detector|fsm|Selector2~0_combout\);

-- Location: FF_X84_Y8_N40
\sequence_detector|fsm|position1.B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position1.B1~q\);

-- Location: MLABCELL_X84_Y8_N36
\sequence_detector|fsm|position1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|position1~9_combout\ = (\rom_component|Mux0~4_combout\ & \sequence_detector|fsm|position1.D1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_Mux0~4_combout\,
	datab => \sequence_detector|fsm|ALT_INV_position1.D1~q\,
	combout => \sequence_detector|fsm|position1~9_combout\);

-- Location: FF_X84_Y8_N38
\sequence_detector|fsm|position1.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|position1~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position1.E1~q\);

-- Location: MLABCELL_X84_Y8_N12
\sequence_detector|fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|Selector3~0_combout\ = ( \sequence_detector|fsm|position1.E1~q\ & ( !\rom_component|Mux0~4_combout\ ) ) # ( !\sequence_detector|fsm|position1.E1~q\ & ( (!\rom_component|Mux0~4_combout\ & \sequence_detector|fsm|position1.B1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_Mux0~4_combout\,
	datab => \sequence_detector|fsm|ALT_INV_position1.B1~q\,
	dataf => \sequence_detector|fsm|ALT_INV_position1.E1~q\,
	combout => \sequence_detector|fsm|Selector3~0_combout\);

-- Location: FF_X84_Y8_N13
\sequence_detector|fsm|position1.C1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|Selector3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position1.C1~q\);

-- Location: LABCELL_X85_Y8_N57
\sequence_detector|fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|Selector1~0_combout\ = ( \rom_component|Mux0~4_combout\ ) # ( !\rom_component|Mux0~4_combout\ & ( (\sequence_detector|fsm|position1.A1~q\ & !\sequence_detector|fsm|position1.C1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|fsm|ALT_INV_position1.A1~q\,
	datac => \sequence_detector|fsm|ALT_INV_position1.C1~q\,
	dataf => \rom_component|ALT_INV_Mux0~4_combout\,
	combout => \sequence_detector|fsm|Selector1~0_combout\);

-- Location: FF_X85_Y8_N2
\sequence_detector|fsm|position1.A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \sequence_detector|fsm|Selector1~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position1.A1~q\);

-- Location: FF_X84_Y8_N37
\sequence_detector|fsm|position1.E1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|position1~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position1.E1~DUPLICATE_q\);

-- Location: LABCELL_X85_Y8_N54
\sequence_detector|fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|Selector0~0_combout\ = ( \rom_component|Mux0~4_combout\ & ( ((!\sequence_detector|fsm|position1.A1~q\ & \sequence_detector|fsm|out_1~q\)) # (\sequence_detector|fsm|position1.E1~DUPLICATE_q\) ) ) # ( !\rom_component|Mux0~4_combout\ & 
-- ( \sequence_detector|fsm|position1.E1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|fsm|ALT_INV_position1.A1~q\,
	datab => \sequence_detector|fsm|ALT_INV_out_1~q\,
	datac => \sequence_detector|fsm|ALT_INV_position1.E1~DUPLICATE_q\,
	dataf => \rom_component|ALT_INV_Mux0~4_combout\,
	combout => \sequence_detector|fsm|Selector0~0_combout\);

-- Location: FF_X85_Y8_N23
\sequence_detector|fsm|out_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \sequence_detector|fsm|Selector0~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|out_1~q\);

-- Location: FF_X84_Y8_N29
\sequence_detector|sequence_counter1|internal_temporary_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \sequence_detector|sequence_counter1|internal_temporary_signal[0]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \sequence_detector|fsm|out_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter1|internal_temporary_signal\(0));

-- Location: MLABCELL_X84_Y8_N33
\HEX0_seven_segment|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux5~1_combout\ = !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) $ (!\sequence_detector|sequence_counter1|internal_temporary_signal\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	datad => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	combout => \HEX0_seven_segment|Mux5~1_combout\);

-- Location: FF_X84_Y8_N25
\sequence_detector|sequence_counter1|internal_temporary_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \HEX0_seven_segment|Mux5~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \sequence_detector|fsm|out_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter1|internal_temporary_signal\(1));

-- Location: MLABCELL_X84_Y8_N27
\sequence_detector|sequence_counter1|internal_temporary_signal[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter1|internal_temporary_signal[2]~0_combout\ = ( \sequence_detector|sequence_counter1|internal_temporary_signal\(0) & ( \sequence_detector|sequence_counter1|internal_temporary_signal\(1) & ( !\sequence_detector|fsm|out_1~q\ 
-- $ (!\sequence_detector|sequence_counter1|internal_temporary_signal\(2)) ) ) ) # ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(0) & ( \sequence_detector|sequence_counter1|internal_temporary_signal\(1) & ( 
-- \sequence_detector|sequence_counter1|internal_temporary_signal\(2) ) ) ) # ( \sequence_detector|sequence_counter1|internal_temporary_signal\(0) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) & ( 
-- \sequence_detector|sequence_counter1|internal_temporary_signal\(2) ) ) ) # ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(0) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) & ( 
-- \sequence_detector|sequence_counter1|internal_temporary_signal\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|fsm|ALT_INV_out_1~q\,
	datac => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	datae => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	combout => \sequence_detector|sequence_counter1|internal_temporary_signal[2]~0_combout\);

-- Location: FF_X84_Y8_N32
\sequence_detector|sequence_counter1|internal_temporary_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	asdata => \sequence_detector|sequence_counter1|internal_temporary_signal[2]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter1|internal_temporary_signal\(2));

-- Location: LABCELL_X83_Y8_N12
\HEX0_seven_segment|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux6~0_combout\ = ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(0) & ( \sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) ) ) 
-- ) # ( \sequence_detector|sequence_counter1|internal_temporary_signal\(0) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	datae => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y8_N0
\HEX0_seven_segment|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux5~0_combout\ = ( \sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(0) $ (!\sequence_detector|sequence_counter1|internal_temporary_signal\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y8_N3
\HEX0_seven_segment|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux4~0_combout\ = ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( (!\sequence_detector|sequence_counter1|internal_temporary_signal\(0) & \sequence_detector|sequence_counter1|internal_temporary_signal\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y8_N18
\HEX0_seven_segment|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux3~0_combout\ = ( \sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) $ (\sequence_detector|sequence_counter1|internal_temporary_signal\(0)) ) ) # 
-- ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( (!\sequence_detector|sequence_counter1|internal_temporary_signal\(1) & \sequence_detector|sequence_counter1|internal_temporary_signal\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	datac => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y8_N48
\HEX0_seven_segment|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux2~0_combout\ = ( \sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( (!\sequence_detector|sequence_counter1|internal_temporary_signal\(1)) # (\sequence_detector|sequence_counter1|internal_temporary_signal\(0)) ) ) 
-- # ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter1|internal_temporary_signal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y8_N54
\HEX0_seven_segment|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux1~0_combout\ = ( \sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( (\sequence_detector|sequence_counter1|internal_temporary_signal\(0) & \sequence_detector|sequence_counter1|internal_temporary_signal\(1)) ) ) # 
-- ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( (\sequence_detector|sequence_counter1|internal_temporary_signal\(1)) # (\sequence_detector|sequence_counter1|internal_temporary_signal\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y8_N57
\HEX0_seven_segment|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0_seven_segment|Mux0~0_combout\ = ( \sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( (\sequence_detector|sequence_counter1|internal_temporary_signal\(0) & \sequence_detector|sequence_counter1|internal_temporary_signal\(1)) ) ) # 
-- ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter1|internal_temporary_signal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(0),
	datab => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(1),
	dataf => \sequence_detector|sequence_counter1|ALT_INV_internal_temporary_signal\(2),
	combout => \HEX0_seven_segment|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y4_N30
\sequence_detector|sequence_counter2|internal_temporary_signal[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter2|internal_temporary_signal[0]~1_combout\ = ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	combout => \sequence_detector|sequence_counter2|internal_temporary_signal[0]~1_combout\);

-- Location: MLABCELL_X84_Y4_N57
\sequence_detector|sequence_counter2|internal_temporary_signal[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter2|internal_temporary_signal[0]~feeder_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[0]~1_combout\,
	combout => \sequence_detector|sequence_counter2|internal_temporary_signal[0]~feeder_combout\);

-- Location: MLABCELL_X84_Y8_N9
\sequence_detector|fsm|position2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|position2~14_combout\ = ( \sequence_detector|fsm|position2.C2~q\ ) # ( !\sequence_detector|fsm|position2.C2~q\ & ( !\rom_component|Mux0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_Mux0~4_combout\,
	dataf => \sequence_detector|fsm|ALT_INV_position2.C2~q\,
	combout => \sequence_detector|fsm|position2~14_combout\);

-- Location: FF_X84_Y8_N10
\sequence_detector|fsm|position2.A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|position2~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position2.A2~q\);

-- Location: MLABCELL_X84_Y8_N45
\sequence_detector|fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|Selector4~0_combout\ = ( !\rom_component|Mux0~4_combout\ & ( (!\sequence_detector|fsm|position2.D2~q\ & \sequence_detector|fsm|position2.A2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|fsm|ALT_INV_position2.D2~q\,
	datab => \sequence_detector|fsm|ALT_INV_position2.A2~q\,
	dataf => \rom_component|ALT_INV_Mux0~4_combout\,
	combout => \sequence_detector|fsm|Selector4~0_combout\);

-- Location: FF_X84_Y8_N46
\sequence_detector|fsm|position2.C2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position2.C2~q\);

-- Location: MLABCELL_X84_Y8_N6
\sequence_detector|fsm|position2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|position2~13_combout\ = ( \sequence_detector|fsm|position2.C2~q\ & ( \rom_component|Mux0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rom_component|ALT_INV_Mux0~4_combout\,
	dataf => \sequence_detector|fsm|ALT_INV_position2.C2~q\,
	combout => \sequence_detector|fsm|position2~13_combout\);

-- Location: FF_X84_Y8_N8
\sequence_detector|fsm|position2.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|position2~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position2.D2~q\);

-- Location: MLABCELL_X84_Y8_N42
\sequence_detector|fsm|position2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|position2~12_combout\ = ( !\rom_component|Mux0~4_combout\ & ( \sequence_detector|fsm|position2.D2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|fsm|ALT_INV_position2.D2~q\,
	dataf => \rom_component|ALT_INV_Mux0~4_combout\,
	combout => \sequence_detector|fsm|position2~12_combout\);

-- Location: FF_X84_Y8_N43
\sequence_detector|fsm|position2.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|position2~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|position2.E2~q\);

-- Location: LABCELL_X85_Y5_N30
\sequence_detector|fsm|out_2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|fsm|out_2~feeder_combout\ = ( \sequence_detector|fsm|position2.E2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \sequence_detector|fsm|ALT_INV_position2.E2~q\,
	combout => \sequence_detector|fsm|out_2~feeder_combout\);

-- Location: FF_X85_Y5_N32
\sequence_detector|fsm|out_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|fsm|out_2~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|fsm|out_2~q\);

-- Location: FF_X84_Y4_N58
\sequence_detector|sequence_counter2|internal_temporary_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|sequence_counter2|internal_temporary_signal[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \sequence_detector|fsm|out_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter2|internal_temporary_signal\(0));

-- Location: FF_X84_Y4_N59
\sequence_detector|sequence_counter2|internal_temporary_signal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|sequence_counter2|internal_temporary_signal[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \sequence_detector|fsm|out_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter2|internal_temporary_signal[0]~DUPLICATE_q\);

-- Location: FF_X84_Y4_N29
\sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|sequence_counter2|internal_temporary_signal[2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y4_N42
\HEX5_seven_segment|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux5~1_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) ) ) # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(0) 
-- & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	combout => \HEX5_seven_segment|Mux5~1_combout\);

-- Location: MLABCELL_X84_Y4_N48
\sequence_detector|sequence_counter2|internal_temporary_signal[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter2|internal_temporary_signal[1]~feeder_combout\ = \HEX5_seven_segment|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HEX5_seven_segment|ALT_INV_Mux5~1_combout\,
	combout => \sequence_detector|sequence_counter2|internal_temporary_signal[1]~feeder_combout\);

-- Location: FF_X84_Y4_N50
\sequence_detector|sequence_counter2|internal_temporary_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|sequence_counter2|internal_temporary_signal[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \sequence_detector|fsm|out_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter2|internal_temporary_signal\(1));

-- Location: MLABCELL_X84_Y4_N36
\sequence_detector|sequence_counter2|internal_temporary_signal[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter2|internal_temporary_signal[2]~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE_q\ & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( 
-- (!\sequence_detector|sequence_counter2|internal_temporary_signal[0]~DUPLICATE_q\) # (!\sequence_detector|fsm|out_2~q\) ) ) ) # ( !\sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE_q\ & ( 
-- \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( (\sequence_detector|sequence_counter2|internal_temporary_signal[0]~DUPLICATE_q\ & \sequence_detector|fsm|out_2~q\) ) ) ) # ( 
-- \sequence_detector|sequence_counter2|internal_temporary_signal[2]~DUPLICATE_q\ & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[0]~DUPLICATE_q\,
	datac => \sequence_detector|fsm|ALT_INV_out_2~q\,
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[2]~DUPLICATE_q\,
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \sequence_detector|sequence_counter2|internal_temporary_signal[2]~0_combout\);

-- Location: MLABCELL_X84_Y4_N27
\sequence_detector|sequence_counter2|internal_temporary_signal[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sequence_detector|sequence_counter2|internal_temporary_signal[2]~feeder_combout\ = \sequence_detector|sequence_counter2|internal_temporary_signal[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal[2]~0_combout\,
	combout => \sequence_detector|sequence_counter2|internal_temporary_signal[2]~feeder_combout\);

-- Location: FF_X84_Y4_N28
\sequence_detector|sequence_counter2|internal_temporary_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \sequence_detector|sequence_counter2|internal_temporary_signal[2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequence_detector|sequence_counter2|internal_temporary_signal\(2));

-- Location: LABCELL_X85_Y4_N51
\HEX5_seven_segment|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux6~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) 
-- ) # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux6~0_combout\);

-- Location: LABCELL_X85_Y4_N54
\HEX5_seven_segment|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux5~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) 
-- # ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux5~0_combout\);

-- Location: LABCELL_X85_Y4_N15
\HEX5_seven_segment|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux4~0_combout\ = ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux4~0_combout\);

-- Location: LABCELL_X85_Y4_N30
\HEX5_seven_segment|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux3~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) 
-- # ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) # ( 
-- !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux3~0_combout\);

-- Location: LABCELL_X85_Y4_N39
\HEX5_seven_segment|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux2~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) 
-- # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) # ( 
-- \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) ) ) # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( 
-- !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux2~0_combout\);

-- Location: LABCELL_X85_Y4_N6
\HEX5_seven_segment|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux1~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) 
-- # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) ) ) # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( 
-- !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux1~0_combout\);

-- Location: LABCELL_X85_Y4_N24
\HEX5_seven_segment|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5_seven_segment|Mux0~0_combout\ = ( \sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(1) & ( \sequence_detector|sequence_counter2|internal_temporary_signal\(0) ) ) ) 
-- # ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(2) & ( !\sequence_detector|sequence_counter2|internal_temporary_signal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(0),
	datae => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(2),
	dataf => \sequence_detector|sequence_counter2|ALT_INV_internal_temporary_signal\(1),
	combout => \HEX5_seven_segment|Mux0~0_combout\);

-- Location: MLABCELL_X21_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


