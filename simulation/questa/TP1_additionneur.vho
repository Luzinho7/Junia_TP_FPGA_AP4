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

-- DATE "04/29/2026 10:44:54"

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

ENTITY 	toplevel IS
    PORT (
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- HEX3[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U_HEX3|Mux6~0_combout\ : std_logic;
SIGNAL \U_HEX3|Mux5~0_combout\ : std_logic;
SIGNAL \U_HEX3|Mux4~0_combout\ : std_logic;
SIGNAL \U_HEX3|Mux3~0_combout\ : std_logic;
SIGNAL \U_HEX3|Mux2~0_combout\ : std_logic;
SIGNAL \U_HEX3|Mux1~0_combout\ : std_logic;
SIGNAL \U_HEX3|Mux0~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U_HEX2|Mux6~0_combout\ : std_logic;
SIGNAL \U_HEX2|Mux5~0_combout\ : std_logic;
SIGNAL \U_HEX2|Mux4~0_combout\ : std_logic;
SIGNAL \U_HEX2|Mux3~0_combout\ : std_logic;
SIGNAL \U_HEX2|Mux2~0_combout\ : std_logic;
SIGNAL \U_HEX2|Mux1~0_combout\ : std_logic;
SIGNAL \U_HEX2|Mux0~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \U_ADDER|full_add2|Cout~combout\ : std_logic;
SIGNAL \U_ADDER|full_add4|half_adder2|S~combout\ : std_logic;
SIGNAL \U_ADDER|full_add2|half_adder2|S~combout\ : std_logic;
SIGNAL \U_ADDER|full_add|half_adder2|S~combout\ : std_logic;
SIGNAL \U_ADDER|full_add3|half_adder2|S~combout\ : std_logic;
SIGNAL \U_HEX0|Mux6~0_combout\ : std_logic;
SIGNAL \U_HEX0|Mux5~0_combout\ : std_logic;
SIGNAL \U_HEX0|Mux4~0_combout\ : std_logic;
SIGNAL \U_HEX0|Mux3~0_combout\ : std_logic;
SIGNAL \U_HEX0|Mux2~0_combout\ : std_logic;
SIGNAL \U_HEX0|Mux1~0_combout\ : std_logic;
SIGNAL \U_HEX0|Mux0~0_combout\ : std_logic;
SIGNAL \U_HEX3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \U_ADDER|full_add2|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \U_HEX2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\ : std_logic;
SIGNAL \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\ : std_logic;
SIGNAL \U_HEX0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U_HEX3|ALT_INV_Mux0~0_combout\ <= NOT \U_HEX3|Mux0~0_combout\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\U_ADDER|full_add2|ALT_INV_Cout~combout\ <= NOT \U_ADDER|full_add2|Cout~combout\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\ <= NOT \U_ADDER|full_add2|half_adder2|S~combout\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\U_HEX2|ALT_INV_Mux0~0_combout\ <= NOT \U_HEX2|Mux0~0_combout\;
\U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\ <= NOT \U_ADDER|full_add4|half_adder2|S~combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\U_ADDER|full_add|half_adder2|ALT_INV_S~combout\ <= NOT \U_ADDER|full_add|half_adder2|S~combout\;
\U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\ <= NOT \U_ADDER|full_add3|half_adder2|S~combout\;
\U_HEX0|ALT_INV_Mux0~0_combout\ <= NOT \U_HEX0|Mux0~0_combout\;

-- Location: IOOBUF_X68_Y13_N56
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X68_Y13_N39
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X68_Y11_N56
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X68_Y11_N39
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X68_Y12_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X68_Y10_N96
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X68_Y10_N79
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X7_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X7_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X68_Y13_N22
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X68_Y12_N5
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X68_Y10_N62
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X68_Y11_N22
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X68_Y11_N5
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X64_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X64_Y0_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X66_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X65_Y0_N2
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X65_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X62_Y0_N42
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X65_Y10_N36
\U_HEX3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux6~0_combout\ = ( \SW[2]~input_o\ & ( \SW[0]~input_o\ & ( (\SW[3]~input_o\ & !\SW[1]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[3]~input_o\ $ (\SW[1]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( 
-- (!\SW[3]~input_o\ & !\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \U_HEX3|Mux6~0_combout\);

-- Location: LABCELL_X65_Y10_N45
\U_HEX3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux5~0_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[3]~input_o\ & \SW[0]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- !\SW[3]~input_o\ $ (!\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U_HEX3|Mux5~0_combout\);

-- Location: LABCELL_X65_Y10_N24
\U_HEX3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux4~0_combout\ = ( \SW[2]~input_o\ & ( \SW[0]~input_o\ & ( (\SW[3]~input_o\ & \SW[1]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( \SW[3]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[3]~input_o\ & 
-- \SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100110011001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \U_HEX3|Mux4~0_combout\);

-- Location: LABCELL_X65_Y10_N33
\U_HEX3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux3~0_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[3]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\ & 
-- !\SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\ & \SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U_HEX3|Mux3~0_combout\);

-- Location: LABCELL_X65_Y10_N48
\U_HEX3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux2~0_combout\ = ( \SW[2]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[3]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( \SW[0]~input_o\ & ( (!\SW[3]~input_o\) # (!\SW[1]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[3]~input_o\ & 
-- !\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \U_HEX3|Mux2~0_combout\);

-- Location: LABCELL_X65_Y10_N57
\U_HEX3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux1~0_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\ & \SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[3]~input_o\ & 
-- \SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\ & \SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111001100110011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U_HEX3|Mux1~0_combout\);

-- Location: LABCELL_X65_Y10_N15
\U_HEX3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX3|Mux0~0_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( 
-- !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011111100111111111111111111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U_HEX3|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X13_Y2_N12
\U_HEX2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux6~0_combout\ = ( !\SW[5]~input_o\ & ( \SW[6]~input_o\ & ( !\SW[4]~input_o\ $ (\SW[7]~input_o\) ) ) ) # ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ & ( (\SW[4]~input_o\ & \SW[7]~input_o\) ) ) ) # ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ & ( 
-- (\SW[4]~input_o\ & !\SW[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U_HEX2|Mux6~0_combout\);

-- Location: LABCELL_X13_Y2_N57
\U_HEX2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux5~0_combout\ = ( \SW[5]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[4]~input_o\) # (\SW[7]~input_o\) ) ) ) # ( !\SW[5]~input_o\ & ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ $ (!\SW[4]~input_o\) ) ) ) # ( \SW[5]~input_o\ & ( !\SW[6]~input_o\ & ( 
-- (\SW[7]~input_o\ & \SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U_HEX2|Mux5~0_combout\);

-- Location: LABCELL_X64_Y2_N36
\U_HEX2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux4~0_combout\ = ( \SW[7]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[4]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[6]~input_o\ & ( (!\SW[4]~input_o\ & \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U_HEX2|Mux4~0_combout\);

-- Location: LABCELL_X64_Y2_N9
\U_HEX2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux3~0_combout\ = ( \SW[7]~input_o\ & ( \SW[6]~input_o\ & ( (\SW[5]~input_o\ & \SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[6]~input_o\ & ( !\SW[5]~input_o\ $ (\SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[6]~input_o\ & ( 
-- (\SW[5]~input_o\ & !\SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[6]~input_o\ & ( (!\SW[5]~input_o\ & \SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010100000101000010100101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U_HEX2|Mux3~0_combout\);

-- Location: LABCELL_X64_Y2_N12
\U_HEX2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux2~0_combout\ = ( \SW[6]~input_o\ & ( (!\SW[7]~input_o\ & ((!\SW[5]~input_o\) # (\SW[4]~input_o\))) ) ) # ( !\SW[6]~input_o\ & ( (\SW[4]~input_o\ & ((!\SW[5]~input_o\) # (!\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U_HEX2|Mux2~0_combout\);

-- Location: LABCELL_X64_Y2_N15
\U_HEX2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux1~0_combout\ = ( \SW[4]~input_o\ & ( !\SW[7]~input_o\ $ (((!\SW[5]~input_o\ & \SW[6]~input_o\))) ) ) # ( !\SW[4]~input_o\ & ( (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \U_HEX2|Mux1~0_combout\);

-- Location: LABCELL_X64_Y2_N30
\U_HEX2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX2|Mux0~0_combout\ = ( \SW[6]~input_o\ & ( (!\SW[4]~input_o\ & ((!\SW[7]~input_o\) # (\SW[5]~input_o\))) # (\SW[4]~input_o\ & ((!\SW[5]~input_o\) # (\SW[7]~input_o\))) ) ) # ( !\SW[6]~input_o\ & ( (\SW[7]~input_o\) # (\SW[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111100001111111111110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U_HEX2|Mux0~0_combout\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X64_Y2_N45
\U_ADDER|full_add2|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADDER|full_add2|Cout~combout\ = ( \SW[9]~input_o\ & ( (!\SW[5]~input_o\ & (\SW[1]~input_o\ & ((\SW[4]~input_o\) # (\SW[0]~input_o\)))) # (\SW[5]~input_o\ & (((\SW[1]~input_o\) # (\SW[4]~input_o\)) # (\SW[0]~input_o\))) ) ) # ( !\SW[9]~input_o\ & ( 
-- (!\SW[5]~input_o\ & (\SW[0]~input_o\ & (\SW[4]~input_o\ & \SW[1]~input_o\))) # (\SW[5]~input_o\ & (((\SW[0]~input_o\ & \SW[4]~input_o\)) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \U_ADDER|full_add2|Cout~combout\);

-- Location: LABCELL_X64_Y2_N48
\U_ADDER|full_add4|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADDER|full_add4|half_adder2|S~combout\ = ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ $ (!\SW[7]~input_o\ $ (((\U_ADDER|full_add2|Cout~combout\) # (\SW[6]~input_o\)))) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ $ (!\SW[7]~input_o\ $ (((\SW[6]~input_o\ & 
-- \U_ADDER|full_add2|Cout~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \U_ADDER|full_add2|ALT_INV_Cout~combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \U_ADDER|full_add4|half_adder2|S~combout\);

-- Location: LABCELL_X64_Y2_N42
\U_ADDER|full_add2|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADDER|full_add2|half_adder2|S~combout\ = ( \SW[4]~input_o\ & ( !\SW[5]~input_o\ $ (!\SW[1]~input_o\ $ (((\SW[9]~input_o\) # (\SW[0]~input_o\)))) ) ) # ( !\SW[4]~input_o\ & ( !\SW[5]~input_o\ $ (!\SW[1]~input_o\ $ (((\SW[0]~input_o\ & 
-- \SW[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \U_ADDER|full_add2|half_adder2|S~combout\);

-- Location: LABCELL_X64_Y2_N3
\U_ADDER|full_add|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADDER|full_add|half_adder2|S~combout\ = ( \SW[0]~input_o\ & ( \SW[9]~input_o\ & ( \SW[4]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( \SW[9]~input_o\ & ( !\SW[4]~input_o\ ) ) ) # ( \SW[0]~input_o\ & ( !\SW[9]~input_o\ & ( !\SW[4]~input_o\ ) ) ) # ( 
-- !\SW[0]~input_o\ & ( !\SW[9]~input_o\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \U_ADDER|full_add|half_adder2|S~combout\);

-- Location: LABCELL_X64_Y2_N51
\U_ADDER|full_add3|half_adder2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_ADDER|full_add3|half_adder2|S~combout\ = ( \SW[2]~input_o\ & ( !\U_ADDER|full_add2|Cout~combout\ $ (\SW[6]~input_o\) ) ) # ( !\SW[2]~input_o\ & ( !\U_ADDER|full_add2|Cout~combout\ $ (!\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDER|full_add2|ALT_INV_Cout~combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \U_ADDER|full_add3|half_adder2|S~combout\);

-- Location: LABCELL_X64_Y2_N33
\U_HEX0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux6~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add2|half_adder2|S~combout\ & (!\U_ADDER|full_add4|half_adder2|S~combout\ $ (\U_ADDER|full_add|half_adder2|S~combout\))) ) ) # ( 
-- !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (\U_ADDER|full_add|half_adder2|S~combout\ & (!\U_ADDER|full_add4|half_adder2|S~combout\ $ (\U_ADDER|full_add2|half_adder2|S~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datac => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datad => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux6~0_combout\);

-- Location: LABCELL_X64_Y2_N18
\U_HEX0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux5~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add4|half_adder2|S~combout\ & (!\U_ADDER|full_add2|half_adder2|S~combout\ $ (!\U_ADDER|full_add|half_adder2|S~combout\))) # 
-- (\U_ADDER|full_add4|half_adder2|S~combout\ & ((!\U_ADDER|full_add|half_adder2|S~combout\) # (\U_ADDER|full_add2|half_adder2|S~combout\))) ) ) # ( !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (\U_ADDER|full_add4|half_adder2|S~combout\ & 
-- (\U_ADDER|full_add2|half_adder2|S~combout\ & \U_ADDER|full_add|half_adder2|S~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datab => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datac => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux5~0_combout\);

-- Location: LABCELL_X64_Y2_N21
\U_HEX0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux4~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (\U_ADDER|full_add4|half_adder2|S~combout\ & ((!\U_ADDER|full_add|half_adder2|S~combout\) # (\U_ADDER|full_add2|half_adder2|S~combout\))) ) ) # ( 
-- !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add4|half_adder2|S~combout\ & (\U_ADDER|full_add2|half_adder2|S~combout\ & !\U_ADDER|full_add|half_adder2|S~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datab => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datad => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux4~0_combout\);

-- Location: LABCELL_X64_Y2_N24
\U_HEX0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux3~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add2|half_adder2|S~combout\ & (!\U_ADDER|full_add4|half_adder2|S~combout\ & !\U_ADDER|full_add|half_adder2|S~combout\)) # (\U_ADDER|full_add2|half_adder2|S~combout\ 
-- & ((\U_ADDER|full_add|half_adder2|S~combout\))) ) ) # ( !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add4|half_adder2|S~combout\ & (!\U_ADDER|full_add2|half_adder2|S~combout\ & \U_ADDER|full_add|half_adder2|S~combout\)) # 
-- (\U_ADDER|full_add4|half_adder2|S~combout\ & (\U_ADDER|full_add2|half_adder2|S~combout\ & !\U_ADDER|full_add|half_adder2|S~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datab => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datac => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux3~0_combout\);

-- Location: LABCELL_X64_Y2_N27
\U_HEX0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux2~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add4|half_adder2|S~combout\ & ((!\U_ADDER|full_add2|half_adder2|S~combout\) # (\U_ADDER|full_add|half_adder2|S~combout\))) ) ) # ( 
-- !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (\U_ADDER|full_add|half_adder2|S~combout\ & ((!\U_ADDER|full_add4|half_adder2|S~combout\) # (!\U_ADDER|full_add2|half_adder2|S~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datab => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datad => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux2~0_combout\);

-- Location: LABCELL_X64_Y2_N54
\U_HEX0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux1~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (\U_ADDER|full_add|half_adder2|S~combout\ & (!\U_ADDER|full_add4|half_adder2|S~combout\ $ (!\U_ADDER|full_add2|half_adder2|S~combout\))) ) ) # ( 
-- !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add4|half_adder2|S~combout\ & ((\U_ADDER|full_add|half_adder2|S~combout\) # (\U_ADDER|full_add2|half_adder2|S~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datab => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datac => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux1~0_combout\);

-- Location: LABCELL_X64_Y2_N57
\U_HEX0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX0|Mux0~0_combout\ = ( \U_ADDER|full_add3|half_adder2|S~combout\ & ( (!\U_ADDER|full_add4|half_adder2|S~combout\ & ((!\U_ADDER|full_add2|half_adder2|S~combout\) # (!\U_ADDER|full_add|half_adder2|S~combout\))) # 
-- (\U_ADDER|full_add4|half_adder2|S~combout\ & ((\U_ADDER|full_add|half_adder2|S~combout\) # (\U_ADDER|full_add2|half_adder2|S~combout\))) ) ) # ( !\U_ADDER|full_add3|half_adder2|S~combout\ & ( (\U_ADDER|full_add2|half_adder2|S~combout\) # 
-- (\U_ADDER|full_add4|half_adder2|S~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011110111011110111011011101111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDER|full_add4|half_adder2|ALT_INV_S~combout\,
	datab => \U_ADDER|full_add2|half_adder2|ALT_INV_S~combout\,
	datad => \U_ADDER|full_add|half_adder2|ALT_INV_S~combout\,
	dataf => \U_ADDER|full_add3|half_adder2|ALT_INV_S~combout\,
	combout => \U_HEX0|Mux0~0_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X63_Y20_N3
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


