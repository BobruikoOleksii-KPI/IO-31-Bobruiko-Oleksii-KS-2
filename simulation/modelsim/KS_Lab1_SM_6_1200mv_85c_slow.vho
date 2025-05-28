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

-- DATE "05/27/2025 22:07:06"

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

ENTITY 	KS_Lab2_SM IS
    PORT (
	out_s : OUT std_logic;
	in_x : IN std_logic;
	in_y : IN std_logic;
	in_z : IN std_logic;
	out_p : OUT std_logic
	);
END KS_Lab2_SM;

-- Design Ports Information
-- out_s	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_p	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_x	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_y	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_z	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KS_Lab2_SM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out_s : std_logic;
SIGNAL ww_in_x : std_logic;
SIGNAL ww_in_y : std_logic;
SIGNAL ww_in_z : std_logic;
SIGNAL ww_out_p : std_logic;
SIGNAL \out_s~output_o\ : std_logic;
SIGNAL \out_p~output_o\ : std_logic;
SIGNAL \in_x~input_o\ : std_logic;
SIGNAL \in_y~input_o\ : std_logic;
SIGNAL \in_z~input_o\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|sum_eqn[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_ADD_SUB_component|auto_generated|carry_eqn[0]~0_combout\ : std_logic;

BEGIN

out_s <= ww_out_s;
ww_in_x <= in_x;
ww_in_y <= in_y;
ww_in_z <= in_z;
out_p <= ww_out_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N23
\out_s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|sum_eqn[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_s~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\out_p~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_ADD_SUB_component|auto_generated|carry_eqn[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_p~output_o\);

-- Location: IOIBUF_X0_Y5_N22
\in_x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_x,
	o => \in_x~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\in_y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_y,
	o => \in_y~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\in_z~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_z,
	o => \in_z~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\inst|LPM_ADD_SUB_component|auto_generated|sum_eqn[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|sum_eqn[0]~0_combout\ = \in_x~input_o\ $ (\in_y~input_o\ $ (\in_z~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_x~input_o\,
	datac => \in_y~input_o\,
	datad => \in_z~input_o\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|sum_eqn[0]~0_combout\);

-- Location: LCCOMB_X1_Y4_N10
\inst|LPM_ADD_SUB_component|auto_generated|carry_eqn[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_ADD_SUB_component|auto_generated|carry_eqn[0]~0_combout\ = (\in_x~input_o\ & ((\in_y~input_o\) # (\in_z~input_o\))) # (!\in_x~input_o\ & (\in_y~input_o\ & \in_z~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_x~input_o\,
	datac => \in_y~input_o\,
	datad => \in_z~input_o\,
	combout => \inst|LPM_ADD_SUB_component|auto_generated|carry_eqn[0]~0_combout\);

ww_out_s <= \out_s~output_o\;

ww_out_p <= \out_p~output_o\;
END structure;


