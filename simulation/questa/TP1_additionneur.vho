-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "04/29/2026 10:33:11"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder_4b IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic
	);
END full_adder_4b;

-- Design Ports Information
-- S[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder_4b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \full_add|half_adder2|S~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \full_add2|half_adder2|S~combout\ : std_logic;
SIGNAL \full_add2|Cout~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \full_add3|half_adder2|S~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \full_add4|half_adder2|S~combout\ : std_logic;
SIGNAL \full_add4|Cout~combout\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \full_add2|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\full_add2|ALT_INV_Cout~combout\ <= NOT \full_add2|Cout~combout\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;

-- Location: IOOBUF_X68_Y14_N45
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_add|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X68_Y14_N79
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_add2|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X68_Y13_N5
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_add3|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X68_Y14_N62
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_add4|half_adder2|S~combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X68_Y14_N96
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \full_add4|Cout~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X68_Y10_N78
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X68_Y10_N44
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X68_Y11_N38
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X67_Y12_N24
\full_add|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_add|half_adder2|S~combout\ = ( \A[0]~input_o\ & ( !\Cin~input_o\ $ (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( !\Cin~input_o\ $ (!\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	combout => \full_add|half_adder2|S~combout\);

-- Location: IOIBUF_X68_Y12_N55
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X68_Y12_N4
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X67_Y12_N57
\full_add2|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_add2|half_adder2|S~combout\ = ( \B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\Cin~input_o\) # (!\A[0]~input_o\))) # (\B[0]~input_o\ & (!\Cin~input_o\ & !\A[0]~input_o\)) ) ) ) # ( \B[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\Cin~input_o\) # (!\A[0]~input_o\))) # (\B[0]~input_o\ & (!\Cin~input_o\ & 
-- !\A[0]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111111110101010000011111010101000000000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \full_add2|half_adder2|S~combout\);

-- Location: LABCELL_X67_Y12_N12
\full_add2|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_add2|Cout~combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( ((\A[0]~input_o\) # (\Cin~input_o\)) # (\A[1]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( (\A[1]~input_o\ & ((\A[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( \B[1]~input_o\ & 
-- ( !\B[0]~input_o\ & ( ((\Cin~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ & ( (\A[1]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101110101011100010101000101010111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \full_add2|Cout~combout\);

-- Location: IOIBUF_X68_Y10_N95
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X68_Y13_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X67_Y12_N21
\full_add3|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_add3|half_adder2|S~combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( \full_add2|Cout~combout\ ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( !\full_add2|Cout~combout\ ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( !\full_add2|Cout~combout\ ) ) 
-- ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( \full_add2|Cout~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \full_add2|ALT_INV_Cout~combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \full_add3|half_adder2|S~combout\);

-- Location: IOIBUF_X68_Y12_N38
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X68_Y12_N21
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X67_Y12_N36
\full_add4|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_add4|half_adder2|S~combout\ = ( \A[3]~input_o\ & ( \B[2]~input_o\ & ( !\B[3]~input_o\ $ (((\full_add2|Cout~combout\) # (\A[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \B[2]~input_o\ & ( !\B[3]~input_o\ $ (((!\A[2]~input_o\ & 
-- !\full_add2|Cout~combout\))) ) ) ) # ( \A[3]~input_o\ & ( !\B[2]~input_o\ & ( !\B[3]~input_o\ $ (((\A[2]~input_o\ & \full_add2|Cout~combout\))) ) ) ) # ( !\A[3]~input_o\ & ( !\B[2]~input_o\ & ( !\B[3]~input_o\ $ (((!\A[2]~input_o\) # 
-- (!\full_add2|Cout~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110111000011110000101111000011110001000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \full_add2|ALT_INV_Cout~combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \full_add4|half_adder2|S~combout\);

-- Location: LABCELL_X67_Y12_N9
\full_add4|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_add4|Cout~combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (\A[3]~input_o\) # (\B[3]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & \full_add2|Cout~combout\)) # (\B[3]~input_o\ & 
-- ((\full_add2|Cout~combout\) # (\A[3]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & \full_add2|Cout~combout\)) # (\B[3]~input_o\ & ((\full_add2|Cout~combout\) # (\A[3]~input_o\))) ) ) ) # ( 
-- !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010111000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \full_add2|ALT_INV_Cout~combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \full_add4|Cout~combout\);

-- Location: LABCELL_X9_Y33_N3
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


