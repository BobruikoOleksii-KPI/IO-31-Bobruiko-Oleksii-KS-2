-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/27/2025 21:43:03"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KS_Mega_SM IS
    PORT (
	cout : OUT std_logic;
	cin : IN std_logic;
	a : IN std_logic_vector(11 DOWNTO 0);
	b : IN std_logic_vector(11 DOWNTO 0);
	sum : OUT std_logic_vector(11 DOWNTO 0)
	);
END KS_Mega_SM;

-- Design Ports Information
-- cout	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[8]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KS_Mega_SM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_a : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_sum : std_logic_vector(11 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \sum[11]~output_o\ : std_logic;
SIGNAL \sum[10]~output_o\ : std_logic;
SIGNAL \sum[9]~output_o\ : std_logic;
SIGNAL \sum[8]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~25\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;

BEGIN

cout <= ww_cout;
ww_cin <= cin;
ww_a <= a;
ww_b <= b;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N23
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\sum[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	devoe => ww_devoe,
	o => \sum[11]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\sum[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	devoe => ww_devoe,
	o => \sum[10]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\sum[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	devoe => ww_devoe,
	o => \sum[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\sum[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	devoe => ww_devoe,
	o => \sum[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\sum[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\sum[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\sum[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\sum[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sum[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOIBUF_X7_Y0_N1
\b[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\a[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\b[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\a[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\b[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\a[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\a[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\b[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\b[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\a[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\a[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\b[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\a[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\b[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X6_Y1_N2
\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cin~input_o\,
	datad => VCC,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X6_Y1_N4
\inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\a[0]~input_o\ & ((\b[0]~input_o\ & (\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\b[0]~input_o\ & 
-- (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\a[0]~input_o\ & ((\b[0]~input_o\ & (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\b[0]~input_o\ & 
-- ((\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\a[0]~input_o\ & (!\b[0]~input_o\ & !\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\a[0]~input_o\ & 
-- ((!\inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X6_Y1_N6
\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\b[1]~input_o\ $ (\a[1]~input_o\ $ (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\b[1]~input_o\ & ((\a[1]~input_o\) # (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & 
-- !\inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X6_Y1_N8
\inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\b[2]~input_o\ & ((\a[2]~input_o\ & (\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\a[2]~input_o\ & 
-- (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\b[2]~input_o\ & ((\a[2]~input_o\ & (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\a[2]~input_o\ & ((\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # 
-- (GND)))))
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\b[2]~input_o\ & (!\a[2]~input_o\ & !\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\b[2]~input_o\ & ((!\inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # 
-- (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X6_Y1_N10
\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\a[3]~input_o\ $ (\b[3]~input_o\ $ (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\a[3]~input_o\ & ((\b[3]~input_o\) # (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & 
-- !\inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X6_Y1_N12
\inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\a[4]~input_o\ & ((\b[4]~input_o\ & (\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # (!\b[4]~input_o\ & 
-- (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))) # (!\a[4]~input_o\ & ((\b[4]~input_o\ & (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\b[4]~input_o\ & ((\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # 
-- (GND)))))
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\a[4]~input_o\ & (!\b[4]~input_o\ & !\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\a[4]~input_o\ & ((!\inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # 
-- (!\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X6_Y1_N14
\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\a[5]~input_o\ $ (\b[5]~input_o\ $ (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\a[5]~input_o\ & ((\b[5]~input_o\) # (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\))) # (!\a[5]~input_o\ & (\b[5]~input_o\ & 
-- !\inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X6_Y1_N16
\inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\a[6]~input_o\ & ((\b[6]~input_o\ & (\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)) # (!\b[6]~input_o\ & 
-- (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)))) # (!\a[6]~input_o\ & ((\b[6]~input_o\ & (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\b[6]~input_o\ & 
-- ((\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND)))))
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\a[6]~input_o\ & (!\b[6]~input_o\ & !\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\a[6]~input_o\ & ((!\inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) 
-- # (!\b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X6_Y1_N18
\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\b[7]~input_o\ $ (\a[7]~input_o\ $ (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\b[7]~input_o\ & ((\a[7]~input_o\) # (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\))) # (!\b[7]~input_o\ & (\a[7]~input_o\ & 
-- !\inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X6_Y1_N20
\inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\a[8]~input_o\ & ((\b[8]~input_o\ & (\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # (!\b[8]~input_o\ & 
-- (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))) # (!\a[8]~input_o\ & ((\b[8]~input_o\ & (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\b[8]~input_o\ & 
-- ((\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND)))))
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\a[8]~input_o\ & (!\b[8]~input_o\ & !\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\a[8]~input_o\ & ((!\inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) 
-- # (!\b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \b[8]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X6_Y1_N22
\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\b[9]~input_o\ $ (\a[9]~input_o\ $ (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\b[9]~input_o\ & ((\a[9]~input_o\) # (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\))) # (!\b[9]~input_o\ & (\a[9]~input_o\ & 
-- !\inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[9]~input_o\,
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X6_Y1_N24
\inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\b[10]~input_o\ & ((\a[10]~input_o\ & (\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # (!\a[10]~input_o\ & 
-- (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))) # (!\b[10]~input_o\ & ((\a[10]~input_o\ & (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\a[10]~input_o\ & 
-- ((\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND)))))
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\b[10]~input_o\ & (!\a[10]~input_o\ & !\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\b[10]~input_o\ & 
-- ((!\inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\a[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \a[10]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X6_Y1_N26
\inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = ((\b[11]~input_o\ $ (\a[11]~input_o\ $ (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\)))) # (GND)
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~25\ = CARRY((\b[11]~input_o\ & ((\a[11]~input_o\) # (!\inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\))) # (!\b[11]~input_o\ & (\a[11]~input_o\ & 
-- !\inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \a[11]~input_o\,
	datad => VCC,
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	cout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~25\);

-- Location: LCCOMB_X6_Y1_N28
\inst|LPM_ADD_SUB_component|auto_generated|result_int[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\ = \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|LPM_ADD_SUB_component|auto_generated|result_int[12]~25\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\);

ww_cout <= \cout~output_o\;

ww_sum(11) <= \sum[11]~output_o\;

ww_sum(10) <= \sum[10]~output_o\;

ww_sum(9) <= \sum[9]~output_o\;

ww_sum(8) <= \sum[8]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(0) <= \sum[0]~output_o\;
END structure;


