-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "12/01/2015 19:39:13"

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

ENTITY 	fill IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	PS2_CLK : INOUT std_logic;
	PS2_DAT : INOUT std_logic
	);
END fill;

-- Design Ports Information
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[8]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[9]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[9]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fill IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~37_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~22\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~29_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~30\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~9_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~10\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~49_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~50\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~45_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~46\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~41_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~42\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~1_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal2~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~38\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~5_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~6\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~25_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~26\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~17_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~18\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~13_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~14\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~33_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~34\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add0~21_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal2~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \AA|PS2|ps2_clk_reg~0_combout\ : std_logic;
SIGNAL \AA|PS2|ps2_clk_reg~q\ : std_logic;
SIGNAL \AA|PS2|last_ps2_clk~0_combout\ : std_logic;
SIGNAL \AA|PS2|last_ps2_clk~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|cur_bit~4_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|cur_bit~3_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add3~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|cur_bit~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|always1~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~41_sumout\ : std_logic;
SIGNAL \AA|PS2|ps2_clk_posedge~combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector4~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~58\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~61_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|always5~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~10\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~13_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~14\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~17_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~18\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~21_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~22\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~29_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~30\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~33_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal3~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~62\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~65_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~66\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~1_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~2\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~5_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~6\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~9_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector4~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector5~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector5~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~42\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~37_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~38\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~25_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~26\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~45_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~46\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~49_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~50\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~53_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~54\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add2~57_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal3~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal2~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~13_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~10\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~21_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~2\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~5_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~6\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~33_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~34\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~41_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~42\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~37_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~38\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~45_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~46\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~49_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~50\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~53_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal0~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~54\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~57_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~58\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~61_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~62\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~65_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~66\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~69_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~70\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~73_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~74\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~77_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal0~3_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~22\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~25_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~26\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~29_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~30\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~1_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal0~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~14\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~17_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~18\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add1~9_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Equal0~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector2~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector2~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Selector3~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|Add3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|cur_bit~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ps2_command[8]~feeder_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|PS2_DAT~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|PS2_DAT~2_combout\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|fb_clkin\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \VGA|controller|Add0~37_sumout\ : std_logic;
SIGNAL \VGA|controller|xCounter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Add0~30\ : std_logic;
SIGNAL \VGA|controller|Add0~25_sumout\ : std_logic;
SIGNAL \VGA|controller|xCounter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~38\ : std_logic;
SIGNAL \VGA|controller|Add0~1_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~2\ : std_logic;
SIGNAL \VGA|controller|Add0~5_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~6\ : std_logic;
SIGNAL \VGA|controller|Add0~9_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~10\ : std_logic;
SIGNAL \VGA|controller|Add0~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~14\ : std_logic;
SIGNAL \VGA|controller|Add0~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~18\ : std_logic;
SIGNAL \VGA|controller|Add0~21_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~22\ : std_logic;
SIGNAL \VGA|controller|Add0~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Add0~34\ : std_logic;
SIGNAL \VGA|controller|Add0~29_sumout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~q\ : std_logic;
SIGNAL \VGA|controller|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|yCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~30\ : std_logic;
SIGNAL \VGA|controller|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~22\ : std_logic;
SIGNAL \VGA|controller|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~14\ : std_logic;
SIGNAL \VGA|controller|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~26\ : std_logic;
SIGNAL \VGA|controller|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~18\ : std_logic;
SIGNAL \VGA|controller|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~1_combout\ : std_logic;
SIGNAL \VGA|controller|always1~3_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~10\ : std_logic;
SIGNAL \VGA|controller|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~2\ : std_logic;
SIGNAL \VGA|controller|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~38\ : std_logic;
SIGNAL \VGA|controller|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|Add1~34\ : std_logic;
SIGNAL \VGA|controller|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~q\ : std_logic;
SIGNAL \RD|Add0~17_sumout\ : std_logic;
SIGNAL \RD|Add0~18\ : std_logic;
SIGNAL \RD|Add0~5_sumout\ : std_logic;
SIGNAL \RD|Q[1]~feeder_combout\ : std_logic;
SIGNAL \RD|Add0~6\ : std_logic;
SIGNAL \RD|Add0~13_sumout\ : std_logic;
SIGNAL \RD|Add0~14\ : std_logic;
SIGNAL \RD|Add0~9_sumout\ : std_logic;
SIGNAL \RD|Q[3]~feeder_combout\ : std_logic;
SIGNAL \RD|Add0~10\ : std_logic;
SIGNAL \RD|Add0~41_sumout\ : std_logic;
SIGNAL \RD|Add0~42\ : std_logic;
SIGNAL \RD|Add0~1_sumout\ : std_logic;
SIGNAL \RD|Add0~2\ : std_logic;
SIGNAL \RD|Add0~45_sumout\ : std_logic;
SIGNAL \RD|Add0~46\ : std_logic;
SIGNAL \RD|Add0~21_sumout\ : std_logic;
SIGNAL \RD|Add0~22\ : std_logic;
SIGNAL \RD|Add0~49_sumout\ : std_logic;
SIGNAL \RD|Add0~50\ : std_logic;
SIGNAL \RD|Add0~53_sumout\ : std_logic;
SIGNAL \RD|Add0~54\ : std_logic;
SIGNAL \RD|Add0~25_sumout\ : std_logic;
SIGNAL \RD|Add0~26\ : std_logic;
SIGNAL \RD|Add0~29_sumout\ : std_logic;
SIGNAL \RD|Add0~30\ : std_logic;
SIGNAL \RD|Add0~61_sumout\ : std_logic;
SIGNAL \RD|Add0~62\ : std_logic;
SIGNAL \RD|Add0~37_sumout\ : std_logic;
SIGNAL \RD|Add0~38\ : std_logic;
SIGNAL \RD|Add0~33_sumout\ : std_logic;
SIGNAL \RD|Add0~34\ : std_logic;
SIGNAL \RD|Add0~57_sumout\ : std_logic;
SIGNAL \RD|Equal1~3_combout\ : std_logic;
SIGNAL \RD|Equal1~1_combout\ : std_logic;
SIGNAL \RD|Equal1~2_combout\ : std_logic;
SIGNAL \RD|Equal1~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \data|adjust1|Add0~73_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~15_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~74\ : std_logic;
SIGNAL \data|adjust1|Add0~77_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~16_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~78\ : std_logic;
SIGNAL \data|adjust1|Add0~85_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~18_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~86\ : std_logic;
SIGNAL \data|adjust1|Add0~81_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~17_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~82\ : std_logic;
SIGNAL \data|adjust1|Add0~69_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~14_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~70\ : std_logic;
SIGNAL \data|adjust1|Add0~65_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~13_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~66\ : std_logic;
SIGNAL \data|adjust1|Add0~105_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~23_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~106\ : std_logic;
SIGNAL \data|adjust1|Add0~109_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~24_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~110\ : std_logic;
SIGNAL \data|adjust1|Add0~101_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~22_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~102\ : std_logic;
SIGNAL \data|adjust1|Add0~97_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~21_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~98\ : std_logic;
SIGNAL \data|adjust1|Add0~93_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~20_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~94\ : std_logic;
SIGNAL \data|adjust1|Add0~89_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~19_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~90\ : std_logic;
SIGNAL \data|adjust1|Add0~57_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~12_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~58\ : std_logic;
SIGNAL \data|adjust1|Add0~61_sumout\ : std_logic;
SIGNAL \data|adjust1|Add0~62\ : std_logic;
SIGNAL \data|adjust1|Add0~53_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~11_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~54\ : std_logic;
SIGNAL \data|adjust1|Add0~49_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~10_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~50\ : std_logic;
SIGNAL \data|adjust1|Add0~45_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~9_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~46\ : std_logic;
SIGNAL \data|adjust1|Add0~41_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~8_combout\ : std_logic;
SIGNAL \data|adjust1|Equal0~2_combout\ : std_logic;
SIGNAL \data|adjust1|Equal0~3_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~42\ : std_logic;
SIGNAL \data|adjust1|Add0~33_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~6_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~34\ : std_logic;
SIGNAL \data|adjust1|Add0~37_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~7_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~38\ : std_logic;
SIGNAL \data|adjust1|Add0~29_sumout\ : std_logic;
SIGNAL \data|adjust1|Add0~30\ : std_logic;
SIGNAL \data|adjust1|Add0~25_sumout\ : std_logic;
SIGNAL \data|adjust1|Add0~26\ : std_logic;
SIGNAL \data|adjust1|Add0~21_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~5_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~22\ : std_logic;
SIGNAL \data|adjust1|Add0~17_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~4_combout\ : std_logic;
SIGNAL \data|adjust1|Equal0~1_combout\ : std_logic;
SIGNAL \data|adjust1|Equal0~4_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~18\ : std_logic;
SIGNAL \data|adjust1|Add0~9_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~2_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~10\ : std_logic;
SIGNAL \data|adjust1|Add0~13_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~3_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~14\ : std_logic;
SIGNAL \data|adjust1|Add0~5_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~1_combout\ : std_logic;
SIGNAL \data|adjust1|Add0~6\ : std_logic;
SIGNAL \data|adjust1|Add0~1_sumout\ : std_logic;
SIGNAL \data|adjust1|cout~0_combout\ : std_logic;
SIGNAL \data|adjust1|Equal0~0_combout\ : std_logic;
SIGNAL \data|adjust1|Equal0~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \data|D|Y.LANE3~0_combout\ : std_logic;
SIGNAL \data|D|y.LANE3~q\ : std_logic;
SIGNAL \data|D|osignal[2]~feeder_combout\ : std_logic;
SIGNAL \data|s3|tmp~0_combout\ : std_logic;
SIGNAL \data|D|Equal1~0_combout\ : std_logic;
SIGNAL \data|D|y.LANE1~q\ : std_logic;
SIGNAL \data|s1|tmp~0_combout\ : std_logic;
SIGNAL \data|s1|tmp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \AA|PS2|ps2_data_reg~0_combout\ : std_logic;
SIGNAL \AA|PS2|ps2_data_reg~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|data_count~3_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|data_count[2]~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|data_count~4_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|data_count~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|Add0~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|data_count~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|always1~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|Selector3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|Selector4~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|always5~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|received_data_en~q\ : std_logic;
SIGNAL \AA|PS2|s_ps2_transceiver~9_combout\ : std_logic;
SIGNAL \AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ : std_logic;
SIGNAL \AA|PS2|Selector1~0_combout\ : std_logic;
SIGNAL \AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|s_ps2_receiver~9_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|Selector2~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|received_data[2]~feeder_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|received_data[2]~0_combout\ : std_logic;
SIGNAL \AA|last_data_received[0]~0_combout\ : std_logic;
SIGNAL \AA|Equal0~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|received_data[0]~feeder_combout\ : std_logic;
SIGNAL \AA|Equal0~1_combout\ : std_logic;
SIGNAL \AA|Equal0~0_combout\ : std_logic;
SIGNAL \AA|counter|Add0~65_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~66\ : std_logic;
SIGNAL \AA|counter|Add0~45_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~46\ : std_logic;
SIGNAL \AA|counter|Add0~61_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~62\ : std_logic;
SIGNAL \AA|counter|Add0~49_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~50\ : std_logic;
SIGNAL \AA|counter|Add0~53_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~54\ : std_logic;
SIGNAL \AA|counter|Add0~57_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~58\ : std_logic;
SIGNAL \AA|counter|Add0~73_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~74\ : std_logic;
SIGNAL \AA|counter|Add0~81_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~82\ : std_logic;
SIGNAL \AA|counter|Add0~85_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~86\ : std_logic;
SIGNAL \AA|counter|Add0~69_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~70\ : std_logic;
SIGNAL \AA|counter|Add0~41_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~42\ : std_logic;
SIGNAL \AA|counter|Add0~37_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~38\ : std_logic;
SIGNAL \AA|counter|Add0~29_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~30\ : std_logic;
SIGNAL \AA|counter|Add0~33_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~34\ : std_logic;
SIGNAL \AA|counter|Add0~25_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~26\ : std_logic;
SIGNAL \AA|counter|Add0~77_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~78\ : std_logic;
SIGNAL \AA|counter|Add0~89_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~90\ : std_logic;
SIGNAL \AA|counter|Add0~93_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~94\ : std_logic;
SIGNAL \AA|counter|Add0~97_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~98\ : std_logic;
SIGNAL \AA|counter|Add0~101_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~102\ : std_logic;
SIGNAL \AA|counter|Add0~125_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~126\ : std_logic;
SIGNAL \AA|counter|Add0~5_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~6\ : std_logic;
SIGNAL \AA|counter|Add0~9_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~10\ : std_logic;
SIGNAL \AA|counter|Add0~1_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~2\ : std_logic;
SIGNAL \AA|counter|Add0~13_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~14\ : std_logic;
SIGNAL \AA|counter|Add0~17_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~18\ : std_logic;
SIGNAL \AA|counter|Add0~21_sumout\ : std_logic;
SIGNAL \AA|LessThan0~0_combout\ : std_logic;
SIGNAL \AA|LessThan0~3_combout\ : std_logic;
SIGNAL \AA|LessThan0~2_combout\ : std_logic;
SIGNAL \AA|LessThan0~5_combout\ : std_logic;
SIGNAL \AA|LessThan0~1_combout\ : std_logic;
SIGNAL \AA|LessThan0~4_combout\ : std_logic;
SIGNAL \AA|counter|Add0~22\ : std_logic;
SIGNAL \AA|counter|Add0~121_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~122\ : std_logic;
SIGNAL \AA|counter|Add0~117_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~118\ : std_logic;
SIGNAL \AA|counter|Add0~113_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~114\ : std_logic;
SIGNAL \AA|counter|Add0~109_sumout\ : std_logic;
SIGNAL \AA|counter|Add0~110\ : std_logic;
SIGNAL \AA|counter|Add0~105_sumout\ : std_logic;
SIGNAL \AA|LessThan0~6_combout\ : std_logic;
SIGNAL \AA|LessThan0~7_combout\ : std_logic;
SIGNAL \AA|Selector2~0_combout\ : std_logic;
SIGNAL \AA|Selector2~1_combout\ : std_logic;
SIGNAL \AA|current.delay~q\ : std_logic;
SIGNAL \AA|current~5_combout\ : std_logic;
SIGNAL \AA|current.wait0~q\ : std_logic;
SIGNAL \AA|Selector1~0_combout\ : std_logic;
SIGNAL \AA|current.exhibit~q\ : std_logic;
SIGNAL \AA|out[2]~2_combout\ : std_logic;
SIGNAL \AA|out[0]~0_combout\ : std_logic;
SIGNAL \AA|out[1]~1_combout\ : std_logic;
SIGNAL \BB|Decoder0~0_combout\ : std_logic;
SIGNAL \data|f1|Q~1_combout\ : std_logic;
SIGNAL \BB|Decoder0~2_combout\ : std_logic;
SIGNAL \data|D|Y.LANE2~0_combout\ : std_logic;
SIGNAL \data|D|y.LANE2~q\ : std_logic;
SIGNAL \data|s2|tmp~0_combout\ : std_logic;
SIGNAL \data|s2|tmp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \BB|Decoder0~3_combout\ : std_logic;
SIGNAL \data|f1|Q~0_combout\ : std_logic;
SIGNAL \data|s4|tmp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \BB|Decoder0~1_combout\ : std_logic;
SIGNAL \data|f1|Q~2_combout\ : std_logic;
SIGNAL \data|f1|Q~q\ : std_logic;
SIGNAL \data|D|Equal4~0_combout\ : std_logic;
SIGNAL \data|D|y.LANE4~q\ : std_logic;
SIGNAL \data|s4|tmp~0_combout\ : std_logic;
SIGNAL \f1|nextstate.LOAD1B~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD1B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS1B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW1B~q\ : std_logic;
SIGNAL \f1|Selector1~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD2~q\ : std_logic;
SIGNAL \f1|nextstate.ACCESS2~0_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS2~q\ : std_logic;
SIGNAL \f1|nextstate.DRAW2~0_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW2~q\ : std_logic;
SIGNAL \data|s1|tmp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector5~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD3~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS3~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW3~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector3~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD4~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS4~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW4~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector7~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD5~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS5~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.DRAW5~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector9~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD6~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS6~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW6~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector12~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD7B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS7B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW7B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.DRAW7~q\ : std_logic;
SIGNAL \f1|Selector13~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD8~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS8~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW8~q\ : std_logic;
SIGNAL \f1|Selector16~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD9B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS9B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW9B~q\ : std_logic;
SIGNAL \f1|Selector17~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD10~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS10~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.DRAW10~q\ : std_logic;
SIGNAL \f1|Selector19~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD11~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS11~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW11~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS11B~feeder_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS11B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW11B~q\ : std_logic;
SIGNAL \f1|Selector22~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD12B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS12B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW12B~q\ : std_logic;
SIGNAL \f1|Selector21~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD12~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS12~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.DRAW12~q\ : std_logic;
SIGNAL \f1|Selector24~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOADCB~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESSCB~q\ : std_logic;
SIGNAL \f1|presentstate.DRAWCB~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector23~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOADC~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESSC~q\ : std_logic;
SIGNAL \f1|presentstate.DRAWC~q\ : std_logic;
SIGNAL \c1|xso~0_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW5~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW6~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW3~q\ : std_logic;
SIGNAL \f1|WideOr41~0_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW9~q\ : std_logic;
SIGNAL \f1|WideOr41~1_combout\ : std_logic;
SIGNAL \f1|Selector0~0_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW7B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW8B~q\ : std_logic;
SIGNAL \f1|WideOr41~3_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW6B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.DRAW3B~q\ : std_logic;
SIGNAL \f1|WideOr41~2_combout\ : std_logic;
SIGNAL \f1|Selector0~1_combout\ : std_logic;
SIGNAL \f1|Selector0~2_combout\ : std_logic;
SIGNAL \f1|presentstate.RESET~q\ : std_logic;
SIGNAL \f1|nextstate.LOAD1~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD1~q\ : std_logic;
SIGNAL \f1|nextstate.ACCESS1~0_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS1~q\ : std_logic;
SIGNAL \f1|nextstate.DRAW1~0_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW1~q\ : std_logic;
SIGNAL \f1|Selector2~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD2B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS2B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW2B~q\ : std_logic;
SIGNAL \f1|Selector4~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD3B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS3B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW3B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector6~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD4B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS4B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW4B~q\ : std_logic;
SIGNAL \f1|Selector8~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD5B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS5B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW5B~q\ : std_logic;
SIGNAL \f1|Selector10~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD6B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS6B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW6B~q\ : std_logic;
SIGNAL \f1|Selector11~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD7~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS7~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW7~DUPLICATE_q\ : std_logic;
SIGNAL \data|s3|tmp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector14~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD8B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS8B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.DRAW8B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector15~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD9~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS9~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW9~DUPLICATE_q\ : std_logic;
SIGNAL \f1|Selector18~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD10B~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS10B~q\ : std_logic;
SIGNAL \f1|presentstate.DRAW10B~q\ : std_logic;
SIGNAL \f1|Selector20~0_combout\ : std_logic;
SIGNAL \f1|presentstate.LOAD11B~q\ : std_logic;
SIGNAL \c1|LessThan0~2_combout\ : std_logic;
SIGNAL \c1|LessThan0~1_combout\ : std_logic;
SIGNAL \f1|WideOr40~0_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAWC~DUPLICATE_q\ : std_logic;
SIGNAL \f1|WideOr37~combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS12~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS10~q\ : std_logic;
SIGNAL \f1|WideOr33~1_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS5~q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS3~DUPLICATE_q\ : std_logic;
SIGNAL \f1|WideOr33~0_combout\ : std_logic;
SIGNAL \f1|WideOr40~1_combout\ : std_logic;
SIGNAL \f1|WideOr33~2_combout\ : std_logic;
SIGNAL \f1|WideOr33~combout\ : std_logic;
SIGNAL \c1|yio~0_combout\ : std_logic;
SIGNAL \f1|WideOr35~combout\ : std_logic;
SIGNAL \c1|Add1~9_sumout\ : std_logic;
SIGNAL \c1|xio~4_combout\ : std_logic;
SIGNAL \c1|Add1~10\ : std_logic;
SIGNAL \c1|Add1~1_sumout\ : std_logic;
SIGNAL \c1|xio~2_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAWCB~q\ : std_logic;
SIGNAL \c1|yso~0_combout\ : std_logic;
SIGNAL \c1|LessThan0~0_combout\ : std_logic;
SIGNAL \c1|Add1~2\ : std_logic;
SIGNAL \c1|Add1~13_sumout\ : std_logic;
SIGNAL \c1|xio~5_combout\ : std_logic;
SIGNAL \c1|Add1~14\ : std_logic;
SIGNAL \c1|Add1~5_sumout\ : std_logic;
SIGNAL \f1|WideOr31~0_combout\ : std_logic;
SIGNAL \c1|Add1~6\ : std_logic;
SIGNAL \c1|Add1~26\ : std_logic;
SIGNAL \c1|Add1~21_sumout\ : std_logic;
SIGNAL \c1|xio~7_combout\ : std_logic;
SIGNAL \c1|LessThan0~15_combout\ : std_logic;
SIGNAL \c1|LessThan0~13_combout\ : std_logic;
SIGNAL \c1|LessThan0~4_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS8B~q\ : std_logic;
SIGNAL \c1|LessThan0~5_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW12B~DUPLICATE_q\ : std_logic;
SIGNAL \c1|LessThan0~6_combout\ : std_logic;
SIGNAL \c1|LessThan0~3_combout\ : std_logic;
SIGNAL \c1|LessThan0~9_combout\ : std_logic;
SIGNAL \c1|LessThan0~14_combout\ : std_logic;
SIGNAL \c1|LessThan0~16_combout\ : std_logic;
SIGNAL \c1|xio~3_combout\ : std_logic;
SIGNAL \c1|LessThan0~8_combout\ : std_logic;
SIGNAL \c1|LessThan0~7_combout\ : std_logic;
SIGNAL \c1|LessThan0~10_combout\ : std_logic;
SIGNAL \f1|WideOr29~combout\ : std_logic;
SIGNAL \c1|Add1~22\ : std_logic;
SIGNAL \c1|Add1~17_sumout\ : std_logic;
SIGNAL \c1|xio~6_combout\ : std_logic;
SIGNAL \c1|LessThan0~11_combout\ : std_logic;
SIGNAL \f1|WideOr31~combout\ : std_logic;
SIGNAL \c1|Add1~25_sumout\ : std_logic;
SIGNAL \c1|xio~8_combout\ : std_logic;
SIGNAL \c1|LessThan0~12_combout\ : std_logic;
SIGNAL \c1|Add1~18\ : std_logic;
SIGNAL \c1|Add1~29_sumout\ : std_logic;
SIGNAL \c1|xio~10_combout\ : std_logic;
SIGNAL \f1|WideOr40~2_combout\ : std_logic;
SIGNAL \f1|WideOr40~3_combout\ : std_logic;
SIGNAL \c1|xio~9_combout\ : std_logic;
SIGNAL \c1|xio~11_combout\ : std_logic;
SIGNAL \c1|xio~0_combout\ : std_logic;
SIGNAL \f1|WideOr16~0_combout\ : std_logic;
SIGNAL \c1|xso~3_combout\ : std_logic;
SIGNAL \c1|xso~4_combout\ : std_logic;
SIGNAL \f1|WideOr15~0_combout\ : std_logic;
SIGNAL \c1|xio~1_combout\ : std_logic;
SIGNAL \f1|presentstate.DRAW4~q\ : std_logic;
SIGNAL \c1|xso~1_combout\ : std_logic;
SIGNAL \c1|xso~6_combout\ : std_logic;
SIGNAL \f1|WideOr15~combout\ : std_logic;
SIGNAL \f1|WideOr16~1_combout\ : std_logic;
SIGNAL \f1|WideOr16~2_combout\ : std_logic;
SIGNAL \f1|WideOr16~combout\ : std_logic;
SIGNAL \c1|xso~12_combout\ : std_logic;
SIGNAL \f1|WideOr18~combout\ : std_logic;
SIGNAL \f1|WideOr21~combout\ : std_logic;
SIGNAL \c1|Add0~13_sumout\ : std_logic;
SIGNAL \c1|xso~8_combout\ : std_logic;
SIGNAL \c1|Add0~14\ : std_logic;
SIGNAL \c1|Add0~17_sumout\ : std_logic;
SIGNAL \c1|xso~9_combout\ : std_logic;
SIGNAL \c1|Add0~18\ : std_logic;
SIGNAL \c1|Add0~21_sumout\ : std_logic;
SIGNAL \c1|xso~10_combout\ : std_logic;
SIGNAL \c1|Add0~22\ : std_logic;
SIGNAL \c1|Add0~25_sumout\ : std_logic;
SIGNAL \c1|xso~11_combout\ : std_logic;
SIGNAL \c1|Add0~26\ : std_logic;
SIGNAL \c1|Add0~29_sumout\ : std_logic;
SIGNAL \c1|xso~13_combout\ : std_logic;
SIGNAL \c1|Add0~30\ : std_logic;
SIGNAL \c1|Add0~33_sumout\ : std_logic;
SIGNAL \c1|xso~14_combout\ : std_logic;
SIGNAL \c1|Add0~34\ : std_logic;
SIGNAL \c1|Add0~9_sumout\ : std_logic;
SIGNAL \c1|xso~7_combout\ : std_logic;
SIGNAL \c1|Add0~10\ : std_logic;
SIGNAL \c1|Add0~5_sumout\ : std_logic;
SIGNAL \c1|xso~5_combout\ : std_logic;
SIGNAL \c1|Add0~6\ : std_logic;
SIGNAL \c1|Add0~1_sumout\ : std_logic;
SIGNAL \c1|xso~2_combout\ : std_logic;
SIGNAL \VGA|writeEn~0_combout\ : std_logic;
SIGNAL \f1|WideOr22~3_combout\ : std_logic;
SIGNAL \f1|WideOr22~1_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS7B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|WideOr25~0_combout\ : std_logic;
SIGNAL \f1|presentstate.ACCESS9~DUPLICATE_q\ : std_logic;
SIGNAL \f1|presentstate.ACCESS9B~DUPLICATE_q\ : std_logic;
SIGNAL \c1|yso~4_combout\ : std_logic;
SIGNAL \c1|Add3~17_sumout\ : std_logic;
SIGNAL \c1|yio~5_combout\ : std_logic;
SIGNAL \c1|Add3~18\ : std_logic;
SIGNAL \c1|Add3~13_sumout\ : std_logic;
SIGNAL \c1|yio~4_combout\ : std_logic;
SIGNAL \c1|Add3~14\ : std_logic;
SIGNAL \c1|Add3~10\ : std_logic;
SIGNAL \c1|Add3~2\ : std_logic;
SIGNAL \c1|Add3~6\ : std_logic;
SIGNAL \c1|Add3~21_sumout\ : std_logic;
SIGNAL \c1|yio~6_combout\ : std_logic;
SIGNAL \c1|Add3~22\ : std_logic;
SIGNAL \c1|Add3~25_sumout\ : std_logic;
SIGNAL \c1|yio~7_combout\ : std_logic;
SIGNAL \c1|Add3~26\ : std_logic;
SIGNAL \c1|Add3~29_sumout\ : std_logic;
SIGNAL \c1|yio~8_combout\ : std_logic;
SIGNAL \c1|yso[4]~1_combout\ : std_logic;
SIGNAL \c1|Add3~1_sumout\ : std_logic;
SIGNAL \c1|yio~1_combout\ : std_logic;
SIGNAL \c1|LessThan1~3_combout\ : std_logic;
SIGNAL \c1|LessThan1~0_combout\ : std_logic;
SIGNAL \c1|yso[4]~6_combout\ : std_logic;
SIGNAL \c1|Add3~9_sumout\ : std_logic;
SIGNAL \c1|yio~3_combout\ : std_logic;
SIGNAL \c1|LessThan1~4_combout\ : std_logic;
SIGNAL \c1|Add3~5_sumout\ : std_logic;
SIGNAL \c1|yio~2_combout\ : std_logic;
SIGNAL \c1|LessThan1~1_combout\ : std_logic;
SIGNAL \c1|LessThan1~2_combout\ : std_logic;
SIGNAL \f1|WideOr22~0_combout\ : std_logic;
SIGNAL \f1|WideOr22~2_combout\ : std_logic;
SIGNAL \f1|WideOr27~0_combout\ : std_logic;
SIGNAL \f1|WideOr27~combout\ : std_logic;
SIGNAL \c1|Add2~21_sumout\ : std_logic;
SIGNAL \c1|yso~7_combout\ : std_logic;
SIGNAL \c1|Add2~22\ : std_logic;
SIGNAL \c1|Add2~25_sumout\ : std_logic;
SIGNAL \c1|yso~8_combout\ : std_logic;
SIGNAL \c1|Add2~26\ : std_logic;
SIGNAL \c1|Add2~29_sumout\ : std_logic;
SIGNAL \c1|yso~9_combout\ : std_logic;
SIGNAL \c1|Add2~30\ : std_logic;
SIGNAL \c1|Add2~17_sumout\ : std_logic;
SIGNAL \f1|WideOr25~combout\ : std_logic;
SIGNAL \c1|yso~10_combout\ : std_logic;
SIGNAL \c1|Add2~18\ : std_logic;
SIGNAL \c1|Add2~13_sumout\ : std_logic;
SIGNAL \c1|yso~5_combout\ : std_logic;
SIGNAL \c1|Add2~14\ : std_logic;
SIGNAL \c1|Add2~5_sumout\ : std_logic;
SIGNAL \c1|yso[4]~3_combout\ : std_logic;
SIGNAL \c1|yso~15_combout\ : std_logic;
SIGNAL \c1|Add2~6\ : std_logic;
SIGNAL \c1|Add2~9_sumout\ : std_logic;
SIGNAL \c1|yso~11_combout\ : std_logic;
SIGNAL \f1|WideOr22~4_combout\ : std_logic;
SIGNAL \c1|Add2~10\ : std_logic;
SIGNAL \c1|Add2~1_sumout\ : std_logic;
SIGNAL \c1|yso~2_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~18\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~19\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~22\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~23\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~26\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~27\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~30\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~31\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~34\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~35\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~38\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~39\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~42\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~43\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~2\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~3\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|LessThan3~0_combout\ : std_logic;
SIGNAL \f1|WideOr41~4_combout\ : std_logic;
SIGNAL \VGA|writeEn~1_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~10\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~11\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~14\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~15\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|yCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|yCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~18\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~19\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~22\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~23\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~26\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~27\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~30\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~31\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~34\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~35\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~38\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~39\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~42\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~43\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~1_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~2\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~3\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~10\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~11\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~14\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~15\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~5_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \c1|Add4~1_sumout\ : std_logic;
SIGNAL \c1|memout[0]~0_combout\ : std_logic;
SIGNAL \c1|Add4~2\ : std_logic;
SIGNAL \c1|Add4~3\ : std_logic;
SIGNAL \c1|Add4~5_sumout\ : std_logic;
SIGNAL \c1|Add4~6\ : std_logic;
SIGNAL \c1|Add4~7\ : std_logic;
SIGNAL \c1|Add4~9_sumout\ : std_logic;
SIGNAL \c1|Add4~10\ : std_logic;
SIGNAL \c1|Add4~11\ : std_logic;
SIGNAL \c1|Add4~13_sumout\ : std_logic;
SIGNAL \c1|Add4~14\ : std_logic;
SIGNAL \c1|Add4~15\ : std_logic;
SIGNAL \c1|Add4~17_sumout\ : std_logic;
SIGNAL \c1|Add4~18\ : std_logic;
SIGNAL \c1|Add4~19\ : std_logic;
SIGNAL \c1|Add4~21_sumout\ : std_logic;
SIGNAL \c1|Add4~22\ : std_logic;
SIGNAL \c1|Add4~23\ : std_logic;
SIGNAL \c1|Add4~25_sumout\ : std_logic;
SIGNAL \c1|Add4~26\ : std_logic;
SIGNAL \c1|Add4~27\ : std_logic;
SIGNAL \c1|Add4~29_sumout\ : std_logic;
SIGNAL \c1|Add4~30\ : std_logic;
SIGNAL \c1|Add4~31\ : std_logic;
SIGNAL \c1|Add4~33_sumout\ : std_logic;
SIGNAL \c1|Add4~34\ : std_logic;
SIGNAL \c1|Add4~35\ : std_logic;
SIGNAL \c1|Add4~37_sumout\ : std_logic;
SIGNAL \c1|Add4~38\ : std_logic;
SIGNAL \c1|Add4~39\ : std_logic;
SIGNAL \c1|Add4~41_sumout\ : std_logic;
SIGNAL \c1|Add4~42\ : std_logic;
SIGNAL \c1|Add4~43\ : std_logic;
SIGNAL \c1|Add4~45_sumout\ : std_logic;
SIGNAL \c1|Add4~46\ : std_logic;
SIGNAL \c1|Add4~47\ : std_logic;
SIGNAL \c1|Add4~49_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add1~41_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~17_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~21_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~25_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~29_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~33_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~37_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add1~41_sumout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b[1]~feeder_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|address_reg_b[3]~feeder_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\ : std_logic;
SIGNAL \data|c|out~0_combout\ : std_logic;
SIGNAL \data|e~3_combout\ : std_logic;
SIGNAL \data|e~0_combout\ : std_logic;
SIGNAL \data|e~1_combout\ : std_logic;
SIGNAL \data|c|out[0]~1_combout\ : std_logic;
SIGNAL \data|c|out~4_combout\ : std_logic;
SIGNAL \data|c|out~2_combout\ : std_logic;
SIGNAL \data|c|out~3_combout\ : std_logic;
SIGNAL \data|i7|WideOr6~0_combout\ : std_logic;
SIGNAL \data|i7|WideOr5~0_combout\ : std_logic;
SIGNAL \data|i7|WideOr4~0_combout\ : std_logic;
SIGNAL \data|i7|WideOr3~0_combout\ : std_logic;
SIGNAL \data|i7|WideOr2~0_combout\ : std_logic;
SIGNAL \data|i7|WideOr1~0_combout\ : std_logic;
SIGNAL \data|i7|WideOr0~0_combout\ : std_logic;
SIGNAL \data|c|Equal0~0_combout\ : std_logic;
SIGNAL \data|e~2_combout\ : std_logic;
SIGNAL \data|c|outsignal~0_combout\ : std_logic;
SIGNAL \data|c|outsignal~q\ : std_logic;
SIGNAL \data|y|Q~0_combout\ : std_logic;
SIGNAL \data|y|Q[0]~feeder_combout\ : std_logic;
SIGNAL \data|y|Q~1_combout\ : std_logic;
SIGNAL \data|y|Q~2_combout\ : std_logic;
SIGNAL \data|y|Q~3_combout\ : std_logic;
SIGNAL \data|y|Q[3]~feeder_combout\ : std_logic;
SIGNAL \data|i8|WideOr6~0_combout\ : std_logic;
SIGNAL \data|i8|WideOr5~0_combout\ : std_logic;
SIGNAL \data|i8|WideOr4~0_combout\ : std_logic;
SIGNAL \data|i8|WideOr3~0_combout\ : std_logic;
SIGNAL \data|i8|WideOr2~0_combout\ : std_logic;
SIGNAL \data|i8|WideOr1~0_combout\ : std_logic;
SIGNAL \data|i8|WideOr0~0_combout\ : std_logic;
SIGNAL \AA|one|HEX2[0]~0_combout\ : std_logic;
SIGNAL \AA|one|HEX2[1]~1_combout\ : std_logic;
SIGNAL \AA|one|HEX2[2]~2_combout\ : std_logic;
SIGNAL \AA|one|HEX2[3]~3_combout\ : std_logic;
SIGNAL \AA|one|HEX2[4]~4_combout\ : std_logic;
SIGNAL \AA|one|HEX2[5]~5_combout\ : std_logic;
SIGNAL \AA|one|HEX2[6]~6_combout\ : std_logic;
SIGNAL \AA|two|HEX2[0]~0_combout\ : std_logic;
SIGNAL \AA|two|HEX2[1]~1_combout\ : std_logic;
SIGNAL \AA|two|HEX2[2]~2_combout\ : std_logic;
SIGNAL \AA|two|HEX2[3]~3_combout\ : std_logic;
SIGNAL \AA|two|HEX2[4]~4_combout\ : std_logic;
SIGNAL \AA|two|HEX2[5]~5_combout\ : std_logic;
SIGNAL \AA|two|HEX2[6]~6_combout\ : std_logic;
SIGNAL \AA|last_data_received\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c1|xso\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode383w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|counter|out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \VGA|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|yso\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \c1|yio\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Data_In|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode373w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|xio\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data|D|osignal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Data_In|data_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Command_Out|ps2_command\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data|y|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Command_Out|command_initiate_counter\ : std_logic_vector(13 DOWNTO 1);
SIGNAL \RD|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Command_Out|transfer_counter\ : std_logic_vector(17 DOWNTO 1);
SIGNAL \AA|PS2|PS2_Command_Out|waiting_counter\ : std_logic_vector(20 DOWNTO 1);
SIGNAL \VGA|VideoMemory|auto_generated|out_address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data|c|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode606w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode326w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode343w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode353w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode363w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode393w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|decode2|w_anode403w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data|s4|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data|s2|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data|s1|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data|adjust1|cout\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \data|s3|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \c1|memout\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Command_Out|cur_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Data_In|data_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \data|s3|ALT_INV_tmp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \data|s1|ALT_INV_tmp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS12~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS10~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS9~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS5~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS3~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS9B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS8B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS7B~DUPLICATE_q\ : std_logic;
SIGNAL \data|s1|ALT_INV_tmp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \data|s4|ALT_INV_tmp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAWCB~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAWC~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW12B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW8B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW7B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW6B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW3B~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW9~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW7~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW6~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW5~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW4~DUPLICATE_q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW3~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_xCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_PS2_DAT~input_o\ : std_logic;
SIGNAL \ALT_INV_PS2_CLK~input_o\ : std_logic;
SIGNAL \data|ALT_INV_e~3_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_0_IDLE~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \data|D|ALT_INV_y.LANE3~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_always5~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \AA|PS2|ALT_INV_ps2_clk_posedge~combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_0_IDLE~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_data_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \data|D|ALT_INV_osignal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter~13_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \AA|PS2|ALT_INV_ps2_data_reg~q\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \AA|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr25~combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr27~combout\ : std_logic;
SIGNAL \c1|ALT_INV_yso[4]~6_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RD|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xio~10_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xio~9_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr31~combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr29~combout\ : std_logic;
SIGNAL \f1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \data|s4|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data|s3|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data|s2|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \data|s1|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\ : std_logic;
SIGNAL \AA|PS2|ALT_INV_last_ps2_clk~q\ : std_logic;
SIGNAL \AA|PS2|ALT_INV_ps2_clk_reg~q\ : std_logic;
SIGNAL \data|c|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \data|ALT_INV_e~2_combout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Equal0~combout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_cout\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \data|adjust1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \AA|ALT_INV_current.wait0~q\ : std_logic;
SIGNAL \AA|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \AA|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \AA|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \c1|ALT_INV_xso~12_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr18~combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr16~2_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr16~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr31~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr21~combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr27~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_yso~4_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr25~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_yso[4]~3_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr22~4_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr22~3_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr22~2_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr22~1_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr22~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_yso[4]~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_yio\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f1|ALT_INV_WideOr40~3_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr15~combout\ : std_logic;
SIGNAL \c1|ALT_INV_xso~6_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xso~4_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xso~3_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr15~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xio~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xso~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xio~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr40~2_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr35~combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr37~combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr33~combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr33~2_combout\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr33~1_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS12~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS11~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS10~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS9~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr33~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS7~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS6~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS5~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS4~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS3~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr40~1_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD12~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD11~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD10~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD9~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr40~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD8~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD7~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD6~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD5~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD3~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD4~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS8~q\ : std_logic;
SIGNAL \f1|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_xso~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD2~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS2~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD1~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS1~q\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.RESET~q\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS11B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS10B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS9B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS8B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS7B~q\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS6B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS5B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS4B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS3B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS2B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS1B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESS12B~q\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD12B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD11B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD10B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD9B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD8B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD7B~q\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD6B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD5B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD4B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD3B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD2B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOAD1B~q\ : std_logic;
SIGNAL \c1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_yso~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOADC~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESSC~q\ : std_logic;
SIGNAL \c1|ALT_INV_yio~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.LOADCB~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.ACCESSCB~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_HS1~0_combout\ : std_logic;
SIGNAL \data|y|ALT_INV_Q~3_combout\ : std_logic;
SIGNAL \data|c|ALT_INV_outsignal~q\ : std_logic;
SIGNAL \data|y|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \data|ALT_INV_e~1_combout\ : std_logic;
SIGNAL \data|ALT_INV_e~0_combout\ : std_logic;
SIGNAL \data|f1|ALT_INV_Q~1_combout\ : std_logic;
SIGNAL \data|f1|ALT_INV_Q~0_combout\ : std_logic;
SIGNAL \BB|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \BB|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \BB|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \BB|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \AA|ALT_INV_out[2]~2_combout\ : std_logic;
SIGNAL \AA|ALT_INV_out[1]~1_combout\ : std_logic;
SIGNAL \AA|ALT_INV_out[0]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_address_reg_b\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \VGA|ALT_INV_writeEn~1_combout\ : std_logic;
SIGNAL \VGA|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_yso\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f1|ALT_INV_WideOr41~4_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAWCB~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAWC~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW12B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW12~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW2~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW1~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr41~3_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW11B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW10B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW9B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW8B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW7B~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr41~2_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW6B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW5B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW4B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW3B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW2B~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW1B~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr41~1_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW11~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW10~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW9~q\ : std_logic;
SIGNAL \f1|ALT_INV_WideOr41~0_combout\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW8~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW7~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW6~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW5~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW4~q\ : std_logic;
SIGNAL \f1|ALT_INV_presentstate.DRAW3~q\ : std_logic;
SIGNAL \VGA|ALT_INV_writeEn~0_combout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_BLANK1~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_VS1~q\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_VGA_HS1~q\ : std_logic;
SIGNAL \data|i8|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \data|y|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data|i7|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \data|c|ALT_INV_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data|f1|ALT_INV_Q~q\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~0_combout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ : std_logic;
SIGNAL \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\ : std_logic_vector(20 DOWNTO 1);
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\ : std_logic_vector(17 DOWNTO 1);
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\ : std_logic_vector(13 DOWNTO 1);
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \data|adjust1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \AA|counter|ALT_INV_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \AA|ALT_INV_current.delay~q\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ : std_logic;
SIGNAL \AA|PS2|PS2_Command_Out|ALT_INV_ps2_command\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_data_shift_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_4_STOP_IN~q\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \c1|ALT_INV_xio\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \VGA|controller|ALT_INV_yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|controller|ALT_INV_xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\ : std_logic;
SIGNAL \AA|ALT_INV_current.exhibit~q\ : std_logic;
SIGNAL \c1|ALT_INV_xso\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \VGA|user_input_translator|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \AA|ALT_INV_last_data_received\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a21~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a18~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a15~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a12~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a9~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a24~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a27~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a22~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a19~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a16~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a13~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a10~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a25~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a29\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a28~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a23~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a20~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a17~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a14~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a11~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a26~portbdataout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA|VideoMemory|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(2);

\VGA|VideoMemory|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a28_PORTADATAIN_bus\ <= (\s1|altsyncram_component|auto_generated|q_a\(2) & \s1|altsyncram_component|auto_generated|q_a\(1));

\VGA|VideoMemory|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & 
\VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);
\VGA|VideoMemory|auto_generated|ram_block1a29\ <= \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(1);

\VGA|VideoMemory|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(1);

\VGA|VideoMemory|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (gnd & \s1|altsyncram_component|auto_generated|q_a\(0));

\VGA|VideoMemory|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & \VGA|user_input_translator|Add1~25_sumout\ & 
\VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & \VGA|controller|controller_translator|Add1~29_sumout\ & 
\VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & 
\VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \s1|altsyncram_component|auto_generated|q_a\(0);

\VGA|VideoMemory|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\VGA|user_input_translator|Add1~41_sumout\ & \VGA|user_input_translator|Add1~37_sumout\ & \VGA|user_input_translator|Add1~33_sumout\ & \VGA|user_input_translator|Add1~29_sumout\ & 
\VGA|user_input_translator|Add1~25_sumout\ & \VGA|user_input_translator|Add1~21_sumout\ & \VGA|user_input_translator|Add1~17_sumout\ & \c1|xso\(5) & \c1|xso\(4) & \c1|xso\(3) & \c1|xso\(2) & \c1|xso\(1) & \c1|xso\(0));

\VGA|VideoMemory|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\VGA|controller|controller_translator|Add1~41_sumout\ & \VGA|controller|controller_translator|Add1~37_sumout\ & \VGA|controller|controller_translator|Add1~33_sumout\ & 
\VGA|controller|controller_translator|Add1~29_sumout\ & \VGA|controller|controller_translator|Add1~25_sumout\ & \VGA|controller|controller_translator|Add1~21_sumout\ & \VGA|controller|controller_translator|Add1~17_sumout\ & \VGA|controller|xCounter\(6)
& \VGA|controller|xCounter\(5) & \VGA|controller|xCounter[4]~DUPLICATE_q\ & \VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2) & \VGA|controller|xCounter\(1));

\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\ <= \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\s1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\s1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\c1|memout\(12) & \c1|memout\(11) & \c1|memout\(10) & \c1|memout\(9) & \c1|memout\(8) & \c1|memout\(7) & \c1|memout\(6) & \c1|memout\(5) & \c1|memout\(4) & 
\c1|memout\(3) & \c1|memout\(2) & \c1|memout\(1) & \c1|memout\(0));

\s1|altsyncram_component|auto_generated|q_a\(2) <= \s1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\s1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \~GND~combout\;

\s1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\c1|memout\(12) & \c1|memout\(11) & \c1|memout\(10) & \c1|memout\(9) & \c1|memout\(8) & \c1|memout\(7) & \c1|memout\(6) & \c1|memout\(5) & \c1|memout\(4) & 
\c1|memout\(3) & \c1|memout\(2) & \c1|memout\(1) & \c1|memout\(0));

\s1|altsyncram_component|auto_generated|q_a\(1) <= \s1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\s1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \~GND~combout\;

\s1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c1|memout\(12) & \c1|memout\(11) & \c1|memout\(10) & \c1|memout\(9) & \c1|memout\(8) & \c1|memout\(7) & \c1|memout\(6) & \c1|memout\(5) & \c1|memout\(4) & 
\c1|memout\(3) & \c1|memout\(2) & \c1|memout\(1) & \c1|memout\(0));

\s1|altsyncram_component|auto_generated|q_a\(0) <= \s1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(0);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(1);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(2);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(3);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(4);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(5);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(6);
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(7);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ <= \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\(6);

\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\
& \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ & 
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ & \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\);
\data|s3|ALT_INV_tmp[1]~DUPLICATE_q\ <= NOT \data|s3|tmp[1]~DUPLICATE_q\;
\data|s1|ALT_INV_tmp[1]~DUPLICATE_q\ <= NOT \data|s1|tmp[1]~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS12~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS12~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS10~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS10~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS9~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS9~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS5~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS5~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS3~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS3~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS9B~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS9B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS8B~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS8B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.ACCESS7B~DUPLICATE_q\ <= NOT \f1|presentstate.ACCESS7B~DUPLICATE_q\;
\data|s1|ALT_INV_tmp[2]~DUPLICATE_q\ <= NOT \data|s1|tmp[2]~DUPLICATE_q\;
\data|s4|ALT_INV_tmp[2]~DUPLICATE_q\ <= NOT \data|s4|tmp[2]~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAWCB~DUPLICATE_q\ <= NOT \f1|presentstate.DRAWCB~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAWC~DUPLICATE_q\ <= NOT \f1|presentstate.DRAWC~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW12B~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW12B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW8B~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW8B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW7B~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW7B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW6B~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW6B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW3B~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW3B~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW9~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW9~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW7~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW7~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW6~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW6~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW5~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW5~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW4~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW4~DUPLICATE_q\;
\f1|ALT_INV_presentstate.DRAW3~DUPLICATE_q\ <= NOT \f1|presentstate.DRAW3~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[3]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[6]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[9]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[9]~DUPLICATE_q\;
\VGA|controller|ALT_INV_yCounter[1]~DUPLICATE_q\ <= NOT \VGA|controller|yCounter[1]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[8]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[9]~DUPLICATE_q\;
\VGA|controller|ALT_INV_xCounter[4]~DUPLICATE_q\ <= NOT \VGA|controller|xCounter[4]~DUPLICATE_q\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_PS2_DAT~input_o\ <= NOT \PS2_DAT~input_o\;
\ALT_INV_PS2_CLK~input_o\ <= NOT \PS2_CLK~input_o\;
\data|ALT_INV_e~3_combout\ <= NOT \data|e~3_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Selector5~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Selector5~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Selector4~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Selector4~0_combout\;
\AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_0_IDLE~q\ <= NOT \AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\;
\AA|PS2|PS2_Data_In|ALT_INV_Add0~0_combout\ <= NOT \AA|PS2|PS2_Data_In|Add0~0_combout\;
\data|D|ALT_INV_y.LANE3~q\ <= NOT \data|D|y.LANE3~q\;
\AA|PS2|PS2_Command_Out|ALT_INV_always5~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|always5~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Add3~1_combout\ <= NOT \AA|PS2|PS2_Command_Out|Add3~1_combout\;
\AA|PS2|ALT_INV_ps2_clk_posedge~combout\ <= NOT \AA|PS2|ps2_clk_posedge~combout\;
\AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_0_IDLE~q\ <= NOT \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\;
\AA|PS2|PS2_Data_In|ALT_INV_always1~0_combout\ <= NOT \AA|PS2|PS2_Data_In|always1~0_combout\;
\AA|PS2|PS2_Data_In|ALT_INV_data_count\(1) <= NOT \AA|PS2|PS2_Data_In|data_count\(1);
\AA|PS2|PS2_Data_In|ALT_INV_data_count\(0) <= NOT \AA|PS2|PS2_Data_In|data_count\(0);
\AA|PS2|PS2_Data_In|ALT_INV_data_count\(2) <= NOT \AA|PS2|PS2_Data_In|data_count\(2);
\AA|PS2|PS2_Data_In|ALT_INV_data_count\(3) <= NOT \AA|PS2|PS2_Data_In|data_count\(3);
\AA|ALT_INV_Selector2~0_combout\ <= NOT \AA|Selector2~0_combout\;
\data|D|ALT_INV_osignal\(3) <= NOT \data|D|osignal\(3);
\data|D|ALT_INV_osignal\(2) <= NOT \data|D|osignal\(2);
\data|D|ALT_INV_osignal\(1) <= NOT \data|D|osignal\(1);
\data|D|ALT_INV_osignal\(0) <= NOT \data|D|osignal\(0);
\AA|PS2|PS2_Command_Out|ALT_INV_Selector2~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Selector2~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal0~3_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal0~3_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal0~2_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal0~2_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal0~1_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal0~1_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal0~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal0~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal2~2_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal2~2_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_always1~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|always1~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal3~2_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal3~2_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal3~1_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal3~1_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal3~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal3~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Selector3~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Selector3~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Add3~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Add3~0_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(0) <= NOT \AA|PS2|PS2_Command_Out|cur_bit\(0);
\AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(1) <= NOT \AA|PS2|PS2_Command_Out|cur_bit\(1);
\AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(2) <= NOT \AA|PS2|PS2_Command_Out|cur_bit\(2);
\AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter~13_combout\ <= NOT \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal2~1_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal2~1_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_Equal2~0_combout\ <= NOT \AA|PS2|PS2_Command_Out|Equal2~0_combout\;
\AA|PS2|ALT_INV_ps2_data_reg~q\ <= NOT \AA|PS2|ps2_data_reg~q\;
\AA|ALT_INV_LessThan0~7_combout\ <= NOT \AA|LessThan0~7_combout\;
\AA|ALT_INV_LessThan0~6_combout\ <= NOT \AA|LessThan0~6_combout\;
\AA|ALT_INV_LessThan0~5_combout\ <= NOT \AA|LessThan0~5_combout\;
\AA|ALT_INV_LessThan0~4_combout\ <= NOT \AA|LessThan0~4_combout\;
\AA|ALT_INV_LessThan0~3_combout\ <= NOT \AA|LessThan0~3_combout\;
\AA|ALT_INV_LessThan0~2_combout\ <= NOT \AA|LessThan0~2_combout\;
\AA|ALT_INV_LessThan0~1_combout\ <= NOT \AA|LessThan0~1_combout\;
\AA|ALT_INV_LessThan0~0_combout\ <= NOT \AA|LessThan0~0_combout\;
\f1|ALT_INV_WideOr25~combout\ <= NOT \f1|WideOr25~combout\;
\f1|ALT_INV_WideOr27~combout\ <= NOT \f1|WideOr27~combout\;
\c1|ALT_INV_yso[4]~6_combout\ <= NOT \c1|yso[4]~6_combout\;
\RD|ALT_INV_Equal1~3_combout\ <= NOT \RD|Equal1~3_combout\;
\RD|ALT_INV_Equal1~2_combout\ <= NOT \RD|Equal1~2_combout\;
\RD|ALT_INV_Q\(13) <= NOT \RD|Q\(13);
\RD|ALT_INV_Q\(14) <= NOT \RD|Q\(14);
\RD|ALT_INV_Q\(11) <= NOT \RD|Q\(11);
\RD|ALT_INV_Q\(10) <= NOT \RD|Q\(10);
\RD|ALT_INV_Q\(7) <= NOT \RD|Q\(7);
\RD|ALT_INV_Q\(0) <= NOT \RD|Q\(0);
\RD|ALT_INV_Equal1~1_combout\ <= NOT \RD|Equal1~1_combout\;
\c1|ALT_INV_xio~10_combout\ <= NOT \c1|xio~10_combout\;
\c1|ALT_INV_xio~9_combout\ <= NOT \c1|xio~9_combout\;
\f1|ALT_INV_WideOr31~combout\ <= NOT \f1|WideOr31~combout\;
\f1|ALT_INV_WideOr29~combout\ <= NOT \f1|WideOr29~combout\;
\f1|ALT_INV_Selector0~1_combout\ <= NOT \f1|Selector0~1_combout\;
\data|s4|ALT_INV_tmp\(0) <= NOT \data|s4|tmp\(0);
\data|s3|ALT_INV_tmp\(0) <= NOT \data|s3|tmp\(0);
\data|s2|ALT_INV_tmp\(0) <= NOT \data|s2|tmp\(0);
\data|s1|ALT_INV_tmp\(0) <= NOT \data|s1|tmp\(0);
\VGA|controller|ALT_INV_always1~2_combout\ <= NOT \VGA|controller|always1~2_combout\;
\VGA|controller|ALT_INV_always1~1_combout\ <= NOT \VGA|controller|always1~1_combout\;
\AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(3) <= NOT \AA|PS2|PS2_Command_Out|cur_bit\(3);
\AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\ <= NOT \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\;
\AA|PS2|ALT_INV_last_ps2_clk~q\ <= NOT \AA|PS2|last_ps2_clk~q\;
\AA|PS2|ALT_INV_ps2_clk_reg~q\ <= NOT \AA|PS2|ps2_clk_reg~q\;
\data|c|ALT_INV_Equal0~0_combout\ <= NOT \data|c|Equal0~0_combout\;
\data|ALT_INV_e~2_combout\ <= NOT \data|e~2_combout\;
\data|adjust1|ALT_INV_Equal0~combout\ <= NOT \data|adjust1|Equal0~combout\;
\data|adjust1|ALT_INV_Equal0~4_combout\ <= NOT \data|adjust1|Equal0~4_combout\;
\data|adjust1|ALT_INV_cout\(7) <= NOT \data|adjust1|cout\(7);
\data|adjust1|ALT_INV_cout\(6) <= NOT \data|adjust1|cout\(6);
\data|adjust1|ALT_INV_cout\(8) <= NOT \data|adjust1|cout\(8);
\data|adjust1|ALT_INV_cout\(9) <= NOT \data|adjust1|cout\(9);
\data|adjust1|ALT_INV_cout\(10) <= NOT \data|adjust1|cout\(10);
\data|adjust1|ALT_INV_cout\(11) <= NOT \data|adjust1|cout\(11);
\data|adjust1|ALT_INV_Equal0~3_combout\ <= NOT \data|adjust1|Equal0~3_combout\;
\data|adjust1|ALT_INV_cout\(2) <= NOT \data|adjust1|cout\(2);
\data|adjust1|ALT_INV_cout\(3) <= NOT \data|adjust1|cout\(3);
\data|adjust1|ALT_INV_cout\(1) <= NOT \data|adjust1|cout\(1);
\data|adjust1|ALT_INV_cout\(0) <= NOT \data|adjust1|cout\(0);
\data|adjust1|ALT_INV_cout\(4) <= NOT \data|adjust1|cout\(4);
\data|adjust1|ALT_INV_cout\(5) <= NOT \data|adjust1|cout\(5);
\data|adjust1|ALT_INV_Equal0~2_combout\ <= NOT \data|adjust1|Equal0~2_combout\;
\data|adjust1|ALT_INV_cout\(13) <= NOT \data|adjust1|cout\(13);
\data|adjust1|ALT_INV_cout\(12) <= NOT \data|adjust1|cout\(12);
\data|adjust1|ALT_INV_cout\(14) <= NOT \data|adjust1|cout\(14);
\data|adjust1|ALT_INV_cout\(15) <= NOT \data|adjust1|cout\(15);
\data|adjust1|ALT_INV_cout\(16) <= NOT \data|adjust1|cout\(16);
\data|adjust1|ALT_INV_cout\(17) <= NOT \data|adjust1|cout\(17);
\data|adjust1|ALT_INV_Equal0~1_combout\ <= NOT \data|adjust1|Equal0~1_combout\;
\data|adjust1|ALT_INV_cout\(19) <= NOT \data|adjust1|cout\(19);
\data|adjust1|ALT_INV_cout\(18) <= NOT \data|adjust1|cout\(18);
\data|adjust1|ALT_INV_cout\(20) <= NOT \data|adjust1|cout\(20);
\data|adjust1|ALT_INV_cout\(21) <= NOT \data|adjust1|cout\(21);
\data|adjust1|ALT_INV_cout\(22) <= NOT \data|adjust1|cout\(22);
\data|adjust1|ALT_INV_cout\(23) <= NOT \data|adjust1|cout\(23);
\data|adjust1|ALT_INV_Equal0~0_combout\ <= NOT \data|adjust1|Equal0~0_combout\;
\data|adjust1|ALT_INV_cout\(25) <= NOT \data|adjust1|cout\(25);
\data|adjust1|ALT_INV_cout\(24) <= NOT \data|adjust1|cout\(24);
\data|adjust1|ALT_INV_cout\(26) <= NOT \data|adjust1|cout\(26);
\data|adjust1|ALT_INV_cout\(27) <= NOT \data|adjust1|cout\(27);
\data|s3|ALT_INV_tmp\(1) <= NOT \data|s3|tmp\(1);
\data|s1|ALT_INV_tmp\(1) <= NOT \data|s1|tmp\(1);
\data|s2|ALT_INV_tmp\(1) <= NOT \data|s2|tmp\(1);
\AA|ALT_INV_current.wait0~q\ <= NOT \AA|current.wait0~q\;
\AA|ALT_INV_Equal0~2_combout\ <= NOT \AA|Equal0~2_combout\;
\AA|ALT_INV_Equal0~1_combout\ <= NOT \AA|Equal0~1_combout\;
\AA|ALT_INV_Equal0~0_combout\ <= NOT \AA|Equal0~0_combout\;
\data|s4|ALT_INV_tmp\(1) <= NOT \data|s4|tmp\(1);
\VGA|controller|ALT_INV_Equal0~1_combout\ <= NOT \VGA|controller|Equal0~1_combout\;
\VGA|controller|ALT_INV_Equal0~0_combout\ <= NOT \VGA|controller|Equal0~0_combout\;
\f1|ALT_INV_WideOr16~combout\ <= NOT \f1|WideOr16~combout\;
\c1|ALT_INV_xso~12_combout\ <= NOT \c1|xso~12_combout\;
\f1|ALT_INV_WideOr18~combout\ <= NOT \f1|WideOr18~combout\;
\f1|ALT_INV_WideOr16~2_combout\ <= NOT \f1|WideOr16~2_combout\;
\f1|ALT_INV_WideOr16~1_combout\ <= NOT \f1|WideOr16~1_combout\;
\c1|ALT_INV_LessThan0~16_combout\ <= NOT \c1|LessThan0~16_combout\;
\c1|ALT_INV_LessThan0~15_combout\ <= NOT \c1|LessThan0~15_combout\;
\c1|ALT_INV_LessThan0~14_combout\ <= NOT \c1|LessThan0~14_combout\;
\c1|ALT_INV_LessThan0~13_combout\ <= NOT \c1|LessThan0~13_combout\;
\f1|ALT_INV_WideOr31~0_combout\ <= NOT \f1|WideOr31~0_combout\;
\f1|ALT_INV_WideOr21~combout\ <= NOT \f1|WideOr21~combout\;
\c1|ALT_INV_LessThan1~4_combout\ <= NOT \c1|LessThan1~4_combout\;
\f1|ALT_INV_WideOr27~0_combout\ <= NOT \f1|WideOr27~0_combout\;
\c1|ALT_INV_yso~4_combout\ <= NOT \c1|yso~4_combout\;
\f1|ALT_INV_WideOr25~0_combout\ <= NOT \f1|WideOr25~0_combout\;
\c1|ALT_INV_yso[4]~3_combout\ <= NOT \c1|yso[4]~3_combout\;
\c1|ALT_INV_LessThan1~3_combout\ <= NOT \c1|LessThan1~3_combout\;
\f1|ALT_INV_WideOr22~4_combout\ <= NOT \f1|WideOr22~4_combout\;
\f1|ALT_INV_WideOr22~3_combout\ <= NOT \f1|WideOr22~3_combout\;
\f1|ALT_INV_WideOr22~2_combout\ <= NOT \f1|WideOr22~2_combout\;
\f1|ALT_INV_WideOr22~1_combout\ <= NOT \f1|WideOr22~1_combout\;
\f1|ALT_INV_WideOr22~0_combout\ <= NOT \f1|WideOr22~0_combout\;
\c1|ALT_INV_yso[4]~1_combout\ <= NOT \c1|yso[4]~1_combout\;
\c1|ALT_INV_yio\(7) <= NOT \c1|yio\(7);
\c1|ALT_INV_yio\(6) <= NOT \c1|yio\(6);
\c1|ALT_INV_yio\(5) <= NOT \c1|yio\(5);
\f1|ALT_INV_WideOr40~3_combout\ <= NOT \f1|WideOr40~3_combout\;
\c1|ALT_INV_LessThan1~2_combout\ <= NOT \c1|LessThan1~2_combout\;
\c1|ALT_INV_LessThan1~1_combout\ <= NOT \c1|LessThan1~1_combout\;
\c1|ALT_INV_yio\(1) <= NOT \c1|yio\(1);
\c1|ALT_INV_LessThan1~0_combout\ <= NOT \c1|LessThan1~0_combout\;
\c1|ALT_INV_yio\(4) <= NOT \c1|yio\(4);
\c1|ALT_INV_yio\(3) <= NOT \c1|yio\(3);
\f1|ALT_INV_WideOr15~combout\ <= NOT \f1|WideOr15~combout\;
\c1|ALT_INV_xso~6_combout\ <= NOT \c1|xso~6_combout\;
\c1|ALT_INV_xso~4_combout\ <= NOT \c1|xso~4_combout\;
\c1|ALT_INV_xso~3_combout\ <= NOT \c1|xso~3_combout\;
\f1|ALT_INV_WideOr16~0_combout\ <= NOT \f1|WideOr16~0_combout\;
\f1|ALT_INV_WideOr15~0_combout\ <= NOT \f1|WideOr15~0_combout\;
\c1|ALT_INV_xio~1_combout\ <= NOT \c1|xio~1_combout\;
\c1|ALT_INV_xso~1_combout\ <= NOT \c1|xso~1_combout\;
\c1|ALT_INV_xio~0_combout\ <= NOT \c1|xio~0_combout\;
\f1|ALT_INV_WideOr40~2_combout\ <= NOT \f1|WideOr40~2_combout\;
\c1|ALT_INV_LessThan0~12_combout\ <= NOT \c1|LessThan0~12_combout\;
\c1|ALT_INV_LessThan0~11_combout\ <= NOT \c1|LessThan0~11_combout\;
\f1|ALT_INV_WideOr35~combout\ <= NOT \f1|WideOr35~combout\;
\f1|ALT_INV_WideOr37~combout\ <= NOT \f1|WideOr37~combout\;
\f1|ALT_INV_WideOr33~combout\ <= NOT \f1|WideOr33~combout\;
\f1|ALT_INV_WideOr33~2_combout\ <= NOT \f1|WideOr33~2_combout\;
\f1|ALT_INV_WideOr33~1_combout\ <= NOT \f1|WideOr33~1_combout\;
\f1|ALT_INV_presentstate.ACCESS12~q\ <= NOT \f1|presentstate.ACCESS12~q\;
\f1|ALT_INV_presentstate.ACCESS11~q\ <= NOT \f1|presentstate.ACCESS11~q\;
\f1|ALT_INV_presentstate.ACCESS10~q\ <= NOT \f1|presentstate.ACCESS10~q\;
\f1|ALT_INV_presentstate.ACCESS9~q\ <= NOT \f1|presentstate.ACCESS9~q\;
\f1|ALT_INV_WideOr33~0_combout\ <= NOT \f1|WideOr33~0_combout\;
\f1|ALT_INV_presentstate.ACCESS7~q\ <= NOT \f1|presentstate.ACCESS7~q\;
\f1|ALT_INV_presentstate.ACCESS6~q\ <= NOT \f1|presentstate.ACCESS6~q\;
\f1|ALT_INV_presentstate.ACCESS5~q\ <= NOT \f1|presentstate.ACCESS5~q\;
\f1|ALT_INV_presentstate.ACCESS4~q\ <= NOT \f1|presentstate.ACCESS4~q\;
\f1|ALT_INV_presentstate.ACCESS3~q\ <= NOT \f1|presentstate.ACCESS3~q\;
\f1|ALT_INV_WideOr40~1_combout\ <= NOT \f1|WideOr40~1_combout\;
\f1|ALT_INV_presentstate.LOAD12~q\ <= NOT \f1|presentstate.LOAD12~q\;
\f1|ALT_INV_presentstate.LOAD11~q\ <= NOT \f1|presentstate.LOAD11~q\;
\f1|ALT_INV_presentstate.LOAD10~q\ <= NOT \f1|presentstate.LOAD10~q\;
\f1|ALT_INV_presentstate.LOAD9~q\ <= NOT \f1|presentstate.LOAD9~q\;
\f1|ALT_INV_WideOr40~0_combout\ <= NOT \f1|WideOr40~0_combout\;
\f1|ALT_INV_presentstate.LOAD8~q\ <= NOT \f1|presentstate.LOAD8~q\;
\f1|ALT_INV_presentstate.LOAD7~q\ <= NOT \f1|presentstate.LOAD7~q\;
\f1|ALT_INV_presentstate.LOAD6~q\ <= NOT \f1|presentstate.LOAD6~q\;
\f1|ALT_INV_presentstate.LOAD5~q\ <= NOT \f1|presentstate.LOAD5~q\;
\f1|ALT_INV_presentstate.LOAD3~q\ <= NOT \f1|presentstate.LOAD3~q\;
\f1|ALT_INV_presentstate.LOAD4~q\ <= NOT \f1|presentstate.LOAD4~q\;
\f1|ALT_INV_presentstate.ACCESS8~q\ <= NOT \f1|presentstate.ACCESS8~q\;
\f1|ALT_INV_Selector0~0_combout\ <= NOT \f1|Selector0~0_combout\;
\c1|ALT_INV_xso~0_combout\ <= NOT \c1|xso~0_combout\;
\f1|ALT_INV_presentstate.LOAD2~q\ <= NOT \f1|presentstate.LOAD2~q\;
\f1|ALT_INV_presentstate.ACCESS2~q\ <= NOT \f1|presentstate.ACCESS2~q\;
\f1|ALT_INV_presentstate.LOAD1~q\ <= NOT \f1|presentstate.LOAD1~q\;
\f1|ALT_INV_presentstate.ACCESS1~q\ <= NOT \f1|presentstate.ACCESS1~q\;
\c1|ALT_INV_LessThan0~10_combout\ <= NOT \c1|LessThan0~10_combout\;
\c1|ALT_INV_LessThan0~9_combout\ <= NOT \c1|LessThan0~9_combout\;
\c1|ALT_INV_LessThan0~8_combout\ <= NOT \c1|LessThan0~8_combout\;
\f1|ALT_INV_presentstate.RESET~q\ <= NOT \f1|presentstate.RESET~q\;
\c1|ALT_INV_LessThan0~7_combout\ <= NOT \c1|LessThan0~7_combout\;
\c1|ALT_INV_LessThan0~6_combout\ <= NOT \c1|LessThan0~6_combout\;
\c1|ALT_INV_LessThan0~5_combout\ <= NOT \c1|LessThan0~5_combout\;
\f1|ALT_INV_presentstate.ACCESS11B~q\ <= NOT \f1|presentstate.ACCESS11B~q\;
\f1|ALT_INV_presentstate.ACCESS10B~q\ <= NOT \f1|presentstate.ACCESS10B~q\;
\f1|ALT_INV_presentstate.ACCESS9B~q\ <= NOT \f1|presentstate.ACCESS9B~q\;
\f1|ALT_INV_presentstate.ACCESS8B~q\ <= NOT \f1|presentstate.ACCESS8B~q\;
\f1|ALT_INV_presentstate.ACCESS7B~q\ <= NOT \f1|presentstate.ACCESS7B~q\;
\c1|ALT_INV_LessThan0~4_combout\ <= NOT \c1|LessThan0~4_combout\;
\f1|ALT_INV_presentstate.ACCESS6B~q\ <= NOT \f1|presentstate.ACCESS6B~q\;
\f1|ALT_INV_presentstate.ACCESS5B~q\ <= NOT \f1|presentstate.ACCESS5B~q\;
\f1|ALT_INV_presentstate.ACCESS4B~q\ <= NOT \f1|presentstate.ACCESS4B~q\;
\f1|ALT_INV_presentstate.ACCESS3B~q\ <= NOT \f1|presentstate.ACCESS3B~q\;
\f1|ALT_INV_presentstate.ACCESS2B~q\ <= NOT \f1|presentstate.ACCESS2B~q\;
\f1|ALT_INV_presentstate.ACCESS1B~q\ <= NOT \f1|presentstate.ACCESS1B~q\;
\f1|ALT_INV_presentstate.ACCESS12B~q\ <= NOT \f1|presentstate.ACCESS12B~q\;
\c1|ALT_INV_LessThan0~3_combout\ <= NOT \c1|LessThan0~3_combout\;
\c1|ALT_INV_LessThan0~2_combout\ <= NOT \c1|LessThan0~2_combout\;
\f1|ALT_INV_presentstate.LOAD12B~q\ <= NOT \f1|presentstate.LOAD12B~q\;
\f1|ALT_INV_presentstate.LOAD11B~q\ <= NOT \f1|presentstate.LOAD11B~q\;
\f1|ALT_INV_presentstate.LOAD10B~q\ <= NOT \f1|presentstate.LOAD10B~q\;
\f1|ALT_INV_presentstate.LOAD9B~q\ <= NOT \f1|presentstate.LOAD9B~q\;
\f1|ALT_INV_presentstate.LOAD8B~q\ <= NOT \f1|presentstate.LOAD8B~q\;
\f1|ALT_INV_presentstate.LOAD7B~q\ <= NOT \f1|presentstate.LOAD7B~q\;
\c1|ALT_INV_LessThan0~1_combout\ <= NOT \c1|LessThan0~1_combout\;
\f1|ALT_INV_presentstate.LOAD6B~q\ <= NOT \f1|presentstate.LOAD6B~q\;
\f1|ALT_INV_presentstate.LOAD5B~q\ <= NOT \f1|presentstate.LOAD5B~q\;
\f1|ALT_INV_presentstate.LOAD4B~q\ <= NOT \f1|presentstate.LOAD4B~q\;
\f1|ALT_INV_presentstate.LOAD3B~q\ <= NOT \f1|presentstate.LOAD3B~q\;
\f1|ALT_INV_presentstate.LOAD2B~q\ <= NOT \f1|presentstate.LOAD2B~q\;
\f1|ALT_INV_presentstate.LOAD1B~q\ <= NOT \f1|presentstate.LOAD1B~q\;
\c1|ALT_INV_LessThan0~0_combout\ <= NOT \c1|LessThan0~0_combout\;
\c1|ALT_INV_yso~0_combout\ <= NOT \c1|yso~0_combout\;
\f1|ALT_INV_presentstate.LOADC~q\ <= NOT \f1|presentstate.LOADC~q\;
\f1|ALT_INV_presentstate.ACCESSC~q\ <= NOT \f1|presentstate.ACCESSC~q\;
\c1|ALT_INV_yio~0_combout\ <= NOT \c1|yio~0_combout\;
\f1|ALT_INV_presentstate.LOADCB~q\ <= NOT \f1|presentstate.LOADCB~q\;
\f1|ALT_INV_presentstate.ACCESSCB~q\ <= NOT \f1|presentstate.ACCESSCB~q\;
\VGA|controller|ALT_INV_always1~0_combout\ <= NOT \VGA|controller|always1~0_combout\;
\VGA|controller|ALT_INV_VGA_VS1~0_combout\ <= NOT \VGA|controller|VGA_VS1~0_combout\;
\VGA|controller|ALT_INV_VGA_HS1~0_combout\ <= NOT \VGA|controller|VGA_HS1~0_combout\;
\data|y|ALT_INV_Q~3_combout\ <= NOT \data|y|Q~3_combout\;
\data|c|ALT_INV_outsignal~q\ <= NOT \data|c|outsignal~q\;
\data|y|ALT_INV_Q~0_combout\ <= NOT \data|y|Q~0_combout\;
\data|ALT_INV_e~1_combout\ <= NOT \data|e~1_combout\;
\data|ALT_INV_e~0_combout\ <= NOT \data|e~0_combout\;
\data|f1|ALT_INV_Q~1_combout\ <= NOT \data|f1|Q~1_combout\;
\data|s3|ALT_INV_tmp\(2) <= NOT \data|s3|tmp\(2);
\data|s1|ALT_INV_tmp\(2) <= NOT \data|s1|tmp\(2);
\data|f1|ALT_INV_Q~0_combout\ <= NOT \data|f1|Q~0_combout\;
\BB|ALT_INV_Decoder0~3_combout\ <= NOT \BB|Decoder0~3_combout\;
\BB|ALT_INV_Decoder0~2_combout\ <= NOT \BB|Decoder0~2_combout\;
\data|s2|ALT_INV_tmp\(2) <= NOT \data|s2|tmp\(2);
\BB|ALT_INV_Decoder0~1_combout\ <= NOT \BB|Decoder0~1_combout\;
\BB|ALT_INV_Decoder0~0_combout\ <= NOT \BB|Decoder0~0_combout\;
\AA|ALT_INV_out[2]~2_combout\ <= NOT \AA|out[2]~2_combout\;
\AA|ALT_INV_out[1]~1_combout\ <= NOT \AA|out[1]~1_combout\;
\AA|ALT_INV_out[0]~0_combout\ <= NOT \AA|out[0]~0_combout\;
\data|s4|ALT_INV_tmp\(2) <= NOT \data|s4|tmp\(2);
\VGA|VideoMemory|auto_generated|ALT_INV_address_reg_b\(1) <= NOT \VGA|VideoMemory|auto_generated|address_reg_b\(1);
\VGA|ALT_INV_writeEn~1_combout\ <= NOT \VGA|writeEn~1_combout\;
\VGA|ALT_INV_LessThan3~0_combout\ <= NOT \VGA|LessThan3~0_combout\;
\c1|ALT_INV_yso\(4) <= NOT \c1|yso\(4);
\f1|ALT_INV_WideOr41~4_combout\ <= NOT \f1|WideOr41~4_combout\;
\f1|ALT_INV_presentstate.DRAWCB~q\ <= NOT \f1|presentstate.DRAWCB~q\;
\f1|ALT_INV_presentstate.DRAWC~q\ <= NOT \f1|presentstate.DRAWC~q\;
\f1|ALT_INV_presentstate.DRAW12B~q\ <= NOT \f1|presentstate.DRAW12B~q\;
\f1|ALT_INV_presentstate.DRAW12~q\ <= NOT \f1|presentstate.DRAW12~q\;
\f1|ALT_INV_presentstate.DRAW2~q\ <= NOT \f1|presentstate.DRAW2~q\;
\f1|ALT_INV_presentstate.DRAW1~q\ <= NOT \f1|presentstate.DRAW1~q\;
\f1|ALT_INV_WideOr41~3_combout\ <= NOT \f1|WideOr41~3_combout\;
\f1|ALT_INV_presentstate.DRAW11B~q\ <= NOT \f1|presentstate.DRAW11B~q\;
\f1|ALT_INV_presentstate.DRAW10B~q\ <= NOT \f1|presentstate.DRAW10B~q\;
\f1|ALT_INV_presentstate.DRAW9B~q\ <= NOT \f1|presentstate.DRAW9B~q\;
\f1|ALT_INV_presentstate.DRAW8B~q\ <= NOT \f1|presentstate.DRAW8B~q\;
\f1|ALT_INV_presentstate.DRAW7B~q\ <= NOT \f1|presentstate.DRAW7B~q\;
\f1|ALT_INV_WideOr41~2_combout\ <= NOT \f1|WideOr41~2_combout\;
\f1|ALT_INV_presentstate.DRAW6B~q\ <= NOT \f1|presentstate.DRAW6B~q\;
\f1|ALT_INV_presentstate.DRAW5B~q\ <= NOT \f1|presentstate.DRAW5B~q\;
\f1|ALT_INV_presentstate.DRAW4B~q\ <= NOT \f1|presentstate.DRAW4B~q\;
\f1|ALT_INV_presentstate.DRAW3B~q\ <= NOT \f1|presentstate.DRAW3B~q\;
\f1|ALT_INV_presentstate.DRAW2B~q\ <= NOT \f1|presentstate.DRAW2B~q\;
\f1|ALT_INV_presentstate.DRAW1B~q\ <= NOT \f1|presentstate.DRAW1B~q\;
\f1|ALT_INV_WideOr41~1_combout\ <= NOT \f1|WideOr41~1_combout\;
\f1|ALT_INV_presentstate.DRAW11~q\ <= NOT \f1|presentstate.DRAW11~q\;
\f1|ALT_INV_presentstate.DRAW10~q\ <= NOT \f1|presentstate.DRAW10~q\;
\f1|ALT_INV_presentstate.DRAW9~q\ <= NOT \f1|presentstate.DRAW9~q\;
\f1|ALT_INV_WideOr41~0_combout\ <= NOT \f1|WideOr41~0_combout\;
\f1|ALT_INV_presentstate.DRAW8~q\ <= NOT \f1|presentstate.DRAW8~q\;
\f1|ALT_INV_presentstate.DRAW7~q\ <= NOT \f1|presentstate.DRAW7~q\;
\f1|ALT_INV_presentstate.DRAW6~q\ <= NOT \f1|presentstate.DRAW6~q\;
\f1|ALT_INV_presentstate.DRAW5~q\ <= NOT \f1|presentstate.DRAW5~q\;
\f1|ALT_INV_presentstate.DRAW4~q\ <= NOT \f1|presentstate.DRAW4~q\;
\f1|ALT_INV_presentstate.DRAW3~q\ <= NOT \f1|presentstate.DRAW3~q\;
\VGA|ALT_INV_writeEn~0_combout\ <= NOT \VGA|writeEn~0_combout\;
\VGA|controller|ALT_INV_VGA_BLANK1~q\ <= NOT \VGA|controller|VGA_BLANK1~q\;
\VGA|controller|ALT_INV_VGA_VS1~q\ <= NOT \VGA|controller|VGA_VS1~q\;
\VGA|controller|ALT_INV_VGA_HS1~q\ <= NOT \VGA|controller|VGA_HS1~q\;
\data|i8|ALT_INV_WideOr6~0_combout\ <= NOT \data|i8|WideOr6~0_combout\;
\data|y|ALT_INV_Q\(3) <= NOT \data|y|Q\(3);
\data|y|ALT_INV_Q\(2) <= NOT \data|y|Q\(2);
\data|y|ALT_INV_Q\(1) <= NOT \data|y|Q\(1);
\data|y|ALT_INV_Q\(0) <= NOT \data|y|Q\(0);
\data|i7|ALT_INV_WideOr6~0_combout\ <= NOT \data|i7|WideOr6~0_combout\;
\data|c|ALT_INV_out\(3) <= NOT \data|c|out\(3);
\data|c|ALT_INV_out\(2) <= NOT \data|c|out\(2);
\data|c|ALT_INV_out\(1) <= NOT \data|c|out\(1);
\data|c|ALT_INV_out\(0) <= NOT \data|c|out\(0);
\data|f1|ALT_INV_Q~q\ <= NOT \data|f1|Q~q\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~2_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~1_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~0_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~2_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~1_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~0_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~2_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\;
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~1_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(1);
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(2);
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(3);
\VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~0_combout\ <= NOT \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\;
\VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0) <= NOT \VGA|VideoMemory|auto_generated|out_address_reg_b\(0);
\AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ <= NOT \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\;
\AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ <= NOT \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\;
\AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ <= NOT \AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\;
\RD|ALT_INV_Add0~9_sumout\ <= NOT \RD|Add0~9_sumout\;
\RD|ALT_INV_Add0~5_sumout\ <= NOT \RD|Add0~5_sumout\;
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(20) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(20);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(19) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(19);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(18) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(18);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(17) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(17);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(16) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(16);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(15) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(15);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(14) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(14);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(13) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(13);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(12) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(12);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(10) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(10);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(11) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(11);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(9) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(9);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(6) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(6);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(5) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(5);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(4) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(4);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(2) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(2);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(1) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(1);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(3) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(3);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(8) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(8);
\AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(7) <= NOT \AA|PS2|PS2_Command_Out|waiting_counter\(7);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(9) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(9);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(8) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(8);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(7) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(7);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(6) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(6);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(5) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(5);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(4) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(4);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(1) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(1);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(2) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(2);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(17) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(17);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(16) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(16);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(3) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(3);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(15) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(15);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(14) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(14);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(13) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(13);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(12) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(12);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(11) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(11);
\AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(10) <= NOT \AA|PS2|PS2_Command_Out|transfer_counter\(10);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(10) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(10);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(11) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(11);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(12) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(12);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(1) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(1);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(6) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(6);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(8) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(8);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(3) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(3);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(7) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(7);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(4) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(4);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(5) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(5);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(9) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(9);
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(2) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(2);
\AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\ <= NOT \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\;
\AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ <= NOT \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\;
\data|adjust1|ALT_INV_Add0~109_sumout\ <= NOT \data|adjust1|Add0~109_sumout\;
\data|adjust1|ALT_INV_Add0~105_sumout\ <= NOT \data|adjust1|Add0~105_sumout\;
\data|adjust1|ALT_INV_Add0~101_sumout\ <= NOT \data|adjust1|Add0~101_sumout\;
\data|adjust1|ALT_INV_Add0~97_sumout\ <= NOT \data|adjust1|Add0~97_sumout\;
\data|adjust1|ALT_INV_Add0~93_sumout\ <= NOT \data|adjust1|Add0~93_sumout\;
\data|adjust1|ALT_INV_Add0~89_sumout\ <= NOT \data|adjust1|Add0~89_sumout\;
\data|adjust1|ALT_INV_Add0~85_sumout\ <= NOT \data|adjust1|Add0~85_sumout\;
\data|adjust1|ALT_INV_Add0~81_sumout\ <= NOT \data|adjust1|Add0~81_sumout\;
\data|adjust1|ALT_INV_Add0~77_sumout\ <= NOT \data|adjust1|Add0~77_sumout\;
\data|adjust1|ALT_INV_Add0~73_sumout\ <= NOT \data|adjust1|Add0~73_sumout\;
\data|adjust1|ALT_INV_Add0~69_sumout\ <= NOT \data|adjust1|Add0~69_sumout\;
\data|adjust1|ALT_INV_Add0~65_sumout\ <= NOT \data|adjust1|Add0~65_sumout\;
\data|adjust1|ALT_INV_Add0~57_sumout\ <= NOT \data|adjust1|Add0~57_sumout\;
\data|adjust1|ALT_INV_Add0~53_sumout\ <= NOT \data|adjust1|Add0~53_sumout\;
\data|adjust1|ALT_INV_Add0~49_sumout\ <= NOT \data|adjust1|Add0~49_sumout\;
\data|adjust1|ALT_INV_Add0~45_sumout\ <= NOT \data|adjust1|Add0~45_sumout\;
\data|adjust1|ALT_INV_Add0~41_sumout\ <= NOT \data|adjust1|Add0~41_sumout\;
\data|adjust1|ALT_INV_Add0~37_sumout\ <= NOT \data|adjust1|Add0~37_sumout\;
\data|adjust1|ALT_INV_Add0~33_sumout\ <= NOT \data|adjust1|Add0~33_sumout\;
\data|adjust1|ALT_INV_Add0~21_sumout\ <= NOT \data|adjust1|Add0~21_sumout\;
\data|adjust1|ALT_INV_Add0~17_sumout\ <= NOT \data|adjust1|Add0~17_sumout\;
\data|adjust1|ALT_INV_Add0~13_sumout\ <= NOT \data|adjust1|Add0~13_sumout\;
\data|adjust1|ALT_INV_Add0~9_sumout\ <= NOT \data|adjust1|Add0~9_sumout\;
\data|adjust1|ALT_INV_Add0~5_sumout\ <= NOT \data|adjust1|Add0~5_sumout\;
\data|adjust1|ALT_INV_Add0~1_sumout\ <= NOT \data|adjust1|Add0~1_sumout\;
\AA|counter|ALT_INV_out\(20) <= NOT \AA|counter|out\(20);
\AA|counter|ALT_INV_out\(27) <= NOT \AA|counter|out\(27);
\AA|counter|ALT_INV_out\(28) <= NOT \AA|counter|out\(28);
\AA|counter|ALT_INV_out\(29) <= NOT \AA|counter|out\(29);
\AA|counter|ALT_INV_out\(30) <= NOT \AA|counter|out\(30);
\AA|counter|ALT_INV_out\(31) <= NOT \AA|counter|out\(31);
\AA|counter|ALT_INV_out\(19) <= NOT \AA|counter|out\(19);
\AA|counter|ALT_INV_out\(18) <= NOT \AA|counter|out\(18);
\AA|counter|ALT_INV_out\(17) <= NOT \AA|counter|out\(17);
\AA|counter|ALT_INV_out\(16) <= NOT \AA|counter|out\(16);
\AA|counter|ALT_INV_out\(8) <= NOT \AA|counter|out\(8);
\AA|counter|ALT_INV_out\(7) <= NOT \AA|counter|out\(7);
\AA|counter|ALT_INV_out\(15) <= NOT \AA|counter|out\(15);
\AA|counter|ALT_INV_out\(6) <= NOT \AA|counter|out\(6);
\AA|counter|ALT_INV_out\(9) <= NOT \AA|counter|out\(9);
\AA|counter|ALT_INV_out\(0) <= NOT \AA|counter|out\(0);
\AA|counter|ALT_INV_out\(2) <= NOT \AA|counter|out\(2);
\AA|counter|ALT_INV_out\(5) <= NOT \AA|counter|out\(5);
\AA|counter|ALT_INV_out\(4) <= NOT \AA|counter|out\(4);
\AA|counter|ALT_INV_out\(3) <= NOT \AA|counter|out\(3);
\AA|counter|ALT_INV_out\(1) <= NOT \AA|counter|out\(1);
\AA|counter|ALT_INV_out\(10) <= NOT \AA|counter|out\(10);
\AA|counter|ALT_INV_out\(11) <= NOT \AA|counter|out\(11);
\AA|counter|ALT_INV_out\(13) <= NOT \AA|counter|out\(13);
\AA|counter|ALT_INV_out\(12) <= NOT \AA|counter|out\(12);
\AA|counter|ALT_INV_out\(14) <= NOT \AA|counter|out\(14);
\AA|counter|ALT_INV_out\(26) <= NOT \AA|counter|out\(26);
\AA|counter|ALT_INV_out\(25) <= NOT \AA|counter|out\(25);
\AA|counter|ALT_INV_out\(24) <= NOT \AA|counter|out\(24);
\AA|counter|ALT_INV_out\(22) <= NOT \AA|counter|out\(22);
\AA|counter|ALT_INV_out\(21) <= NOT \AA|counter|out\(21);
\AA|counter|ALT_INV_out\(23) <= NOT \AA|counter|out\(23);
\AA|ALT_INV_current.delay~q\ <= NOT \AA|current.delay~q\;
\c1|ALT_INV_Add2~29_sumout\ <= NOT \c1|Add2~29_sumout\;
\c1|ALT_INV_Add2~25_sumout\ <= NOT \c1|Add2~25_sumout\;
\c1|ALT_INV_Add2~21_sumout\ <= NOT \c1|Add2~21_sumout\;
\c1|ALT_INV_Add2~17_sumout\ <= NOT \c1|Add2~17_sumout\;
\c1|ALT_INV_Add3~29_sumout\ <= NOT \c1|Add3~29_sumout\;
\c1|ALT_INV_Add3~25_sumout\ <= NOT \c1|Add3~25_sumout\;
\c1|ALT_INV_Add3~21_sumout\ <= NOT \c1|Add3~21_sumout\;
\c1|ALT_INV_Add3~17_sumout\ <= NOT \c1|Add3~17_sumout\;
\c1|ALT_INV_Add3~13_sumout\ <= NOT \c1|Add3~13_sumout\;
\c1|ALT_INV_Add3~9_sumout\ <= NOT \c1|Add3~9_sumout\;
\c1|ALT_INV_Add3~5_sumout\ <= NOT \c1|Add3~5_sumout\;
\c1|ALT_INV_Add3~1_sumout\ <= NOT \c1|Add3~1_sumout\;
\RD|ALT_INV_Q\(12) <= NOT \RD|Q\(12);
\RD|ALT_INV_Q\(15) <= NOT \RD|Q\(15);
\RD|ALT_INV_Q\(9) <= NOT \RD|Q\(9);
\RD|ALT_INV_Q\(8) <= NOT \RD|Q\(8);
\RD|ALT_INV_Q\(6) <= NOT \RD|Q\(6);
\RD|ALT_INV_Q\(4) <= NOT \RD|Q\(4);
\RD|ALT_INV_Q\(2) <= NOT \RD|Q\(2);
\RD|ALT_INV_Q\(3) <= NOT \RD|Q\(3);
\RD|ALT_INV_Q\(1) <= NOT \RD|Q\(1);
\RD|ALT_INV_Q\(5) <= NOT \RD|Q\(5);
\c1|ALT_INV_Add1~29_sumout\ <= NOT \c1|Add1~29_sumout\;
\c1|ALT_INV_Add1~25_sumout\ <= NOT \c1|Add1~25_sumout\;
\c1|ALT_INV_Add1~21_sumout\ <= NOT \c1|Add1~21_sumout\;
\c1|ALT_INV_Add1~17_sumout\ <= NOT \c1|Add1~17_sumout\;
\c1|ALT_INV_Add1~13_sumout\ <= NOT \c1|Add1~13_sumout\;
\c1|ALT_INV_Add1~9_sumout\ <= NOT \c1|Add1~9_sumout\;
\c1|ALT_INV_Add1~5_sumout\ <= NOT \c1|Add1~5_sumout\;
\c1|ALT_INV_Add1~1_sumout\ <= NOT \c1|Add1~1_sumout\;
\AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\ <= NOT \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\;
\AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(13) <= NOT \AA|PS2|PS2_Command_Out|command_initiate_counter\(13);
\AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ <= NOT \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\;
\AA|PS2|PS2_Command_Out|ALT_INV_ps2_command\(8) <= NOT \AA|PS2|PS2_Command_Out|ps2_command\(8);
\AA|PS2|PS2_Data_In|ALT_INV_data_shift_reg\(2) <= NOT \AA|PS2|PS2_Data_In|data_shift_reg\(2);
\AA|PS2|PS2_Data_In|ALT_INV_data_shift_reg\(0) <= NOT \AA|PS2|PS2_Data_In|data_shift_reg\(0);
\AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_4_STOP_IN~q\ <= NOT \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\;
\c1|ALT_INV_yso\(3) <= NOT \c1|yso\(3);
\c1|ALT_INV_yso\(2) <= NOT \c1|yso\(2);
\c1|ALT_INV_yso\(1) <= NOT \c1|yso\(1);
\c1|ALT_INV_yso\(0) <= NOT \c1|yso\(0);
\c1|ALT_INV_Add0~33_sumout\ <= NOT \c1|Add0~33_sumout\;
\c1|ALT_INV_Add0~29_sumout\ <= NOT \c1|Add0~29_sumout\;
\c1|ALT_INV_Add0~25_sumout\ <= NOT \c1|Add0~25_sumout\;
\c1|ALT_INV_Add0~21_sumout\ <= NOT \c1|Add0~21_sumout\;
\c1|ALT_INV_Add0~17_sumout\ <= NOT \c1|Add0~17_sumout\;
\c1|ALT_INV_Add0~13_sumout\ <= NOT \c1|Add0~13_sumout\;
\c1|ALT_INV_Add2~13_sumout\ <= NOT \c1|Add2~13_sumout\;
\c1|ALT_INV_Add2~9_sumout\ <= NOT \c1|Add2~9_sumout\;
\c1|ALT_INV_Add2~5_sumout\ <= NOT \c1|Add2~5_sumout\;
\c1|ALT_INV_Add2~1_sumout\ <= NOT \c1|Add2~1_sumout\;
\c1|ALT_INV_yio\(0) <= NOT \c1|yio\(0);
\c1|ALT_INV_yio\(2) <= NOT \c1|yio\(2);
\c1|ALT_INV_Add0~9_sumout\ <= NOT \c1|Add0~9_sumout\;
\c1|ALT_INV_Add0~5_sumout\ <= NOT \c1|Add0~5_sumout\;
\c1|ALT_INV_xio\(7) <= NOT \c1|xio\(7);
\c1|ALT_INV_xio\(4) <= NOT \c1|xio\(4);
\c1|ALT_INV_xio\(5) <= NOT \c1|xio\(5);
\c1|ALT_INV_xio\(6) <= NOT \c1|xio\(6);
\c1|ALT_INV_xio\(2) <= NOT \c1|xio\(2);
\c1|ALT_INV_xio\(0) <= NOT \c1|xio\(0);
\c1|ALT_INV_xio\(3) <= NOT \c1|xio\(3);
\c1|ALT_INV_xio\(1) <= NOT \c1|xio\(1);
\c1|ALT_INV_Add0~1_sumout\ <= NOT \c1|Add0~1_sumout\;
\VGA|controller|ALT_INV_yCounter\(2) <= NOT \VGA|controller|yCounter\(2);
\VGA|controller|ALT_INV_yCounter\(3) <= NOT \VGA|controller|yCounter\(3);
\VGA|controller|ALT_INV_yCounter\(4) <= NOT \VGA|controller|yCounter\(4);
\VGA|controller|ALT_INV_yCounter\(7) <= NOT \VGA|controller|yCounter\(7);
\VGA|controller|ALT_INV_yCounter\(5) <= NOT \VGA|controller|yCounter\(5);
\VGA|controller|ALT_INV_yCounter\(8) <= NOT \VGA|controller|yCounter\(8);
\VGA|controller|ALT_INV_yCounter\(6) <= NOT \VGA|controller|yCounter\(6);
\VGA|controller|ALT_INV_yCounter\(0) <= NOT \VGA|controller|yCounter\(0);
\VGA|controller|ALT_INV_yCounter\(9) <= NOT \VGA|controller|yCounter\(9);
\VGA|controller|ALT_INV_yCounter\(1) <= NOT \VGA|controller|yCounter\(1);
\VGA|controller|ALT_INV_xCounter\(0) <= NOT \VGA|controller|xCounter\(0);
\VGA|controller|ALT_INV_xCounter\(7) <= NOT \VGA|controller|xCounter\(7);
\VGA|controller|ALT_INV_xCounter\(8) <= NOT \VGA|controller|xCounter\(8);
\VGA|controller|ALT_INV_xCounter\(9) <= NOT \VGA|controller|xCounter\(9);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(4) <= NOT \AA|PS2|PS2_Data_In|received_data\(4);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(6) <= NOT \AA|PS2|PS2_Data_In|received_data\(6);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(5) <= NOT \AA|PS2|PS2_Data_In|received_data\(5);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(7) <= NOT \AA|PS2|PS2_Data_In|received_data\(7);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(2) <= NOT \AA|PS2|PS2_Data_In|received_data\(2);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(0) <= NOT \AA|PS2|PS2_Data_In|received_data\(0);
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(1) <= NOT \AA|PS2|PS2_Data_In|received_data\(1);
\AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\ <= NOT \AA|PS2|PS2_Data_In|received_data_en~q\;
\AA|PS2|PS2_Data_In|ALT_INV_received_data\(3) <= NOT \AA|PS2|PS2_Data_In|received_data\(3);
\AA|ALT_INV_current.exhibit~q\ <= NOT \AA|current.exhibit~q\;
\VGA|controller|ALT_INV_xCounter\(6) <= NOT \VGA|controller|xCounter\(6);
\VGA|controller|ALT_INV_xCounter\(5) <= NOT \VGA|controller|xCounter\(5);
\VGA|controller|ALT_INV_xCounter\(4) <= NOT \VGA|controller|xCounter\(4);
\VGA|controller|ALT_INV_xCounter\(3) <= NOT \VGA|controller|xCounter\(3);
\VGA|controller|ALT_INV_xCounter\(2) <= NOT \VGA|controller|xCounter\(2);
\VGA|controller|ALT_INV_xCounter\(1) <= NOT \VGA|controller|xCounter\(1);
\c1|ALT_INV_xso\(5) <= NOT \c1|xso\(5);
\c1|ALT_INV_xso\(4) <= NOT \c1|xso\(4);
\c1|ALT_INV_xso\(3) <= NOT \c1|xso\(3);
\c1|ALT_INV_xso\(2) <= NOT \c1|xso\(2);
\c1|ALT_INV_xso\(1) <= NOT \c1|xso\(1);
\c1|ALT_INV_xso\(0) <= NOT \c1|xso\(0);
\VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\ <= NOT \VGA|controller|controller_translator|Add1~13_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\ <= NOT \VGA|controller|controller_translator|Add1~9_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\ <= NOT \VGA|controller|controller_translator|Add1~5_sumout\;
\VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\ <= NOT \VGA|controller|controller_translator|Add1~1_sumout\;
\c1|ALT_INV_yso\(6) <= NOT \c1|yso\(6);
\c1|ALT_INV_yso\(5) <= NOT \c1|yso\(5);
\c1|ALT_INV_yso\(7) <= NOT \c1|yso\(7);
\VGA|user_input_translator|ALT_INV_Add1~13_sumout\ <= NOT \VGA|user_input_translator|Add1~13_sumout\;
\VGA|user_input_translator|ALT_INV_Add1~9_sumout\ <= NOT \VGA|user_input_translator|Add1~9_sumout\;
\c1|ALT_INV_xso\(6) <= NOT \c1|xso\(6);
\c1|ALT_INV_xso\(7) <= NOT \c1|xso\(7);
\c1|ALT_INV_xso\(8) <= NOT \c1|xso\(8);
\VGA|user_input_translator|ALT_INV_Add1~5_sumout\ <= NOT \VGA|user_input_translator|Add1~5_sumout\;
\VGA|user_input_translator|ALT_INV_Add1~1_sumout\ <= NOT \VGA|user_input_translator|Add1~1_sumout\;
\AA|ALT_INV_last_data_received\(4) <= NOT \AA|last_data_received\(4);
\AA|ALT_INV_last_data_received\(6) <= NOT \AA|last_data_received\(6);
\AA|ALT_INV_last_data_received\(5) <= NOT \AA|last_data_received\(5);
\AA|ALT_INV_last_data_received\(7) <= NOT \AA|last_data_received\(7);
\AA|ALT_INV_last_data_received\(2) <= NOT \AA|last_data_received\(2);
\AA|ALT_INV_last_data_received\(0) <= NOT \AA|last_data_received\(0);
\AA|ALT_INV_last_data_received\(1) <= NOT \AA|last_data_received\(1);
\AA|ALT_INV_last_data_received\(3) <= NOT \AA|last_data_received\(3);
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a21~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a18~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a15~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a12~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a9~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a24~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a27~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a22~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a19~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a16~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a13~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a10~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a25~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a29\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a29\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a28~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a23~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a20~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a17~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a14~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a11~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\;
\VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a26~portbdataout\ <= NOT \VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\;

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_HS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_VS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|controller|VGA_BLANK~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X24_Y81_N2
\VGA_R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(8));

-- Location: IOOBUF_X22_Y81_N36
\VGA_R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(9));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X12_Y81_N53
\VGA_G[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(8));

-- Location: IOOBUF_X4_Y81_N53
\VGA_G[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(9));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X40_Y81_N2
\VGA_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(8));

-- Location: IOOBUF_X20_Y81_N53
\VGA_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(9));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|f1|Q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i7|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data|i8|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|one|HEX2[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|two|HEX2[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X6_Y0_N2
\PS2_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => PS2_CLK);

-- Location: IOOBUF_X6_Y0_N19
\PS2_DAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AA|PS2|PS2_Command_Out|PS2_DAT~1_combout\,
	oe => \AA|PS2|PS2_Command_Out|PS2_DAT~2_combout\,
	devoe => ww_devoe,
	o => PS2_DAT);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X40_Y3_N0
\AA|PS2|PS2_Command_Out|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~37_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(1) ) + ( VCC ) + ( !VCC ))
-- \AA|PS2|PS2_Command_Out|Add0~38\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(1),
	cin => GND,
	sumout => \AA|PS2|PS2_Command_Out|Add0~37_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~38\);

-- Location: LABCELL_X40_Y3_N18
\AA|PS2|PS2_Command_Out|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~21_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(7) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~34\ ))
-- \AA|PS2|PS2_Command_Out|Add0~22\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(7) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(7),
	cin => \AA|PS2|PS2_Command_Out|Add0~34\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~21_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~22\);

-- Location: LABCELL_X40_Y3_N21
\AA|PS2|PS2_Command_Out|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~29_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(8) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~22\ ))
-- \AA|PS2|PS2_Command_Out|Add0~30\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(8) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(8),
	cin => \AA|PS2|PS2_Command_Out|Add0~22\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~29_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~30\);

-- Location: FF_X40_Y3_N23
\AA|PS2|PS2_Command_Out|command_initiate_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~29_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(8));

-- Location: LABCELL_X40_Y3_N24
\AA|PS2|PS2_Command_Out|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~9_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(9) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~30\ ))
-- \AA|PS2|PS2_Command_Out|Add0~10\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(9) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(9),
	cin => \AA|PS2|PS2_Command_Out|Add0~30\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~9_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~10\);

-- Location: FF_X40_Y3_N26
\AA|PS2|PS2_Command_Out|command_initiate_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~9_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(9));

-- Location: LABCELL_X40_Y3_N27
\AA|PS2|PS2_Command_Out|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~49_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(10) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~10\ ))
-- \AA|PS2|PS2_Command_Out|Add0~50\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(10) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(10),
	cin => \AA|PS2|PS2_Command_Out|Add0~10\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~49_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~50\);

-- Location: FF_X40_Y3_N28
\AA|PS2|PS2_Command_Out|command_initiate_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~49_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(10));

-- Location: LABCELL_X40_Y3_N30
\AA|PS2|PS2_Command_Out|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~45_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(11) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~50\ ))
-- \AA|PS2|PS2_Command_Out|Add0~46\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(11) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(11),
	cin => \AA|PS2|PS2_Command_Out|Add0~50\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~45_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~46\);

-- Location: FF_X40_Y3_N31
\AA|PS2|PS2_Command_Out|command_initiate_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~45_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(11));

-- Location: LABCELL_X40_Y3_N33
\AA|PS2|PS2_Command_Out|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~41_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(12) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~46\ ))
-- \AA|PS2|PS2_Command_Out|Add0~42\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(12) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(12),
	cin => \AA|PS2|PS2_Command_Out|Add0~46\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~41_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~42\);

-- Location: FF_X40_Y3_N35
\AA|PS2|PS2_Command_Out|command_initiate_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~41_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(12));

-- Location: LABCELL_X40_Y3_N36
\AA|PS2|PS2_Command_Out|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~1_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(13) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(13),
	cin => \AA|PS2|PS2_Command_Out|Add0~42\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~1_sumout\);

-- Location: FF_X40_Y3_N38
\AA|PS2|PS2_Command_Out|command_initiate_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~1_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(13));

-- Location: LABCELL_X40_Y3_N54
\AA|PS2|PS2_Command_Out|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal2~1_combout\ = ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(12) & ( (\AA|PS2|PS2_Command_Out|command_initiate_counter\(13) & (\AA|PS2|PS2_Command_Out|command_initiate_counter\(10) & 
-- (!\AA|PS2|PS2_Command_Out|command_initiate_counter\(11) & !\AA|PS2|PS2_Command_Out|command_initiate_counter\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(13),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(10),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(11),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(1),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(12),
	combout => \AA|PS2|PS2_Command_Out|Equal2~1_combout\);

-- Location: LABCELL_X42_Y3_N6
\AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\ = ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( \AA|PS2|PS2_Command_Out|Equal2~1_combout\ & ( (!\AA|PS2|PS2_Command_Out|Equal2~0_combout\) # 
-- ((!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) # ((!\AA|PS2|PS2_Command_Out|command_initiate_counter\(2)) # (!\KEY[0]~input_o\))) ) ) ) # ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( 
-- \AA|PS2|PS2_Command_Out|Equal2~1_combout\ ) ) # ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( !\AA|PS2|PS2_Command_Out|Equal2~1_combout\ ) ) # ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( 
-- !\AA|PS2|PS2_Command_Out|Equal2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~0_combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(2),
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(9),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~1_combout\,
	combout => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\);

-- Location: FF_X40_Y3_N2
\AA|PS2|PS2_Command_Out|command_initiate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~37_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(1));

-- Location: LABCELL_X40_Y3_N3
\AA|PS2|PS2_Command_Out|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~5_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(2) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~38\ ))
-- \AA|PS2|PS2_Command_Out|Add0~6\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(2) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(2),
	cin => \AA|PS2|PS2_Command_Out|Add0~38\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~5_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~6\);

-- Location: FF_X40_Y3_N5
\AA|PS2|PS2_Command_Out|command_initiate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~5_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(2));

-- Location: LABCELL_X40_Y3_N6
\AA|PS2|PS2_Command_Out|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~25_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(3) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~6\ ))
-- \AA|PS2|PS2_Command_Out|Add0~26\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(3) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(3),
	cin => \AA|PS2|PS2_Command_Out|Add0~6\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~25_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~26\);

-- Location: FF_X40_Y3_N7
\AA|PS2|PS2_Command_Out|command_initiate_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~25_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(3));

-- Location: LABCELL_X40_Y3_N9
\AA|PS2|PS2_Command_Out|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~17_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(4) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~26\ ))
-- \AA|PS2|PS2_Command_Out|Add0~18\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(4) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(4),
	cin => \AA|PS2|PS2_Command_Out|Add0~26\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~17_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~18\);

-- Location: FF_X40_Y3_N11
\AA|PS2|PS2_Command_Out|command_initiate_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~17_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(4));

-- Location: LABCELL_X40_Y3_N12
\AA|PS2|PS2_Command_Out|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~13_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(5) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~18\ ))
-- \AA|PS2|PS2_Command_Out|Add0~14\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(5) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(5),
	cin => \AA|PS2|PS2_Command_Out|Add0~18\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~13_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~14\);

-- Location: FF_X40_Y3_N14
\AA|PS2|PS2_Command_Out|command_initiate_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~13_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(5));

-- Location: LABCELL_X40_Y3_N15
\AA|PS2|PS2_Command_Out|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add0~33_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(6) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~14\ ))
-- \AA|PS2|PS2_Command_Out|Add0~34\ = CARRY(( \AA|PS2|PS2_Command_Out|command_initiate_counter\(6) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(6),
	cin => \AA|PS2|PS2_Command_Out|Add0~14\,
	sumout => \AA|PS2|PS2_Command_Out|Add0~33_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add0~34\);

-- Location: FF_X40_Y3_N17
\AA|PS2|PS2_Command_Out|command_initiate_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~33_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(6));

-- Location: FF_X40_Y3_N20
\AA|PS2|PS2_Command_Out|command_initiate_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add0~21_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\,
	ena => \AA|PS2|PS2_Command_Out|command_initiate_counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|command_initiate_counter\(7));

-- Location: LABCELL_X40_Y3_N48
\AA|PS2|PS2_Command_Out|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal2~0_combout\ = ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(8) & ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(5) & ( (!\AA|PS2|PS2_Command_Out|command_initiate_counter\(7) & 
-- (\AA|PS2|PS2_Command_Out|command_initiate_counter\(4) & (!\AA|PS2|PS2_Command_Out|command_initiate_counter\(3) & \AA|PS2|PS2_Command_Out|command_initiate_counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(7),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(4),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(3),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(6),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(8),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(5),
	combout => \AA|PS2|PS2_Command_Out|Equal2~0_combout\);

-- Location: LABCELL_X40_Y3_N42
\AA|PS2|PS2_Command_Out|s_ps2_transmitter~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\ = ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(2) & ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) 
-- # ((!\KEY[0]~input_o\) # ((\AA|PS2|PS2_Command_Out|Equal2~0_combout\ & \AA|PS2|PS2_Command_Out|Equal2~1_combout\))) ) ) ) # ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(2) & ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( 
-- (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) # (!\KEY[0]~input_o\) ) ) ) # ( \AA|PS2|PS2_Command_Out|command_initiate_counter\(2) & ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( 
-- (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) # (!\KEY[0]~input_o\) ) ) ) # ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(2) & ( !\AA|PS2|PS2_Command_Out|command_initiate_counter\(9) & ( 
-- (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) # (!\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~0_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~1_combout\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(2),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(9),
	combout => \AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\);

-- Location: MLABCELL_X39_Y3_N51
\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~0_combout\ = !\AA|PS2|PS2_Command_Out|s_ps2_transmitter~13_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter~13_combout\,
	combout => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~0_combout\);

-- Location: FF_X39_Y3_N53
\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\);

-- Location: IOIBUF_X6_Y0_N1
\PS2_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: LABCELL_X42_Y3_N18
\AA|PS2|ps2_clk_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|ps2_clk_reg~0_combout\ = ( \PS2_CLK~input_o\ ) # ( !\PS2_CLK~input_o\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_PS2_CLK~input_o\,
	combout => \AA|PS2|ps2_clk_reg~0_combout\);

-- Location: FF_X42_Y3_N20
\AA|PS2|ps2_clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|ps2_clk_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|ps2_clk_reg~q\);

-- Location: LABCELL_X45_Y3_N18
\AA|PS2|last_ps2_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|last_ps2_clk~0_combout\ = ( \AA|PS2|ps2_clk_reg~q\ ) # ( !\AA|PS2|ps2_clk_reg~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|last_ps2_clk~0_combout\);

-- Location: FF_X45_Y3_N20
\AA|PS2|last_ps2_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|last_ps2_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|last_ps2_clk~q\);

-- Location: LABCELL_X42_Y3_N45
\AA|PS2|PS2_Command_Out|cur_bit~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|cur_bit~4_combout\ = ( !\AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|last_ps2_clk~q\ & (\KEY[0]~input_o\ & (\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & !\AA|PS2|PS2_Command_Out|cur_bit\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(0),
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|cur_bit~4_combout\);

-- Location: LABCELL_X42_Y3_N57
\AA|PS2|PS2_Command_Out|cur_bit[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( (!\KEY[0]~input_o\) # ((!\AA|PS2|ps2_clk_reg~q\ & \AA|PS2|last_ps2_clk~q\)) ) ) # ( 
-- !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datad => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	combout => \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\);

-- Location: FF_X42_Y3_N47
\AA|PS2|PS2_Command_Out|cur_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|cur_bit~4_combout\,
	ena => \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|cur_bit\(0));

-- Location: LABCELL_X42_Y3_N30
\AA|PS2|PS2_Command_Out|cur_bit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|cur_bit~3_combout\ = ( \AA|PS2|PS2_Command_Out|cur_bit\(1) & ( !\AA|PS2|ps2_clk_reg~q\ & ( (\KEY[0]~input_o\ & (\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & (\AA|PS2|last_ps2_clk~q\ & 
-- !\AA|PS2|PS2_Command_Out|cur_bit\(0)))) ) ) ) # ( !\AA|PS2|PS2_Command_Out|cur_bit\(1) & ( !\AA|PS2|ps2_clk_reg~q\ & ( (\KEY[0]~input_o\ & (\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & (\AA|PS2|last_ps2_clk~q\ & 
-- \AA|PS2|PS2_Command_Out|cur_bit\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	datac => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(0),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(1),
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|cur_bit~3_combout\);

-- Location: FF_X42_Y3_N32
\AA|PS2|PS2_Command_Out|cur_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|cur_bit~3_combout\,
	ena => \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|cur_bit\(1));

-- Location: LABCELL_X42_Y3_N39
\AA|PS2|PS2_Command_Out|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add3~1_combout\ = ( \AA|PS2|PS2_Command_Out|cur_bit\(1) & ( !\AA|PS2|PS2_Command_Out|cur_bit\(2) $ (!\AA|PS2|PS2_Command_Out|cur_bit\(0)) ) ) # ( !\AA|PS2|PS2_Command_Out|cur_bit\(1) & ( \AA|PS2|PS2_Command_Out|cur_bit\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(2),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(0),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(1),
	combout => \AA|PS2|PS2_Command_Out|Add3~1_combout\);

-- Location: LABCELL_X42_Y3_N27
\AA|PS2|PS2_Command_Out|cur_bit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|cur_bit~2_combout\ = ( !\AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|last_ps2_clk~q\ & (\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & (\AA|PS2|PS2_Command_Out|Add3~1_combout\ & \KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Add3~1_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|cur_bit~2_combout\);

-- Location: FF_X42_Y3_N29
\AA|PS2|PS2_Command_Out|cur_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|cur_bit~2_combout\,
	ena => \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|cur_bit\(2));

-- Location: LABCELL_X42_Y3_N12
\AA|PS2|PS2_Command_Out|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|always1~0_combout\ = ( \AA|PS2|last_ps2_clk~q\ & ( !\AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|PS2_Command_Out|cur_bit\(3) & (!\AA|PS2|PS2_Command_Out|cur_bit\(0) & (!\AA|PS2|PS2_Command_Out|cur_bit\(2) & 
-- !\AA|PS2|PS2_Command_Out|cur_bit\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(3),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(0),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(2),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(1),
	datae => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|always1~0_combout\);

-- Location: LABCELL_X46_Y3_N0
\AA|PS2|PS2_Command_Out|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~41_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(1) ) + ( VCC ) + ( !VCC ))
-- \AA|PS2|PS2_Command_Out|Add2~42\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(1),
	cin => GND,
	sumout => \AA|PS2|PS2_Command_Out|Add2~41_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~42\);

-- Location: LABCELL_X43_Y3_N12
\AA|PS2|ps2_clk_posedge\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|ps2_clk_posedge~combout\ = (!\AA|PS2|last_ps2_clk~q\ & \AA|PS2|ps2_clk_reg~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datac => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|ps2_clk_posedge~combout\);

-- Location: LABCELL_X45_Y3_N0
\AA|PS2|PS2_Command_Out|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector4~0_combout\ = ( \AA|PS2|ps2_clk_reg~q\ & ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ ) ) # ( !\AA|PS2|ps2_clk_reg~q\ & ( (!\AA|PS2|last_ps2_clk~q\ & 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|Selector4~0_combout\);

-- Location: LABCELL_X46_Y3_N18
\AA|PS2|PS2_Command_Out|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~57_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(7) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~54\ ))
-- \AA|PS2|PS2_Command_Out|Add2~58\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(7) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(7),
	cin => \AA|PS2|PS2_Command_Out|Add2~54\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~57_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~58\);

-- Location: LABCELL_X46_Y3_N21
\AA|PS2|PS2_Command_Out|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~61_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(8) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~58\ ))
-- \AA|PS2|PS2_Command_Out|Add2~62\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(8) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(8),
	cin => \AA|PS2|PS2_Command_Out|Add2~58\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~61_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~62\);

-- Location: LABCELL_X45_Y3_N9
\AA|PS2|PS2_Command_Out|always5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|always5~0_combout\ = ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ & ( (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & 
-- !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\,
	combout => \AA|PS2|PS2_Command_Out|always5~0_combout\);

-- Location: LABCELL_X46_Y3_N33
\AA|PS2|PS2_Command_Out|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~9_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(12) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~6\ ))
-- \AA|PS2|PS2_Command_Out|Add2~10\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(12) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(12),
	cin => \AA|PS2|PS2_Command_Out|Add2~6\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~9_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~10\);

-- Location: LABCELL_X46_Y3_N36
\AA|PS2|PS2_Command_Out|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~13_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(13) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~10\ ))
-- \AA|PS2|PS2_Command_Out|Add2~14\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(13) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(13),
	cin => \AA|PS2|PS2_Command_Out|Add2~10\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~13_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~14\);

-- Location: FF_X46_Y3_N38
\AA|PS2|PS2_Command_Out|transfer_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~13_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(13));

-- Location: LABCELL_X46_Y3_N39
\AA|PS2|PS2_Command_Out|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~17_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(14) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~14\ ))
-- \AA|PS2|PS2_Command_Out|Add2~18\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(14) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(14),
	cin => \AA|PS2|PS2_Command_Out|Add2~14\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~17_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~18\);

-- Location: FF_X46_Y3_N40
\AA|PS2|PS2_Command_Out|transfer_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~17_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(14));

-- Location: LABCELL_X46_Y3_N42
\AA|PS2|PS2_Command_Out|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~21_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(15) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~18\ ))
-- \AA|PS2|PS2_Command_Out|Add2~22\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(15) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(15),
	cin => \AA|PS2|PS2_Command_Out|Add2~18\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~21_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~22\);

-- Location: FF_X46_Y3_N43
\AA|PS2|PS2_Command_Out|transfer_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~21_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(15));

-- Location: LABCELL_X46_Y3_N45
\AA|PS2|PS2_Command_Out|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~29_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(16) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~22\ ))
-- \AA|PS2|PS2_Command_Out|Add2~30\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(16) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(16),
	cin => \AA|PS2|PS2_Command_Out|Add2~22\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~29_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~30\);

-- Location: FF_X46_Y3_N46
\AA|PS2|PS2_Command_Out|transfer_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~29_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(16));

-- Location: LABCELL_X46_Y3_N48
\AA|PS2|PS2_Command_Out|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~33_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(17) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(17),
	cin => \AA|PS2|PS2_Command_Out|Add2~30\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~33_sumout\);

-- Location: FF_X46_Y3_N50
\AA|PS2|PS2_Command_Out|transfer_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~33_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(17));

-- Location: LABCELL_X45_Y3_N42
\AA|PS2|PS2_Command_Out|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal3~1_combout\ = ( !\AA|PS2|PS2_Command_Out|transfer_counter\(3) & ( !\AA|PS2|PS2_Command_Out|transfer_counter\(15) & ( (!\AA|PS2|PS2_Command_Out|transfer_counter\(1) & (\AA|PS2|PS2_Command_Out|transfer_counter\(17) & 
-- (!\AA|PS2|PS2_Command_Out|transfer_counter\(2) & \AA|PS2|PS2_Command_Out|transfer_counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(1),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(17),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(2),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(16),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(3),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(15),
	combout => \AA|PS2|PS2_Command_Out|Equal3~1_combout\);

-- Location: LABCELL_X45_Y3_N6
\AA|PS2|PS2_Command_Out|transfer_counter[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\ = ( \AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( (!\KEY[0]~input_o\) # (((!\AA|PS2|PS2_Command_Out|Equal3~0_combout\) # (!\AA|PS2|PS2_Command_Out|Equal3~1_combout\)) # 
-- (\AA|PS2|PS2_Command_Out|always5~0_combout\)) ) ) # ( !\AA|PS2|PS2_Command_Out|Equal3~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_always5~0_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~0_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~1_combout\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~2_combout\,
	combout => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\);

-- Location: FF_X46_Y3_N23
\AA|PS2|PS2_Command_Out|transfer_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~61_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(8));

-- Location: LABCELL_X46_Y3_N24
\AA|PS2|PS2_Command_Out|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~65_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(9) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~62\ ))
-- \AA|PS2|PS2_Command_Out|Add2~66\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(9) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(9),
	cin => \AA|PS2|PS2_Command_Out|Add2~62\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~65_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~66\);

-- Location: FF_X46_Y3_N26
\AA|PS2|PS2_Command_Out|transfer_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~65_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(9));

-- Location: LABCELL_X46_Y3_N27
\AA|PS2|PS2_Command_Out|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~1_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(10) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~66\ ))
-- \AA|PS2|PS2_Command_Out|Add2~2\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(10) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(10),
	cin => \AA|PS2|PS2_Command_Out|Add2~66\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~1_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~2\);

-- Location: FF_X46_Y3_N28
\AA|PS2|PS2_Command_Out|transfer_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~1_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(10));

-- Location: LABCELL_X46_Y3_N30
\AA|PS2|PS2_Command_Out|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~5_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(11) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~2\ ))
-- \AA|PS2|PS2_Command_Out|Add2~6\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(11) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(11),
	cin => \AA|PS2|PS2_Command_Out|Add2~2\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~5_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~6\);

-- Location: FF_X46_Y3_N31
\AA|PS2|PS2_Command_Out|transfer_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~5_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(11));

-- Location: FF_X46_Y3_N35
\AA|PS2|PS2_Command_Out|transfer_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~9_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(12));

-- Location: LABCELL_X45_Y3_N3
\AA|PS2|PS2_Command_Out|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal3~0_combout\ = ( \AA|PS2|PS2_Command_Out|transfer_counter\(11) & ( (!\AA|PS2|PS2_Command_Out|transfer_counter\(12) & (!\AA|PS2|PS2_Command_Out|transfer_counter\(13) & (\AA|PS2|PS2_Command_Out|transfer_counter\(10) & 
-- !\AA|PS2|PS2_Command_Out|transfer_counter\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(12),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(13),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(10),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(14),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(11),
	combout => \AA|PS2|PS2_Command_Out|Equal3~0_combout\);

-- Location: LABCELL_X45_Y3_N54
\AA|PS2|PS2_Command_Out|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector4~1_combout\ = ( \AA|PS2|PS2_Command_Out|Equal3~1_combout\ & ( \AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( (!\AA|PS2|PS2_Command_Out|Selector4~0_combout\ & (\AA|PS2|PS2_Command_Out|always1~0_combout\ & 
-- ((\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\)))) # (\AA|PS2|PS2_Command_Out|Selector4~0_combout\ & ((!\AA|PS2|PS2_Command_Out|Equal3~0_combout\) # ((\AA|PS2|PS2_Command_Out|always1~0_combout\ & 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\)))) ) ) ) # ( !\AA|PS2|PS2_Command_Out|Equal3~1_combout\ & ( \AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( ((\AA|PS2|PS2_Command_Out|always1~0_combout\ & 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\)) # (\AA|PS2|PS2_Command_Out|Selector4~0_combout\) ) ) ) # ( \AA|PS2|PS2_Command_Out|Equal3~1_combout\ & ( !\AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( 
-- ((\AA|PS2|PS2_Command_Out|always1~0_combout\ & \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\)) # (\AA|PS2|PS2_Command_Out|Selector4~0_combout\) ) ) ) # ( !\AA|PS2|PS2_Command_Out|Equal3~1_combout\ & ( 
-- !\AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( ((\AA|PS2|PS2_Command_Out|always1~0_combout\ & \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\)) # (\AA|PS2|PS2_Command_Out|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011101010101011101110101000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_Selector4~0_combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_always1~0_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~0_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~1_combout\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~2_combout\,
	combout => \AA|PS2|PS2_Command_Out|Selector4~1_combout\);

-- Location: FF_X45_Y3_N56
\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Selector4~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\);

-- Location: LABCELL_X45_Y3_N39
\AA|PS2|PS2_Command_Out|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector5~0_combout\ = ( !\AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|last_ps2_clk~q\ & \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|Selector5~0_combout\);

-- Location: LABCELL_X45_Y3_N48
\AA|PS2|PS2_Command_Out|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector5~1_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ & ( \AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( ((!\AA|PS2|ps2_clk_posedge~combout\ & ((!\AA|PS2|PS2_Command_Out|Equal3~0_combout\) 
-- # (!\AA|PS2|PS2_Command_Out|Equal3~1_combout\)))) # (\AA|PS2|PS2_Command_Out|Selector5~0_combout\) ) ) ) # ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ & ( \AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( 
-- \AA|PS2|PS2_Command_Out|Selector5~0_combout\ ) ) ) # ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ & ( !\AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( (!\AA|PS2|ps2_clk_posedge~combout\) # 
-- (\AA|PS2|PS2_Command_Out|Selector5~0_combout\) ) ) ) # ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\ & ( !\AA|PS2|PS2_Command_Out|Equal3~2_combout\ & ( \AA|PS2|PS2_Command_Out|Selector5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101110111011101100110011001100111011101110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_ps2_clk_posedge~combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_Selector5~0_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~0_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~1_combout\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~2_combout\,
	combout => \AA|PS2|PS2_Command_Out|Selector5~1_combout\);

-- Location: FF_X45_Y3_N50
\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Selector5~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\);

-- Location: LABCELL_X45_Y3_N24
\AA|PS2|PS2_Command_Out|transfer_counter[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ & ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( !\KEY[0]~input_o\ ) ) ) # ( 
-- !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ & ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( !\KEY[0]~input_o\ ) ) ) # ( 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ & ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( !\KEY[0]~input_o\ ) ) ) # ( 
-- !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\ & ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\) # (!\KEY[0]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_5_RECEIVE_ACK_BIT~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_4_TRANSMIT_STOP_BIT~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	combout => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\);

-- Location: FF_X46_Y3_N2
\AA|PS2|PS2_Command_Out|transfer_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~41_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(1));

-- Location: LABCELL_X46_Y3_N3
\AA|PS2|PS2_Command_Out|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~37_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(2) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~42\ ))
-- \AA|PS2|PS2_Command_Out|Add2~38\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(2) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(2),
	cin => \AA|PS2|PS2_Command_Out|Add2~42\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~37_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~38\);

-- Location: FF_X46_Y3_N5
\AA|PS2|PS2_Command_Out|transfer_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~37_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(2));

-- Location: LABCELL_X46_Y3_N6
\AA|PS2|PS2_Command_Out|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~25_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(3) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~38\ ))
-- \AA|PS2|PS2_Command_Out|Add2~26\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(3) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(3),
	cin => \AA|PS2|PS2_Command_Out|Add2~38\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~25_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~26\);

-- Location: FF_X46_Y3_N8
\AA|PS2|PS2_Command_Out|transfer_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~25_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(3));

-- Location: LABCELL_X46_Y3_N9
\AA|PS2|PS2_Command_Out|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~45_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(4) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~26\ ))
-- \AA|PS2|PS2_Command_Out|Add2~46\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(4) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(4),
	cin => \AA|PS2|PS2_Command_Out|Add2~26\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~45_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~46\);

-- Location: FF_X46_Y3_N11
\AA|PS2|PS2_Command_Out|transfer_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~45_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(4));

-- Location: LABCELL_X46_Y3_N12
\AA|PS2|PS2_Command_Out|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~49_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(5) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~46\ ))
-- \AA|PS2|PS2_Command_Out|Add2~50\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(5) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(5),
	cin => \AA|PS2|PS2_Command_Out|Add2~46\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~49_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~50\);

-- Location: FF_X46_Y3_N14
\AA|PS2|PS2_Command_Out|transfer_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~49_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(5));

-- Location: LABCELL_X46_Y3_N15
\AA|PS2|PS2_Command_Out|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add2~53_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|transfer_counter\(6) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~50\ ))
-- \AA|PS2|PS2_Command_Out|Add2~54\ = CARRY(( \AA|PS2|PS2_Command_Out|transfer_counter\(6) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(6),
	cin => \AA|PS2|PS2_Command_Out|Add2~50\,
	sumout => \AA|PS2|PS2_Command_Out|Add2~53_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add2~54\);

-- Location: FF_X46_Y3_N17
\AA|PS2|PS2_Command_Out|transfer_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~53_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(6));

-- Location: FF_X46_Y3_N20
\AA|PS2|PS2_Command_Out|transfer_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add2~57_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|transfer_counter[15]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|transfer_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|transfer_counter\(7));

-- Location: LABCELL_X46_Y3_N54
\AA|PS2|PS2_Command_Out|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal3~2_combout\ = ( \AA|PS2|PS2_Command_Out|transfer_counter\(8) & ( !\AA|PS2|PS2_Command_Out|transfer_counter\(4) & ( (!\AA|PS2|PS2_Command_Out|transfer_counter\(7) & (!\AA|PS2|PS2_Command_Out|transfer_counter\(5) & 
-- (!\AA|PS2|PS2_Command_Out|transfer_counter\(9) & \AA|PS2|PS2_Command_Out|transfer_counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(7),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(5),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(9),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(6),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(8),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_transfer_counter\(4),
	combout => \AA|PS2|PS2_Command_Out|Equal3~2_combout\);

-- Location: LABCELL_X42_Y3_N54
\AA|PS2|PS2_Command_Out|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal2~2_combout\ = ( \AA|PS2|PS2_Command_Out|Equal2~0_combout\ & ( (\AA|PS2|PS2_Command_Out|command_initiate_counter\(2) & (\AA|PS2|PS2_Command_Out|Equal2~1_combout\ & \AA|PS2|PS2_Command_Out|command_initiate_counter\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(2),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~1_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(9),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~0_combout\,
	combout => \AA|PS2|PS2_Command_Out|Equal2~2_combout\);

-- Location: LABCELL_X46_Y2_N0
\AA|PS2|PS2_Command_Out|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~13_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(1) ) + ( VCC ) + ( !VCC ))
-- \AA|PS2|PS2_Command_Out|Add1~14\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(1),
	cin => GND,
	sumout => \AA|PS2|PS2_Command_Out|Add1~13_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~14\);

-- Location: LABCELL_X46_Y2_N6
\AA|PS2|PS2_Command_Out|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~9_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(3) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~18\ ))
-- \AA|PS2|PS2_Command_Out|Add1~10\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(3) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(3),
	cin => \AA|PS2|PS2_Command_Out|Add1~18\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~9_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~10\);

-- Location: LABCELL_X46_Y2_N9
\AA|PS2|PS2_Command_Out|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~21_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(4) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~10\ ))
-- \AA|PS2|PS2_Command_Out|Add1~22\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(4) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(4),
	cin => \AA|PS2|PS2_Command_Out|Add1~10\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~21_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~22\);

-- Location: LABCELL_X46_Y2_N18
\AA|PS2|PS2_Command_Out|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~1_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(7) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~30\ ))
-- \AA|PS2|PS2_Command_Out|Add1~2\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(7) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(7),
	cin => \AA|PS2|PS2_Command_Out|Add1~30\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~1_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~2\);

-- Location: LABCELL_X46_Y2_N21
\AA|PS2|PS2_Command_Out|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~5_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(8) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~2\ ))
-- \AA|PS2|PS2_Command_Out|Add1~6\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(8) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(8),
	cin => \AA|PS2|PS2_Command_Out|Add1~2\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~5_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~6\);

-- Location: FF_X46_Y2_N22
\AA|PS2|PS2_Command_Out|waiting_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~5_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(8));

-- Location: LABCELL_X46_Y2_N24
\AA|PS2|PS2_Command_Out|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~33_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(9) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~6\ ))
-- \AA|PS2|PS2_Command_Out|Add1~34\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(9) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(9),
	cin => \AA|PS2|PS2_Command_Out|Add1~6\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~33_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~34\);

-- Location: FF_X46_Y2_N26
\AA|PS2|PS2_Command_Out|waiting_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~33_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(9));

-- Location: LABCELL_X46_Y2_N27
\AA|PS2|PS2_Command_Out|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~41_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(10) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~34\ ))
-- \AA|PS2|PS2_Command_Out|Add1~42\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(10) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(10),
	cin => \AA|PS2|PS2_Command_Out|Add1~34\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~41_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~42\);

-- Location: FF_X46_Y2_N29
\AA|PS2|PS2_Command_Out|waiting_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~41_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(10));

-- Location: LABCELL_X46_Y2_N30
\AA|PS2|PS2_Command_Out|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~37_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(11) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~42\ ))
-- \AA|PS2|PS2_Command_Out|Add1~38\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(11) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(11),
	cin => \AA|PS2|PS2_Command_Out|Add1~42\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~37_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~38\);

-- Location: FF_X46_Y2_N32
\AA|PS2|PS2_Command_Out|waiting_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~37_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(11));

-- Location: LABCELL_X46_Y2_N33
\AA|PS2|PS2_Command_Out|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~45_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(12) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~38\ ))
-- \AA|PS2|PS2_Command_Out|Add1~46\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(12) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(12),
	cin => \AA|PS2|PS2_Command_Out|Add1~38\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~45_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~46\);

-- Location: FF_X46_Y2_N35
\AA|PS2|PS2_Command_Out|waiting_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~45_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(12));

-- Location: LABCELL_X46_Y2_N36
\AA|PS2|PS2_Command_Out|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~49_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(13) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~46\ ))
-- \AA|PS2|PS2_Command_Out|Add1~50\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(13) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(13),
	cin => \AA|PS2|PS2_Command_Out|Add1~46\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~49_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~50\);

-- Location: FF_X46_Y2_N38
\AA|PS2|PS2_Command_Out|waiting_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~49_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(13));

-- Location: LABCELL_X46_Y2_N39
\AA|PS2|PS2_Command_Out|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~53_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(14) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~50\ ))
-- \AA|PS2|PS2_Command_Out|Add1~54\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(14) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(14),
	cin => \AA|PS2|PS2_Command_Out|Add1~50\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~53_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~54\);

-- Location: FF_X46_Y2_N40
\AA|PS2|PS2_Command_Out|waiting_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~53_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(14));

-- Location: LABCELL_X45_Y2_N12
\AA|PS2|PS2_Command_Out|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal0~2_combout\ = ( !\AA|PS2|PS2_Command_Out|waiting_counter\(10) & ( \AA|PS2|PS2_Command_Out|waiting_counter\(9) & ( (!\AA|PS2|PS2_Command_Out|waiting_counter\(12) & (\AA|PS2|PS2_Command_Out|waiting_counter\(13) & 
-- (!\AA|PS2|PS2_Command_Out|waiting_counter\(11) & \AA|PS2|PS2_Command_Out|waiting_counter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(12),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(13),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(11),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(14),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(10),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(9),
	combout => \AA|PS2|PS2_Command_Out|Equal0~2_combout\);

-- Location: LABCELL_X46_Y2_N42
\AA|PS2|PS2_Command_Out|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~57_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(15) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~54\ ))
-- \AA|PS2|PS2_Command_Out|Add1~58\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(15) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(15),
	cin => \AA|PS2|PS2_Command_Out|Add1~54\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~57_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~58\);

-- Location: FF_X46_Y2_N44
\AA|PS2|PS2_Command_Out|waiting_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~57_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(15));

-- Location: LABCELL_X46_Y2_N45
\AA|PS2|PS2_Command_Out|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~61_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(16) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~58\ ))
-- \AA|PS2|PS2_Command_Out|Add1~62\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(16) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(16),
	cin => \AA|PS2|PS2_Command_Out|Add1~58\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~61_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~62\);

-- Location: FF_X46_Y2_N47
\AA|PS2|PS2_Command_Out|waiting_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~61_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(16));

-- Location: LABCELL_X46_Y2_N48
\AA|PS2|PS2_Command_Out|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~65_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(17) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~62\ ))
-- \AA|PS2|PS2_Command_Out|Add1~66\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(17) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(17),
	cin => \AA|PS2|PS2_Command_Out|Add1~62\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~65_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~66\);

-- Location: FF_X46_Y2_N49
\AA|PS2|PS2_Command_Out|waiting_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~65_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(17));

-- Location: LABCELL_X46_Y2_N51
\AA|PS2|PS2_Command_Out|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~69_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(18) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~66\ ))
-- \AA|PS2|PS2_Command_Out|Add1~70\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(18) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(18),
	cin => \AA|PS2|PS2_Command_Out|Add1~66\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~69_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~70\);

-- Location: FF_X46_Y2_N53
\AA|PS2|PS2_Command_Out|waiting_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~69_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(18));

-- Location: LABCELL_X46_Y2_N54
\AA|PS2|PS2_Command_Out|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~73_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(19) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~70\ ))
-- \AA|PS2|PS2_Command_Out|Add1~74\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(19) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(19),
	cin => \AA|PS2|PS2_Command_Out|Add1~70\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~73_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~74\);

-- Location: FF_X46_Y2_N56
\AA|PS2|PS2_Command_Out|waiting_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~73_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(19));

-- Location: LABCELL_X46_Y2_N57
\AA|PS2|PS2_Command_Out|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~77_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(20) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(20),
	cin => \AA|PS2|PS2_Command_Out|Add1~74\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~77_sumout\);

-- Location: FF_X46_Y2_N59
\AA|PS2|PS2_Command_Out|waiting_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~77_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(20));

-- Location: LABCELL_X45_Y2_N30
\AA|PS2|PS2_Command_Out|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal0~3_combout\ = ( !\AA|PS2|PS2_Command_Out|waiting_counter\(19) & ( !\AA|PS2|PS2_Command_Out|waiting_counter\(16) & ( (\AA|PS2|PS2_Command_Out|waiting_counter\(17) & (\AA|PS2|PS2_Command_Out|waiting_counter\(20) & 
-- (\AA|PS2|PS2_Command_Out|waiting_counter\(18) & \AA|PS2|PS2_Command_Out|waiting_counter\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(17),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(20),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(18),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(15),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(19),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(16),
	combout => \AA|PS2|PS2_Command_Out|Equal0~3_combout\);

-- Location: LABCELL_X45_Y2_N24
\AA|PS2|PS2_Command_Out|waiting_counter[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\ = ( \KEY[0]~input_o\ & ( \AA|PS2|PS2_Command_Out|Equal0~3_combout\ & ( (!\AA|PS2|PS2_Command_Out|Equal0~0_combout\) # ((!\AA|PS2|PS2_Command_Out|Equal0~1_combout\) # 
-- ((!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\) # (!\AA|PS2|PS2_Command_Out|Equal0~2_combout\))) ) ) ) # ( !\KEY[0]~input_o\ & ( \AA|PS2|PS2_Command_Out|Equal0~3_combout\ ) ) # ( \KEY[0]~input_o\ & ( 
-- !\AA|PS2|PS2_Command_Out|Equal0~3_combout\ ) ) # ( !\KEY[0]~input_o\ & ( !\AA|PS2|PS2_Command_Out|Equal0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~0_combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~1_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~3_combout\,
	combout => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\);

-- Location: FF_X46_Y2_N11
\AA|PS2|PS2_Command_Out|waiting_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~21_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(4));

-- Location: LABCELL_X46_Y2_N12
\AA|PS2|PS2_Command_Out|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~25_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(5) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~22\ ))
-- \AA|PS2|PS2_Command_Out|Add1~26\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(5) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(5),
	cin => \AA|PS2|PS2_Command_Out|Add1~22\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~25_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~26\);

-- Location: FF_X46_Y2_N14
\AA|PS2|PS2_Command_Out|waiting_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~25_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(5));

-- Location: LABCELL_X46_Y2_N15
\AA|PS2|PS2_Command_Out|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~29_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(6) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~26\ ))
-- \AA|PS2|PS2_Command_Out|Add1~30\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(6) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(6),
	cin => \AA|PS2|PS2_Command_Out|Add1~26\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~29_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~30\);

-- Location: FF_X46_Y2_N16
\AA|PS2|PS2_Command_Out|waiting_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~29_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(6));

-- Location: FF_X46_Y2_N19
\AA|PS2|PS2_Command_Out|waiting_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~1_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(7));

-- Location: LABCELL_X45_Y2_N51
\AA|PS2|PS2_Command_Out|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal0~0_combout\ = ( !\AA|PS2|PS2_Command_Out|waiting_counter\(7) & ( \AA|PS2|PS2_Command_Out|waiting_counter\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(7),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(8),
	combout => \AA|PS2|PS2_Command_Out|Equal0~0_combout\);

-- Location: LABCELL_X45_Y2_N18
\AA|PS2|PS2_Command_Out|waiting_counter[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\ = ( \KEY[0]~input_o\ & ( \AA|PS2|PS2_Command_Out|Equal0~3_combout\ & ( (!\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\) # ((\AA|PS2|PS2_Command_Out|Equal0~0_combout\ & 
-- (\AA|PS2|PS2_Command_Out|Equal0~1_combout\ & \AA|PS2|PS2_Command_Out|Equal0~2_combout\))) ) ) ) # ( !\KEY[0]~input_o\ & ( \AA|PS2|PS2_Command_Out|Equal0~3_combout\ ) ) # ( \KEY[0]~input_o\ & ( !\AA|PS2|PS2_Command_Out|Equal0~3_combout\ & ( 
-- !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\ ) ) ) # ( !\KEY[0]~input_o\ & ( !\AA|PS2|PS2_Command_Out|Equal0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011111111111111111111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~0_combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~1_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~3_combout\,
	combout => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\);

-- Location: FF_X46_Y2_N2
\AA|PS2|PS2_Command_Out|waiting_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~13_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(1));

-- Location: LABCELL_X46_Y2_N3
\AA|PS2|PS2_Command_Out|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add1~17_sumout\ = SUM(( \AA|PS2|PS2_Command_Out|waiting_counter\(2) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~14\ ))
-- \AA|PS2|PS2_Command_Out|Add1~18\ = CARRY(( \AA|PS2|PS2_Command_Out|waiting_counter\(2) ) + ( GND ) + ( \AA|PS2|PS2_Command_Out|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(2),
	cin => \AA|PS2|PS2_Command_Out|Add1~14\,
	sumout => \AA|PS2|PS2_Command_Out|Add1~17_sumout\,
	cout => \AA|PS2|PS2_Command_Out|Add1~18\);

-- Location: FF_X46_Y2_N4
\AA|PS2|PS2_Command_Out|waiting_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~17_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(2));

-- Location: FF_X46_Y2_N8
\AA|PS2|PS2_Command_Out|waiting_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Add1~9_sumout\,
	sclr => \AA|PS2|PS2_Command_Out|waiting_counter[9]~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|waiting_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|waiting_counter\(3));

-- Location: LABCELL_X45_Y2_N42
\AA|PS2|PS2_Command_Out|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Equal0~1_combout\ = ( !\AA|PS2|PS2_Command_Out|waiting_counter\(1) & ( \AA|PS2|PS2_Command_Out|waiting_counter\(6) & ( (!\AA|PS2|PS2_Command_Out|waiting_counter\(3) & (\AA|PS2|PS2_Command_Out|waiting_counter\(5) & 
-- (!\AA|PS2|PS2_Command_Out|waiting_counter\(4) & !\AA|PS2|PS2_Command_Out|waiting_counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(3),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(5),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(4),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(2),
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(1),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_waiting_counter\(6),
	combout => \AA|PS2|PS2_Command_Out|Equal0~1_combout\);

-- Location: LABCELL_X45_Y2_N36
\AA|PS2|PS2_Command_Out|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector2~0_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\ & ( \AA|PS2|PS2_Command_Out|Equal0~3_combout\ & ( (!\AA|PS2|PS2_Command_Out|Equal0~1_combout\) # 
-- ((!\AA|PS2|PS2_Command_Out|Equal0~0_combout\) # (!\AA|PS2|PS2_Command_Out|Equal0~2_combout\)) ) ) ) # ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\ & ( !\AA|PS2|PS2_Command_Out|Equal0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~1_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~0_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~2_combout\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Equal0~3_combout\,
	combout => \AA|PS2|PS2_Command_Out|Selector2~0_combout\);

-- Location: LABCELL_X42_Y3_N48
\AA|PS2|PS2_Command_Out|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector2~1_combout\ = ( \AA|PS2|PS2_Command_Out|Selector2~0_combout\ & ( \AA|PS2|ps2_clk_reg~q\ ) ) # ( !\AA|PS2|PS2_Command_Out|Selector2~0_combout\ & ( \AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|PS2_Command_Out|Equal2~2_combout\ & 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) ) ) ) # ( \AA|PS2|PS2_Command_Out|Selector2~0_combout\ & ( !\AA|PS2|ps2_clk_reg~q\ & ( (!\AA|PS2|last_ps2_clk~q\) # ((\AA|PS2|PS2_Command_Out|Equal2~2_combout\ & 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\)) ) ) ) # ( !\AA|PS2|PS2_Command_Out|Selector2~0_combout\ & ( !\AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|PS2_Command_Out|Equal2~2_combout\ & 
-- \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111100011111000100010001000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_Equal2~2_combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\,
	datac => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_Selector2~0_combout\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|Selector2~1_combout\);

-- Location: FF_X42_Y3_N50
\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Selector2~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\);

-- Location: LABCELL_X45_Y3_N30
\AA|PS2|PS2_Command_Out|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector3~0_combout\ = ( \AA|PS2|last_ps2_clk~q\ & ( (!\AA|PS2|ps2_clk_reg~q\ & \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\,
	dataf => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	combout => \AA|PS2|PS2_Command_Out|Selector3~0_combout\);

-- Location: LABCELL_X45_Y3_N12
\AA|PS2|PS2_Command_Out|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Selector3~1_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( \AA|PS2|PS2_Command_Out|Selector3~0_combout\ ) ) # ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( 
-- \AA|PS2|PS2_Command_Out|Selector3~0_combout\ ) ) # ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( !\AA|PS2|PS2_Command_Out|Selector3~0_combout\ & ( (!\AA|PS2|PS2_Command_Out|always1~0_combout\ & 
-- ((!\AA|PS2|PS2_Command_Out|Equal3~2_combout\) # ((!\AA|PS2|PS2_Command_Out|Equal3~0_combout\) # (!\AA|PS2|PS2_Command_Out|Equal3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_always1~0_combout\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~2_combout\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~0_combout\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_Equal3~1_combout\,
	datae => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_Selector3~0_combout\,
	combout => \AA|PS2|PS2_Command_Out|Selector3~1_combout\);

-- Location: FF_X45_Y3_N14
\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|Selector3~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\);

-- Location: LABCELL_X42_Y3_N36
\AA|PS2|PS2_Command_Out|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|Add3~0_combout\ = ( \AA|PS2|PS2_Command_Out|cur_bit\(3) & ( (!\AA|PS2|PS2_Command_Out|cur_bit\(2)) # ((!\AA|PS2|PS2_Command_Out|cur_bit\(1)) # (!\AA|PS2|PS2_Command_Out|cur_bit\(0))) ) ) # ( !\AA|PS2|PS2_Command_Out|cur_bit\(3) & ( 
-- (\AA|PS2|PS2_Command_Out|cur_bit\(2) & (\AA|PS2|PS2_Command_Out|cur_bit\(1) & \AA|PS2|PS2_Command_Out|cur_bit\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(2),
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(1),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(0),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(3),
	combout => \AA|PS2|PS2_Command_Out|Add3~0_combout\);

-- Location: LABCELL_X42_Y3_N24
\AA|PS2|PS2_Command_Out|cur_bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|cur_bit~0_combout\ = ( !\AA|PS2|ps2_clk_reg~q\ & ( (\AA|PS2|last_ps2_clk~q\ & (\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & (\AA|PS2|PS2_Command_Out|Add3~0_combout\ & \KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_Add3~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Command_Out|cur_bit~0_combout\);

-- Location: FF_X42_Y3_N26
\AA|PS2|PS2_Command_Out|cur_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|cur_bit~0_combout\,
	ena => \AA|PS2|PS2_Command_Out|cur_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|cur_bit\(3));

-- Location: LABCELL_X42_Y3_N21
\AA|PS2|PS2_Command_Out|ps2_command[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|ps2_command[8]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \AA|PS2|PS2_Command_Out|ps2_command[8]~feeder_combout\);

-- Location: FF_X42_Y3_N23
\AA|PS2|PS2_Command_Out|ps2_command[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Command_Out|ps2_command[8]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Command_Out|ps2_command\(8));

-- Location: LABCELL_X42_Y3_N3
\AA|PS2|PS2_Command_Out|PS2_DAT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|PS2_DAT~1_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( (\AA|PS2|PS2_Command_Out|cur_bit\(3) & \AA|PS2|PS2_Command_Out|ps2_command\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_cur_bit\(3),
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_ps2_command\(8),
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	combout => \AA|PS2|PS2_Command_Out|PS2_DAT~1_combout\);

-- Location: LABCELL_X40_Y3_N57
\AA|PS2|PS2_Command_Out|PS2_DAT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Command_Out|PS2_DAT~2_combout\ = ( \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ ) # ( !\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\ & ( ((\AA|PS2|PS2_Command_Out|command_initiate_counter\(13) 
-- & \AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\)) # (\AA|PS2|PS2_Command_Out|s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Command_Out|ALT_INV_command_initiate_counter\(13),
	datac => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_2_WAIT_FOR_CLOCK~q\,
	datad => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_1_INITIATE_COMMUNICATION~q\,
	dataf => \AA|PS2|PS2_Command_Out|ALT_INV_s_ps2_transmitter.PS2_STATE_3_TRANSMIT_DATA~q\,
	combout => \AA|PS2|PS2_Command_Out|PS2_DAT~2_combout\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	ecnc1test => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \VGA|mypll|altpll_component|auto_generated|fb_clkin\,
	tclk => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\,
	shift => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	up0 => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	vco0ph => \VGA|mypll|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \VGA|mypll|altpll_component|auto_generated|clk\(0));

-- Location: CLKCTRL_G6
\VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|mypll|altpll_component|auto_generated|clk\(0),
	outclk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\);

-- Location: LABCELL_X42_Y16_N0
\VGA|controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~37_sumout\ = SUM(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add0~38\ = CARRY(( \VGA|controller|xCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add0~37_sumout\,
	cout => \VGA|controller|Add0~38\);

-- Location: FF_X42_Y16_N25
\VGA|controller|xCounter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[8]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y16_N48
\VGA|controller|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~1_combout\ = ( !\VGA|controller|xCounter\(6) & ( \VGA|controller|xCounter\(1) & ( (\VGA|controller|xCounter\(0) & !\VGA|controller|xCounter\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(0),
	datab => \VGA|controller|ALT_INV_xCounter\(5),
	datae => \VGA|controller|ALT_INV_xCounter\(6),
	dataf => \VGA|controller|ALT_INV_xCounter\(1),
	combout => \VGA|controller|Equal0~1_combout\);

-- Location: FF_X42_Y16_N13
\VGA|controller|xCounter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~13_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[4]~DUPLICATE_q\);

-- Location: FF_X42_Y16_N29
\VGA|controller|xCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(9));

-- Location: LABCELL_X42_Y16_N24
\VGA|controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~29_sumout\ = SUM(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))
-- \VGA|controller|Add0~30\ = CARRY(( \VGA|controller|xCounter\(8) ) + ( GND ) + ( \VGA|controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(8),
	cin => \VGA|controller|Add0~34\,
	sumout => \VGA|controller|Add0~29_sumout\,
	cout => \VGA|controller|Add0~30\);

-- Location: LABCELL_X42_Y16_N27
\VGA|controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~25_sumout\ = SUM(( \VGA|controller|xCounter\(9) ) + ( GND ) + ( \VGA|controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(9),
	cin => \VGA|controller|Add0~30\,
	sumout => \VGA|controller|Add0~25_sumout\);

-- Location: FF_X42_Y16_N28
\VGA|controller|xCounter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~25_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter[9]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y16_N33
\VGA|controller|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~0_combout\ = ( \VGA|controller|xCounter\(3) & ( \VGA|controller|xCounter[9]~DUPLICATE_q\ & ( (\VGA|controller|xCounter\(2) & (!\VGA|controller|xCounter\(7) & \VGA|controller|xCounter[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(2),
	datab => \VGA|controller|ALT_INV_xCounter\(7),
	datad => \VGA|controller|ALT_INV_xCounter[4]~DUPLICATE_q\,
	datae => \VGA|controller|ALT_INV_xCounter\(3),
	dataf => \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\,
	combout => \VGA|controller|Equal0~0_combout\);

-- Location: MLABCELL_X39_Y16_N3
\VGA|controller|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~2_combout\ = ( \VGA|controller|Equal0~0_combout\ & ( (\VGA|controller|xCounter[8]~DUPLICATE_q\ & \VGA|controller|Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_Equal0~1_combout\,
	dataf => \VGA|controller|ALT_INV_Equal0~0_combout\,
	combout => \VGA|controller|Equal0~2_combout\);

-- Location: FF_X42_Y16_N2
\VGA|controller|xCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~37_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(0));

-- Location: LABCELL_X42_Y16_N3
\VGA|controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~1_sumout\ = SUM(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))
-- \VGA|controller|Add0~2\ = CARRY(( \VGA|controller|xCounter\(1) ) + ( GND ) + ( \VGA|controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(1),
	cin => \VGA|controller|Add0~38\,
	sumout => \VGA|controller|Add0~1_sumout\,
	cout => \VGA|controller|Add0~2\);

-- Location: FF_X42_Y16_N4
\VGA|controller|xCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~1_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(1));

-- Location: LABCELL_X42_Y16_N6
\VGA|controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~5_sumout\ = SUM(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))
-- \VGA|controller|Add0~6\ = CARRY(( \VGA|controller|xCounter\(2) ) + ( GND ) + ( \VGA|controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(2),
	cin => \VGA|controller|Add0~2\,
	sumout => \VGA|controller|Add0~5_sumout\,
	cout => \VGA|controller|Add0~6\);

-- Location: FF_X42_Y16_N7
\VGA|controller|xCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~5_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(2));

-- Location: LABCELL_X42_Y16_N9
\VGA|controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~9_sumout\ = SUM(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))
-- \VGA|controller|Add0~10\ = CARRY(( \VGA|controller|xCounter\(3) ) + ( GND ) + ( \VGA|controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(3),
	cin => \VGA|controller|Add0~6\,
	sumout => \VGA|controller|Add0~9_sumout\,
	cout => \VGA|controller|Add0~10\);

-- Location: FF_X42_Y16_N10
\VGA|controller|xCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~9_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(3));

-- Location: LABCELL_X42_Y16_N12
\VGA|controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~13_sumout\ = SUM(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))
-- \VGA|controller|Add0~14\ = CARRY(( \VGA|controller|xCounter\(4) ) + ( GND ) + ( \VGA|controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(4),
	cin => \VGA|controller|Add0~10\,
	sumout => \VGA|controller|Add0~13_sumout\,
	cout => \VGA|controller|Add0~14\);

-- Location: FF_X42_Y16_N14
\VGA|controller|xCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~13_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(4));

-- Location: LABCELL_X42_Y16_N15
\VGA|controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~17_sumout\ = SUM(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))
-- \VGA|controller|Add0~18\ = CARRY(( \VGA|controller|xCounter\(5) ) + ( GND ) + ( \VGA|controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(5),
	cin => \VGA|controller|Add0~14\,
	sumout => \VGA|controller|Add0~17_sumout\,
	cout => \VGA|controller|Add0~18\);

-- Location: FF_X42_Y16_N16
\VGA|controller|xCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~17_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(5));

-- Location: LABCELL_X42_Y16_N18
\VGA|controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~21_sumout\ = SUM(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))
-- \VGA|controller|Add0~22\ = CARRY(( \VGA|controller|xCounter\(6) ) + ( GND ) + ( \VGA|controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(6),
	cin => \VGA|controller|Add0~18\,
	sumout => \VGA|controller|Add0~21_sumout\,
	cout => \VGA|controller|Add0~22\);

-- Location: FF_X42_Y16_N19
\VGA|controller|xCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~21_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(6));

-- Location: LABCELL_X42_Y16_N21
\VGA|controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~33_sumout\ = SUM(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~22\ ))
-- \VGA|controller|Add0~34\ = CARRY(( \VGA|controller|xCounter\(7) ) + ( GND ) + ( \VGA|controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_xCounter\(7),
	cin => \VGA|controller|Add0~22\,
	sumout => \VGA|controller|Add0~33_sumout\,
	cout => \VGA|controller|Add0~34\);

-- Location: FF_X42_Y16_N22
\VGA|controller|xCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~33_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(7));

-- Location: FF_X42_Y16_N26
\VGA|controller|xCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add0~29_sumout\,
	sclr => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|xCounter\(8));

-- Location: LABCELL_X42_Y16_N36
\VGA|controller|VGA_HS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~0_combout\ = ( \VGA|controller|xCounter\(0) & ( \VGA|controller|xCounter\(4) & ( ((\VGA|controller|xCounter\(3)) # (\VGA|controller|xCounter\(1))) # (\VGA|controller|xCounter\(2)) ) ) ) # ( !\VGA|controller|xCounter\(0) & ( 
-- \VGA|controller|xCounter\(4) & ( (\VGA|controller|xCounter\(3)) # (\VGA|controller|xCounter\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(2),
	datab => \VGA|controller|ALT_INV_xCounter\(1),
	datac => \VGA|controller|ALT_INV_xCounter\(3),
	datae => \VGA|controller|ALT_INV_xCounter\(0),
	dataf => \VGA|controller|ALT_INV_xCounter\(4),
	combout => \VGA|controller|VGA_HS1~0_combout\);

-- Location: LABCELL_X42_Y16_N42
\VGA|controller|VGA_HS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~1_combout\ = ( \VGA|controller|VGA_HS1~0_combout\ & ( \VGA|controller|xCounter\(5) & ( ((!\VGA|controller|xCounter\(7)) # ((!\VGA|controller|xCounter\(9)) # (\VGA|controller|xCounter\(6)))) # (\VGA|controller|xCounter\(8)) ) ) ) # 
-- ( !\VGA|controller|VGA_HS1~0_combout\ & ( \VGA|controller|xCounter\(5) & ( ((!\VGA|controller|xCounter\(7)) # (!\VGA|controller|xCounter\(9))) # (\VGA|controller|xCounter\(8)) ) ) ) # ( \VGA|controller|VGA_HS1~0_combout\ & ( !\VGA|controller|xCounter\(5) 
-- & ( ((!\VGA|controller|xCounter\(7)) # (!\VGA|controller|xCounter\(9))) # (\VGA|controller|xCounter\(8)) ) ) ) # ( !\VGA|controller|VGA_HS1~0_combout\ & ( !\VGA|controller|xCounter\(5) & ( ((!\VGA|controller|xCounter\(7)) # 
-- ((!\VGA|controller|xCounter\(9)) # (!\VGA|controller|xCounter\(6)))) # (\VGA|controller|xCounter\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111011111110111111101111111011111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(8),
	datab => \VGA|controller|ALT_INV_xCounter\(7),
	datac => \VGA|controller|ALT_INV_xCounter\(9),
	datad => \VGA|controller|ALT_INV_xCounter\(6),
	datae => \VGA|controller|ALT_INV_VGA_HS1~0_combout\,
	dataf => \VGA|controller|ALT_INV_xCounter\(5),
	combout => \VGA|controller|VGA_HS1~1_combout\);

-- Location: FF_X42_Y16_N43
\VGA|controller|VGA_HS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_HS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS1~q\);

-- Location: MLABCELL_X39_Y76_N12
\VGA|controller|VGA_HS~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS~feeder_combout\ = ( \VGA|controller|VGA_HS1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_HS1~q\,
	combout => \VGA|controller|VGA_HS~feeder_combout\);

-- Location: FF_X39_Y76_N13
\VGA|controller|VGA_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_HS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_HS~q\);

-- Location: MLABCELL_X39_Y16_N30
\VGA|controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~9_sumout\ = SUM(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \VGA|controller|Add1~10\ = CARRY(( \VGA|controller|yCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(0),
	cin => GND,
	sumout => \VGA|controller|Add1~9_sumout\,
	cout => \VGA|controller|Add1~10\);

-- Location: FF_X39_Y16_N34
\VGA|controller|yCounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~1_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y16_N9
\VGA|controller|always1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~2_combout\ = ( \VGA|controller|yCounter\(2) & ( !\VGA|controller|yCounter\(0) & ( (!\VGA|controller|yCounter[1]~DUPLICATE_q\ & (\VGA|controller|yCounter\(3) & !\VGA|controller|yCounter\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter[1]~DUPLICATE_q\,
	datab => \VGA|controller|ALT_INV_yCounter\(3),
	datac => \VGA|controller|ALT_INV_yCounter\(4),
	datae => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(0),
	combout => \VGA|controller|always1~2_combout\);

-- Location: MLABCELL_X39_Y16_N42
\VGA|controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~29_sumout\ = SUM(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))
-- \VGA|controller|Add1~30\ = CARRY(( \VGA|controller|yCounter\(4) ) + ( GND ) + ( \VGA|controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|Add1~34\,
	sumout => \VGA|controller|Add1~29_sumout\,
	cout => \VGA|controller|Add1~30\);

-- Location: MLABCELL_X39_Y16_N45
\VGA|controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~21_sumout\ = SUM(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))
-- \VGA|controller|Add1~22\ = CARRY(( \VGA|controller|yCounter\(5) ) + ( GND ) + ( \VGA|controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(5),
	cin => \VGA|controller|Add1~30\,
	sumout => \VGA|controller|Add1~21_sumout\,
	cout => \VGA|controller|Add1~22\);

-- Location: FF_X39_Y16_N46
\VGA|controller|yCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~21_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(5));

-- Location: MLABCELL_X39_Y16_N48
\VGA|controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~13_sumout\ = SUM(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))
-- \VGA|controller|Add1~14\ = CARRY(( \VGA|controller|yCounter\(6) ) + ( GND ) + ( \VGA|controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(6),
	cin => \VGA|controller|Add1~22\,
	sumout => \VGA|controller|Add1~13_sumout\,
	cout => \VGA|controller|Add1~14\);

-- Location: FF_X39_Y16_N50
\VGA|controller|yCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~13_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(6));

-- Location: MLABCELL_X39_Y16_N51
\VGA|controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~25_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~14\ ))
-- \VGA|controller|Add1~26\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( GND ) + ( \VGA|controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|Add1~14\,
	sumout => \VGA|controller|Add1~25_sumout\,
	cout => \VGA|controller|Add1~26\);

-- Location: FF_X39_Y16_N52
\VGA|controller|yCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~25_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(7));

-- Location: MLABCELL_X39_Y16_N54
\VGA|controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~17_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))
-- \VGA|controller|Add1~18\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( GND ) + ( \VGA|controller|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|Add1~26\,
	sumout => \VGA|controller|Add1~17_sumout\,
	cout => \VGA|controller|Add1~18\);

-- Location: FF_X39_Y16_N55
\VGA|controller|yCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~17_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(8));

-- Location: MLABCELL_X39_Y16_N57
\VGA|controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~5_sumout\ = SUM(( \VGA|controller|yCounter\(9) ) + ( GND ) + ( \VGA|controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(9),
	cin => \VGA|controller|Add1~18\,
	sumout => \VGA|controller|Add1~5_sumout\);

-- Location: FF_X39_Y16_N58
\VGA|controller|yCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~5_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(9));

-- Location: MLABCELL_X39_Y16_N0
\VGA|controller|always1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~1_combout\ = ( \VGA|controller|yCounter\(9) & ( (!\VGA|controller|yCounter\(5) & (!\VGA|controller|yCounter\(8) & (!\VGA|controller|yCounter\(6) & !\VGA|controller|yCounter\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datab => \VGA|controller|ALT_INV_yCounter\(8),
	datac => \VGA|controller|ALT_INV_yCounter\(6),
	datad => \VGA|controller|ALT_INV_yCounter\(7),
	dataf => \VGA|controller|ALT_INV_yCounter\(9),
	combout => \VGA|controller|always1~1_combout\);

-- Location: MLABCELL_X39_Y16_N24
\VGA|controller|always1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~3_combout\ = ( \VGA|controller|xCounter[8]~DUPLICATE_q\ & ( \VGA|controller|Equal0~0_combout\ & ( (\VGA|controller|Equal0~1_combout\ & (\VGA|controller|always1~2_combout\ & \VGA|controller|always1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_Equal0~1_combout\,
	datab => \VGA|controller|ALT_INV_always1~2_combout\,
	datac => \VGA|controller|ALT_INV_always1~1_combout\,
	datae => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	dataf => \VGA|controller|ALT_INV_Equal0~0_combout\,
	combout => \VGA|controller|always1~3_combout\);

-- Location: FF_X39_Y16_N31
\VGA|controller|yCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~9_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(0));

-- Location: MLABCELL_X39_Y16_N33
\VGA|controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~1_sumout\ = SUM(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))
-- \VGA|controller|Add1~2\ = CARRY(( \VGA|controller|yCounter\(1) ) + ( GND ) + ( \VGA|controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(1),
	cin => \VGA|controller|Add1~10\,
	sumout => \VGA|controller|Add1~1_sumout\,
	cout => \VGA|controller|Add1~2\);

-- Location: FF_X39_Y16_N35
\VGA|controller|yCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~1_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(1));

-- Location: MLABCELL_X39_Y16_N36
\VGA|controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~37_sumout\ = SUM(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~2\ ))
-- \VGA|controller|Add1~38\ = CARRY(( \VGA|controller|yCounter\(2) ) + ( GND ) + ( \VGA|controller|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	cin => \VGA|controller|Add1~2\,
	sumout => \VGA|controller|Add1~37_sumout\,
	cout => \VGA|controller|Add1~38\);

-- Location: FF_X39_Y16_N37
\VGA|controller|yCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~37_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(2));

-- Location: MLABCELL_X39_Y16_N39
\VGA|controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~33_sumout\ = SUM(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))
-- \VGA|controller|Add1~34\ = CARRY(( \VGA|controller|yCounter\(3) ) + ( GND ) + ( \VGA|controller|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|ALT_INV_yCounter\(3),
	cin => \VGA|controller|Add1~38\,
	sumout => \VGA|controller|Add1~33_sumout\,
	cout => \VGA|controller|Add1~34\);

-- Location: FF_X39_Y16_N41
\VGA|controller|yCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(3));

-- Location: FF_X39_Y16_N43
\VGA|controller|yCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~29_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter\(4));

-- Location: MLABCELL_X39_Y16_N18
\VGA|controller|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~0_combout\ = ( \VGA|controller|yCounter\(3) & ( (!\VGA|controller|yCounter\(4) & \VGA|controller|yCounter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(4),
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	dataf => \VGA|controller|ALT_INV_yCounter\(3),
	combout => \VGA|controller|always1~0_combout\);

-- Location: MLABCELL_X39_Y16_N21
\VGA|controller|VGA_VS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~0_combout\ = ( \VGA|controller|yCounter\(6) & ( (\VGA|controller|yCounter\(5) & (\VGA|controller|yCounter\(7) & \VGA|controller|yCounter\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter\(7),
	datad => \VGA|controller|ALT_INV_yCounter\(8),
	dataf => \VGA|controller|ALT_INV_yCounter\(6),
	combout => \VGA|controller|VGA_VS1~0_combout\);

-- Location: FF_X39_Y16_N59
\VGA|controller|yCounter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~5_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[9]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y16_N15
\VGA|controller|VGA_VS1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~1_combout\ = ( \VGA|controller|yCounter\(0) & ( (!\VGA|controller|always1~0_combout\) # ((!\VGA|controller|VGA_VS1~0_combout\) # ((\VGA|controller|yCounter\(1)) # (\VGA|controller|yCounter[9]~DUPLICATE_q\))) ) ) # ( 
-- !\VGA|controller|yCounter\(0) & ( (!\VGA|controller|always1~0_combout\) # ((!\VGA|controller|VGA_VS1~0_combout\) # ((!\VGA|controller|yCounter\(1)) # (\VGA|controller|yCounter[9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111111101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_always1~0_combout\,
	datab => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	datac => \VGA|controller|ALT_INV_yCounter[9]~DUPLICATE_q\,
	datad => \VGA|controller|ALT_INV_yCounter\(1),
	dataf => \VGA|controller|ALT_INV_yCounter\(0),
	combout => \VGA|controller|VGA_VS1~1_combout\);

-- Location: FF_X39_Y16_N17
\VGA|controller|VGA_VS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS1~q\);

-- Location: MLABCELL_X34_Y76_N12
\VGA|controller|VGA_VS~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS~feeder_combout\ = ( \VGA|controller|VGA_VS1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_VS1~q\,
	combout => \VGA|controller|VGA_VS~feeder_combout\);

-- Location: FF_X34_Y76_N13
\VGA|controller|VGA_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_VS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_VS~q\);

-- Location: LABCELL_X40_Y16_N45
\VGA|controller|VGA_BLANK1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK1~0_combout\ = ( !\VGA|controller|VGA_VS1~0_combout\ & ( \VGA|controller|xCounter[9]~DUPLICATE_q\ & ( (!\VGA|controller|xCounter\(7) & (!\VGA|controller|yCounter\(9) & !\VGA|controller|xCounter[8]~DUPLICATE_q\)) ) ) ) # ( 
-- !\VGA|controller|VGA_VS1~0_combout\ & ( !\VGA|controller|xCounter[9]~DUPLICATE_q\ & ( !\VGA|controller|yCounter\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_xCounter\(7),
	datab => \VGA|controller|ALT_INV_yCounter\(9),
	datac => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	datae => \VGA|controller|ALT_INV_VGA_VS1~0_combout\,
	dataf => \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\,
	combout => \VGA|controller|VGA_BLANK1~0_combout\);

-- Location: FF_X40_Y16_N47
\VGA|controller|VGA_BLANK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK1~q\);

-- Location: MLABCELL_X34_Y16_N36
\VGA|controller|VGA_BLANK~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK~feeder_combout\ = ( \VGA|controller|VGA_BLANK1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|ALT_INV_VGA_BLANK1~q\,
	combout => \VGA|controller|VGA_BLANK~feeder_combout\);

-- Location: FF_X34_Y16_N37
\VGA|controller|VGA_BLANK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|VGA_BLANK~q\);

-- Location: MLABCELL_X39_Y12_N0
\RD|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~17_sumout\ = SUM(( \RD|Q\(0) ) + ( VCC ) + ( !VCC ))
-- \RD|Add0~18\ = CARRY(( \RD|Q\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(0),
	cin => GND,
	sumout => \RD|Add0~17_sumout\,
	cout => \RD|Add0~18\);

-- Location: FF_X45_Y12_N29
\RD|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RD|Add0~17_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(0));

-- Location: MLABCELL_X39_Y12_N3
\RD|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~5_sumout\ = SUM(( \RD|Q\(1) ) + ( VCC ) + ( \RD|Add0~18\ ))
-- \RD|Add0~6\ = CARRY(( \RD|Q\(1) ) + ( VCC ) + ( \RD|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_Q\(1),
	cin => \RD|Add0~18\,
	sumout => \RD|Add0~5_sumout\,
	cout => \RD|Add0~6\);

-- Location: LABCELL_X40_Y12_N42
\RD|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Q[1]~feeder_combout\ = ( \RD|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RD|ALT_INV_Add0~5_sumout\,
	combout => \RD|Q[1]~feeder_combout\);

-- Location: FF_X40_Y12_N44
\RD|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Q[1]~feeder_combout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(1));

-- Location: MLABCELL_X39_Y12_N6
\RD|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~13_sumout\ = SUM(( \RD|Q\(2) ) + ( VCC ) + ( \RD|Add0~6\ ))
-- \RD|Add0~14\ = CARRY(( \RD|Q\(2) ) + ( VCC ) + ( \RD|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_Q\(2),
	cin => \RD|Add0~6\,
	sumout => \RD|Add0~13_sumout\,
	cout => \RD|Add0~14\);

-- Location: FF_X40_Y12_N23
\RD|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RD|Add0~13_sumout\,
	sclr => \RD|Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(2));

-- Location: MLABCELL_X39_Y12_N9
\RD|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~9_sumout\ = SUM(( \RD|Q\(3) ) + ( VCC ) + ( \RD|Add0~14\ ))
-- \RD|Add0~10\ = CARRY(( \RD|Q\(3) ) + ( VCC ) + ( \RD|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_Q\(3),
	cin => \RD|Add0~14\,
	sumout => \RD|Add0~9_sumout\,
	cout => \RD|Add0~10\);

-- Location: LABCELL_X40_Y12_N57
\RD|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Q[3]~feeder_combout\ = ( \RD|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RD|ALT_INV_Add0~9_sumout\,
	combout => \RD|Q[3]~feeder_combout\);

-- Location: FF_X40_Y12_N59
\RD|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Q[3]~feeder_combout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(3));

-- Location: MLABCELL_X39_Y12_N12
\RD|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~41_sumout\ = SUM(( \RD|Q\(4) ) + ( VCC ) + ( \RD|Add0~10\ ))
-- \RD|Add0~42\ = CARRY(( \RD|Q\(4) ) + ( VCC ) + ( \RD|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(4),
	cin => \RD|Add0~10\,
	sumout => \RD|Add0~41_sumout\,
	cout => \RD|Add0~42\);

-- Location: FF_X39_Y12_N14
\RD|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~41_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(4));

-- Location: MLABCELL_X39_Y12_N15
\RD|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~1_sumout\ = SUM(( \RD|Q\(5) ) + ( VCC ) + ( \RD|Add0~42\ ))
-- \RD|Add0~2\ = CARRY(( \RD|Q\(5) ) + ( VCC ) + ( \RD|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(5),
	cin => \RD|Add0~42\,
	sumout => \RD|Add0~1_sumout\,
	cout => \RD|Add0~2\);

-- Location: FF_X39_Y12_N16
\RD|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~1_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(5));

-- Location: MLABCELL_X39_Y12_N18
\RD|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~45_sumout\ = SUM(( \RD|Q\(6) ) + ( VCC ) + ( \RD|Add0~2\ ))
-- \RD|Add0~46\ = CARRY(( \RD|Q\(6) ) + ( VCC ) + ( \RD|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(6),
	cin => \RD|Add0~2\,
	sumout => \RD|Add0~45_sumout\,
	cout => \RD|Add0~46\);

-- Location: FF_X39_Y12_N20
\RD|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~45_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(6));

-- Location: MLABCELL_X39_Y12_N21
\RD|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~21_sumout\ = SUM(( \RD|Q\(7) ) + ( VCC ) + ( \RD|Add0~46\ ))
-- \RD|Add0~22\ = CARRY(( \RD|Q\(7) ) + ( VCC ) + ( \RD|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(7),
	cin => \RD|Add0~46\,
	sumout => \RD|Add0~21_sumout\,
	cout => \RD|Add0~22\);

-- Location: FF_X39_Y12_N23
\RD|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(7));

-- Location: MLABCELL_X39_Y12_N24
\RD|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~49_sumout\ = SUM(( \RD|Q\(8) ) + ( VCC ) + ( \RD|Add0~22\ ))
-- \RD|Add0~50\ = CARRY(( \RD|Q\(8) ) + ( VCC ) + ( \RD|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(8),
	cin => \RD|Add0~22\,
	sumout => \RD|Add0~49_sumout\,
	cout => \RD|Add0~50\);

-- Location: FF_X39_Y12_N26
\RD|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~49_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(8));

-- Location: MLABCELL_X39_Y12_N27
\RD|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~53_sumout\ = SUM(( \RD|Q\(9) ) + ( VCC ) + ( \RD|Add0~50\ ))
-- \RD|Add0~54\ = CARRY(( \RD|Q\(9) ) + ( VCC ) + ( \RD|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(9),
	cin => \RD|Add0~50\,
	sumout => \RD|Add0~53_sumout\,
	cout => \RD|Add0~54\);

-- Location: FF_X39_Y12_N29
\RD|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~53_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(9));

-- Location: MLABCELL_X39_Y12_N30
\RD|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~25_sumout\ = SUM(( \RD|Q\(10) ) + ( VCC ) + ( \RD|Add0~54\ ))
-- \RD|Add0~26\ = CARRY(( \RD|Q\(10) ) + ( VCC ) + ( \RD|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(10),
	cin => \RD|Add0~54\,
	sumout => \RD|Add0~25_sumout\,
	cout => \RD|Add0~26\);

-- Location: FF_X39_Y12_N32
\RD|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(10));

-- Location: MLABCELL_X39_Y12_N33
\RD|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~29_sumout\ = SUM(( \RD|Q\(11) ) + ( VCC ) + ( \RD|Add0~26\ ))
-- \RD|Add0~30\ = CARRY(( \RD|Q\(11) ) + ( VCC ) + ( \RD|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(11),
	cin => \RD|Add0~26\,
	sumout => \RD|Add0~29_sumout\,
	cout => \RD|Add0~30\);

-- Location: FF_X39_Y12_N35
\RD|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(11));

-- Location: MLABCELL_X39_Y12_N36
\RD|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~61_sumout\ = SUM(( \RD|Q\(12) ) + ( VCC ) + ( \RD|Add0~30\ ))
-- \RD|Add0~62\ = CARRY(( \RD|Q\(12) ) + ( VCC ) + ( \RD|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(12),
	cin => \RD|Add0~30\,
	sumout => \RD|Add0~61_sumout\,
	cout => \RD|Add0~62\);

-- Location: FF_X39_Y12_N38
\RD|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~61_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(12));

-- Location: MLABCELL_X39_Y12_N39
\RD|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~37_sumout\ = SUM(( \RD|Q\(13) ) + ( VCC ) + ( \RD|Add0~62\ ))
-- \RD|Add0~38\ = CARRY(( \RD|Q\(13) ) + ( VCC ) + ( \RD|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(13),
	cin => \RD|Add0~62\,
	sumout => \RD|Add0~37_sumout\,
	cout => \RD|Add0~38\);

-- Location: FF_X39_Y12_N41
\RD|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(13));

-- Location: MLABCELL_X39_Y12_N42
\RD|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~33_sumout\ = SUM(( \RD|Q\(14) ) + ( VCC ) + ( \RD|Add0~38\ ))
-- \RD|Add0~34\ = CARRY(( \RD|Q\(14) ) + ( VCC ) + ( \RD|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(14),
	cin => \RD|Add0~38\,
	sumout => \RD|Add0~33_sumout\,
	cout => \RD|Add0~34\);

-- Location: FF_X39_Y12_N44
\RD|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(14));

-- Location: MLABCELL_X39_Y12_N45
\RD|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~57_sumout\ = SUM(( \RD|Q\(15) ) + ( VCC ) + ( \RD|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_Q\(15),
	cin => \RD|Add0~34\,
	sumout => \RD|Add0~57_sumout\);

-- Location: FF_X39_Y12_N47
\RD|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|Add0~57_sumout\,
	sclr => \RD|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|Q\(15));

-- Location: MLABCELL_X39_Y12_N48
\RD|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal1~3_combout\ = ( !\RD|Q\(12) & ( !\RD|Q\(6) & ( (!\RD|Q\(9) & (!\RD|Q\(8) & !\RD|Q\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Q\(9),
	datac => \RD|ALT_INV_Q\(8),
	datad => \RD|ALT_INV_Q\(15),
	datae => \RD|ALT_INV_Q\(12),
	dataf => \RD|ALT_INV_Q\(6),
	combout => \RD|Equal1~3_combout\);

-- Location: LABCELL_X40_Y12_N33
\RD|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal1~1_combout\ = ( !\RD|Q\(2) & ( !\RD|Q\(1) & ( (!\RD|Q\(5) & !\RD|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RD|ALT_INV_Q\(5),
	datac => \RD|ALT_INV_Q\(3),
	datae => \RD|ALT_INV_Q\(2),
	dataf => \RD|ALT_INV_Q\(1),
	combout => \RD|Equal1~1_combout\);

-- Location: MLABCELL_X39_Y12_N54
\RD|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal1~2_combout\ = ( !\RD|Q\(7) & ( !\RD|Q\(13) & ( (!\RD|Q\(14) & (!\RD|Q\(11) & !\RD|Q\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RD|ALT_INV_Q\(14),
	datac => \RD|ALT_INV_Q\(11),
	datad => \RD|ALT_INV_Q\(10),
	datae => \RD|ALT_INV_Q\(7),
	dataf => \RD|ALT_INV_Q\(13),
	combout => \RD|Equal1~2_combout\);

-- Location: LABCELL_X46_Y12_N42
\RD|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal1~0_combout\ = LCELL(( \RD|Equal1~1_combout\ & ( \RD|Equal1~2_combout\ & ( (!\RD|Q\(0) & (\RD|Equal1~3_combout\ & !\RD|Q\(4))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RD|ALT_INV_Q\(0),
	datac => \RD|ALT_INV_Equal1~3_combout\,
	datad => \RD|ALT_INV_Q\(4),
	datae => \RD|ALT_INV_Equal1~1_combout\,
	dataf => \RD|ALT_INV_Equal1~2_combout\,
	combout => \RD|Equal1~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X16_Y4_N30
\data|adjust1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~73_sumout\ = SUM(( \data|adjust1|cout\(0) ) + ( VCC ) + ( !VCC ))
-- \data|adjust1|Add0~74\ = CARRY(( \data|adjust1|cout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data|adjust1|ALT_INV_cout\(0),
	cin => GND,
	sumout => \data|adjust1|Add0~73_sumout\,
	cout => \data|adjust1|Add0~74\);

-- Location: LABCELL_X17_Y4_N27
\data|adjust1|cout~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~15_combout\ = ( \data|adjust1|Add0~73_sumout\ & ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~73_sumout\,
	combout => \data|adjust1|cout~15_combout\);

-- Location: FF_X17_Y4_N29
\data|adjust1|cout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(0));

-- Location: LABCELL_X16_Y4_N33
\data|adjust1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~77_sumout\ = SUM(( \data|adjust1|cout\(1) ) + ( VCC ) + ( \data|adjust1|Add0~74\ ))
-- \data|adjust1|Add0~78\ = CARRY(( \data|adjust1|cout\(1) ) + ( VCC ) + ( \data|adjust1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(1),
	cin => \data|adjust1|Add0~74\,
	sumout => \data|adjust1|Add0~77_sumout\,
	cout => \data|adjust1|Add0~78\);

-- Location: LABCELL_X17_Y4_N21
\data|adjust1|cout~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~16_combout\ = ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Add0~77_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~16_combout\);

-- Location: FF_X17_Y4_N23
\data|adjust1|cout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(1));

-- Location: LABCELL_X16_Y4_N36
\data|adjust1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~85_sumout\ = SUM(( \data|adjust1|cout\(2) ) + ( VCC ) + ( \data|adjust1|Add0~78\ ))
-- \data|adjust1|Add0~86\ = CARRY(( \data|adjust1|cout\(2) ) + ( VCC ) + ( \data|adjust1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(2),
	cin => \data|adjust1|Add0~78\,
	sumout => \data|adjust1|Add0~85_sumout\,
	cout => \data|adjust1|Add0~86\);

-- Location: LABCELL_X17_Y4_N36
\data|adjust1|cout~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~18_combout\ = ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_Add0~85_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~18_combout\);

-- Location: FF_X17_Y4_N38
\data|adjust1|cout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(2));

-- Location: LABCELL_X16_Y4_N39
\data|adjust1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~81_sumout\ = SUM(( \data|adjust1|cout\(3) ) + ( VCC ) + ( \data|adjust1|Add0~86\ ))
-- \data|adjust1|Add0~82\ = CARRY(( \data|adjust1|cout\(3) ) + ( VCC ) + ( \data|adjust1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(3),
	cin => \data|adjust1|Add0~86\,
	sumout => \data|adjust1|Add0~81_sumout\,
	cout => \data|adjust1|Add0~82\);

-- Location: LABCELL_X17_Y4_N45
\data|adjust1|cout~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~17_combout\ = ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~81_sumout\,
	combout => \data|adjust1|cout~17_combout\);

-- Location: FF_X17_Y4_N47
\data|adjust1|cout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(3));

-- Location: LABCELL_X16_Y4_N42
\data|adjust1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~69_sumout\ = SUM(( \data|adjust1|cout\(4) ) + ( VCC ) + ( \data|adjust1|Add0~82\ ))
-- \data|adjust1|Add0~70\ = CARRY(( \data|adjust1|cout\(4) ) + ( VCC ) + ( \data|adjust1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(4),
	cin => \data|adjust1|Add0~82\,
	sumout => \data|adjust1|Add0~69_sumout\,
	cout => \data|adjust1|Add0~70\);

-- Location: LABCELL_X17_Y4_N9
\data|adjust1|cout~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~14_combout\ = ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Add0~69_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~14_combout\);

-- Location: FF_X17_Y4_N11
\data|adjust1|cout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(4));

-- Location: LABCELL_X16_Y4_N45
\data|adjust1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~65_sumout\ = SUM(( \data|adjust1|cout\(5) ) + ( VCC ) + ( \data|adjust1|Add0~70\ ))
-- \data|adjust1|Add0~66\ = CARRY(( \data|adjust1|cout\(5) ) + ( VCC ) + ( \data|adjust1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(5),
	cin => \data|adjust1|Add0~70\,
	sumout => \data|adjust1|Add0~65_sumout\,
	cout => \data|adjust1|Add0~66\);

-- Location: LABCELL_X17_Y4_N24
\data|adjust1|cout~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~13_combout\ = ( \data|adjust1|Add0~65_sumout\ & ( (!\data|adjust1|Equal0~combout\) # ((\SW[5]~input_o\ & \SW[4]~input_o\)) ) ) # ( !\data|adjust1|Add0~65_sumout\ & ( (\data|adjust1|Equal0~combout\ & (\SW[5]~input_o\ & \SW[4]~input_o\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111001100110011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Add0~65_sumout\,
	combout => \data|adjust1|cout~13_combout\);

-- Location: FF_X17_Y4_N26
\data|adjust1|cout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(5));

-- Location: LABCELL_X16_Y4_N48
\data|adjust1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~105_sumout\ = SUM(( \data|adjust1|cout\(6) ) + ( VCC ) + ( \data|adjust1|Add0~66\ ))
-- \data|adjust1|Add0~106\ = CARRY(( \data|adjust1|cout\(6) ) + ( VCC ) + ( \data|adjust1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(6),
	cin => \data|adjust1|Add0~66\,
	sumout => \data|adjust1|Add0~105_sumout\,
	cout => \data|adjust1|Add0~106\);

-- Location: LABCELL_X16_Y4_N24
\data|adjust1|cout~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~23_combout\ = ( \data|adjust1|Equal0~combout\ & ( (\SW[5]~input_o\ & !\SW[4]~input_o\) ) ) # ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \data|adjust1|ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~23_combout\);

-- Location: FF_X16_Y4_N26
\data|adjust1|cout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(6));

-- Location: LABCELL_X16_Y4_N51
\data|adjust1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~109_sumout\ = SUM(( \data|adjust1|cout\(7) ) + ( VCC ) + ( \data|adjust1|Add0~106\ ))
-- \data|adjust1|Add0~110\ = CARRY(( \data|adjust1|cout\(7) ) + ( VCC ) + ( \data|adjust1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(7),
	cin => \data|adjust1|Add0~106\,
	sumout => \data|adjust1|Add0~109_sumout\,
	cout => \data|adjust1|Add0~110\);

-- Location: LABCELL_X16_Y4_N27
\data|adjust1|cout~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~24_combout\ = ( \data|adjust1|Equal0~combout\ & ( (!\SW[5]~input_o\ & \SW[4]~input_o\) ) ) # ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \data|adjust1|ALT_INV_Add0~109_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~24_combout\);

-- Location: FF_X16_Y4_N29
\data|adjust1|cout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(7));

-- Location: LABCELL_X16_Y4_N54
\data|adjust1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~101_sumout\ = SUM(( \data|adjust1|cout\(8) ) + ( VCC ) + ( \data|adjust1|Add0~110\ ))
-- \data|adjust1|Add0~102\ = CARRY(( \data|adjust1|cout\(8) ) + ( VCC ) + ( \data|adjust1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(8),
	cin => \data|adjust1|Add0~110\,
	sumout => \data|adjust1|Add0~101_sumout\,
	cout => \data|adjust1|Add0~102\);

-- Location: LABCELL_X16_Y4_N12
\data|adjust1|cout~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~22_combout\ = ( \data|adjust1|Add0~101_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (!\SW[5]~input_o\ & !\SW[4]~input_o\) ) ) ) # ( !\data|adjust1|Add0~101_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (!\SW[5]~input_o\ & 
-- !\SW[4]~input_o\) ) ) ) # ( \data|adjust1|Add0~101_sumout\ & ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \data|adjust1|ALT_INV_Add0~101_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~22_combout\);

-- Location: FF_X16_Y4_N14
\data|adjust1|cout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(8));

-- Location: LABCELL_X16_Y4_N57
\data|adjust1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~97_sumout\ = SUM(( \data|adjust1|cout\(9) ) + ( VCC ) + ( \data|adjust1|Add0~102\ ))
-- \data|adjust1|Add0~98\ = CARRY(( \data|adjust1|cout\(9) ) + ( VCC ) + ( \data|adjust1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(9),
	cin => \data|adjust1|Add0~102\,
	sumout => \data|adjust1|Add0~97_sumout\,
	cout => \data|adjust1|Add0~98\);

-- Location: LABCELL_X16_Y4_N18
\data|adjust1|cout~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~21_combout\ = ( \data|adjust1|Add0~97_sumout\ & ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~97_sumout\,
	combout => \data|adjust1|cout~21_combout\);

-- Location: FF_X16_Y4_N20
\data|adjust1|cout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(9));

-- Location: LABCELL_X16_Y3_N0
\data|adjust1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~93_sumout\ = SUM(( \data|adjust1|cout\(10) ) + ( VCC ) + ( \data|adjust1|Add0~98\ ))
-- \data|adjust1|Add0~94\ = CARRY(( \data|adjust1|cout\(10) ) + ( VCC ) + ( \data|adjust1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(10),
	cin => \data|adjust1|Add0~98\,
	sumout => \data|adjust1|Add0~93_sumout\,
	cout => \data|adjust1|Add0~94\);

-- Location: LABCELL_X16_Y4_N3
\data|adjust1|cout~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~20_combout\ = ( \SW[4]~input_o\ & ( \data|adjust1|Add0~93_sumout\ & ( (!\data|adjust1|Equal0~combout\) # (\SW[5]~input_o\) ) ) ) # ( !\SW[4]~input_o\ & ( \data|adjust1|Add0~93_sumout\ & ( !\data|adjust1|Equal0~combout\ ) ) ) # ( 
-- \SW[4]~input_o\ & ( !\data|adjust1|Add0~93_sumout\ & ( (\data|adjust1|Equal0~combout\ & \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111001100110011001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Add0~93_sumout\,
	combout => \data|adjust1|cout~20_combout\);

-- Location: FF_X16_Y4_N5
\data|adjust1|cout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(10));

-- Location: LABCELL_X16_Y3_N3
\data|adjust1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~89_sumout\ = SUM(( \data|adjust1|cout\(11) ) + ( VCC ) + ( \data|adjust1|Add0~94\ ))
-- \data|adjust1|Add0~90\ = CARRY(( \data|adjust1|cout\(11) ) + ( VCC ) + ( \data|adjust1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(11),
	cin => \data|adjust1|Add0~94\,
	sumout => \data|adjust1|Add0~89_sumout\,
	cout => \data|adjust1|Add0~90\);

-- Location: LABCELL_X16_Y6_N39
\data|adjust1|cout~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~19_combout\ = ( \data|adjust1|Add0~89_sumout\ & ( \data|adjust1|Equal0~combout\ & ( \SW[5]~input_o\ ) ) ) # ( !\data|adjust1|Add0~89_sumout\ & ( \data|adjust1|Equal0~combout\ & ( \SW[5]~input_o\ ) ) ) # ( \data|adjust1|Add0~89_sumout\ & 
-- ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datae => \data|adjust1|ALT_INV_Add0~89_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~19_combout\);

-- Location: FF_X16_Y6_N41
\data|adjust1|cout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(11));

-- Location: LABCELL_X16_Y3_N6
\data|adjust1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~57_sumout\ = SUM(( \data|adjust1|cout\(12) ) + ( VCC ) + ( \data|adjust1|Add0~90\ ))
-- \data|adjust1|Add0~58\ = CARRY(( \data|adjust1|cout\(12) ) + ( VCC ) + ( \data|adjust1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(12),
	cin => \data|adjust1|Add0~90\,
	sumout => \data|adjust1|Add0~57_sumout\,
	cout => \data|adjust1|Add0~58\);

-- Location: LABCELL_X17_Y4_N48
\data|adjust1|cout~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~12_combout\ = ( \data|adjust1|Add0~57_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (\SW[5]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( !\data|adjust1|Add0~57_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (\SW[5]~input_o\) # 
-- (\SW[4]~input_o\) ) ) ) # ( \data|adjust1|Add0~57_sumout\ & ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \data|adjust1|ALT_INV_Add0~57_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~12_combout\);

-- Location: FF_X17_Y4_N50
\data|adjust1|cout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(12));

-- Location: LABCELL_X16_Y3_N9
\data|adjust1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~61_sumout\ = SUM(( \data|adjust1|cout\(13) ) + ( VCC ) + ( \data|adjust1|Add0~58\ ))
-- \data|adjust1|Add0~62\ = CARRY(( \data|adjust1|cout\(13) ) + ( VCC ) + ( \data|adjust1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data|adjust1|ALT_INV_cout\(13),
	cin => \data|adjust1|Add0~58\,
	sumout => \data|adjust1|Add0~61_sumout\,
	cout => \data|adjust1|Add0~62\);

-- Location: FF_X16_Y3_N10
\data|adjust1|cout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(13));

-- Location: LABCELL_X16_Y3_N12
\data|adjust1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~53_sumout\ = SUM(( \data|adjust1|cout\(14) ) + ( VCC ) + ( \data|adjust1|Add0~62\ ))
-- \data|adjust1|Add0~54\ = CARRY(( \data|adjust1|cout\(14) ) + ( VCC ) + ( \data|adjust1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(14),
	cin => \data|adjust1|Add0~62\,
	sumout => \data|adjust1|Add0~53_sumout\,
	cout => \data|adjust1|Add0~54\);

-- Location: LABCELL_X17_Y4_N33
\data|adjust1|cout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~11_combout\ = ( \data|adjust1|Add0~53_sumout\ & ( (!\SW[5]~input_o\) # ((!\data|adjust1|Equal0~combout\) # (!\SW[4]~input_o\)) ) ) # ( !\data|adjust1|Add0~53_sumout\ & ( (\data|adjust1|Equal0~combout\ & ((!\SW[5]~input_o\) # 
-- (!\SW[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Add0~53_sumout\,
	combout => \data|adjust1|cout~11_combout\);

-- Location: FF_X17_Y4_N35
\data|adjust1|cout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(14));

-- Location: LABCELL_X16_Y3_N15
\data|adjust1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~49_sumout\ = SUM(( \data|adjust1|cout\(15) ) + ( VCC ) + ( \data|adjust1|Add0~54\ ))
-- \data|adjust1|Add0~50\ = CARRY(( \data|adjust1|cout\(15) ) + ( VCC ) + ( \data|adjust1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(15),
	cin => \data|adjust1|Add0~54\,
	sumout => \data|adjust1|Add0~49_sumout\,
	cout => \data|adjust1|Add0~50\);

-- Location: LABCELL_X17_Y4_N30
\data|adjust1|cout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~10_combout\ = ( \data|adjust1|Add0~49_sumout\ & ( (!\SW[5]~input_o\) # ((!\data|adjust1|Equal0~combout\) # (\SW[4]~input_o\)) ) ) # ( !\data|adjust1|Add0~49_sumout\ & ( (\data|adjust1|Equal0~combout\ & ((!\SW[5]~input_o\) # 
-- (\SW[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Add0~49_sumout\,
	combout => \data|adjust1|cout~10_combout\);

-- Location: FF_X17_Y4_N32
\data|adjust1|cout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(15));

-- Location: LABCELL_X16_Y3_N18
\data|adjust1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~45_sumout\ = SUM(( \data|adjust1|cout\(16) ) + ( VCC ) + ( \data|adjust1|Add0~50\ ))
-- \data|adjust1|Add0~46\ = CARRY(( \data|adjust1|cout\(16) ) + ( VCC ) + ( \data|adjust1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(16),
	cin => \data|adjust1|Add0~50\,
	sumout => \data|adjust1|Add0~45_sumout\,
	cout => \data|adjust1|Add0~46\);

-- Location: LABCELL_X17_Y4_N3
\data|adjust1|cout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~9_combout\ = ( \data|adjust1|Add0~45_sumout\ & ( (!\data|adjust1|Equal0~combout\) # (!\SW[4]~input_o\) ) ) # ( !\data|adjust1|Add0~45_sumout\ & ( (\data|adjust1|Equal0~combout\ & !\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Add0~45_sumout\,
	combout => \data|adjust1|cout~9_combout\);

-- Location: FF_X17_Y4_N5
\data|adjust1|cout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(16));

-- Location: LABCELL_X16_Y3_N21
\data|adjust1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~41_sumout\ = SUM(( \data|adjust1|cout\(17) ) + ( VCC ) + ( \data|adjust1|Add0~46\ ))
-- \data|adjust1|Add0~42\ = CARRY(( \data|adjust1|cout\(17) ) + ( VCC ) + ( \data|adjust1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(17),
	cin => \data|adjust1|Add0~46\,
	sumout => \data|adjust1|Add0~41_sumout\,
	cout => \data|adjust1|Add0~42\);

-- Location: LABCELL_X17_Y4_N0
\data|adjust1|cout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~8_combout\ = ( \data|adjust1|Add0~41_sumout\ & ( (!\data|adjust1|Equal0~combout\) # (\SW[4]~input_o\) ) ) # ( !\data|adjust1|Add0~41_sumout\ & ( (\data|adjust1|Equal0~combout\ & \SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_Equal0~combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \data|adjust1|ALT_INV_Add0~41_sumout\,
	combout => \data|adjust1|cout~8_combout\);

-- Location: FF_X17_Y4_N2
\data|adjust1|cout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(17));

-- Location: LABCELL_X17_Y4_N54
\data|adjust1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Equal0~2_combout\ = ( !\data|adjust1|cout\(16) & ( !\data|adjust1|cout\(12) & ( (!\data|adjust1|cout\(17) & (!\data|adjust1|cout\(15) & (!\data|adjust1|cout\(14) & !\data|adjust1|cout\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(17),
	datab => \data|adjust1|ALT_INV_cout\(15),
	datac => \data|adjust1|ALT_INV_cout\(14),
	datad => \data|adjust1|ALT_INV_cout\(13),
	datae => \data|adjust1|ALT_INV_cout\(16),
	dataf => \data|adjust1|ALT_INV_cout\(12),
	combout => \data|adjust1|Equal0~2_combout\);

-- Location: LABCELL_X17_Y4_N15
\data|adjust1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Equal0~3_combout\ = ( !\data|adjust1|cout\(2) & ( !\data|adjust1|cout\(5) & ( (!\data|adjust1|cout\(0) & (!\data|adjust1|cout\(4) & (!\data|adjust1|cout\(3) & !\data|adjust1|cout\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(0),
	datab => \data|adjust1|ALT_INV_cout\(4),
	datac => \data|adjust1|ALT_INV_cout\(3),
	datad => \data|adjust1|ALT_INV_cout\(1),
	datae => \data|adjust1|ALT_INV_cout\(2),
	dataf => \data|adjust1|ALT_INV_cout\(5),
	combout => \data|adjust1|Equal0~3_combout\);

-- Location: LABCELL_X16_Y3_N24
\data|adjust1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~33_sumout\ = SUM(( \data|adjust1|cout\(18) ) + ( VCC ) + ( \data|adjust1|Add0~42\ ))
-- \data|adjust1|Add0~34\ = CARRY(( \data|adjust1|cout\(18) ) + ( VCC ) + ( \data|adjust1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(18),
	cin => \data|adjust1|Add0~42\,
	sumout => \data|adjust1|Add0~33_sumout\,
	cout => \data|adjust1|Add0~34\);

-- Location: LABCELL_X17_Y3_N24
\data|adjust1|cout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~6_combout\ = ( \data|adjust1|Equal0~combout\ & ( (!\SW[4]~input_o\) # (\SW[5]~input_o\) ) ) # ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \data|adjust1|ALT_INV_Add0~33_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~6_combout\);

-- Location: FF_X17_Y3_N26
\data|adjust1|cout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(18));

-- Location: LABCELL_X16_Y3_N27
\data|adjust1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~37_sumout\ = SUM(( \data|adjust1|cout\(19) ) + ( VCC ) + ( \data|adjust1|Add0~34\ ))
-- \data|adjust1|Add0~38\ = CARRY(( \data|adjust1|cout\(19) ) + ( VCC ) + ( \data|adjust1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(19),
	cin => \data|adjust1|Add0~34\,
	sumout => \data|adjust1|Add0~37_sumout\,
	cout => \data|adjust1|Add0~38\);

-- Location: LABCELL_X17_Y3_N42
\data|adjust1|cout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~7_combout\ = ( \data|adjust1|Add0~37_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (\SW[5]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( !\data|adjust1|Add0~37_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (\SW[5]~input_o\) # 
-- (\SW[4]~input_o\) ) ) ) # ( \data|adjust1|Add0~37_sumout\ & ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \data|adjust1|ALT_INV_Add0~37_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~7_combout\);

-- Location: FF_X17_Y3_N44
\data|adjust1|cout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(19));

-- Location: LABCELL_X16_Y3_N30
\data|adjust1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~29_sumout\ = SUM(( \data|adjust1|cout\(20) ) + ( VCC ) + ( \data|adjust1|Add0~38\ ))
-- \data|adjust1|Add0~30\ = CARRY(( \data|adjust1|cout\(20) ) + ( VCC ) + ( \data|adjust1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data|adjust1|ALT_INV_cout\(20),
	cin => \data|adjust1|Add0~38\,
	sumout => \data|adjust1|Add0~29_sumout\,
	cout => \data|adjust1|Add0~30\);

-- Location: FF_X16_Y3_N31
\data|adjust1|cout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(20));

-- Location: LABCELL_X16_Y3_N33
\data|adjust1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~25_sumout\ = SUM(( \data|adjust1|cout\(21) ) + ( VCC ) + ( \data|adjust1|Add0~30\ ))
-- \data|adjust1|Add0~26\ = CARRY(( \data|adjust1|cout\(21) ) + ( VCC ) + ( \data|adjust1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data|adjust1|ALT_INV_cout\(21),
	cin => \data|adjust1|Add0~30\,
	sumout => \data|adjust1|Add0~25_sumout\,
	cout => \data|adjust1|Add0~26\);

-- Location: FF_X16_Y3_N34
\data|adjust1|cout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(21));

-- Location: LABCELL_X16_Y3_N36
\data|adjust1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~21_sumout\ = SUM(( \data|adjust1|cout\(22) ) + ( VCC ) + ( \data|adjust1|Add0~26\ ))
-- \data|adjust1|Add0~22\ = CARRY(( \data|adjust1|cout\(22) ) + ( VCC ) + ( \data|adjust1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|adjust1|ALT_INV_cout\(22),
	cin => \data|adjust1|Add0~26\,
	sumout => \data|adjust1|Add0~21_sumout\,
	cout => \data|adjust1|Add0~22\);

-- Location: LABCELL_X17_Y3_N6
\data|adjust1|cout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~5_combout\ = ( \data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~21_sumout\ & ( (!\SW[4]~input_o\) # (!\SW[5]~input_o\) ) ) ) # ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~21_sumout\ ) ) # ( \data|adjust1|Equal0~combout\ 
-- & ( !\data|adjust1|Add0~21_sumout\ & ( (!\SW[4]~input_o\) # (!\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~21_sumout\,
	combout => \data|adjust1|cout~5_combout\);

-- Location: FF_X17_Y3_N8
\data|adjust1|cout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(22));

-- Location: LABCELL_X16_Y3_N39
\data|adjust1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~17_sumout\ = SUM(( \data|adjust1|cout\(23) ) + ( VCC ) + ( \data|adjust1|Add0~22\ ))
-- \data|adjust1|Add0~18\ = CARRY(( \data|adjust1|cout\(23) ) + ( VCC ) + ( \data|adjust1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(23),
	cin => \data|adjust1|Add0~22\,
	sumout => \data|adjust1|Add0~17_sumout\,
	cout => \data|adjust1|Add0~18\);

-- Location: LABCELL_X17_Y3_N21
\data|adjust1|cout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~4_combout\ = ( \data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~17_sumout\ & ( (!\SW[5]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~17_sumout\ ) ) # ( \data|adjust1|Equal0~combout\ & 
-- ( !\data|adjust1|Add0~17_sumout\ & ( (!\SW[5]~input_o\) # (\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~17_sumout\,
	combout => \data|adjust1|cout~4_combout\);

-- Location: FF_X17_Y3_N23
\data|adjust1|cout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(23));

-- Location: LABCELL_X17_Y3_N33
\data|adjust1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Equal0~1_combout\ = ( !\data|adjust1|cout\(23) & ( !\data|adjust1|cout\(22) & ( (!\data|adjust1|cout\(20) & (!\data|adjust1|cout\(21) & (!\data|adjust1|cout\(19) & !\data|adjust1|cout\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(20),
	datab => \data|adjust1|ALT_INV_cout\(21),
	datac => \data|adjust1|ALT_INV_cout\(19),
	datad => \data|adjust1|ALT_INV_cout\(18),
	datae => \data|adjust1|ALT_INV_cout\(23),
	dataf => \data|adjust1|ALT_INV_cout\(22),
	combout => \data|adjust1|Equal0~1_combout\);

-- Location: LABCELL_X16_Y4_N9
\data|adjust1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Equal0~4_combout\ = ( !\data|adjust1|cout\(7) & ( !\data|adjust1|cout\(6) & ( (!\data|adjust1|cout\(9) & (!\data|adjust1|cout\(8) & !\data|adjust1|cout\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(9),
	datac => \data|adjust1|ALT_INV_cout\(8),
	datad => \data|adjust1|ALT_INV_cout\(10),
	datae => \data|adjust1|ALT_INV_cout\(7),
	dataf => \data|adjust1|ALT_INV_cout\(6),
	combout => \data|adjust1|Equal0~4_combout\);

-- Location: LABCELL_X16_Y3_N42
\data|adjust1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~9_sumout\ = SUM(( \data|adjust1|cout\(24) ) + ( VCC ) + ( \data|adjust1|Add0~18\ ))
-- \data|adjust1|Add0~10\ = CARRY(( \data|adjust1|cout\(24) ) + ( VCC ) + ( \data|adjust1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(24),
	cin => \data|adjust1|Add0~18\,
	sumout => \data|adjust1|Add0~9_sumout\,
	cout => \data|adjust1|Add0~10\);

-- Location: LABCELL_X17_Y3_N54
\data|adjust1|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~2_combout\ = ( \data|adjust1|Add0~9_sumout\ & ( \data|adjust1|Equal0~combout\ & ( !\SW[4]~input_o\ ) ) ) # ( !\data|adjust1|Add0~9_sumout\ & ( \data|adjust1|Equal0~combout\ & ( !\SW[4]~input_o\ ) ) ) # ( \data|adjust1|Add0~9_sumout\ & ( 
-- !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datae => \data|adjust1|ALT_INV_Add0~9_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~2_combout\);

-- Location: FF_X17_Y3_N56
\data|adjust1|cout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(24));

-- Location: LABCELL_X16_Y3_N45
\data|adjust1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~13_sumout\ = SUM(( \data|adjust1|cout\(25) ) + ( VCC ) + ( \data|adjust1|Add0~10\ ))
-- \data|adjust1|Add0~14\ = CARRY(( \data|adjust1|cout\(25) ) + ( VCC ) + ( \data|adjust1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(25),
	cin => \data|adjust1|Add0~10\,
	sumout => \data|adjust1|Add0~13_sumout\,
	cout => \data|adjust1|Add0~14\);

-- Location: LABCELL_X17_Y3_N15
\data|adjust1|cout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~3_combout\ = ( \data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~13_sumout\ & ( (!\SW[5]~input_o\ & \SW[4]~input_o\) ) ) ) # ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~13_sumout\ ) ) # ( \data|adjust1|Equal0~combout\ & ( 
-- !\data|adjust1|Add0~13_sumout\ & ( (!\SW[5]~input_o\ & \SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101011111111111111110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~13_sumout\,
	combout => \data|adjust1|cout~3_combout\);

-- Location: FF_X17_Y3_N17
\data|adjust1|cout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(25));

-- Location: LABCELL_X16_Y3_N48
\data|adjust1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~5_sumout\ = SUM(( \data|adjust1|cout\(26) ) + ( VCC ) + ( \data|adjust1|Add0~14\ ))
-- \data|adjust1|Add0~6\ = CARRY(( \data|adjust1|cout\(26) ) + ( VCC ) + ( \data|adjust1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|adjust1|ALT_INV_cout\(26),
	cin => \data|adjust1|Add0~14\,
	sumout => \data|adjust1|Add0~5_sumout\,
	cout => \data|adjust1|Add0~6\);

-- Location: LABCELL_X17_Y3_N48
\data|adjust1|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~1_combout\ = ( \data|adjust1|Add0~5_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (!\SW[4]~input_o\ & !\SW[5]~input_o\) ) ) ) # ( !\data|adjust1|Add0~5_sumout\ & ( \data|adjust1|Equal0~combout\ & ( (!\SW[4]~input_o\ & !\SW[5]~input_o\) 
-- ) ) ) # ( \data|adjust1|Add0~5_sumout\ & ( !\data|adjust1|Equal0~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \data|adjust1|ALT_INV_Add0~5_sumout\,
	dataf => \data|adjust1|ALT_INV_Equal0~combout\,
	combout => \data|adjust1|cout~1_combout\);

-- Location: FF_X17_Y3_N50
\data|adjust1|cout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(26));

-- Location: LABCELL_X16_Y3_N51
\data|adjust1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Add0~1_sumout\ = SUM(( \data|adjust1|cout\(27) ) + ( VCC ) + ( \data|adjust1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(27),
	cin => \data|adjust1|Add0~6\,
	sumout => \data|adjust1|Add0~1_sumout\);

-- Location: LABCELL_X17_Y3_N0
\data|adjust1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|cout~0_combout\ = ( !\data|adjust1|Equal0~combout\ & ( \data|adjust1|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \data|adjust1|ALT_INV_Equal0~combout\,
	dataf => \data|adjust1|ALT_INV_Add0~1_sumout\,
	combout => \data|adjust1|cout~0_combout\);

-- Location: FF_X17_Y3_N2
\data|adjust1|cout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|adjust1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|adjust1|cout\(27));

-- Location: LABCELL_X17_Y3_N39
\data|adjust1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Equal0~0_combout\ = ( !\data|adjust1|cout\(24) & ( !\data|adjust1|cout\(25) & ( (!\data|adjust1|cout\(27) & !\data|adjust1|cout\(26)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(27),
	datad => \data|adjust1|ALT_INV_cout\(26),
	datae => \data|adjust1|ALT_INV_cout\(24),
	dataf => \data|adjust1|ALT_INV_cout\(25),
	combout => \data|adjust1|Equal0~0_combout\);

-- Location: LABCELL_X16_Y10_N9
\data|adjust1|Equal0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|adjust1|Equal0~combout\ = LCELL(( \data|adjust1|Equal0~4_combout\ & ( \data|adjust1|Equal0~0_combout\ & ( (!\data|adjust1|cout\(11) & (\data|adjust1|Equal0~2_combout\ & (\data|adjust1|Equal0~3_combout\ & \data|adjust1|Equal0~1_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|adjust1|ALT_INV_cout\(11),
	datab => \data|adjust1|ALT_INV_Equal0~2_combout\,
	datac => \data|adjust1|ALT_INV_Equal0~3_combout\,
	datad => \data|adjust1|ALT_INV_Equal0~1_combout\,
	datae => \data|adjust1|ALT_INV_Equal0~4_combout\,
	dataf => \data|adjust1|ALT_INV_Equal0~0_combout\,
	combout => \data|adjust1|Equal0~combout\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X27_Y4_N36
\data|D|Y.LANE3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|D|Y.LANE3~0_combout\ = ( \SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \data|D|Y.LANE3~0_combout\);

-- Location: FF_X27_Y4_N37
\data|D|y.LANE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|D|Y.LANE3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|y.LANE3~q\);

-- Location: LABCELL_X45_Y10_N0
\data|D|osignal[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|D|osignal[2]~feeder_combout\ = ( \data|D|y.LANE3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \data|D|ALT_INV_y.LANE3~q\,
	combout => \data|D|osignal[2]~feeder_combout\);

-- Location: FF_X45_Y10_N1
\data|D|osignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|D|osignal[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|osignal\(2));

-- Location: LABCELL_X46_Y10_N30
\data|s3|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|s3|tmp~0_combout\ = ( \data|D|osignal\(2) & ( !\data|f1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data|f1|ALT_INV_Q~q\,
	dataf => \data|D|ALT_INV_osignal\(2),
	combout => \data|s3|tmp~0_combout\);

-- Location: FF_X46_Y10_N32
\data|s3|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	d => \data|s3|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s3|tmp\(0));

-- Location: FF_X46_Y11_N49
\data|s3|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s3|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s3|tmp\(1));

-- Location: FF_X43_Y11_N23
\data|s3|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s3|tmp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s3|tmp\(2));

-- Location: LABCELL_X27_Y4_N15
\data|D|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|D|Equal1~0_combout\ = ( !\SW[2]~input_o\ & ( \SW[0]~input_o\ & ( (!\SW[3]~input_o\ & !\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \data|D|Equal1~0_combout\);

-- Location: FF_X27_Y4_N16
\data|D|y.LANE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|D|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|y.LANE1~q\);

-- Location: FF_X48_Y10_N4
\data|D|osignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \data|D|y.LANE1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|osignal\(0));

-- Location: MLABCELL_X47_Y10_N0
\data|s1|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|s1|tmp~0_combout\ = ( !\data|f1|Q~q\ & ( \data|D|osignal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \data|f1|ALT_INV_Q~q\,
	dataf => \data|D|ALT_INV_osignal\(0),
	combout => \data|s1|tmp~0_combout\);

-- Location: FF_X47_Y10_N2
\data|s1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	d => \data|s1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s1|tmp\(0));

-- Location: FF_X46_Y11_N28
\data|s1|tmp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s1|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s1|tmp[1]~DUPLICATE_q\);

-- Location: FF_X43_Y11_N14
\data|s1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s1|tmp[1]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s1|tmp\(2));

-- Location: IOIBUF_X6_Y0_N18
\PS2_DAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: MLABCELL_X39_Y2_N39
\AA|PS2|ps2_data_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|ps2_data_reg~0_combout\ = ( \PS2_DAT~input_o\ ) # ( !\PS2_DAT~input_o\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_PS2_DAT~input_o\,
	combout => \AA|PS2|ps2_data_reg~0_combout\);

-- Location: FF_X39_Y2_N41
\AA|PS2|ps2_data_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|ps2_data_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|ps2_data_reg~q\);

-- Location: LABCELL_X43_Y3_N18
\AA|PS2|PS2_Data_In|data_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|data_count~3_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (!\AA|PS2|last_ps2_clk~q\ & (\KEY[0]~input_o\ & (\AA|PS2|ps2_clk_reg~q\ & !\AA|PS2|PS2_Data_In|data_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(0),
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|data_count~3_combout\);

-- Location: LABCELL_X43_Y3_N21
\AA|PS2|PS2_Data_In|data_count[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|data_count[2]~1_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (!\KEY[0]~input_o\) # ((!\AA|PS2|last_ps2_clk~q\ & \AA|PS2|ps2_clk_reg~q\)) ) ) # ( !\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datad => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|data_count[2]~1_combout\);

-- Location: FF_X43_Y3_N20
\AA|PS2|PS2_Data_In|data_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|data_count~3_combout\,
	ena => \AA|PS2|PS2_Data_In|data_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_count\(0));

-- Location: LABCELL_X43_Y3_N0
\AA|PS2|PS2_Data_In|data_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|data_count~4_combout\ = ( \AA|PS2|PS2_Data_In|data_count\(1) & ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (!\AA|PS2|last_ps2_clk~q\ & (\KEY[0]~input_o\ & (\AA|PS2|ps2_clk_reg~q\ & 
-- !\AA|PS2|PS2_Data_In|data_count\(0)))) ) ) ) # ( !\AA|PS2|PS2_Data_In|data_count\(1) & ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (!\AA|PS2|last_ps2_clk~q\ & (\KEY[0]~input_o\ & (\AA|PS2|ps2_clk_reg~q\ & 
-- \AA|PS2|PS2_Data_In|data_count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(0),
	datae => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(1),
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|data_count~4_combout\);

-- Location: FF_X43_Y3_N2
\AA|PS2|PS2_Data_In|data_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|data_count~4_combout\,
	ena => \AA|PS2|PS2_Data_In|data_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_count\(1));

-- Location: LABCELL_X43_Y3_N24
\AA|PS2|PS2_Data_In|data_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|data_count~2_combout\ = ( \AA|PS2|PS2_Data_In|data_count\(2) & ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (\AA|PS2|ps2_clk_posedge~combout\ & (\KEY[0]~input_o\ & ((!\AA|PS2|PS2_Data_In|data_count\(1)) # 
-- (!\AA|PS2|PS2_Data_In|data_count\(0))))) ) ) ) # ( !\AA|PS2|PS2_Data_In|data_count\(2) & ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (\AA|PS2|PS2_Data_In|data_count\(1) & (\AA|PS2|ps2_clk_posedge~combout\ & 
-- (\AA|PS2|PS2_Data_In|data_count\(0) & \KEY[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(1),
	datab => \AA|PS2|ALT_INV_ps2_clk_posedge~combout\,
	datac => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(0),
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(2),
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|data_count~2_combout\);

-- Location: FF_X43_Y3_N26
\AA|PS2|PS2_Data_In|data_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|data_count~2_combout\,
	ena => \AA|PS2|PS2_Data_In|data_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_count\(2));

-- Location: LABCELL_X43_Y3_N54
\AA|PS2|PS2_Data_In|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|Add0~0_combout\ = ( \AA|PS2|PS2_Data_In|data_count\(0) & ( !\AA|PS2|PS2_Data_In|data_count\(3) $ (((!\AA|PS2|PS2_Data_In|data_count\(2)) # (!\AA|PS2|PS2_Data_In|data_count\(1)))) ) ) # ( !\AA|PS2|PS2_Data_In|data_count\(0) & ( 
-- \AA|PS2|PS2_Data_In|data_count\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(3),
	datac => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(2),
	datad => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(1),
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(0),
	combout => \AA|PS2|PS2_Data_In|Add0~0_combout\);

-- Location: LABCELL_X43_Y3_N57
\AA|PS2|PS2_Data_In|data_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|data_count~0_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (\KEY[0]~input_o\ & (\AA|PS2|ps2_clk_posedge~combout\ & \AA|PS2|PS2_Data_In|Add0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|ALT_INV_ps2_clk_posedge~combout\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_Add0~0_combout\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|data_count~0_combout\);

-- Location: FF_X43_Y3_N59
\AA|PS2|PS2_Data_In|data_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|data_count~0_combout\,
	ena => \AA|PS2|PS2_Data_In|data_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_count\(3));

-- Location: LABCELL_X43_Y3_N30
\AA|PS2|PS2_Data_In|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|always1~0_combout\ = ( \AA|PS2|PS2_Data_In|data_count\(1) & ( \AA|PS2|PS2_Data_In|data_count\(2) & ( (!\AA|PS2|last_ps2_clk~q\ & (!\AA|PS2|PS2_Data_In|data_count\(3) & (\AA|PS2|ps2_clk_reg~q\ & \AA|PS2|PS2_Data_In|data_count\(0)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(3),
	datac => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(0),
	datae => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(1),
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_data_count\(2),
	combout => \AA|PS2|PS2_Data_In|always1~0_combout\);

-- Location: LABCELL_X43_Y3_N45
\AA|PS2|PS2_Data_In|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|Selector3~0_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( ((!\AA|PS2|ps2_clk_posedge~combout\ & \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\)) # (\AA|PS2|PS2_Data_In|always1~0_combout\) ) ) # 
-- ( !\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (!\AA|PS2|ps2_clk_posedge~combout\ & \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|PS2|PS2_Data_In|ALT_INV_always1~0_combout\,
	datac => \AA|PS2|ALT_INV_ps2_clk_posedge~combout\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|Selector3~0_combout\);

-- Location: FF_X43_Y3_N46
\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|Selector3~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\);

-- Location: LABCELL_X42_Y3_N0
\AA|PS2|PS2_Data_In|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|Selector4~0_combout\ = ( \AA|PS2|ps2_clk_reg~q\ & ( (!\AA|PS2|last_ps2_clk~q\ & (\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\)) # (\AA|PS2|last_ps2_clk~q\ & ((\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\))) 
-- ) ) # ( !\AA|PS2|ps2_clk_reg~q\ & ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_3_PARITY_IN~q\,
	datac => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_4_STOP_IN~q\,
	dataf => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	combout => \AA|PS2|PS2_Data_In|Selector4~0_combout\);

-- Location: FF_X42_Y3_N2
\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|Selector4~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\);

-- Location: LABCELL_X43_Y3_N15
\AA|PS2|PS2_Data_In|always5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|always5~0_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\ & ( (!\AA|PS2|last_ps2_clk~q\ & \AA|PS2|ps2_clk_reg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datad => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_4_STOP_IN~q\,
	combout => \AA|PS2|PS2_Data_In|always5~0_combout\);

-- Location: FF_X43_Y3_N17
\AA|PS2|PS2_Data_In|received_data_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|always5~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data_en~q\);

-- Location: LABCELL_X43_Y3_N6
\AA|PS2|s_ps2_transceiver~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|s_ps2_transceiver~9_combout\ = ( \AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ & ( (!\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & \KEY[0]~input_o\) ) ) ) # ( 
-- !\AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ & ( (!\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & (\AA|PS2|ps2_clk_posedge~combout\ & (\KEY[0]~input_o\ & !\AA|PS2|ps2_data_reg~q\))) ) ) ) # ( 
-- \AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & ( !\AA|PS2|PS2_Data_In|received_data_en~q\ & ( \KEY[0]~input_o\ ) ) ) # ( !\AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & ( !\AA|PS2|PS2_Data_In|received_data_en~q\ & ( (\AA|PS2|ps2_clk_posedge~combout\ & 
-- (\KEY[0]~input_o\ & !\AA|PS2|ps2_data_reg~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000011110000111100000010000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\,
	datab => \AA|PS2|ALT_INV_ps2_clk_posedge~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \AA|PS2|ALT_INV_ps2_data_reg~q\,
	datae => \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_0_IDLE~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	combout => \AA|PS2|s_ps2_transceiver~9_combout\);

-- Location: FF_X43_Y3_N8
\AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|s_ps2_transceiver~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\);

-- Location: LABCELL_X43_Y3_N36
\AA|PS2|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|Selector1~0_combout\ = ( \AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ & ( (\AA|PS2|ps2_clk_reg~q\ & (!\AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & (!\AA|PS2|last_ps2_clk~q\ & 
-- !\AA|PS2|ps2_data_reg~q\))) ) ) ) # ( !\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ & ( (\AA|PS2|ps2_clk_reg~q\ & (!\AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & (!\AA|PS2|last_ps2_clk~q\ & 
-- !\AA|PS2|ps2_data_reg~q\))) ) ) ) # ( \AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & ( !\AA|PS2|PS2_Data_In|received_data_en~q\ ) ) # ( !\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & ( !\AA|PS2|PS2_Data_In|received_data_en~q\ & ( 
-- (\AA|PS2|ps2_clk_reg~q\ & (!\AA|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~q\ & (!\AA|PS2|last_ps2_clk~q\ & !\AA|PS2|ps2_data_reg~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111111111111111101000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datab => \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_0_IDLE~q\,
	datac => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datad => \AA|PS2|ALT_INV_ps2_data_reg~q\,
	datae => \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	combout => \AA|PS2|Selector1~0_combout\);

-- Location: FF_X43_Y3_N38
\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|Selector1~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\);

-- Location: LABCELL_X43_Y3_N48
\AA|PS2|PS2_Data_In|s_ps2_receiver~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|s_ps2_receiver~9_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ & ( (\KEY[0]~input_o\ & ((!\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\) # 
-- (!\AA|PS2|ps2_clk_posedge~combout\))) ) ) ) # ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\ & ( !\AA|PS2|PS2_Data_In|received_data_en~q\ & ( (\KEY[0]~input_o\ & ((!\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\) # 
-- (!\AA|PS2|ps2_clk_posedge~combout\))) ) ) ) # ( !\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\ & ( !\AA|PS2|PS2_Data_In|received_data_en~q\ & ( (\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & (\KEY[0]~input_o\ & 
-- ((!\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\) # (!\AA|PS2|ps2_clk_posedge~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000011110000110000000000000000000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\,
	datab => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_4_STOP_IN~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \AA|PS2|ALT_INV_ps2_clk_posedge~combout\,
	datae => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_0_IDLE~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	combout => \AA|PS2|PS2_Data_In|s_ps2_receiver~9_combout\);

-- Location: FF_X43_Y3_N50
\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|s_ps2_receiver~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\);

-- Location: LABCELL_X43_Y3_N42
\AA|PS2|PS2_Data_In|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|Selector2~0_combout\ = ( \AA|PS2|PS2_Data_In|received_data_en~q\ & ( (!\AA|PS2|PS2_Data_In|always1~0_combout\ & \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\) ) ) # ( !\AA|PS2|PS2_Data_In|received_data_en~q\ & ( 
-- (!\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & (!\AA|PS2|PS2_Data_In|always1~0_combout\ & ((\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\)))) # (\AA|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\ & 
-- ((!\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~q\) # ((!\AA|PS2|PS2_Data_In|always1~0_combout\ & \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011011100010100001101110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_s_ps2_transceiver.PS2_STATE_1_DATA_IN~q\,
	datab => \AA|PS2|PS2_Data_In|ALT_INV_always1~0_combout\,
	datac => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_0_IDLE~q\,
	datad => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	combout => \AA|PS2|PS2_Data_In|Selector2~0_combout\);

-- Location: FF_X43_Y3_N44
\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|Selector2~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\);

-- Location: LABCELL_X45_Y3_N36
\AA|PS2|PS2_Data_In|data_shift_reg[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\ = ( \AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( (!\KEY[0]~input_o\) # ((!\AA|PS2|last_ps2_clk~q\ & \AA|PS2|ps2_clk_reg~q\)) ) ) # ( 
-- !\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|ALT_INV_last_ps2_clk~q\,
	datab => \AA|PS2|ALT_INV_ps2_clk_reg~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_2_DATA_IN~q\,
	combout => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\);

-- Location: FF_X42_Y10_N26
\AA|PS2|PS2_Data_In|data_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|ps2_data_reg~q\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(7));

-- Location: FF_X42_Y10_N17
\AA|PS2|PS2_Data_In|data_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(7),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(6));

-- Location: FF_X42_Y10_N8
\AA|PS2|PS2_Data_In|data_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(6),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(5));

-- Location: FF_X42_Y10_N29
\AA|PS2|PS2_Data_In|data_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(5),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(4));

-- Location: FF_X42_Y10_N50
\AA|PS2|PS2_Data_In|data_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(4),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(3));

-- Location: FF_X42_Y10_N53
\AA|PS2|PS2_Data_In|data_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(3),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(2));

-- Location: LABCELL_X43_Y10_N12
\AA|PS2|PS2_Data_In|received_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|received_data[2]~feeder_combout\ = ( \AA|PS2|PS2_Data_In|data_shift_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_data_shift_reg\(2),
	combout => \AA|PS2|PS2_Data_In|received_data[2]~feeder_combout\);

-- Location: LABCELL_X42_Y3_N42
\AA|PS2|PS2_Data_In|received_data[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|received_data[2]~0_combout\ = (!\KEY[0]~input_o\) # (\AA|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|PS2_Data_In|ALT_INV_s_ps2_receiver.PS2_STATE_4_STOP_IN~q\,
	combout => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\);

-- Location: FF_X43_Y10_N14
\AA|PS2|PS2_Data_In|received_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|received_data[2]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(2));

-- Location: LABCELL_X42_Y10_N36
\AA|last_data_received[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|last_data_received[0]~0_combout\ = ( \KEY[0]~input_o\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \AA|last_data_received[0]~0_combout\);

-- Location: FF_X42_Y11_N5
\AA|last_data_received[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(2),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(2));

-- Location: FF_X43_Y10_N38
\AA|PS2|PS2_Data_In|received_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(3),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(3));

-- Location: FF_X43_Y10_N19
\AA|PS2|PS2_Data_In|received_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(4),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(4));

-- Location: FF_X43_Y11_N8
\AA|last_data_received[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(4),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(4));

-- Location: FF_X42_Y11_N44
\AA|last_data_received[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(3),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(3));

-- Location: FF_X43_Y10_N41
\AA|PS2|PS2_Data_In|received_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(5),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(5));

-- Location: FF_X43_Y11_N56
\AA|last_data_received[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(5),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(5));

-- Location: LABCELL_X43_Y10_N18
\AA|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|Equal0~2_combout\ = ( \AA|PS2|PS2_Data_In|received_data\(4) & ( \AA|last_data_received\(5) & ( (\AA|last_data_received\(4) & (\AA|PS2|PS2_Data_In|received_data\(5) & (!\AA|PS2|PS2_Data_In|received_data\(3) $ (\AA|last_data_received\(3))))) ) ) ) # ( 
-- !\AA|PS2|PS2_Data_In|received_data\(4) & ( \AA|last_data_received\(5) & ( (!\AA|last_data_received\(4) & (\AA|PS2|PS2_Data_In|received_data\(5) & (!\AA|PS2|PS2_Data_In|received_data\(3) $ (\AA|last_data_received\(3))))) ) ) ) # ( 
-- \AA|PS2|PS2_Data_In|received_data\(4) & ( !\AA|last_data_received\(5) & ( (\AA|last_data_received\(4) & (!\AA|PS2|PS2_Data_In|received_data\(5) & (!\AA|PS2|PS2_Data_In|received_data\(3) $ (\AA|last_data_received\(3))))) ) ) ) # ( 
-- !\AA|PS2|PS2_Data_In|received_data\(4) & ( !\AA|last_data_received\(5) & ( (!\AA|last_data_received\(4) & (!\AA|PS2|PS2_Data_In|received_data\(5) & (!\AA|PS2|PS2_Data_In|received_data\(3) $ (\AA|last_data_received\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(3),
	datab => \AA|ALT_INV_last_data_received\(4),
	datac => \AA|ALT_INV_last_data_received\(3),
	datad => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(5),
	datae => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(4),
	dataf => \AA|ALT_INV_last_data_received\(5),
	combout => \AA|Equal0~2_combout\);

-- Location: FF_X42_Y10_N44
\AA|PS2|PS2_Data_In|data_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(2),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(1));

-- Location: FF_X43_Y10_N23
\AA|PS2|PS2_Data_In|received_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(1),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(1));

-- Location: FF_X42_Y11_N56
\AA|last_data_received[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(1),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(1));

-- Location: FF_X42_Y10_N46
\AA|PS2|PS2_Data_In|data_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(1),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|data_shift_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|data_shift_reg\(0));

-- Location: LABCELL_X43_Y10_N15
\AA|PS2|PS2_Data_In|received_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|PS2|PS2_Data_In|received_data[0]~feeder_combout\ = ( \AA|PS2|PS2_Data_In|data_shift_reg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_data_shift_reg\(0),
	combout => \AA|PS2|PS2_Data_In|received_data[0]~feeder_combout\);

-- Location: FF_X43_Y10_N17
\AA|PS2|PS2_Data_In|received_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|PS2|PS2_Data_In|received_data[0]~feeder_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(0));

-- Location: FF_X42_Y11_N53
\AA|last_data_received[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(0),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(0));

-- Location: LABCELL_X43_Y10_N39
\AA|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|Equal0~1_combout\ = ( \AA|PS2|PS2_Data_In|received_data\(1) & ( \AA|PS2|PS2_Data_In|received_data\(0) & ( (\AA|last_data_received\(1) & (\AA|last_data_received\(0) & (!\AA|last_data_received\(2) $ (\AA|PS2|PS2_Data_In|received_data\(2))))) ) ) ) # ( 
-- !\AA|PS2|PS2_Data_In|received_data\(1) & ( \AA|PS2|PS2_Data_In|received_data\(0) & ( (!\AA|last_data_received\(1) & (\AA|last_data_received\(0) & (!\AA|last_data_received\(2) $ (\AA|PS2|PS2_Data_In|received_data\(2))))) ) ) ) # ( 
-- \AA|PS2|PS2_Data_In|received_data\(1) & ( !\AA|PS2|PS2_Data_In|received_data\(0) & ( (\AA|last_data_received\(1) & (!\AA|last_data_received\(0) & (!\AA|last_data_received\(2) $ (\AA|PS2|PS2_Data_In|received_data\(2))))) ) ) ) # ( 
-- !\AA|PS2|PS2_Data_In|received_data\(1) & ( !\AA|PS2|PS2_Data_In|received_data\(0) & ( (!\AA|last_data_received\(1) & (!\AA|last_data_received\(0) & (!\AA|last_data_received\(2) $ (\AA|PS2|PS2_Data_In|received_data\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(2),
	datab => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(2),
	datac => \AA|ALT_INV_last_data_received\(1),
	datad => \AA|ALT_INV_last_data_received\(0),
	datae => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(1),
	dataf => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(0),
	combout => \AA|Equal0~1_combout\);

-- Location: FF_X43_Y10_N46
\AA|PS2|PS2_Data_In|received_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(7),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(7));

-- Location: FF_X43_Y11_N47
\AA|last_data_received[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(7),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(7));

-- Location: FF_X43_Y10_N4
\AA|PS2|PS2_Data_In|received_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|data_shift_reg\(6),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|PS2|PS2_Data_In|received_data[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|PS2|PS2_Data_In|received_data\(6));

-- Location: FF_X43_Y11_N11
\AA|last_data_received[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|PS2|PS2_Data_In|received_data\(6),
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \AA|last_data_received[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|last_data_received\(6));

-- Location: LABCELL_X43_Y10_N3
\AA|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|Equal0~0_combout\ = ( \AA|last_data_received\(6) & ( (\AA|PS2|PS2_Data_In|received_data\(6) & (!\AA|last_data_received\(7) $ (\AA|PS2|PS2_Data_In|received_data\(7)))) ) ) # ( !\AA|last_data_received\(6) & ( (!\AA|PS2|PS2_Data_In|received_data\(6) & 
-- (!\AA|last_data_received\(7) $ (\AA|PS2|PS2_Data_In|received_data\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(7),
	datac => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(7),
	datad => \AA|PS2|PS2_Data_In|ALT_INV_received_data\(6),
	dataf => \AA|ALT_INV_last_data_received\(6),
	combout => \AA|Equal0~0_combout\);

-- Location: LABCELL_X40_Y10_N0
\AA|counter|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~65_sumout\ = SUM(( \AA|counter|out\(0) ) + ( VCC ) + ( !VCC ))
-- \AA|counter|Add0~66\ = CARRY(( \AA|counter|out\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(0),
	cin => GND,
	sumout => \AA|counter|Add0~65_sumout\,
	cout => \AA|counter|Add0~66\);

-- Location: FF_X40_Y10_N1
\AA|counter|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~65_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(0));

-- Location: LABCELL_X40_Y10_N3
\AA|counter|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~45_sumout\ = SUM(( \AA|counter|out\(1) ) + ( GND ) + ( \AA|counter|Add0~66\ ))
-- \AA|counter|Add0~46\ = CARRY(( \AA|counter|out\(1) ) + ( GND ) + ( \AA|counter|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(1),
	cin => \AA|counter|Add0~66\,
	sumout => \AA|counter|Add0~45_sumout\,
	cout => \AA|counter|Add0~46\);

-- Location: FF_X40_Y10_N5
\AA|counter|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~45_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(1));

-- Location: LABCELL_X40_Y10_N6
\AA|counter|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~61_sumout\ = SUM(( \AA|counter|out\(2) ) + ( GND ) + ( \AA|counter|Add0~46\ ))
-- \AA|counter|Add0~62\ = CARRY(( \AA|counter|out\(2) ) + ( GND ) + ( \AA|counter|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(2),
	cin => \AA|counter|Add0~46\,
	sumout => \AA|counter|Add0~61_sumout\,
	cout => \AA|counter|Add0~62\);

-- Location: FF_X40_Y10_N7
\AA|counter|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~61_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(2));

-- Location: LABCELL_X40_Y10_N9
\AA|counter|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~49_sumout\ = SUM(( \AA|counter|out\(3) ) + ( GND ) + ( \AA|counter|Add0~62\ ))
-- \AA|counter|Add0~50\ = CARRY(( \AA|counter|out\(3) ) + ( GND ) + ( \AA|counter|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(3),
	cin => \AA|counter|Add0~62\,
	sumout => \AA|counter|Add0~49_sumout\,
	cout => \AA|counter|Add0~50\);

-- Location: FF_X40_Y10_N10
\AA|counter|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~49_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(3));

-- Location: LABCELL_X40_Y10_N12
\AA|counter|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~53_sumout\ = SUM(( \AA|counter|out\(4) ) + ( GND ) + ( \AA|counter|Add0~50\ ))
-- \AA|counter|Add0~54\ = CARRY(( \AA|counter|out\(4) ) + ( GND ) + ( \AA|counter|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(4),
	cin => \AA|counter|Add0~50\,
	sumout => \AA|counter|Add0~53_sumout\,
	cout => \AA|counter|Add0~54\);

-- Location: FF_X40_Y10_N13
\AA|counter|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~53_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(4));

-- Location: LABCELL_X40_Y10_N15
\AA|counter|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~57_sumout\ = SUM(( \AA|counter|out\(5) ) + ( GND ) + ( \AA|counter|Add0~54\ ))
-- \AA|counter|Add0~58\ = CARRY(( \AA|counter|out\(5) ) + ( GND ) + ( \AA|counter|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(5),
	cin => \AA|counter|Add0~54\,
	sumout => \AA|counter|Add0~57_sumout\,
	cout => \AA|counter|Add0~58\);

-- Location: FF_X40_Y10_N16
\AA|counter|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~57_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(5));

-- Location: LABCELL_X40_Y10_N18
\AA|counter|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~73_sumout\ = SUM(( \AA|counter|out\(6) ) + ( GND ) + ( \AA|counter|Add0~58\ ))
-- \AA|counter|Add0~74\ = CARRY(( \AA|counter|out\(6) ) + ( GND ) + ( \AA|counter|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(6),
	cin => \AA|counter|Add0~58\,
	sumout => \AA|counter|Add0~73_sumout\,
	cout => \AA|counter|Add0~74\);

-- Location: FF_X40_Y10_N19
\AA|counter|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~73_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(6));

-- Location: LABCELL_X40_Y10_N21
\AA|counter|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~81_sumout\ = SUM(( \AA|counter|out\(7) ) + ( GND ) + ( \AA|counter|Add0~74\ ))
-- \AA|counter|Add0~82\ = CARRY(( \AA|counter|out\(7) ) + ( GND ) + ( \AA|counter|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(7),
	cin => \AA|counter|Add0~74\,
	sumout => \AA|counter|Add0~81_sumout\,
	cout => \AA|counter|Add0~82\);

-- Location: FF_X40_Y10_N22
\AA|counter|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~81_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(7));

-- Location: LABCELL_X40_Y10_N24
\AA|counter|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~85_sumout\ = SUM(( \AA|counter|out\(8) ) + ( GND ) + ( \AA|counter|Add0~82\ ))
-- \AA|counter|Add0~86\ = CARRY(( \AA|counter|out\(8) ) + ( GND ) + ( \AA|counter|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(8),
	cin => \AA|counter|Add0~82\,
	sumout => \AA|counter|Add0~85_sumout\,
	cout => \AA|counter|Add0~86\);

-- Location: FF_X40_Y10_N25
\AA|counter|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~85_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(8));

-- Location: LABCELL_X40_Y10_N27
\AA|counter|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~69_sumout\ = SUM(( \AA|counter|out\(9) ) + ( GND ) + ( \AA|counter|Add0~86\ ))
-- \AA|counter|Add0~70\ = CARRY(( \AA|counter|out\(9) ) + ( GND ) + ( \AA|counter|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(9),
	cin => \AA|counter|Add0~86\,
	sumout => \AA|counter|Add0~69_sumout\,
	cout => \AA|counter|Add0~70\);

-- Location: FF_X40_Y10_N28
\AA|counter|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~69_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(9));

-- Location: LABCELL_X40_Y10_N30
\AA|counter|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~41_sumout\ = SUM(( \AA|counter|out\(10) ) + ( GND ) + ( \AA|counter|Add0~70\ ))
-- \AA|counter|Add0~42\ = CARRY(( \AA|counter|out\(10) ) + ( GND ) + ( \AA|counter|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(10),
	cin => \AA|counter|Add0~70\,
	sumout => \AA|counter|Add0~41_sumout\,
	cout => \AA|counter|Add0~42\);

-- Location: FF_X40_Y10_N31
\AA|counter|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~41_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(10));

-- Location: LABCELL_X40_Y10_N33
\AA|counter|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~37_sumout\ = SUM(( \AA|counter|out\(11) ) + ( GND ) + ( \AA|counter|Add0~42\ ))
-- \AA|counter|Add0~38\ = CARRY(( \AA|counter|out\(11) ) + ( GND ) + ( \AA|counter|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(11),
	cin => \AA|counter|Add0~42\,
	sumout => \AA|counter|Add0~37_sumout\,
	cout => \AA|counter|Add0~38\);

-- Location: FF_X40_Y10_N34
\AA|counter|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~37_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(11));

-- Location: LABCELL_X40_Y10_N36
\AA|counter|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~29_sumout\ = SUM(( \AA|counter|out\(12) ) + ( GND ) + ( \AA|counter|Add0~38\ ))
-- \AA|counter|Add0~30\ = CARRY(( \AA|counter|out\(12) ) + ( GND ) + ( \AA|counter|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(12),
	cin => \AA|counter|Add0~38\,
	sumout => \AA|counter|Add0~29_sumout\,
	cout => \AA|counter|Add0~30\);

-- Location: FF_X40_Y10_N38
\AA|counter|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~29_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(12));

-- Location: LABCELL_X40_Y10_N39
\AA|counter|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~33_sumout\ = SUM(( \AA|counter|out\(13) ) + ( GND ) + ( \AA|counter|Add0~30\ ))
-- \AA|counter|Add0~34\ = CARRY(( \AA|counter|out\(13) ) + ( GND ) + ( \AA|counter|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(13),
	cin => \AA|counter|Add0~30\,
	sumout => \AA|counter|Add0~33_sumout\,
	cout => \AA|counter|Add0~34\);

-- Location: FF_X40_Y10_N40
\AA|counter|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~33_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(13));

-- Location: LABCELL_X40_Y10_N42
\AA|counter|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~25_sumout\ = SUM(( \AA|counter|out\(14) ) + ( GND ) + ( \AA|counter|Add0~34\ ))
-- \AA|counter|Add0~26\ = CARRY(( \AA|counter|out\(14) ) + ( GND ) + ( \AA|counter|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(14),
	cin => \AA|counter|Add0~34\,
	sumout => \AA|counter|Add0~25_sumout\,
	cout => \AA|counter|Add0~26\);

-- Location: FF_X40_Y10_N43
\AA|counter|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~25_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(14));

-- Location: LABCELL_X40_Y10_N45
\AA|counter|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~77_sumout\ = SUM(( \AA|counter|out\(15) ) + ( GND ) + ( \AA|counter|Add0~26\ ))
-- \AA|counter|Add0~78\ = CARRY(( \AA|counter|out\(15) ) + ( GND ) + ( \AA|counter|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(15),
	cin => \AA|counter|Add0~26\,
	sumout => \AA|counter|Add0~77_sumout\,
	cout => \AA|counter|Add0~78\);

-- Location: FF_X40_Y10_N46
\AA|counter|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~77_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(15));

-- Location: LABCELL_X40_Y10_N48
\AA|counter|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~89_sumout\ = SUM(( \AA|counter|out\(16) ) + ( GND ) + ( \AA|counter|Add0~78\ ))
-- \AA|counter|Add0~90\ = CARRY(( \AA|counter|out\(16) ) + ( GND ) + ( \AA|counter|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(16),
	cin => \AA|counter|Add0~78\,
	sumout => \AA|counter|Add0~89_sumout\,
	cout => \AA|counter|Add0~90\);

-- Location: FF_X40_Y10_N50
\AA|counter|out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~89_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(16));

-- Location: LABCELL_X40_Y10_N51
\AA|counter|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~93_sumout\ = SUM(( \AA|counter|out\(17) ) + ( GND ) + ( \AA|counter|Add0~90\ ))
-- \AA|counter|Add0~94\ = CARRY(( \AA|counter|out\(17) ) + ( GND ) + ( \AA|counter|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(17),
	cin => \AA|counter|Add0~90\,
	sumout => \AA|counter|Add0~93_sumout\,
	cout => \AA|counter|Add0~94\);

-- Location: FF_X40_Y10_N52
\AA|counter|out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~93_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(17));

-- Location: LABCELL_X40_Y10_N54
\AA|counter|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~97_sumout\ = SUM(( \AA|counter|out\(18) ) + ( GND ) + ( \AA|counter|Add0~94\ ))
-- \AA|counter|Add0~98\ = CARRY(( \AA|counter|out\(18) ) + ( GND ) + ( \AA|counter|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(18),
	cin => \AA|counter|Add0~94\,
	sumout => \AA|counter|Add0~97_sumout\,
	cout => \AA|counter|Add0~98\);

-- Location: FF_X40_Y10_N55
\AA|counter|out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~97_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(18));

-- Location: LABCELL_X40_Y10_N57
\AA|counter|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~101_sumout\ = SUM(( \AA|counter|out\(19) ) + ( GND ) + ( \AA|counter|Add0~98\ ))
-- \AA|counter|Add0~102\ = CARRY(( \AA|counter|out\(19) ) + ( GND ) + ( \AA|counter|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(19),
	cin => \AA|counter|Add0~98\,
	sumout => \AA|counter|Add0~101_sumout\,
	cout => \AA|counter|Add0~102\);

-- Location: FF_X40_Y10_N58
\AA|counter|out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~101_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(19));

-- Location: LABCELL_X40_Y9_N0
\AA|counter|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~125_sumout\ = SUM(( \AA|counter|out\(20) ) + ( GND ) + ( \AA|counter|Add0~102\ ))
-- \AA|counter|Add0~126\ = CARRY(( \AA|counter|out\(20) ) + ( GND ) + ( \AA|counter|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(20),
	cin => \AA|counter|Add0~102\,
	sumout => \AA|counter|Add0~125_sumout\,
	cout => \AA|counter|Add0~126\);

-- Location: FF_X40_Y9_N2
\AA|counter|out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~125_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(20));

-- Location: LABCELL_X40_Y9_N3
\AA|counter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~5_sumout\ = SUM(( \AA|counter|out\(21) ) + ( GND ) + ( \AA|counter|Add0~126\ ))
-- \AA|counter|Add0~6\ = CARRY(( \AA|counter|out\(21) ) + ( GND ) + ( \AA|counter|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(21),
	cin => \AA|counter|Add0~126\,
	sumout => \AA|counter|Add0~5_sumout\,
	cout => \AA|counter|Add0~6\);

-- Location: FF_X40_Y9_N5
\AA|counter|out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~5_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(21));

-- Location: LABCELL_X40_Y9_N6
\AA|counter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~9_sumout\ = SUM(( \AA|counter|out\(22) ) + ( GND ) + ( \AA|counter|Add0~6\ ))
-- \AA|counter|Add0~10\ = CARRY(( \AA|counter|out\(22) ) + ( GND ) + ( \AA|counter|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(22),
	cin => \AA|counter|Add0~6\,
	sumout => \AA|counter|Add0~9_sumout\,
	cout => \AA|counter|Add0~10\);

-- Location: FF_X40_Y9_N7
\AA|counter|out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~9_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(22));

-- Location: LABCELL_X40_Y9_N9
\AA|counter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~1_sumout\ = SUM(( \AA|counter|out\(23) ) + ( GND ) + ( \AA|counter|Add0~10\ ))
-- \AA|counter|Add0~2\ = CARRY(( \AA|counter|out\(23) ) + ( GND ) + ( \AA|counter|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(23),
	cin => \AA|counter|Add0~10\,
	sumout => \AA|counter|Add0~1_sumout\,
	cout => \AA|counter|Add0~2\);

-- Location: FF_X40_Y9_N11
\AA|counter|out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~1_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(23));

-- Location: LABCELL_X40_Y9_N12
\AA|counter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~13_sumout\ = SUM(( \AA|counter|out\(24) ) + ( GND ) + ( \AA|counter|Add0~2\ ))
-- \AA|counter|Add0~14\ = CARRY(( \AA|counter|out\(24) ) + ( GND ) + ( \AA|counter|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(24),
	cin => \AA|counter|Add0~2\,
	sumout => \AA|counter|Add0~13_sumout\,
	cout => \AA|counter|Add0~14\);

-- Location: FF_X40_Y9_N14
\AA|counter|out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~13_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(24));

-- Location: LABCELL_X40_Y9_N15
\AA|counter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~17_sumout\ = SUM(( \AA|counter|out\(25) ) + ( GND ) + ( \AA|counter|Add0~14\ ))
-- \AA|counter|Add0~18\ = CARRY(( \AA|counter|out\(25) ) + ( GND ) + ( \AA|counter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(25),
	cin => \AA|counter|Add0~14\,
	sumout => \AA|counter|Add0~17_sumout\,
	cout => \AA|counter|Add0~18\);

-- Location: FF_X40_Y9_N17
\AA|counter|out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~17_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(25));

-- Location: LABCELL_X40_Y9_N18
\AA|counter|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~21_sumout\ = SUM(( \AA|counter|out\(26) ) + ( GND ) + ( \AA|counter|Add0~18\ ))
-- \AA|counter|Add0~22\ = CARRY(( \AA|counter|out\(26) ) + ( GND ) + ( \AA|counter|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(26),
	cin => \AA|counter|Add0~18\,
	sumout => \AA|counter|Add0~21_sumout\,
	cout => \AA|counter|Add0~22\);

-- Location: FF_X40_Y9_N20
\AA|counter|out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~21_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(26));

-- Location: LABCELL_X40_Y9_N36
\AA|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~0_combout\ = ( !\AA|counter|out\(21) & ( !\AA|counter|out\(23) & ( (!\AA|counter|out\(22) & (!\AA|counter|out\(25) & (!\AA|counter|out\(26) & !\AA|counter|out\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(22),
	datab => \AA|counter|ALT_INV_out\(25),
	datac => \AA|counter|ALT_INV_out\(26),
	datad => \AA|counter|ALT_INV_out\(24),
	datae => \AA|counter|ALT_INV_out\(21),
	dataf => \AA|counter|ALT_INV_out\(23),
	combout => \AA|LessThan0~0_combout\);

-- Location: LABCELL_X42_Y10_N0
\AA|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~3_combout\ = (\AA|counter|out\(14) & (\AA|counter|out\(6) & \AA|counter|out\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(14),
	datac => \AA|counter|ALT_INV_out\(6),
	datad => \AA|counter|ALT_INV_out\(9),
	combout => \AA|LessThan0~3_combout\);

-- Location: LABCELL_X43_Y10_N42
\AA|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~2_combout\ = ( !\AA|counter|out\(4) & ( !\AA|counter|out\(0) & ( (!\AA|counter|out\(5) & (!\AA|counter|out\(1) & (!\AA|counter|out\(2) & !\AA|counter|out\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(5),
	datab => \AA|counter|ALT_INV_out\(1),
	datac => \AA|counter|ALT_INV_out\(2),
	datad => \AA|counter|ALT_INV_out\(3),
	datae => \AA|counter|ALT_INV_out\(4),
	dataf => \AA|counter|ALT_INV_out\(0),
	combout => \AA|LessThan0~2_combout\);

-- Location: LABCELL_X42_Y10_N33
\AA|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~5_combout\ = ( \AA|counter|out\(16) & ( (\AA|counter|out\(17) & (\AA|counter|out\(19) & \AA|counter|out\(18))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(17),
	datac => \AA|counter|ALT_INV_out\(19),
	datad => \AA|counter|ALT_INV_out\(18),
	dataf => \AA|counter|ALT_INV_out\(16),
	combout => \AA|LessThan0~5_combout\);

-- Location: LABCELL_X42_Y10_N3
\AA|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~1_combout\ = ( \AA|counter|out\(12) & ( \AA|counter|out\(14) ) ) # ( !\AA|counter|out\(12) & ( (\AA|counter|out\(14) & (((\AA|counter|out\(10)) # (\AA|counter|out\(13))) # (\AA|counter|out\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(14),
	datab => \AA|counter|ALT_INV_out\(11),
	datac => \AA|counter|ALT_INV_out\(13),
	datad => \AA|counter|ALT_INV_out\(10),
	dataf => \AA|counter|ALT_INV_out\(12),
	combout => \AA|LessThan0~1_combout\);

-- Location: LABCELL_X42_Y10_N54
\AA|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~4_combout\ = ( \AA|counter|out\(8) & ( !\AA|counter|out\(15) & ( (!\AA|counter|out\(14)) # (!\AA|counter|out\(9)) ) ) ) # ( !\AA|counter|out\(8) & ( !\AA|counter|out\(15) & ( (!\AA|counter|out\(14)) # ((!\AA|counter|out\(9)) # 
-- (!\AA|counter|out\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111011101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(14),
	datab => \AA|counter|ALT_INV_out\(9),
	datac => \AA|counter|ALT_INV_out\(7),
	datae => \AA|counter|ALT_INV_out\(8),
	dataf => \AA|counter|ALT_INV_out\(15),
	combout => \AA|LessThan0~4_combout\);

-- Location: LABCELL_X40_Y9_N21
\AA|counter|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~121_sumout\ = SUM(( \AA|counter|out\(27) ) + ( GND ) + ( \AA|counter|Add0~22\ ))
-- \AA|counter|Add0~122\ = CARRY(( \AA|counter|out\(27) ) + ( GND ) + ( \AA|counter|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(27),
	cin => \AA|counter|Add0~22\,
	sumout => \AA|counter|Add0~121_sumout\,
	cout => \AA|counter|Add0~122\);

-- Location: FF_X40_Y9_N22
\AA|counter|out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~121_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(27));

-- Location: LABCELL_X40_Y9_N24
\AA|counter|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~117_sumout\ = SUM(( \AA|counter|out\(28) ) + ( GND ) + ( \AA|counter|Add0~122\ ))
-- \AA|counter|Add0~118\ = CARRY(( \AA|counter|out\(28) ) + ( GND ) + ( \AA|counter|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(28),
	cin => \AA|counter|Add0~122\,
	sumout => \AA|counter|Add0~117_sumout\,
	cout => \AA|counter|Add0~118\);

-- Location: FF_X40_Y9_N26
\AA|counter|out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~117_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(28));

-- Location: LABCELL_X40_Y9_N27
\AA|counter|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~113_sumout\ = SUM(( \AA|counter|out\(29) ) + ( GND ) + ( \AA|counter|Add0~118\ ))
-- \AA|counter|Add0~114\ = CARRY(( \AA|counter|out\(29) ) + ( GND ) + ( \AA|counter|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(29),
	cin => \AA|counter|Add0~118\,
	sumout => \AA|counter|Add0~113_sumout\,
	cout => \AA|counter|Add0~114\);

-- Location: FF_X40_Y9_N29
\AA|counter|out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~113_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(29));

-- Location: LABCELL_X40_Y9_N30
\AA|counter|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~109_sumout\ = SUM(( \AA|counter|out\(30) ) + ( GND ) + ( \AA|counter|Add0~114\ ))
-- \AA|counter|Add0~110\ = CARRY(( \AA|counter|out\(30) ) + ( GND ) + ( \AA|counter|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(30),
	cin => \AA|counter|Add0~114\,
	sumout => \AA|counter|Add0~109_sumout\,
	cout => \AA|counter|Add0~110\);

-- Location: FF_X40_Y9_N32
\AA|counter|out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~109_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(30));

-- Location: LABCELL_X40_Y9_N33
\AA|counter|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|counter|Add0~105_sumout\ = SUM(( \AA|counter|out\(31) ) + ( GND ) + ( \AA|counter|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AA|counter|ALT_INV_out\(31),
	cin => \AA|counter|Add0~110\,
	sumout => \AA|counter|Add0~105_sumout\);

-- Location: FF_X40_Y9_N35
\AA|counter|out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|counter|Add0~105_sumout\,
	sclr => \AA|ALT_INV_current.wait0~q\,
	ena => \AA|ALT_INV_current.exhibit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|counter|out\(31));

-- Location: LABCELL_X40_Y9_N54
\AA|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~6_combout\ = ( !\AA|counter|out\(29) & ( !\AA|counter|out\(31) & ( (!\AA|counter|out\(28) & (!\AA|counter|out\(30) & (!\AA|counter|out\(20) & !\AA|counter|out\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|counter|ALT_INV_out\(28),
	datab => \AA|counter|ALT_INV_out\(30),
	datac => \AA|counter|ALT_INV_out\(20),
	datad => \AA|counter|ALT_INV_out\(27),
	datae => \AA|counter|ALT_INV_out\(29),
	dataf => \AA|counter|ALT_INV_out\(31),
	combout => \AA|LessThan0~6_combout\);

-- Location: LABCELL_X42_Y10_N12
\AA|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|LessThan0~7_combout\ = ( \AA|LessThan0~4_combout\ & ( \AA|LessThan0~6_combout\ & ( (!\AA|LessThan0~5_combout\) # ((!\AA|LessThan0~1_combout\ & ((!\AA|LessThan0~3_combout\) # (\AA|LessThan0~2_combout\)))) ) ) ) # ( !\AA|LessThan0~4_combout\ & ( 
-- \AA|LessThan0~6_combout\ & ( !\AA|LessThan0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111101111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_LessThan0~3_combout\,
	datab => \AA|ALT_INV_LessThan0~2_combout\,
	datac => \AA|ALT_INV_LessThan0~5_combout\,
	datad => \AA|ALT_INV_LessThan0~1_combout\,
	datae => \AA|ALT_INV_LessThan0~4_combout\,
	dataf => \AA|ALT_INV_LessThan0~6_combout\,
	combout => \AA|LessThan0~7_combout\);

-- Location: LABCELL_X43_Y10_N33
\AA|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|Selector2~0_combout\ = ( \AA|current.exhibit~q\ & ( (!\AA|Equal0~1_combout\) # ((!\AA|Equal0~2_combout\) # (!\AA|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_Equal0~1_combout\,
	datac => \AA|ALT_INV_Equal0~2_combout\,
	datad => \AA|ALT_INV_Equal0~0_combout\,
	dataf => \AA|ALT_INV_current.exhibit~q\,
	combout => \AA|Selector2~0_combout\);

-- Location: LABCELL_X42_Y10_N30
\AA|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|Selector2~1_combout\ = ( \AA|LessThan0~0_combout\ & ( ((\AA|LessThan0~7_combout\ & \AA|current.delay~q\)) # (\AA|Selector2~0_combout\) ) ) # ( !\AA|LessThan0~0_combout\ & ( \AA|Selector2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_LessThan0~7_combout\,
	datac => \AA|ALT_INV_Selector2~0_combout\,
	datad => \AA|ALT_INV_current.delay~q\,
	dataf => \AA|ALT_INV_LessThan0~0_combout\,
	combout => \AA|Selector2~1_combout\);

-- Location: FF_X42_Y10_N31
\AA|current.delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|Selector2~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|current.delay~q\);

-- Location: LABCELL_X42_Y10_N18
\AA|current~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|current~5_combout\ = ( \AA|current.wait0~q\ & ( \AA|current.delay~q\ & ( (\AA|LessThan0~0_combout\ & (\KEY[0]~input_o\ & \AA|LessThan0~7_combout\)) ) ) ) # ( !\AA|current.wait0~q\ & ( \AA|current.delay~q\ & ( (\AA|LessThan0~0_combout\ & 
-- (\KEY[0]~input_o\ & (\AA|PS2|PS2_Data_In|received_data_en~q\ & \AA|LessThan0~7_combout\))) ) ) ) # ( \AA|current.wait0~q\ & ( !\AA|current.delay~q\ & ( \KEY[0]~input_o\ ) ) ) # ( !\AA|current.wait0~q\ & ( !\AA|current.delay~q\ & ( (\KEY[0]~input_o\ & 
-- \AA|PS2|PS2_Data_In|received_data_en~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	datad => \AA|ALT_INV_LessThan0~7_combout\,
	datae => \AA|ALT_INV_current.wait0~q\,
	dataf => \AA|ALT_INV_current.delay~q\,
	combout => \AA|current~5_combout\);

-- Location: FF_X42_Y10_N20
\AA|current.wait0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \AA|current~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|current.wait0~q\);

-- Location: LABCELL_X42_Y10_N9
\AA|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|Selector1~0_combout\ = ( \AA|Equal0~0_combout\ & ( \AA|current.wait0~q\ & ( (\AA|Equal0~2_combout\ & (\AA|Equal0~1_combout\ & \AA|current.exhibit~q\)) ) ) ) # ( \AA|Equal0~0_combout\ & ( !\AA|current.wait0~q\ & ( ((\AA|Equal0~2_combout\ & 
-- (\AA|Equal0~1_combout\ & \AA|current.exhibit~q\))) # (\AA|PS2|PS2_Data_In|received_data_en~q\) ) ) ) # ( !\AA|Equal0~0_combout\ & ( !\AA|current.wait0~q\ & ( \AA|PS2|PS2_Data_In|received_data_en~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101011100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|PS2|PS2_Data_In|ALT_INV_received_data_en~q\,
	datab => \AA|ALT_INV_Equal0~2_combout\,
	datac => \AA|ALT_INV_Equal0~1_combout\,
	datad => \AA|ALT_INV_current.exhibit~q\,
	datae => \AA|ALT_INV_Equal0~0_combout\,
	dataf => \AA|ALT_INV_current.wait0~q\,
	combout => \AA|Selector1~0_combout\);

-- Location: FF_X42_Y11_N11
\AA|current.exhibit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \AA|Selector1~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AA|current.exhibit~q\);

-- Location: LABCELL_X42_Y11_N18
\AA|out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|out[2]~2_combout\ = ( \AA|last_data_received\(2) & ( \AA|current.exhibit~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \AA|ALT_INV_last_data_received\(2),
	dataf => \AA|ALT_INV_current.exhibit~q\,
	combout => \AA|out[2]~2_combout\);

-- Location: LABCELL_X42_Y11_N27
\AA|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|out[0]~0_combout\ = ( \AA|last_data_received\(0) & ( \AA|current.exhibit~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \AA|ALT_INV_current.exhibit~q\,
	dataf => \AA|ALT_INV_last_data_received\(0),
	combout => \AA|out[0]~0_combout\);

-- Location: LABCELL_X43_Y11_N45
\AA|out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|out[1]~1_combout\ = ( \AA|current.exhibit~q\ & ( \AA|last_data_received\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \AA|ALT_INV_last_data_received\(1),
	dataf => \AA|ALT_INV_current.exhibit~q\,
	combout => \AA|out[1]~1_combout\);

-- Location: LABCELL_X42_Y11_N0
\BB|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BB|Decoder0~0_combout\ = ( !\AA|last_data_received\(7) & ( !\AA|last_data_received\(5) & ( (!\AA|last_data_received\(6) & (\AA|last_data_received\(3) & (\AA|last_data_received\(4) & \AA|current.exhibit~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(6),
	datab => \AA|ALT_INV_last_data_received\(3),
	datac => \AA|ALT_INV_last_data_received\(4),
	datad => \AA|ALT_INV_current.exhibit~q\,
	datae => \AA|ALT_INV_last_data_received\(7),
	dataf => \AA|ALT_INV_last_data_received\(5),
	combout => \BB|Decoder0~0_combout\);

-- Location: LABCELL_X43_Y11_N15
\data|f1|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|f1|Q~1_combout\ = ( \AA|out[1]~1_combout\ & ( \BB|Decoder0~0_combout\ & ( (!\data|s3|tmp\(2) & !\data|s1|tmp\(2)) ) ) ) # ( !\AA|out[1]~1_combout\ & ( \BB|Decoder0~0_combout\ & ( (!\AA|out[2]~2_combout\ & (!\data|s3|tmp\(2) & (!\data|s1|tmp\(2)))) # 
-- (\AA|out[2]~2_combout\ & ((!\AA|out[0]~0_combout\ & (!\data|s3|tmp\(2))) # (\AA|out[0]~0_combout\ & ((!\data|s1|tmp\(2)))))) ) ) ) # ( \AA|out[1]~1_combout\ & ( !\BB|Decoder0~0_combout\ & ( (!\data|s3|tmp\(2) & !\data|s1|tmp\(2)) ) ) ) # ( 
-- !\AA|out[1]~1_combout\ & ( !\BB|Decoder0~0_combout\ & ( (!\data|s3|tmp\(2) & !\data|s1|tmp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001010100011001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|s3|ALT_INV_tmp\(2),
	datab => \data|s1|ALT_INV_tmp\(2),
	datac => \AA|ALT_INV_out[2]~2_combout\,
	datad => \AA|ALT_INV_out[0]~0_combout\,
	datae => \AA|ALT_INV_out[1]~1_combout\,
	dataf => \BB|ALT_INV_Decoder0~0_combout\,
	combout => \data|f1|Q~1_combout\);

-- Location: LABCELL_X42_Y11_N36
\BB|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BB|Decoder0~2_combout\ = ( \AA|last_data_received\(1) & ( \AA|current.exhibit~q\ & ( (!\AA|last_data_received\(2) & (\AA|last_data_received\(5) & (\AA|last_data_received\(0) & !\AA|last_data_received\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(2),
	datab => \AA|ALT_INV_last_data_received\(5),
	datac => \AA|ALT_INV_last_data_received\(0),
	datad => \AA|ALT_INV_last_data_received\(3),
	datae => \AA|ALT_INV_last_data_received\(1),
	dataf => \AA|ALT_INV_current.exhibit~q\,
	combout => \BB|Decoder0~2_combout\);

-- Location: LABCELL_X27_Y4_N42
\data|D|Y.LANE2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|D|Y.LANE2~0_combout\ = ( !\SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & !\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \data|D|Y.LANE2~0_combout\);

-- Location: FF_X27_Y4_N43
\data|D|y.LANE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|D|Y.LANE2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|y.LANE2~q\);

-- Location: FF_X48_Y10_N29
\data|D|osignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \data|D|y.LANE2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|osignal\(1));

-- Location: MLABCELL_X47_Y10_N30
\data|s2|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|s2|tmp~0_combout\ = ( !\data|f1|Q~q\ & ( \data|D|osignal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \data|f1|ALT_INV_Q~q\,
	dataf => \data|D|ALT_INV_osignal\(1),
	combout => \data|s2|tmp~0_combout\);

-- Location: FF_X47_Y10_N32
\data|s2|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	d => \data|s2|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s2|tmp\(0));

-- Location: FF_X47_Y10_N59
\data|s2|tmp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s2|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s2|tmp[1]~DUPLICATE_q\);

-- Location: FF_X43_Y11_N2
\data|s2|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s2|tmp[1]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s2|tmp\(2));

-- Location: LABCELL_X43_Y11_N6
\BB|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BB|Decoder0~3_combout\ = ( \AA|last_data_received\(6) & ( \AA|current.exhibit~q\ ) ) # ( !\AA|last_data_received\(6) & ( (\AA|current.exhibit~q\ & ((\AA|last_data_received\(4)) # (\AA|last_data_received\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(7),
	datac => \AA|ALT_INV_current.exhibit~q\,
	datad => \AA|ALT_INV_last_data_received\(4),
	dataf => \AA|ALT_INV_last_data_received\(6),
	combout => \BB|Decoder0~3_combout\);

-- Location: LABCELL_X43_Y11_N0
\data|f1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|f1|Q~0_combout\ = ( \BB|Decoder0~3_combout\ & ( (!\data|f1|Q~q\ & !\data|s2|tmp\(2)) ) ) # ( !\BB|Decoder0~3_combout\ & ( (!\data|f1|Q~q\ & ((!\data|s2|tmp\(2)) # (\BB|Decoder0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BB|ALT_INV_Decoder0~2_combout\,
	datac => \data|f1|ALT_INV_Q~q\,
	datad => \data|s2|ALT_INV_tmp\(2),
	dataf => \BB|ALT_INV_Decoder0~3_combout\,
	combout => \data|f1|Q~0_combout\);

-- Location: FF_X46_Y10_N37
\data|s4|tmp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s4|tmp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s4|tmp[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y11_N18
\BB|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BB|Decoder0~1_combout\ = ( !\AA|out[2]~2_combout\ & ( (\BB|Decoder0~0_combout\ & (\AA|out[0]~0_combout\ & \AA|out[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BB|ALT_INV_Decoder0~0_combout\,
	datac => \AA|ALT_INV_out[0]~0_combout\,
	datad => \AA|ALT_INV_out[1]~1_combout\,
	dataf => \AA|ALT_INV_out[2]~2_combout\,
	combout => \BB|Decoder0~1_combout\);

-- Location: LABCELL_X43_Y11_N48
\data|f1|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|f1|Q~2_combout\ = ( \BB|Decoder0~1_combout\ & ( (!\SW[7]~input_o\ & ((!\data|f1|Q~1_combout\) # (!\data|f1|Q~0_combout\))) ) ) # ( !\BB|Decoder0~1_combout\ & ( (!\SW[7]~input_o\ & ((!\data|f1|Q~1_combout\) # ((!\data|f1|Q~0_combout\) # 
-- (\data|s4|tmp[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101010001010101010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \data|f1|ALT_INV_Q~1_combout\,
	datac => \data|f1|ALT_INV_Q~0_combout\,
	datad => \data|s4|ALT_INV_tmp[2]~DUPLICATE_q\,
	dataf => \BB|ALT_INV_Decoder0~1_combout\,
	combout => \data|f1|Q~2_combout\);

-- Location: FF_X43_Y11_N50
\data|f1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	d => \data|f1|Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|f1|Q~q\);

-- Location: LABCELL_X27_Y4_N33
\data|D|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|D|Equal4~0_combout\ = ( !\SW[2]~input_o\ & ( !\SW[0]~input_o\ & ( (\SW[3]~input_o\ & !\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \data|D|Equal4~0_combout\);

-- Location: FF_X27_Y4_N34
\data|D|y.LANE4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \data|D|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|y.LANE4~q\);

-- Location: FF_X47_Y11_N49
\data|D|osignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \data|D|y.LANE4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|D|osignal\(3));

-- Location: LABCELL_X46_Y10_N42
\data|s4|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|s4|tmp~0_combout\ = ( \data|D|osignal\(3) & ( !\data|f1|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data|f1|ALT_INV_Q~q\,
	dataf => \data|D|ALT_INV_osignal\(3),
	combout => \data|s4|tmp~0_combout\);

-- Location: FF_X46_Y10_N44
\data|s4|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	d => \data|s4|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s4|tmp\(0));

-- Location: FF_X46_Y10_N25
\data|s4|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s4|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s4|tmp\(1));

-- Location: FF_X46_Y10_N38
\data|s4|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s4|tmp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s4|tmp\(2));

-- Location: MLABCELL_X47_Y10_N21
\f1|nextstate.LOAD1B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|nextstate.LOAD1B~0_combout\ = ( !\data|s1|tmp\(0) & ( (!\f1|presentstate.RESET~q\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \data|s1|ALT_INV_tmp\(0),
	combout => \f1|nextstate.LOAD1B~0_combout\);

-- Location: FF_X47_Y10_N23
\f1|presentstate.LOAD1B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|nextstate.LOAD1B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD1B~q\);

-- Location: FF_X46_Y12_N14
\f1|presentstate.ACCESS1B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD1B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS1B~q\);

-- Location: FF_X46_Y12_N53
\f1|presentstate.DRAW1B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS1B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW1B~q\);

-- Location: FF_X46_Y11_N29
\data|s1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s1|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s1|tmp\(1));

-- Location: LABCELL_X46_Y11_N18
\f1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector1~0_combout\ = (\SW[9]~input_o\ & (\data|s1|tmp\(1) & ((\f1|presentstate.DRAW1~q\) # (\f1|presentstate.DRAW1B~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \f1|ALT_INV_presentstate.DRAW1B~q\,
	datac => \f1|ALT_INV_presentstate.DRAW1~q\,
	datad => \data|s1|ALT_INV_tmp\(1),
	combout => \f1|Selector1~0_combout\);

-- Location: FF_X46_Y11_N20
\f1|presentstate.LOAD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD2~q\);

-- Location: LABCELL_X46_Y11_N36
\f1|nextstate.ACCESS2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|nextstate.ACCESS2~0_combout\ = (\f1|presentstate.LOAD2~q\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_presentstate.LOAD2~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	combout => \f1|nextstate.ACCESS2~0_combout\);

-- Location: FF_X46_Y11_N38
\f1|presentstate.ACCESS2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|nextstate.ACCESS2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS2~q\);

-- Location: LABCELL_X45_Y11_N0
\f1|nextstate.DRAW2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|nextstate.DRAW2~0_combout\ = ( \f1|presentstate.ACCESS2~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \f1|ALT_INV_presentstate.ACCESS2~q\,
	combout => \f1|nextstate.DRAW2~0_combout\);

-- Location: FF_X46_Y11_N32
\f1|presentstate.DRAW2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|nextstate.DRAW2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW2~q\);

-- Location: FF_X43_Y11_N13
\data|s1|tmp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s1|tmp[1]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s1|tmp[2]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y11_N18
\f1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector5~0_combout\ = ( \data|s1|tmp[2]~DUPLICATE_q\ & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW2~q\) # (\f1|presentstate.DRAW2B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \f1|ALT_INV_presentstate.DRAW2B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW2~q\,
	dataf => \data|s1|ALT_INV_tmp[2]~DUPLICATE_q\,
	combout => \f1|Selector5~0_combout\);

-- Location: FF_X45_Y11_N20
\f1|presentstate.LOAD3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD3~q\);

-- Location: FF_X47_Y11_N7
\f1|presentstate.ACCESS3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS3~q\);

-- Location: FF_X46_Y11_N43
\f1|presentstate.DRAW3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW3~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y10_N27
\f1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector3~0_combout\ = ( \data|s2|tmp\(0) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW3~DUPLICATE_q\) # (\f1|presentstate.DRAW3B~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW3B~DUPLICATE_q\,
	datab => \f1|ALT_INV_presentstate.DRAW3~DUPLICATE_q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \data|s2|ALT_INV_tmp\(0),
	combout => \f1|Selector3~0_combout\);

-- Location: FF_X47_Y10_N29
\f1|presentstate.LOAD4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD4~q\);

-- Location: FF_X47_Y11_N28
\f1|presentstate.ACCESS4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS4~q\);

-- Location: FF_X46_Y11_N17
\f1|presentstate.DRAW4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW4~DUPLICATE_q\);

-- Location: FF_X47_Y10_N58
\data|s2|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s2|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s2|tmp\(1));

-- Location: MLABCELL_X47_Y10_N15
\f1|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector7~0_combout\ = ( \data|s2|tmp\(1) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW4~DUPLICATE_q\) # (\f1|presentstate.DRAW4B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW4B~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \f1|ALT_INV_presentstate.DRAW4~DUPLICATE_q\,
	dataf => \data|s2|ALT_INV_tmp\(1),
	combout => \f1|Selector7~0_combout\);

-- Location: FF_X47_Y10_N17
\f1|presentstate.LOAD5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD5~q\);

-- Location: FF_X47_Y11_N22
\f1|presentstate.ACCESS5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS5~DUPLICATE_q\);

-- Location: FF_X47_Y11_N46
\f1|presentstate.DRAW5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS5~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW5~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y11_N9
\f1|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector9~0_combout\ = ( \f1|presentstate.DRAW5~DUPLICATE_q\ & ( \data|s2|tmp\(2) & ( \SW[9]~input_o\ ) ) ) # ( !\f1|presentstate.DRAW5~DUPLICATE_q\ & ( \data|s2|tmp\(2) & ( (\f1|presentstate.DRAW5B~q\ & \SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW5B~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \f1|ALT_INV_presentstate.DRAW5~DUPLICATE_q\,
	dataf => \data|s2|ALT_INV_tmp\(2),
	combout => \f1|Selector9~0_combout\);

-- Location: FF_X47_Y11_N11
\f1|presentstate.LOAD6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD6~q\);

-- Location: FF_X47_Y11_N2
\f1|presentstate.ACCESS6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS6~q\);

-- Location: FF_X47_Y11_N58
\f1|presentstate.DRAW6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW6~DUPLICATE_q\);

-- Location: LABCELL_X46_Y10_N48
\f1|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector12~0_combout\ = ( \f1|presentstate.DRAW6~DUPLICATE_q\ & ( (!\data|s3|tmp\(0) & \SW[9]~input_o\) ) ) # ( !\f1|presentstate.DRAW6~DUPLICATE_q\ & ( (!\data|s3|tmp\(0) & (\f1|presentstate.DRAW6B~q\ & \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|s3|ALT_INV_tmp\(0),
	datac => \f1|ALT_INV_presentstate.DRAW6B~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \f1|ALT_INV_presentstate.DRAW6~DUPLICATE_q\,
	combout => \f1|Selector12~0_combout\);

-- Location: FF_X46_Y10_N50
\f1|presentstate.LOAD7B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD7B~q\);

-- Location: FF_X45_Y10_N20
\f1|presentstate.ACCESS7B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD7B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS7B~q\);

-- Location: FF_X46_Y12_N16
\f1|presentstate.DRAW7B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS7B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW7B~DUPLICATE_q\);

-- Location: FF_X46_Y11_N56
\f1|presentstate.DRAW7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW7~q\);

-- Location: LABCELL_X45_Y11_N33
\f1|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector13~0_combout\ = ( \f1|presentstate.DRAW7~q\ & ( (\SW[9]~input_o\ & \data|s3|tmp\(1)) ) ) # ( !\f1|presentstate.DRAW7~q\ & ( (\SW[9]~input_o\ & (\f1|presentstate.DRAW7B~DUPLICATE_q\ & \data|s3|tmp\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \f1|ALT_INV_presentstate.DRAW7B~DUPLICATE_q\,
	datad => \data|s3|ALT_INV_tmp\(1),
	dataf => \f1|ALT_INV_presentstate.DRAW7~q\,
	combout => \f1|Selector13~0_combout\);

-- Location: FF_X45_Y11_N35
\f1|presentstate.LOAD8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD8~q\);

-- Location: FF_X46_Y11_N59
\f1|presentstate.ACCESS8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS8~q\);

-- Location: FF_X46_Y11_N8
\f1|presentstate.DRAW8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS8~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW8~q\);

-- Location: LABCELL_X46_Y10_N3
\f1|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector16~0_combout\ = ( !\data|s3|tmp\(2) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW8~q\) # (\f1|presentstate.DRAW8B~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \f1|ALT_INV_presentstate.DRAW8B~DUPLICATE_q\,
	datad => \f1|ALT_INV_presentstate.DRAW8~q\,
	dataf => \data|s3|ALT_INV_tmp\(2),
	combout => \f1|Selector16~0_combout\);

-- Location: FF_X46_Y10_N5
\f1|presentstate.LOAD9B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD9B~q\);

-- Location: FF_X45_Y10_N35
\f1|presentstate.ACCESS9B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD9B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS9B~q\);

-- Location: FF_X46_Y12_N59
\f1|presentstate.DRAW9B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS9B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW9B~q\);

-- Location: LABCELL_X46_Y10_N15
\f1|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector17~0_combout\ = ( \data|s4|tmp\(0) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW9B~q\) # (\f1|presentstate.DRAW9~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW9~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAW9B~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \data|s4|ALT_INV_tmp\(0),
	combout => \f1|Selector17~0_combout\);

-- Location: FF_X46_Y10_N17
\f1|presentstate.LOAD10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD10~q\);

-- Location: FF_X45_Y11_N17
\f1|presentstate.ACCESS10~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS10~DUPLICATE_q\);

-- Location: FF_X45_Y11_N14
\f1|presentstate.DRAW10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS10~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW10~q\);

-- Location: LABCELL_X46_Y10_N9
\f1|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector19~0_combout\ = ( \data|s4|tmp\(1) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW10~q\) # (\f1|presentstate.DRAW10B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \f1|ALT_INV_presentstate.DRAW10B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW10~q\,
	dataf => \data|s4|ALT_INV_tmp\(1),
	combout => \f1|Selector19~0_combout\);

-- Location: FF_X46_Y10_N11
\f1|presentstate.LOAD11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD11~q\);

-- Location: FF_X45_Y11_N26
\f1|presentstate.ACCESS11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS11~q\);

-- Location: FF_X45_Y11_N5
\f1|presentstate.DRAW11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW11~q\);

-- Location: LABCELL_X45_Y10_N36
\f1|presentstate.ACCESS11B~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|presentstate.ACCESS11B~feeder_combout\ = \f1|presentstate.LOAD11B~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD11B~q\,
	combout => \f1|presentstate.ACCESS11B~feeder_combout\);

-- Location: FF_X45_Y10_N38
\f1|presentstate.ACCESS11B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|presentstate.ACCESS11B~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS11B~q\);

-- Location: FF_X46_Y12_N8
\f1|presentstate.DRAW11B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS11B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW11B~q\);

-- Location: LABCELL_X46_Y10_N54
\f1|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector22~0_combout\ = ( \f1|presentstate.DRAW11B~q\ & ( (\SW[9]~input_o\ & !\data|s4|tmp\(2)) ) ) # ( !\f1|presentstate.DRAW11B~q\ & ( (\SW[9]~input_o\ & (!\data|s4|tmp\(2) & \f1|presentstate.DRAW11~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \data|s4|ALT_INV_tmp\(2),
	datad => \f1|ALT_INV_presentstate.DRAW11~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW11B~q\,
	combout => \f1|Selector22~0_combout\);

-- Location: FF_X46_Y10_N56
\f1|presentstate.LOAD12B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD12B~q\);

-- Location: FF_X46_Y12_N23
\f1|presentstate.ACCESS12B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD12B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS12B~q\);

-- Location: FF_X45_Y12_N5
\f1|presentstate.DRAW12B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS12B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW12B~q\);

-- Location: LABCELL_X46_Y10_N6
\f1|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector21~0_combout\ = ( \f1|presentstate.DRAW11B~q\ & ( (\SW[9]~input_o\ & \data|s4|tmp\(2)) ) ) # ( !\f1|presentstate.DRAW11B~q\ & ( (\SW[9]~input_o\ & (\data|s4|tmp\(2) & \f1|presentstate.DRAW11~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \data|s4|ALT_INV_tmp\(2),
	datad => \f1|ALT_INV_presentstate.DRAW11~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW11B~q\,
	combout => \f1|Selector21~0_combout\);

-- Location: FF_X46_Y10_N8
\f1|presentstate.LOAD12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD12~q\);

-- Location: FF_X45_Y11_N46
\f1|presentstate.ACCESS12~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS12~DUPLICATE_q\);

-- Location: FF_X45_Y11_N29
\f1|presentstate.DRAW12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS12~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW12~q\);

-- Location: LABCELL_X45_Y11_N36
\f1|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector24~0_combout\ = ( \data|f1|Q~q\ & ( (\f1|presentstate.DRAW12~q\) # (\f1|presentstate.DRAW12B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_presentstate.DRAW12B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW12~q\,
	dataf => \data|f1|ALT_INV_Q~q\,
	combout => \f1|Selector24~0_combout\);

-- Location: FF_X45_Y11_N38
\f1|presentstate.LOADCB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOADCB~q\);

-- Location: FF_X45_Y11_N59
\f1|presentstate.ACCESSCB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOADCB~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESSCB~q\);

-- Location: FF_X45_Y12_N8
\f1|presentstate.DRAWCB~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESSCB~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAWCB~DUPLICATE_q\);

-- Location: LABCELL_X45_Y11_N9
\f1|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector23~0_combout\ = ( \f1|presentstate.DRAW12B~q\ & ( !\data|f1|Q~q\ ) ) # ( !\f1|presentstate.DRAW12B~q\ & ( !\data|f1|Q~q\ & ( \f1|presentstate.DRAW12~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f1|ALT_INV_presentstate.DRAW12~q\,
	datae => \f1|ALT_INV_presentstate.DRAW12B~q\,
	dataf => \data|f1|ALT_INV_Q~q\,
	combout => \f1|Selector23~0_combout\);

-- Location: FF_X45_Y11_N11
\f1|presentstate.LOADC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOADC~q\);

-- Location: FF_X45_Y11_N2
\f1|presentstate.ACCESSC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOADC~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESSC~q\);

-- Location: FF_X45_Y12_N37
\f1|presentstate.DRAWC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESSC~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAWC~q\);

-- Location: LABCELL_X46_Y11_N3
\c1|xso~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~0_combout\ = ( !\f1|presentstate.LOAD2~q\ & ( (!\f1|presentstate.DRAW2~q\ & !\f1|presentstate.ACCESS2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_presentstate.DRAW2~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS2~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD2~q\,
	combout => \c1|xso~0_combout\);

-- Location: FF_X47_Y11_N47
\f1|presentstate.DRAW5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS5~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW5~q\);

-- Location: FF_X47_Y11_N59
\f1|presentstate.DRAW6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW6~q\);

-- Location: FF_X46_Y11_N44
\f1|presentstate.DRAW3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW3~q\);

-- Location: LABCELL_X46_Y11_N9
\f1|WideOr41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr41~0_combout\ = ( !\f1|presentstate.DRAW6~q\ & ( !\f1|presentstate.DRAW3~q\ & ( (!\f1|presentstate.DRAW7~q\ & (!\f1|presentstate.DRAW4~DUPLICATE_q\ & (!\f1|presentstate.DRAW8~q\ & !\f1|presentstate.DRAW5~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW7~q\,
	datab => \f1|ALT_INV_presentstate.DRAW4~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAW8~q\,
	datad => \f1|ALT_INV_presentstate.DRAW5~q\,
	datae => \f1|ALT_INV_presentstate.DRAW6~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW3~q\,
	combout => \f1|WideOr41~0_combout\);

-- Location: FF_X45_Y11_N8
\f1|presentstate.DRAW9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW9~q\);

-- Location: LABCELL_X45_Y11_N39
\f1|WideOr41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr41~1_combout\ = ( !\f1|presentstate.DRAW10~q\ & ( (!\f1|presentstate.DRAW9~q\ & !\f1|presentstate.DRAW11~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_presentstate.DRAW9~q\,
	datad => \f1|ALT_INV_presentstate.DRAW11~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW10~q\,
	combout => \f1|WideOr41~1_combout\);

-- Location: LABCELL_X46_Y11_N24
\f1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector0~0_combout\ = ( !\f1|presentstate.LOAD1~q\ & ( \f1|WideOr41~1_combout\ & ( (!\f1|presentstate.ACCESS1~q\ & (!\f1|presentstate.DRAW1~q\ & (\c1|xso~0_combout\ & \f1|WideOr41~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.ACCESS1~q\,
	datab => \f1|ALT_INV_presentstate.DRAW1~q\,
	datac => \c1|ALT_INV_xso~0_combout\,
	datad => \f1|ALT_INV_WideOr41~0_combout\,
	datae => \f1|ALT_INV_presentstate.LOAD1~q\,
	dataf => \f1|ALT_INV_WideOr41~1_combout\,
	combout => \f1|Selector0~0_combout\);

-- Location: FF_X46_Y12_N17
\f1|presentstate.DRAW7B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS7B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW7B~q\);

-- Location: FF_X46_Y12_N20
\f1|presentstate.DRAW8B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS8B~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW8B~q\);

-- Location: LABCELL_X46_Y12_N27
\f1|WideOr41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr41~3_combout\ = ( !\f1|presentstate.DRAW8B~q\ & ( (!\f1|presentstate.DRAW10B~q\ & (!\f1|presentstate.DRAW11B~q\ & (!\f1|presentstate.DRAW7B~q\ & !\f1|presentstate.DRAW9B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW10B~q\,
	datab => \f1|ALT_INV_presentstate.DRAW11B~q\,
	datac => \f1|ALT_INV_presentstate.DRAW7B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW9B~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW8B~q\,
	combout => \f1|WideOr41~3_combout\);

-- Location: FF_X46_Y12_N2
\f1|presentstate.DRAW6B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS6B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW6B~DUPLICATE_q\);

-- Location: FF_X46_Y12_N35
\f1|presentstate.DRAW3B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS3B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW3B~q\);

-- Location: LABCELL_X46_Y12_N3
\f1|WideOr41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr41~2_combout\ = ( !\f1|presentstate.DRAW5B~q\ & ( !\f1|presentstate.DRAW3B~q\ & ( (!\f1|presentstate.DRAW6B~DUPLICATE_q\ & (!\f1|presentstate.DRAW2B~q\ & (!\f1|presentstate.DRAW4B~q\ & !\f1|presentstate.DRAW1B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW6B~DUPLICATE_q\,
	datab => \f1|ALT_INV_presentstate.DRAW2B~q\,
	datac => \f1|ALT_INV_presentstate.DRAW4B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW1B~q\,
	datae => \f1|ALT_INV_presentstate.DRAW5B~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW3B~q\,
	combout => \f1|WideOr41~2_combout\);

-- Location: LABCELL_X46_Y12_N12
\f1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector0~1_combout\ = ( \f1|WideOr41~2_combout\ & ( (\f1|presentstate.RESET~q\ & \f1|WideOr41~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \f1|ALT_INV_WideOr41~3_combout\,
	datae => \f1|ALT_INV_WideOr41~2_combout\,
	combout => \f1|Selector0~1_combout\);

-- Location: LABCELL_X45_Y11_N21
\f1|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector0~2_combout\ = ( \f1|Selector0~1_combout\ & ( (!\f1|presentstate.DRAWCB~DUPLICATE_q\ & (!\f1|presentstate.DRAWC~q\ & ((\f1|Selector0~0_combout\) # (\SW[9]~input_o\)))) ) ) # ( !\f1|Selector0~1_combout\ & ( (\SW[9]~input_o\ & 
-- (!\f1|presentstate.DRAWCB~DUPLICATE_q\ & !\f1|presentstate.DRAWC~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000110000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \f1|ALT_INV_presentstate.DRAWCB~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAWC~q\,
	datad => \f1|ALT_INV_Selector0~0_combout\,
	dataf => \f1|ALT_INV_Selector0~1_combout\,
	combout => \f1|Selector0~2_combout\);

-- Location: FF_X45_Y11_N23
\f1|presentstate.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.RESET~q\);

-- Location: MLABCELL_X47_Y10_N6
\f1|nextstate.LOAD1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|nextstate.LOAD1~0_combout\ = ( \data|s1|tmp\(0) & ( \SW[9]~input_o\ & ( !\f1|presentstate.RESET~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datae => \data|s1|ALT_INV_tmp\(0),
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \f1|nextstate.LOAD1~0_combout\);

-- Location: FF_X47_Y10_N8
\f1|presentstate.LOAD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|nextstate.LOAD1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD1~q\);

-- Location: MLABCELL_X47_Y11_N30
\f1|nextstate.ACCESS1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|nextstate.ACCESS1~0_combout\ = ( \f1|presentstate.LOAD1~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \f1|ALT_INV_presentstate.LOAD1~q\,
	combout => \f1|nextstate.ACCESS1~0_combout\);

-- Location: FF_X46_Y11_N23
\f1|presentstate.ACCESS1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|nextstate.ACCESS1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS1~q\);

-- Location: LABCELL_X45_Y11_N42
\f1|nextstate.DRAW1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|nextstate.DRAW1~0_combout\ = ( \f1|presentstate.ACCESS1~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \f1|ALT_INV_presentstate.ACCESS1~q\,
	combout => \f1|nextstate.DRAW1~0_combout\);

-- Location: FF_X45_Y11_N44
\f1|presentstate.DRAW1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|nextstate.DRAW1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW1~q\);

-- Location: LABCELL_X46_Y11_N33
\f1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector2~0_combout\ = ( !\data|s1|tmp[1]~DUPLICATE_q\ & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW1B~q\) # (\f1|presentstate.DRAW1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW1~q\,
	datac => \f1|ALT_INV_presentstate.DRAW1B~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \data|s1|ALT_INV_tmp[1]~DUPLICATE_q\,
	combout => \f1|Selector2~0_combout\);

-- Location: FF_X46_Y11_N35
\f1|presentstate.LOAD2B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD2B~q\);

-- Location: FF_X46_Y12_N56
\f1|presentstate.ACCESS2B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD2B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS2B~q\);

-- Location: FF_X46_Y12_N41
\f1|presentstate.DRAW2B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS2B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW2B~q\);

-- Location: MLABCELL_X47_Y11_N18
\f1|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector4~0_combout\ = ( \f1|presentstate.DRAW2~q\ & ( !\data|s1|tmp[2]~DUPLICATE_q\ & ( \SW[9]~input_o\ ) ) ) # ( !\f1|presentstate.DRAW2~q\ & ( !\data|s1|tmp[2]~DUPLICATE_q\ & ( (\f1|presentstate.DRAW2B~q\ & \SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW2B~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \f1|ALT_INV_presentstate.DRAW2~q\,
	dataf => \data|s1|ALT_INV_tmp[2]~DUPLICATE_q\,
	combout => \f1|Selector4~0_combout\);

-- Location: FF_X47_Y11_N20
\f1|presentstate.LOAD3B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD3B~q\);

-- Location: FF_X46_Y12_N5
\f1|presentstate.ACCESS3B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD3B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS3B~q\);

-- Location: FF_X46_Y12_N34
\f1|presentstate.DRAW3B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS3B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW3B~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y10_N24
\f1|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector6~0_combout\ = ( !\data|s2|tmp\(0) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW3~DUPLICATE_q\) # (\f1|presentstate.DRAW3B~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW3B~DUPLICATE_q\,
	datab => \f1|ALT_INV_presentstate.DRAW3~DUPLICATE_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \data|s2|ALT_INV_tmp\(0),
	combout => \f1|Selector6~0_combout\);

-- Location: FF_X47_Y10_N26
\f1|presentstate.LOAD4B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD4B~q\);

-- Location: FF_X47_Y12_N17
\f1|presentstate.ACCESS4B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD4B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS4B~q\);

-- Location: FF_X46_Y12_N11
\f1|presentstate.DRAW4B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS4B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW4B~q\);

-- Location: MLABCELL_X47_Y10_N12
\f1|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector8~0_combout\ = ( !\data|s2|tmp\(1) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW4~DUPLICATE_q\) # (\f1|presentstate.DRAW4B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW4B~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \f1|ALT_INV_presentstate.DRAW4~DUPLICATE_q\,
	dataf => \data|s2|ALT_INV_tmp\(1),
	combout => \f1|Selector8~0_combout\);

-- Location: FF_X47_Y10_N14
\f1|presentstate.LOAD5B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD5B~q\);

-- Location: FF_X46_Y12_N26
\f1|presentstate.ACCESS5B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD5B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS5B~q\);

-- Location: FF_X46_Y12_N47
\f1|presentstate.DRAW5B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS5B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW5B~q\);

-- Location: MLABCELL_X47_Y11_N39
\f1|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector10~0_combout\ = ( \f1|presentstate.DRAW5~DUPLICATE_q\ & ( !\data|s2|tmp\(2) & ( \SW[9]~input_o\ ) ) ) # ( !\f1|presentstate.DRAW5~DUPLICATE_q\ & ( !\data|s2|tmp\(2) & ( (\f1|presentstate.DRAW5B~q\ & \SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW5B~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \f1|ALT_INV_presentstate.DRAW5~DUPLICATE_q\,
	dataf => \data|s2|ALT_INV_tmp\(2),
	combout => \f1|Selector10~0_combout\);

-- Location: FF_X47_Y11_N41
\f1|presentstate.LOAD6B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD6B~q\);

-- Location: FF_X46_Y12_N44
\f1|presentstate.ACCESS6B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD6B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS6B~q\);

-- Location: FF_X46_Y12_N1
\f1|presentstate.DRAW6B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS6B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW6B~q\);

-- Location: LABCELL_X46_Y10_N51
\f1|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector11~0_combout\ = ( \f1|presentstate.DRAW6~DUPLICATE_q\ & ( (\data|s3|tmp\(0) & \SW[9]~input_o\) ) ) # ( !\f1|presentstate.DRAW6~DUPLICATE_q\ & ( (\f1|presentstate.DRAW6B~q\ & (\data|s3|tmp\(0) & \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW6B~q\,
	datac => \data|s3|ALT_INV_tmp\(0),
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \f1|ALT_INV_presentstate.DRAW6~DUPLICATE_q\,
	combout => \f1|Selector11~0_combout\);

-- Location: FF_X46_Y10_N53
\f1|presentstate.LOAD7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD7~q\);

-- Location: FF_X47_Y11_N37
\f1|presentstate.ACCESS7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS7~q\);

-- Location: FF_X46_Y11_N55
\f1|presentstate.DRAW7~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW7~DUPLICATE_q\);

-- Location: FF_X46_Y11_N50
\data|s3|tmp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|s3|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|s3|tmp[1]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y10_N57
\f1|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector14~0_combout\ = ( !\data|s3|tmp[1]~DUPLICATE_q\ & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW7B~DUPLICATE_q\) # (\f1|presentstate.DRAW7~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \f1|ALT_INV_presentstate.DRAW7~DUPLICATE_q\,
	datad => \f1|ALT_INV_presentstate.DRAW7B~DUPLICATE_q\,
	dataf => \data|s3|ALT_INV_tmp[1]~DUPLICATE_q\,
	combout => \f1|Selector14~0_combout\);

-- Location: FF_X46_Y10_N59
\f1|presentstate.LOAD8B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD8B~q\);

-- Location: FF_X45_Y12_N34
\f1|presentstate.ACCESS8B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD8B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS8B~DUPLICATE_q\);

-- Location: FF_X46_Y12_N19
\f1|presentstate.DRAW8B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS8B~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW8B~DUPLICATE_q\);

-- Location: LABCELL_X46_Y10_N18
\f1|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector15~0_combout\ = ( \data|s3|tmp\(2) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW8~q\) # (\f1|presentstate.DRAW8B~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \f1|ALT_INV_presentstate.DRAW8B~DUPLICATE_q\,
	datad => \f1|ALT_INV_presentstate.DRAW8~q\,
	dataf => \data|s3|ALT_INV_tmp\(2),
	combout => \f1|Selector15~0_combout\);

-- Location: FF_X46_Y10_N20
\f1|presentstate.LOAD9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD9~q\);

-- Location: FF_X45_Y11_N52
\f1|presentstate.ACCESS9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS9~q\);

-- Location: FF_X45_Y11_N7
\f1|presentstate.DRAW9~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW9~DUPLICATE_q\);

-- Location: LABCELL_X46_Y10_N12
\f1|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector18~0_combout\ = ( !\data|s4|tmp\(0) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW9B~q\) # (\f1|presentstate.DRAW9~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW9~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAW9B~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \data|s4|ALT_INV_tmp\(0),
	combout => \f1|Selector18~0_combout\);

-- Location: FF_X46_Y10_N14
\f1|presentstate.LOAD10B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD10B~q\);

-- Location: FF_X46_Y12_N32
\f1|presentstate.ACCESS10B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD10B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS10B~q\);

-- Location: FF_X46_Y12_N50
\f1|presentstate.DRAW10B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS10B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW10B~q\);

-- Location: LABCELL_X46_Y10_N21
\f1|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|Selector20~0_combout\ = ( !\data|s4|tmp\(1) & ( (\SW[9]~input_o\ & ((\f1|presentstate.DRAW10~q\) # (\f1|presentstate.DRAW10B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \f1|ALT_INV_presentstate.DRAW10B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW10~q\,
	dataf => \data|s4|ALT_INV_tmp\(1),
	combout => \f1|Selector20~0_combout\);

-- Location: FF_X46_Y10_N23
\f1|presentstate.LOAD11B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	d => \f1|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.LOAD11B~q\);

-- Location: LABCELL_X46_Y10_N27
\c1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~2_combout\ = ( !\f1|presentstate.LOAD9B~q\ & ( !\f1|presentstate.LOAD8B~q\ & ( (!\f1|presentstate.LOAD11B~q\ & (!\f1|presentstate.LOAD12B~q\ & (!\f1|presentstate.LOAD10B~q\ & !\f1|presentstate.LOAD7B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD11B~q\,
	datab => \f1|ALT_INV_presentstate.LOAD12B~q\,
	datac => \f1|ALT_INV_presentstate.LOAD10B~q\,
	datad => \f1|ALT_INV_presentstate.LOAD7B~q\,
	datae => \f1|ALT_INV_presentstate.LOAD9B~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD8B~q\,
	combout => \c1|LessThan0~2_combout\);

-- Location: MLABCELL_X47_Y10_N51
\c1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~1_combout\ = ( !\f1|presentstate.LOAD6B~q\ & ( !\f1|presentstate.LOAD4B~q\ & ( (!\f1|presentstate.LOAD1B~q\ & (!\f1|presentstate.LOAD5B~q\ & (!\f1|presentstate.LOAD2B~q\ & !\f1|presentstate.LOAD3B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD1B~q\,
	datab => \f1|ALT_INV_presentstate.LOAD5B~q\,
	datac => \f1|ALT_INV_presentstate.LOAD2B~q\,
	datad => \f1|ALT_INV_presentstate.LOAD3B~q\,
	datae => \f1|ALT_INV_presentstate.LOAD6B~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD4B~q\,
	combout => \c1|LessThan0~1_combout\);

-- Location: LABCELL_X46_Y11_N45
\f1|WideOr40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr40~0_combout\ = ( !\f1|presentstate.LOAD7~q\ & ( !\f1|presentstate.LOAD4~q\ & ( (!\f1|presentstate.LOAD6~q\ & (!\f1|presentstate.LOAD8~q\ & (!\f1|presentstate.LOAD3~q\ & !\f1|presentstate.LOAD5~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD6~q\,
	datab => \f1|ALT_INV_presentstate.LOAD8~q\,
	datac => \f1|ALT_INV_presentstate.LOAD3~q\,
	datad => \f1|ALT_INV_presentstate.LOAD5~q\,
	datae => \f1|ALT_INV_presentstate.LOAD7~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD4~q\,
	combout => \f1|WideOr40~0_combout\);

-- Location: FF_X45_Y12_N38
\f1|presentstate.DRAWC~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESSC~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAWC~DUPLICATE_q\);

-- Location: LABCELL_X45_Y11_N30
\f1|WideOr37\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr37~combout\ = ( !\f1|presentstate.DRAWC~DUPLICATE_q\ & ( (\f1|presentstate.RESET~q\ & (!\f1|presentstate.LOADC~q\ & !\f1|presentstate.ACCESSC~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \f1|ALT_INV_presentstate.LOADC~q\,
	datad => \f1|ALT_INV_presentstate.ACCESSC~q\,
	dataf => \f1|ALT_INV_presentstate.DRAWC~DUPLICATE_q\,
	combout => \f1|WideOr37~combout\);

-- Location: FF_X45_Y11_N47
\f1|presentstate.ACCESS12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD12~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS12~q\);

-- Location: FF_X45_Y11_N16
\f1|presentstate.ACCESS10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS10~q\);

-- Location: LABCELL_X45_Y11_N48
\f1|WideOr33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr33~1_combout\ = ( !\f1|presentstate.ACCESS9~q\ & ( !\f1|presentstate.ACCESS10~q\ & ( (!\f1|presentstate.DRAW12~q\ & (!\f1|presentstate.ACCESS11~q\ & !\f1|presentstate.ACCESS12~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW12~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS11~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS12~q\,
	datae => \f1|ALT_INV_presentstate.ACCESS9~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS10~q\,
	combout => \f1|WideOr33~1_combout\);

-- Location: FF_X47_Y11_N23
\f1|presentstate.ACCESS5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS5~q\);

-- Location: FF_X47_Y11_N8
\f1|presentstate.ACCESS3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS3~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y11_N33
\f1|WideOr33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr33~0_combout\ = ( !\f1|presentstate.ACCESS4~q\ & ( (!\f1|presentstate.ACCESS5~q\ & (!\f1|presentstate.ACCESS7~q\ & (!\f1|presentstate.ACCESS3~DUPLICATE_q\ & !\f1|presentstate.ACCESS6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.ACCESS5~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS7~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS3~DUPLICATE_q\,
	datad => \f1|ALT_INV_presentstate.ACCESS6~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS4~q\,
	combout => \f1|WideOr33~0_combout\);

-- Location: LABCELL_X46_Y10_N0
\f1|WideOr40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr40~1_combout\ = ( !\f1|presentstate.LOAD11~q\ & ( (!\f1|presentstate.LOAD10~q\ & (!\f1|presentstate.LOAD9~q\ & !\f1|presentstate.LOAD12~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_presentstate.LOAD10~q\,
	datac => \f1|ALT_INV_presentstate.LOAD9~q\,
	datad => \f1|ALT_INV_presentstate.LOAD12~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD11~q\,
	combout => \f1|WideOr40~1_combout\);

-- Location: LABCELL_X46_Y11_N0
\f1|WideOr33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr33~2_combout\ = ( \f1|WideOr40~1_combout\ & ( (!\f1|presentstate.ACCESS8~q\ & (\f1|WideOr33~1_combout\ & (\f1|WideOr33~0_combout\ & \f1|WideOr40~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.ACCESS8~q\,
	datab => \f1|ALT_INV_WideOr33~1_combout\,
	datac => \f1|ALT_INV_WideOr33~0_combout\,
	datad => \f1|ALT_INV_WideOr40~0_combout\,
	dataf => \f1|ALT_INV_WideOr40~1_combout\,
	combout => \f1|WideOr33~2_combout\);

-- Location: LABCELL_X46_Y11_N39
\f1|WideOr33\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr33~combout\ = (\f1|Selector0~0_combout\ & (\f1|presentstate.RESET~q\ & \f1|WideOr33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_Selector0~0_combout\,
	datac => \f1|ALT_INV_presentstate.RESET~q\,
	datad => \f1|ALT_INV_WideOr33~2_combout\,
	combout => \f1|WideOr33~combout\);

-- Location: LABCELL_X45_Y11_N24
\c1|yio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~0_combout\ = (!\f1|presentstate.LOADCB~q\ & (!\f1|presentstate.ACCESSCB~q\ & !\f1|presentstate.DRAWCB~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOADCB~q\,
	datab => \f1|ALT_INV_presentstate.ACCESSCB~q\,
	datac => \f1|ALT_INV_presentstate.DRAWCB~DUPLICATE_q\,
	combout => \c1|yio~0_combout\);

-- Location: LABCELL_X46_Y11_N21
\f1|WideOr35\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr35~combout\ = ( \f1|Selector0~0_combout\ & ( (\c1|yio~0_combout\ & \f1|WideOr33~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio~0_combout\,
	datad => \f1|ALT_INV_WideOr33~2_combout\,
	dataf => \f1|ALT_INV_Selector0~0_combout\,
	combout => \f1|WideOr35~combout\);

-- Location: LABCELL_X48_Y12_N30
\c1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~9_sumout\ = SUM(( \c1|xio\(0) ) + ( VCC ) + ( !VCC ))
-- \c1|Add1~10\ = CARRY(( \c1|xio\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_xio\(0),
	cin => GND,
	sumout => \c1|Add1~9_sumout\,
	cout => \c1|Add1~10\);

-- Location: MLABCELL_X47_Y12_N42
\c1|xio~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~4_combout\ = ( \f1|WideOr35~combout\ & ( \c1|Add1~9_sumout\ & ( (\c1|xio~0_combout\ & (((!\c1|LessThan0~10_combout\ & \c1|LessThan0~11_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr35~combout\ & ( \c1|Add1~9_sumout\ ) ) # ( 
-- !\f1|WideOr35~combout\ & ( !\c1|Add1~9_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101110000000000000000011111111111111110001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~10_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	datae => \f1|ALT_INV_WideOr35~combout\,
	dataf => \c1|ALT_INV_Add1~9_sumout\,
	combout => \c1|xio~4_combout\);

-- Location: FF_X47_Y12_N44
\c1|xio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~4_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(0));

-- Location: LABCELL_X48_Y12_N33
\c1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~1_sumout\ = SUM(( \c1|xio\(1) ) + ( GND ) + ( \c1|Add1~10\ ))
-- \c1|Add1~2\ = CARRY(( \c1|xio\(1) ) + ( GND ) + ( \c1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(1),
	cin => \c1|Add1~10\,
	sumout => \c1|Add1~1_sumout\,
	cout => \c1|Add1~2\);

-- Location: MLABCELL_X47_Y12_N51
\c1|xio~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~2_combout\ = ( \c1|yio~0_combout\ & ( \c1|Add1~1_sumout\ & ( (\c1|xio~0_combout\ & (((\c1|LessThan0~11_combout\ & !\c1|LessThan0~10_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\c1|yio~0_combout\ & ( \c1|Add1~1_sumout\ ) ) # ( 
-- !\c1|yio~0_combout\ & ( !\c1|Add1~1_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110000000000000000011111111111111110001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~11_combout\,
	datad => \c1|ALT_INV_LessThan0~10_combout\,
	datae => \c1|ALT_INV_yio~0_combout\,
	dataf => \c1|ALT_INV_Add1~1_sumout\,
	combout => \c1|xio~2_combout\);

-- Location: FF_X47_Y12_N53
\c1|xio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~2_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(1));

-- Location: FF_X45_Y12_N7
\f1|presentstate.DRAWCB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESSCB~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAWCB~q\);

-- Location: LABCELL_X46_Y12_N30
\c1|yso~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~0_combout\ = ( !\f1|presentstate.LOADCB~q\ & ( !\f1|presentstate.ACCESSC~q\ & ( (!\f1|presentstate.DRAWC~q\ & (!\f1|presentstate.DRAWCB~q\ & (!\f1|presentstate.ACCESSCB~q\ & !\f1|presentstate.LOADC~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAWC~q\,
	datab => \f1|ALT_INV_presentstate.DRAWCB~q\,
	datac => \f1|ALT_INV_presentstate.ACCESSCB~q\,
	datad => \f1|ALT_INV_presentstate.LOADC~q\,
	datae => \f1|ALT_INV_presentstate.LOADCB~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESSC~q\,
	combout => \c1|yso~0_combout\);

-- Location: LABCELL_X46_Y12_N24
\c1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~0_combout\ = ( !\c1|yso~0_combout\ & ( !\c1|xio\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(1),
	dataf => \c1|ALT_INV_yso~0_combout\,
	combout => \c1|LessThan0~0_combout\);

-- Location: LABCELL_X48_Y12_N36
\c1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~13_sumout\ = SUM(( \c1|xio\(2) ) + ( GND ) + ( \c1|Add1~2\ ))
-- \c1|Add1~14\ = CARRY(( \c1|xio\(2) ) + ( GND ) + ( \c1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(2),
	cin => \c1|Add1~2\,
	sumout => \c1|Add1~13_sumout\,
	cout => \c1|Add1~14\);

-- Location: MLABCELL_X47_Y12_N0
\c1|xio~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~5_combout\ = ( \c1|Add1~13_sumout\ & ( \f1|WideOr33~combout\ ) ) # ( !\c1|Add1~13_sumout\ & ( \f1|WideOr33~combout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) ) # ( 
-- \c1|Add1~13_sumout\ & ( !\f1|WideOr33~combout\ & ( (\c1|xio~0_combout\ & (((!\c1|LessThan0~10_combout\ & \c1|LessThan0~11_combout\)) # (\c1|LessThan0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010100010111111010101110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~10_combout\,
	datac => \c1|ALT_INV_LessThan0~12_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	datae => \c1|ALT_INV_Add1~13_sumout\,
	dataf => \f1|ALT_INV_WideOr33~combout\,
	combout => \c1|xio~5_combout\);

-- Location: FF_X47_Y12_N2
\c1|xio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~5_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(2));

-- Location: LABCELL_X48_Y12_N39
\c1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~5_sumout\ = SUM(( \c1|xio\(3) ) + ( GND ) + ( \c1|Add1~14\ ))
-- \c1|Add1~6\ = CARRY(( \c1|xio\(3) ) + ( GND ) + ( \c1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio\(3),
	cin => \c1|Add1~14\,
	sumout => \c1|Add1~5_sumout\,
	cout => \c1|Add1~6\);

-- Location: LABCELL_X45_Y11_N27
\f1|WideOr31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr31~0_combout\ = ( !\f1|presentstate.DRAWC~DUPLICATE_q\ & ( (!\f1|presentstate.ACCESSC~q\ & !\f1|presentstate.LOADC~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_presentstate.ACCESSC~q\,
	datad => \f1|ALT_INV_presentstate.LOADC~q\,
	dataf => \f1|ALT_INV_presentstate.DRAWC~DUPLICATE_q\,
	combout => \f1|WideOr31~0_combout\);

-- Location: LABCELL_X48_Y12_N42
\c1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~25_sumout\ = SUM(( \c1|xio\(4) ) + ( GND ) + ( \c1|Add1~6\ ))
-- \c1|Add1~26\ = CARRY(( \c1|xio\(4) ) + ( GND ) + ( \c1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_xio\(4),
	cin => \c1|Add1~6\,
	sumout => \c1|Add1~25_sumout\,
	cout => \c1|Add1~26\);

-- Location: LABCELL_X48_Y12_N45
\c1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~21_sumout\ = SUM(( \c1|xio\(5) ) + ( GND ) + ( \c1|Add1~26\ ))
-- \c1|Add1~22\ = CARRY(( \c1|xio\(5) ) + ( GND ) + ( \c1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio\(5),
	cin => \c1|Add1~26\,
	sumout => \c1|Add1~21_sumout\,
	cout => \c1|Add1~22\);

-- Location: MLABCELL_X47_Y12_N21
\c1|xio~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~7_combout\ = ( \c1|Add1~21_sumout\ & ( \c1|yso~0_combout\ & ( (\c1|xio~0_combout\ & (((\c1|LessThan0~11_combout\ & !\c1|LessThan0~10_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( \c1|Add1~21_sumout\ & ( !\c1|yso~0_combout\ ) ) # ( 
-- !\c1|Add1~21_sumout\ & ( !\c1|yso~0_combout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110111111111111111100000000000000000001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~11_combout\,
	datad => \c1|ALT_INV_LessThan0~10_combout\,
	datae => \c1|ALT_INV_Add1~21_sumout\,
	dataf => \c1|ALT_INV_yso~0_combout\,
	combout => \c1|xio~7_combout\);

-- Location: FF_X47_Y12_N23
\c1|xio[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~7_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(5));

-- Location: LABCELL_X46_Y11_N51
\c1|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~15_combout\ = ( \f1|WideOr33~2_combout\ & ( \c1|xio\(6) & ( (\f1|Selector0~0_combout\ & (\f1|presentstate.RESET~q\ & (\f1|WideOr31~0_combout\ & !\c1|xio\(5)))) ) ) ) # ( \f1|WideOr33~2_combout\ & ( !\c1|xio\(6) & ( (\f1|presentstate.RESET~q\ 
-- & (((\f1|WideOr31~0_combout\ & !\c1|xio\(5))) # (\f1|Selector0~0_combout\))) ) ) ) # ( !\f1|WideOr33~2_combout\ & ( !\c1|xio\(6) & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr31~0_combout\ & !\c1|xio\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000100110001000100000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_Selector0~0_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \f1|ALT_INV_WideOr31~0_combout\,
	datad => \c1|ALT_INV_xio\(5),
	datae => \f1|ALT_INV_WideOr33~2_combout\,
	dataf => \c1|ALT_INV_xio\(6),
	combout => \c1|LessThan0~15_combout\);

-- Location: LABCELL_X45_Y11_N54
\c1|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~13_combout\ = ( \c1|xio\(5) & ( \f1|WideOr33~2_combout\ & ( (\f1|WideOr31~0_combout\ & (\f1|presentstate.RESET~q\ & (!\f1|Selector0~0_combout\ $ (\c1|xio\(6))))) ) ) ) # ( !\c1|xio\(5) & ( \f1|WideOr33~2_combout\ & ( 
-- (!\f1|presentstate.RESET~q\ & (((!\c1|xio\(6))))) # (\f1|presentstate.RESET~q\ & (!\f1|WideOr31~0_combout\ & (!\f1|Selector0~0_combout\ $ (\c1|xio\(6))))) ) ) ) # ( \c1|xio\(5) & ( !\f1|WideOr33~2_combout\ & ( (\f1|WideOr31~0_combout\ & 
-- (\f1|presentstate.RESET~q\ & !\c1|xio\(6))) ) ) ) # ( !\c1|xio\(5) & ( !\f1|WideOr33~2_combout\ & ( (!\c1|xio\(6) & ((!\f1|WideOr31~0_combout\) # (!\f1|presentstate.RESET~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000000000110000000011111000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_Selector0~0_combout\,
	datab => \f1|ALT_INV_WideOr31~0_combout\,
	datac => \f1|ALT_INV_presentstate.RESET~q\,
	datad => \c1|ALT_INV_xio\(6),
	datae => \c1|ALT_INV_xio\(5),
	dataf => \f1|ALT_INV_WideOr33~2_combout\,
	combout => \c1|LessThan0~13_combout\);

-- Location: LABCELL_X46_Y12_N48
\c1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~4_combout\ = ( !\f1|presentstate.ACCESS2B~q\ & ( !\f1|presentstate.ACCESS5B~q\ & ( (!\f1|presentstate.ACCESS4B~q\ & (!\f1|presentstate.ACCESS1B~q\ & (!\f1|presentstate.ACCESS6B~q\ & !\f1|presentstate.ACCESS3B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.ACCESS4B~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS1B~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS6B~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS3B~q\,
	datae => \f1|ALT_INV_presentstate.ACCESS2B~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS5B~q\,
	combout => \c1|LessThan0~4_combout\);

-- Location: FF_X45_Y12_N35
\f1|presentstate.ACCESS8B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD8B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS8B~q\);

-- Location: LABCELL_X46_Y12_N36
\c1|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~5_combout\ = ( !\f1|presentstate.ACCESS11B~q\ & ( (!\f1|presentstate.ACCESS7B~q\ & (!\f1|presentstate.ACCESS10B~q\ & (!\f1|presentstate.ACCESS8B~q\ & !\f1|presentstate.ACCESS9B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.ACCESS7B~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS10B~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS8B~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS9B~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS11B~q\,
	combout => \c1|LessThan0~5_combout\);

-- Location: FF_X45_Y12_N4
\f1|presentstate.DRAW12B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS12B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW12B~DUPLICATE_q\);

-- Location: LABCELL_X46_Y12_N54
\c1|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~6_combout\ = ( \c1|LessThan0~5_combout\ & ( !\f1|presentstate.DRAW12B~DUPLICATE_q\ & ( (\f1|WideOr41~2_combout\ & (\c1|LessThan0~4_combout\ & (\f1|WideOr41~3_combout\ & !\f1|presentstate.ACCESS12B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr41~2_combout\,
	datab => \c1|ALT_INV_LessThan0~4_combout\,
	datac => \f1|ALT_INV_WideOr41~3_combout\,
	datad => \f1|ALT_INV_presentstate.ACCESS12B~q\,
	datae => \c1|ALT_INV_LessThan0~5_combout\,
	dataf => \f1|ALT_INV_presentstate.DRAW12B~DUPLICATE_q\,
	combout => \c1|LessThan0~6_combout\);

-- Location: LABCELL_X46_Y10_N33
\c1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~3_combout\ = ( \c1|LessThan0~1_combout\ & ( \c1|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_LessThan0~2_combout\,
	dataf => \c1|ALT_INV_LessThan0~1_combout\,
	combout => \c1|LessThan0~3_combout\);

-- Location: LABCELL_X46_Y12_N21
\c1|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~9_combout\ = ( \c1|LessThan0~3_combout\ & ( \c1|yio~0_combout\ & ( (!\c1|yso~0_combout\ & ((!\c1|xio\(3)) # ((!\c1|xio\(2) & !\c1|LessThan0~6_combout\)))) # (\c1|yso~0_combout\ & (!\c1|xio\(3) & (!\c1|xio\(2) & !\c1|LessThan0~6_combout\))) ) 
-- ) ) # ( !\c1|LessThan0~3_combout\ & ( \c1|yio~0_combout\ & ( (!\c1|yso~0_combout\ & ((!\c1|xio\(3)) # (!\c1|xio\(2)))) # (\c1|yso~0_combout\ & (!\c1|xio\(3) & !\c1|xio\(2))) ) ) ) # ( \c1|LessThan0~3_combout\ & ( !\c1|yio~0_combout\ & ( 
-- (!\c1|yso~0_combout\ & ((!\c1|xio\(3)) # (!\c1|xio\(2)))) # (\c1|yso~0_combout\ & (!\c1|xio\(3) & !\c1|xio\(2))) ) ) ) # ( !\c1|LessThan0~3_combout\ & ( !\c1|yio~0_combout\ & ( (!\c1|yso~0_combout\ & ((!\c1|xio\(3)) # (!\c1|xio\(2)))) # 
-- (\c1|yso~0_combout\ & (!\c1|xio\(3) & !\c1|xio\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100011101000111010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso~0_combout\,
	datab => \c1|ALT_INV_xio\(3),
	datac => \c1|ALT_INV_xio\(2),
	datad => \c1|ALT_INV_LessThan0~6_combout\,
	datae => \c1|ALT_INV_LessThan0~3_combout\,
	dataf => \c1|ALT_INV_yio~0_combout\,
	combout => \c1|LessThan0~9_combout\);

-- Location: LABCELL_X46_Y13_N30
\c1|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~14_combout\ = ( \c1|LessThan0~0_combout\ & ( \c1|LessThan0~8_combout\ & ( (\c1|xio\(2) & (\c1|yio~0_combout\ & (\c1|LessThan0~3_combout\ & \c1|LessThan0~6_combout\))) ) ) ) # ( !\c1|LessThan0~0_combout\ & ( \c1|LessThan0~8_combout\ & ( 
-- (!\c1|LessThan0~3_combout\) # ((!\c1|LessThan0~6_combout\) # ((\c1|xio\(2) & \c1|yio~0_combout\))) ) ) ) # ( \c1|LessThan0~0_combout\ & ( !\c1|LessThan0~8_combout\ & ( (\c1|xio\(2) & (\c1|yio~0_combout\ & (\c1|LessThan0~3_combout\ & 
-- \c1|LessThan0~6_combout\))) ) ) ) # ( !\c1|LessThan0~0_combout\ & ( !\c1|LessThan0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000111111111111100010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio\(2),
	datab => \c1|ALT_INV_yio~0_combout\,
	datac => \c1|ALT_INV_LessThan0~3_combout\,
	datad => \c1|ALT_INV_LessThan0~6_combout\,
	datae => \c1|ALT_INV_LessThan0~0_combout\,
	dataf => \c1|ALT_INV_LessThan0~8_combout\,
	combout => \c1|LessThan0~14_combout\);

-- Location: LABCELL_X46_Y13_N12
\c1|LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~16_combout\ = ( \c1|LessThan0~9_combout\ & ( \c1|LessThan0~14_combout\ & ( (!\c1|LessThan0~15_combout\ & ((!\c1|LessThan0~13_combout\) # ((\f1|WideOr35~combout\ & \c1|xio\(4))))) ) ) ) # ( !\c1|LessThan0~9_combout\ & ( 
-- \c1|LessThan0~14_combout\ & ( (!\c1|LessThan0~15_combout\ & (((!\c1|LessThan0~13_combout\) # (\c1|xio\(4))) # (\f1|WideOr35~combout\))) ) ) ) # ( \c1|LessThan0~9_combout\ & ( !\c1|LessThan0~14_combout\ & ( (!\c1|LessThan0~15_combout\ & 
-- ((!\c1|LessThan0~13_combout\) # ((\f1|WideOr35~combout\ & \c1|xio\(4))))) ) ) ) # ( !\c1|LessThan0~9_combout\ & ( !\c1|LessThan0~14_combout\ & ( (!\c1|LessThan0~15_combout\ & ((!\c1|LessThan0~13_combout\) # ((\f1|WideOr35~combout\ & \c1|xio\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000010101010100000001010101010001010101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan0~15_combout\,
	datab => \f1|ALT_INV_WideOr35~combout\,
	datac => \c1|ALT_INV_xio\(4),
	datad => \c1|ALT_INV_LessThan0~13_combout\,
	datae => \c1|ALT_INV_LessThan0~9_combout\,
	dataf => \c1|ALT_INV_LessThan0~14_combout\,
	combout => \c1|LessThan0~16_combout\);

-- Location: LABCELL_X46_Y13_N39
\c1|xio~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~3_combout\ = ( \f1|presentstate.RESET~q\ & ( \c1|LessThan0~16_combout\ & ( \c1|yso~0_combout\ ) ) ) # ( \f1|presentstate.RESET~q\ & ( !\c1|LessThan0~16_combout\ & ( (!\c1|xio~0_combout\ & (\c1|yso~0_combout\)) # (\c1|xio~0_combout\ & 
-- ((\c1|Add1~5_sumout\))) ) ) ) # ( !\f1|presentstate.RESET~q\ & ( !\c1|LessThan0~16_combout\ & ( (\c1|xio~0_combout\ & \c1|Add1~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001110100011100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso~0_combout\,
	datab => \c1|ALT_INV_xio~0_combout\,
	datac => \c1|ALT_INV_Add1~5_sumout\,
	datae => \f1|ALT_INV_presentstate.RESET~q\,
	dataf => \c1|ALT_INV_LessThan0~16_combout\,
	combout => \c1|xio~3_combout\);

-- Location: FF_X46_Y13_N41
\c1|xio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~3_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(3));

-- Location: MLABCELL_X47_Y12_N30
\c1|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~8_combout\ = ( \c1|yso~0_combout\ & ( (!\c1|xio\(3) & (!\c1|xio\(0) & (!\c1|xio\(1) & \f1|presentstate.RESET~q\))) ) ) # ( !\c1|yso~0_combout\ & ( (!\c1|xio\(0) & \f1|presentstate.RESET~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio\(3),
	datab => \c1|ALT_INV_xio\(0),
	datac => \c1|ALT_INV_xio\(1),
	datad => \f1|ALT_INV_presentstate.RESET~q\,
	dataf => \c1|ALT_INV_yso~0_combout\,
	combout => \c1|LessThan0~8_combout\);

-- Location: MLABCELL_X47_Y12_N33
\c1|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~7_combout\ = ( \c1|LessThan0~6_combout\ & ( \c1|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_LessThan0~3_combout\,
	dataf => \c1|ALT_INV_LessThan0~6_combout\,
	combout => \c1|LessThan0~7_combout\);

-- Location: MLABCELL_X47_Y12_N12
\c1|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~10_combout\ = ( !\c1|LessThan0~9_combout\ & ( \c1|LessThan0~7_combout\ & ( (!\c1|yio~0_combout\ & (!\c1|LessThan0~0_combout\ & ((!\c1|LessThan0~8_combout\)))) # (\c1|yio~0_combout\ & (((!\c1|LessThan0~0_combout\ & !\c1|LessThan0~8_combout\)) 
-- # (\c1|xio\(2)))) ) ) ) # ( !\c1|LessThan0~9_combout\ & ( !\c1|LessThan0~7_combout\ & ( !\c1|LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~0_combout\,
	datac => \c1|ALT_INV_xio\(2),
	datad => \c1|ALT_INV_LessThan0~8_combout\,
	datae => \c1|ALT_INV_LessThan0~9_combout\,
	dataf => \c1|ALT_INV_LessThan0~7_combout\,
	combout => \c1|LessThan0~10_combout\);

-- Location: MLABCELL_X47_Y12_N9
\f1|WideOr29\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr29~combout\ = ( \c1|yio~0_combout\ & ( (\c1|LessThan0~6_combout\ & \c1|LessThan0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan0~6_combout\,
	datad => \c1|ALT_INV_LessThan0~3_combout\,
	dataf => \c1|ALT_INV_yio~0_combout\,
	combout => \f1|WideOr29~combout\);

-- Location: LABCELL_X48_Y12_N48
\c1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~17_sumout\ = SUM(( \c1|xio\(6) ) + ( GND ) + ( \c1|Add1~22\ ))
-- \c1|Add1~18\ = CARRY(( \c1|xio\(6) ) + ( GND ) + ( \c1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(6),
	cin => \c1|Add1~22\,
	sumout => \c1|Add1~17_sumout\,
	cout => \c1|Add1~18\);

-- Location: MLABCELL_X47_Y12_N48
\c1|xio~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~6_combout\ = ( \f1|WideOr29~combout\ & ( \c1|Add1~17_sumout\ & ( (\c1|xio~0_combout\ & (((!\c1|LessThan0~10_combout\ & \c1|LessThan0~11_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr29~combout\ & ( \c1|Add1~17_sumout\ ) ) # ( 
-- !\f1|WideOr29~combout\ & ( !\c1|Add1~17_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101110000000000000000011111111111111110001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~10_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	datae => \f1|ALT_INV_WideOr29~combout\,
	dataf => \c1|ALT_INV_Add1~17_sumout\,
	combout => \c1|xio~6_combout\);

-- Location: FF_X47_Y12_N50
\c1|xio[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~6_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(6));

-- Location: LABCELL_X46_Y11_N57
\c1|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~11_combout\ = ( \c1|xio\(5) & ( \f1|WideOr35~combout\ & ( (\f1|WideOr37~combout\ & (!\c1|xio\(4) & (!\f1|WideOr33~combout\ $ (\c1|xio\(6))))) ) ) ) # ( !\c1|xio\(5) & ( \f1|WideOr35~combout\ & ( (!\f1|WideOr37~combout\ & (!\c1|xio\(4) & 
-- (!\f1|WideOr33~combout\ $ (\c1|xio\(6))))) ) ) ) # ( \c1|xio\(5) & ( !\f1|WideOr35~combout\ & ( (\f1|WideOr37~combout\ & (\c1|xio\(4) & (!\f1|WideOr33~combout\ $ (\c1|xio\(6))))) ) ) ) # ( !\c1|xio\(5) & ( !\f1|WideOr35~combout\ & ( 
-- (!\f1|WideOr37~combout\ & (\c1|xio\(4) & (!\f1|WideOr33~combout\ $ (\c1|xio\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000001000000000110000000001000000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr37~combout\,
	datab => \f1|ALT_INV_WideOr33~combout\,
	datac => \c1|ALT_INV_xio\(4),
	datad => \c1|ALT_INV_xio\(6),
	datae => \c1|ALT_INV_xio\(5),
	dataf => \f1|ALT_INV_WideOr35~combout\,
	combout => \c1|LessThan0~11_combout\);

-- Location: LABCELL_X46_Y11_N30
\f1|WideOr31\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr31~combout\ = ( \f1|WideOr33~2_combout\ & ( (\f1|WideOr31~0_combout\ & \f1|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_WideOr31~0_combout\,
	datac => \f1|ALT_INV_Selector0~0_combout\,
	dataf => \f1|ALT_INV_WideOr33~2_combout\,
	combout => \f1|WideOr31~combout\);

-- Location: MLABCELL_X47_Y12_N45
\c1|xio~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~8_combout\ = ( \f1|WideOr31~combout\ & ( \c1|Add1~25_sumout\ & ( (\c1|xio~0_combout\ & (((\c1|LessThan0~11_combout\ & !\c1|LessThan0~10_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr31~combout\ & ( \c1|Add1~25_sumout\ ) ) # ( 
-- !\f1|WideOr31~combout\ & ( !\c1|Add1~25_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110000000000000000011111111111111110001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~11_combout\,
	datad => \c1|ALT_INV_LessThan0~10_combout\,
	datae => \f1|ALT_INV_WideOr31~combout\,
	dataf => \c1|ALT_INV_Add1~25_sumout\,
	combout => \c1|xio~8_combout\);

-- Location: FF_X47_Y12_N47
\c1|xio[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~8_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(4));

-- Location: LABCELL_X46_Y11_N12
\c1|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan0~12_combout\ = ( \c1|xio\(5) & ( \f1|WideOr35~combout\ & ( (!\c1|xio\(6) & \f1|WideOr33~combout\) ) ) ) # ( !\c1|xio\(5) & ( \f1|WideOr35~combout\ & ( (!\f1|WideOr37~combout\ & (!\c1|xio\(6) & \f1|WideOr33~combout\)) # (\f1|WideOr37~combout\ 
-- & ((!\c1|xio\(6)) # (\f1|WideOr33~combout\))) ) ) ) # ( \c1|xio\(5) & ( !\f1|WideOr35~combout\ & ( (!\c1|xio\(6) & (((\f1|WideOr37~combout\ & !\c1|xio\(4))) # (\f1|WideOr33~combout\))) # (\c1|xio\(6) & (\f1|WideOr37~combout\ & (!\c1|xio\(4) & 
-- \f1|WideOr33~combout\))) ) ) ) # ( !\c1|xio\(5) & ( !\f1|WideOr35~combout\ & ( (!\c1|xio\(6) & (((!\c1|xio\(4)) # (\f1|WideOr33~combout\)) # (\f1|WideOr37~combout\))) # (\c1|xio\(6) & (\f1|WideOr33~combout\ & ((!\c1|xio\(4)) # (\f1|WideOr37~combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011111101010000001111010001010000111101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr37~combout\,
	datab => \c1|ALT_INV_xio\(4),
	datac => \c1|ALT_INV_xio\(6),
	datad => \f1|ALT_INV_WideOr33~combout\,
	datae => \c1|ALT_INV_xio\(5),
	dataf => \f1|ALT_INV_WideOr35~combout\,
	combout => \c1|LessThan0~12_combout\);

-- Location: LABCELL_X48_Y12_N51
\c1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add1~29_sumout\ = SUM(( \c1|xio\(7) ) + ( GND ) + ( \c1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(7),
	cin => \c1|Add1~18\,
	sumout => \c1|Add1~29_sumout\);

-- Location: LABCELL_X45_Y11_N3
\c1|xio~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~10_combout\ = ( \f1|presentstate.RESET~q\ & ( \c1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Add1~29_sumout\,
	dataf => \f1|ALT_INV_presentstate.RESET~q\,
	combout => \c1|xio~10_combout\);

-- Location: LABCELL_X46_Y10_N45
\f1|WideOr40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr40~2_combout\ = (!\f1|presentstate.LOAD2~q\ & (!\f1|presentstate.LOAD1~q\ & (!\f1|presentstate.LOADC~q\ & !\f1|presentstate.LOADCB~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD2~q\,
	datab => \f1|ALT_INV_presentstate.LOAD1~q\,
	datac => \f1|ALT_INV_presentstate.LOADC~q\,
	datad => \f1|ALT_INV_presentstate.LOADCB~q\,
	combout => \f1|WideOr40~2_combout\);

-- Location: MLABCELL_X47_Y10_N36
\f1|WideOr40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr40~3_combout\ = ( \f1|WideOr40~2_combout\ & ( \f1|WideOr40~1_combout\ & ( (\c1|LessThan0~2_combout\ & (\c1|LessThan0~1_combout\ & \f1|WideOr40~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan0~2_combout\,
	datab => \c1|ALT_INV_LessThan0~1_combout\,
	datac => \f1|ALT_INV_WideOr40~0_combout\,
	datae => \f1|ALT_INV_WideOr40~2_combout\,
	dataf => \f1|ALT_INV_WideOr40~1_combout\,
	combout => \f1|WideOr40~3_combout\);

-- Location: MLABCELL_X47_Y11_N3
\c1|xio~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~9_combout\ = ( !\f1|presentstate.RESET~q\ & ( (\c1|xio\(7) & \f1|WideOr40~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(7),
	datad => \f1|ALT_INV_WideOr40~3_combout\,
	dataf => \f1|ALT_INV_presentstate.RESET~q\,
	combout => \c1|xio~9_combout\);

-- Location: MLABCELL_X47_Y11_N12
\c1|xio~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~11_combout\ = ( \c1|xio~9_combout\ & ( \c1|LessThan0~11_combout\ ) ) # ( !\c1|xio~9_combout\ & ( \c1|LessThan0~11_combout\ & ( (\c1|xio~0_combout\ & (\c1|xio~10_combout\ & ((!\c1|LessThan0~10_combout\) # (\c1|LessThan0~12_combout\)))) ) ) ) # ( 
-- \c1|xio~9_combout\ & ( !\c1|LessThan0~11_combout\ ) ) # ( !\c1|xio~9_combout\ & ( !\c1|LessThan0~11_combout\ & ( (\c1|xio~0_combout\ & (\c1|LessThan0~12_combout\ & \c1|xio~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111111111111100000101000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_xio~10_combout\,
	datad => \c1|ALT_INV_LessThan0~10_combout\,
	datae => \c1|ALT_INV_xio~9_combout\,
	dataf => \c1|ALT_INV_LessThan0~11_combout\,
	combout => \c1|xio~11_combout\);

-- Location: FF_X47_Y11_N14
\c1|xio[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xio~11_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xio\(7));

-- Location: MLABCELL_X47_Y10_N42
\c1|xio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~0_combout\ = ( \f1|WideOr40~2_combout\ & ( \f1|WideOr40~1_combout\ & ( (\c1|LessThan0~2_combout\ & (\c1|LessThan0~1_combout\ & (\f1|WideOr40~0_combout\ & !\c1|xio\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan0~2_combout\,
	datab => \c1|ALT_INV_LessThan0~1_combout\,
	datac => \f1|ALT_INV_WideOr40~0_combout\,
	datad => \c1|ALT_INV_xio\(7),
	datae => \f1|ALT_INV_WideOr40~2_combout\,
	dataf => \f1|ALT_INV_WideOr40~1_combout\,
	combout => \c1|xio~0_combout\);

-- Location: LABCELL_X46_Y12_N39
\f1|WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr16~0_combout\ = ( !\f1|presentstate.LOAD2B~q\ & ( (!\f1|presentstate.DRAW2B~q\ & !\f1|presentstate.ACCESS2B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_presentstate.DRAW2B~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS2B~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD2B~q\,
	combout => \f1|WideOr16~0_combout\);

-- Location: LABCELL_X46_Y12_N6
\c1|xso~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~3_combout\ = ( !\f1|presentstate.ACCESS1B~q\ & ( \f1|WideOr16~0_combout\ & ( (!\f1|presentstate.DRAW1B~q\ & !\f1|presentstate.LOAD1B~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW1B~q\,
	datad => \f1|ALT_INV_presentstate.LOAD1B~q\,
	datae => \f1|ALT_INV_presentstate.ACCESS1B~q\,
	dataf => \f1|ALT_INV_WideOr16~0_combout\,
	combout => \c1|xso~3_combout\);

-- Location: LABCELL_X46_Y13_N57
\c1|xso~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~4_combout\ = ( \c1|xso~3_combout\ & ( (\c1|xso~0_combout\ & (!\f1|presentstate.LOAD1~q\ & (!\f1|presentstate.ACCESS1~q\ & !\f1|presentstate.DRAW1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso~0_combout\,
	datab => \f1|ALT_INV_presentstate.LOAD1~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS1~q\,
	datad => \f1|ALT_INV_presentstate.DRAW1~q\,
	datae => \c1|ALT_INV_xso~3_combout\,
	combout => \c1|xso~4_combout\);

-- Location: MLABCELL_X47_Y11_N54
\f1|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr15~0_combout\ = ( !\f1|presentstate.LOAD3~q\ & ( !\f1|presentstate.ACCESS3~q\ & ( (!\f1|presentstate.LOAD3B~q\ & (!\f1|presentstate.DRAW3~DUPLICATE_q\ & (!\f1|presentstate.DRAW3B~DUPLICATE_q\ & !\f1|presentstate.ACCESS3B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD3B~q\,
	datab => \f1|ALT_INV_presentstate.DRAW3~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAW3B~DUPLICATE_q\,
	datad => \f1|ALT_INV_presentstate.ACCESS3B~q\,
	datae => \f1|ALT_INV_presentstate.LOAD3~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS3~q\,
	combout => \f1|WideOr15~0_combout\);

-- Location: MLABCELL_X47_Y12_N6
\c1|xio~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xio~1_combout\ = ( \c1|LessThan0~12_combout\ & ( \c1|xio~0_combout\ ) ) # ( !\c1|LessThan0~12_combout\ & ( (!\c1|LessThan0~10_combout\ & (\c1|xio~0_combout\ & \c1|LessThan0~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_LessThan0~10_combout\,
	datac => \c1|ALT_INV_xio~0_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	dataf => \c1|ALT_INV_LessThan0~12_combout\,
	combout => \c1|xio~1_combout\);

-- Location: FF_X46_Y11_N16
\f1|presentstate.DRAW4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.ACCESS4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.DRAW4~q\);

-- Location: MLABCELL_X47_Y11_N24
\c1|xso~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~1_combout\ = ( !\f1|presentstate.LOAD4B~q\ & ( !\f1|presentstate.LOAD4~q\ & ( (!\f1|presentstate.DRAW4~q\ & (!\f1|presentstate.ACCESS4~q\ & (!\f1|presentstate.ACCESS4B~q\ & !\f1|presentstate.DRAW4B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW4~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS4~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS4B~q\,
	datad => \f1|ALT_INV_presentstate.DRAW4B~q\,
	datae => \f1|ALT_INV_presentstate.LOAD4B~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD4~q\,
	combout => \c1|xso~1_combout\);

-- Location: MLABCELL_X47_Y11_N42
\c1|xso~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~6_combout\ = ( !\f1|presentstate.LOAD5~q\ & ( !\f1|presentstate.ACCESS5~DUPLICATE_q\ & ( (!\f1|presentstate.LOAD5B~q\ & (!\f1|presentstate.DRAW5~DUPLICATE_q\ & (!\f1|presentstate.DRAW5B~q\ & !\f1|presentstate.ACCESS5B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD5B~q\,
	datab => \f1|ALT_INV_presentstate.DRAW5~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAW5B~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS5B~q\,
	datae => \f1|ALT_INV_presentstate.LOAD5~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS5~DUPLICATE_q\,
	combout => \c1|xso~6_combout\);

-- Location: LABCELL_X46_Y13_N24
\f1|WideOr15\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr15~combout\ = ( \c1|xso~6_combout\ & ( \f1|WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_WideOr15~0_combout\,
	dataf => \c1|ALT_INV_xso~6_combout\,
	combout => \f1|WideOr15~combout\);

-- Location: MLABCELL_X47_Y11_N0
\f1|WideOr16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr16~1_combout\ = ( !\f1|presentstate.LOAD6B~q\ & ( (!\f1|presentstate.ACCESS6B~q\ & (!\f1|presentstate.LOAD6~q\ & !\f1|presentstate.ACCESS6~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.ACCESS6B~q\,
	datab => \f1|ALT_INV_presentstate.LOAD6~q\,
	datac => \f1|ALT_INV_presentstate.ACCESS6~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD6B~q\,
	combout => \f1|WideOr16~1_combout\);

-- Location: LABCELL_X46_Y13_N18
\f1|WideOr16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr16~2_combout\ = ( \f1|WideOr16~1_combout\ & ( \f1|WideOr15~0_combout\ & ( (\c1|xso~0_combout\ & (!\f1|presentstate.DRAW6B~q\ & (\f1|WideOr16~0_combout\ & !\f1|presentstate.DRAW6~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso~0_combout\,
	datab => \f1|ALT_INV_presentstate.DRAW6B~q\,
	datac => \f1|ALT_INV_WideOr16~0_combout\,
	datad => \f1|ALT_INV_presentstate.DRAW6~DUPLICATE_q\,
	datae => \f1|ALT_INV_WideOr16~1_combout\,
	dataf => \f1|ALT_INV_WideOr15~0_combout\,
	combout => \f1|WideOr16~2_combout\);

-- Location: LABCELL_X46_Y13_N48
\f1|WideOr16\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr16~combout\ = ( \f1|WideOr16~2_combout\ & ( \c1|xso~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xso~6_combout\,
	dataf => \f1|ALT_INV_WideOr16~2_combout\,
	combout => \f1|WideOr16~combout\);

-- Location: LABCELL_X46_Y13_N51
\c1|xso~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~12_combout\ = ( \c1|xso~1_combout\ & ( \c1|xso~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso~6_combout\,
	dataf => \c1|ALT_INV_xso~1_combout\,
	combout => \c1|xso~12_combout\);

-- Location: LABCELL_X46_Y13_N3
\f1|WideOr18\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr18~combout\ = ( \f1|WideOr16~2_combout\ & ( \c1|xso~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_xso~1_combout\,
	dataf => \f1|ALT_INV_WideOr16~2_combout\,
	combout => \f1|WideOr18~combout\);

-- Location: LABCELL_X45_Y12_N0
\f1|WideOr21\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr21~combout\ = ( \c1|yio~0_combout\ & ( \f1|WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_WideOr15~0_combout\,
	dataf => \c1|ALT_INV_yio~0_combout\,
	combout => \f1|WideOr21~combout\);

-- Location: LABCELL_X48_Y12_N0
\c1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~13_sumout\ = SUM(( \c1|xso\(0) ) + ( VCC ) + ( !VCC ))
-- \c1|Add0~14\ = CARRY(( \c1|xso\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_xso\(0),
	cin => GND,
	sumout => \c1|Add0~13_sumout\,
	cout => \c1|Add0~14\);

-- Location: MLABCELL_X47_Y12_N54
\c1|xso~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~8_combout\ = ( \f1|WideOr21~combout\ & ( \c1|Add0~13_sumout\ & ( (\c1|xio~0_combout\ & (((!\c1|LessThan0~10_combout\ & \c1|LessThan0~11_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr21~combout\ & ( \c1|Add0~13_sumout\ ) ) # ( 
-- !\f1|WideOr21~combout\ & ( !\c1|Add0~13_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101110000000000000000011111111111111110001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~10_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	datae => \f1|ALT_INV_WideOr21~combout\,
	dataf => \c1|ALT_INV_Add0~13_sumout\,
	combout => \c1|xso~8_combout\);

-- Location: FF_X47_Y12_N56
\c1|xso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~8_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(0));

-- Location: LABCELL_X48_Y12_N3
\c1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~17_sumout\ = SUM(( \c1|xso\(1) ) + ( GND ) + ( \c1|Add0~14\ ))
-- \c1|Add0~18\ = CARRY(( \c1|xso\(1) ) + ( GND ) + ( \c1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso\(1),
	cin => \c1|Add0~14\,
	sumout => \c1|Add0~17_sumout\,
	cout => \c1|Add0~18\);

-- Location: MLABCELL_X47_Y12_N39
\c1|xso~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~9_combout\ = ( \c1|yio~0_combout\ & ( \c1|Add0~17_sumout\ & ( ((\c1|xso~4_combout\ & (\f1|WideOr15~0_combout\ & \f1|presentstate.RESET~q\))) # (\c1|xio~1_combout\) ) ) ) # ( !\c1|yio~0_combout\ & ( \c1|Add0~17_sumout\ & ( \c1|xio~1_combout\ ) ) ) 
-- # ( \c1|yio~0_combout\ & ( !\c1|Add0~17_sumout\ & ( (\c1|xso~4_combout\ & (\f1|WideOr15~0_combout\ & (\f1|presentstate.RESET~q\ & !\c1|xio~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso~4_combout\,
	datab => \f1|ALT_INV_WideOr15~0_combout\,
	datac => \f1|ALT_INV_presentstate.RESET~q\,
	datad => \c1|ALT_INV_xio~1_combout\,
	datae => \c1|ALT_INV_yio~0_combout\,
	dataf => \c1|ALT_INV_Add0~17_sumout\,
	combout => \c1|xso~9_combout\);

-- Location: FF_X47_Y12_N41
\c1|xso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~9_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(1));

-- Location: LABCELL_X48_Y12_N6
\c1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~21_sumout\ = SUM(( \c1|xso\(2) ) + ( GND ) + ( \c1|Add0~18\ ))
-- \c1|Add0~22\ = CARRY(( \c1|xso\(2) ) + ( GND ) + ( \c1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_xso\(2),
	cin => \c1|Add0~18\,
	sumout => \c1|Add0~21_sumout\,
	cout => \c1|Add0~22\);

-- Location: LABCELL_X46_Y13_N0
\c1|xso~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~10_combout\ = ( \c1|LessThan0~16_combout\ & ( (\f1|WideOr15~0_combout\ & \f1|presentstate.RESET~q\) ) ) # ( !\c1|LessThan0~16_combout\ & ( (!\c1|xio~0_combout\ & (\f1|WideOr15~0_combout\ & ((\f1|presentstate.RESET~q\)))) # (\c1|xio~0_combout\ & 
-- (((\c1|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr15~0_combout\,
	datab => \c1|ALT_INV_xio~0_combout\,
	datac => \c1|ALT_INV_Add0~21_sumout\,
	datad => \f1|ALT_INV_presentstate.RESET~q\,
	dataf => \c1|ALT_INV_LessThan0~16_combout\,
	combout => \c1|xso~10_combout\);

-- Location: FF_X46_Y13_N2
\c1|xso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~10_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(2));

-- Location: LABCELL_X48_Y12_N9
\c1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~25_sumout\ = SUM(( \c1|xso\(3) ) + ( GND ) + ( \c1|Add0~22\ ))
-- \c1|Add0~26\ = CARRY(( \c1|xso\(3) ) + ( GND ) + ( \c1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xso\(3),
	cin => \c1|Add0~22\,
	sumout => \c1|Add0~25_sumout\,
	cout => \c1|Add0~26\);

-- Location: MLABCELL_X47_Y12_N27
\c1|xso~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~11_combout\ = ( \f1|WideOr18~combout\ & ( \c1|Add0~25_sumout\ & ( (\c1|xio~0_combout\ & (((\c1|LessThan0~11_combout\ & !\c1|LessThan0~10_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr18~combout\ & ( \c1|Add0~25_sumout\ ) ) # ( 
-- !\f1|WideOr18~combout\ & ( !\c1|Add0~25_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110000000000000000011111111111111110001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~11_combout\,
	datad => \c1|ALT_INV_LessThan0~10_combout\,
	datae => \f1|ALT_INV_WideOr18~combout\,
	dataf => \c1|ALT_INV_Add0~25_sumout\,
	combout => \c1|xso~11_combout\);

-- Location: FF_X47_Y12_N29
\c1|xso[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~11_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(3));

-- Location: LABCELL_X48_Y12_N12
\c1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~29_sumout\ = SUM(( \c1|xso\(4) ) + ( GND ) + ( \c1|Add0~26\ ))
-- \c1|Add0~30\ = CARRY(( \c1|xso\(4) ) + ( GND ) + ( \c1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_xso\(4),
	cin => \c1|Add0~26\,
	sumout => \c1|Add0~29_sumout\,
	cout => \c1|Add0~30\);

-- Location: LABCELL_X46_Y13_N42
\c1|xso~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~13_combout\ = ( \f1|presentstate.RESET~q\ & ( \c1|LessThan0~16_combout\ & ( (\f1|WideOr15~0_combout\ & \c1|xso~12_combout\) ) ) ) # ( \f1|presentstate.RESET~q\ & ( !\c1|LessThan0~16_combout\ & ( (!\c1|xio~0_combout\ & (\f1|WideOr15~0_combout\ & 
-- (\c1|xso~12_combout\))) # (\c1|xio~0_combout\ & (((\c1|Add0~29_sumout\)))) ) ) ) # ( !\f1|presentstate.RESET~q\ & ( !\c1|LessThan0~16_combout\ & ( (\c1|Add0~29_sumout\ & \c1|xio~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000100010000111100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr15~0_combout\,
	datab => \c1|ALT_INV_xso~12_combout\,
	datac => \c1|ALT_INV_Add0~29_sumout\,
	datad => \c1|ALT_INV_xio~0_combout\,
	datae => \f1|ALT_INV_presentstate.RESET~q\,
	dataf => \c1|ALT_INV_LessThan0~16_combout\,
	combout => \c1|xso~13_combout\);

-- Location: FF_X46_Y13_N44
\c1|xso[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~13_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(4));

-- Location: LABCELL_X48_Y12_N15
\c1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~33_sumout\ = SUM(( \c1|xso\(5) ) + ( GND ) + ( \c1|Add0~30\ ))
-- \c1|Add0~34\ = CARRY(( \c1|xso\(5) ) + ( GND ) + ( \c1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso\(5),
	cin => \c1|Add0~30\,
	sumout => \c1|Add0~33_sumout\,
	cout => \c1|Add0~34\);

-- Location: MLABCELL_X47_Y12_N57
\c1|xso~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~14_combout\ = ( \f1|WideOr16~combout\ & ( \c1|Add0~33_sumout\ & ( (\c1|xio~0_combout\ & (((\c1|LessThan0~11_combout\ & !\c1|LessThan0~10_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr16~combout\ & ( \c1|Add0~33_sumout\ ) ) # ( 
-- !\f1|WideOr16~combout\ & ( !\c1|Add0~33_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101110000000000000000011111111111111110001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~11_combout\,
	datad => \c1|ALT_INV_LessThan0~10_combout\,
	datae => \f1|ALT_INV_WideOr16~combout\,
	dataf => \c1|ALT_INV_Add0~33_sumout\,
	combout => \c1|xso~14_combout\);

-- Location: FF_X47_Y12_N59
\c1|xso[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~14_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(5));

-- Location: LABCELL_X48_Y12_N18
\c1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~9_sumout\ = SUM(( \c1|xso\(6) ) + ( GND ) + ( \c1|Add0~34\ ))
-- \c1|Add0~10\ = CARRY(( \c1|xso\(6) ) + ( GND ) + ( \c1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xso\(6),
	cin => \c1|Add0~34\,
	sumout => \c1|Add0~9_sumout\,
	cout => \c1|Add0~10\);

-- Location: MLABCELL_X47_Y12_N24
\c1|xso~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~7_combout\ = ( \f1|WideOr15~combout\ & ( \c1|Add0~9_sumout\ & ( (\c1|xio~0_combout\ & (((!\c1|LessThan0~10_combout\ & \c1|LessThan0~11_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( !\f1|WideOr15~combout\ & ( \c1|Add0~9_sumout\ ) ) # ( 
-- !\f1|WideOr15~combout\ & ( !\c1|Add0~9_sumout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101110000000000000000011111111111111110001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~10_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	datae => \f1|ALT_INV_WideOr15~combout\,
	dataf => \c1|ALT_INV_Add0~9_sumout\,
	combout => \c1|xso~7_combout\);

-- Location: FF_X47_Y12_N26
\c1|xso[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~7_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(6));

-- Location: LABCELL_X48_Y12_N21
\c1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~5_sumout\ = SUM(( \c1|xso\(7) ) + ( GND ) + ( \c1|Add0~10\ ))
-- \c1|Add0~6\ = CARRY(( \c1|xso\(7) ) + ( GND ) + ( \c1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso\(7),
	cin => \c1|Add0~10\,
	sumout => \c1|Add0~5_sumout\,
	cout => \c1|Add0~6\);

-- Location: MLABCELL_X47_Y12_N36
\c1|xso~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~5_combout\ = ( \c1|xso~1_combout\ & ( \c1|Add0~5_sumout\ & ( ((\c1|xso~4_combout\ & (\f1|WideOr15~0_combout\ & \f1|presentstate.RESET~q\))) # (\c1|xio~1_combout\) ) ) ) # ( !\c1|xso~1_combout\ & ( \c1|Add0~5_sumout\ & ( \c1|xio~1_combout\ ) ) ) # 
-- ( \c1|xso~1_combout\ & ( !\c1|Add0~5_sumout\ & ( (\c1|xso~4_combout\ & (\f1|WideOr15~0_combout\ & (!\c1|xio~1_combout\ & \f1|presentstate.RESET~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xso~4_combout\,
	datab => \f1|ALT_INV_WideOr15~0_combout\,
	datac => \c1|ALT_INV_xio~1_combout\,
	datad => \f1|ALT_INV_presentstate.RESET~q\,
	datae => \c1|ALT_INV_xso~1_combout\,
	dataf => \c1|ALT_INV_Add0~5_sumout\,
	combout => \c1|xso~5_combout\);

-- Location: FF_X47_Y12_N38
\c1|xso[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~5_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(7));

-- Location: LABCELL_X48_Y12_N24
\c1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~1_sumout\ = SUM(( \c1|xso\(8) ) + ( GND ) + ( \c1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xso\(8),
	cin => \c1|Add0~6\,
	sumout => \c1|Add0~1_sumout\);

-- Location: MLABCELL_X47_Y12_N18
\c1|xso~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|xso~2_combout\ = ( \c1|Add0~1_sumout\ & ( \c1|xso~1_combout\ & ( (\c1|xio~0_combout\ & (((!\c1|LessThan0~10_combout\ & \c1|LessThan0~11_combout\)) # (\c1|LessThan0~12_combout\))) ) ) ) # ( \c1|Add0~1_sumout\ & ( !\c1|xso~1_combout\ ) ) # ( 
-- !\c1|Add0~1_sumout\ & ( !\c1|xso~1_combout\ & ( (!\c1|xio~0_combout\) # ((!\c1|LessThan0~12_combout\ & ((!\c1|LessThan0~11_combout\) # (\c1|LessThan0~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010101110111111111111111100000000000000000001000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_xio~0_combout\,
	datab => \c1|ALT_INV_LessThan0~12_combout\,
	datac => \c1|ALT_INV_LessThan0~10_combout\,
	datad => \c1|ALT_INV_LessThan0~11_combout\,
	datae => \c1|ALT_INV_Add0~1_sumout\,
	dataf => \c1|ALT_INV_xso~1_combout\,
	combout => \c1|xso~2_combout\);

-- Location: FF_X47_Y12_N20
\c1|xso[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|xso~2_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|xso\(8));

-- Location: LABCELL_X50_Y12_N15
\VGA|writeEn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~0_combout\ = ( \c1|xso\(7) & ( \c1|xso\(6) & ( \c1|xso\(8) ) ) ) # ( !\c1|xso\(7) & ( \c1|xso\(6) & ( \c1|xso\(8) ) ) ) # ( \c1|xso\(7) & ( !\c1|xso\(6) & ( \c1|xso\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xso\(8),
	datae => \c1|ALT_INV_xso\(7),
	dataf => \c1|ALT_INV_xso\(6),
	combout => \VGA|writeEn~0_combout\);

-- Location: LABCELL_X45_Y11_N12
\f1|WideOr22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr22~3_combout\ = ( !\f1|presentstate.DRAW12~q\ & ( !\f1|presentstate.LOAD12~q\ & ( (!\f1|presentstate.DRAW12B~DUPLICATE_q\ & (!\f1|presentstate.ACCESS12~DUPLICATE_q\ & (!\f1|presentstate.ACCESS12B~q\ & !\f1|presentstate.LOAD12B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW12B~DUPLICATE_q\,
	datab => \f1|ALT_INV_presentstate.ACCESS12~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.ACCESS12B~q\,
	datad => \f1|ALT_INV_presentstate.LOAD12B~q\,
	datae => \f1|ALT_INV_presentstate.DRAW12~q\,
	dataf => \f1|ALT_INV_presentstate.LOAD12~q\,
	combout => \f1|WideOr22~3_combout\);

-- Location: LABCELL_X45_Y10_N57
\f1|WideOr22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr22~1_combout\ = ( !\f1|presentstate.ACCESS11~q\ & ( !\f1|presentstate.DRAW11~q\ & ( (!\f1|presentstate.LOAD11~q\ & (!\f1|presentstate.ACCESS11B~q\ & (!\f1|presentstate.DRAW11B~q\ & !\f1|presentstate.LOAD11B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD11~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS11B~q\,
	datac => \f1|ALT_INV_presentstate.DRAW11B~q\,
	datad => \f1|ALT_INV_presentstate.LOAD11B~q\,
	datae => \f1|ALT_INV_presentstate.ACCESS11~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW11~q\,
	combout => \f1|WideOr22~1_combout\);

-- Location: FF_X45_Y10_N19
\f1|presentstate.ACCESS7B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD7B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS7B~DUPLICATE_q\);

-- Location: LABCELL_X45_Y10_N30
\f1|WideOr25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr25~0_combout\ = ( !\f1|presentstate.LOAD7~q\ & ( !\f1|presentstate.ACCESS7B~DUPLICATE_q\ & ( (!\f1|presentstate.LOAD7B~q\ & (!\f1|presentstate.ACCESS7~q\ & (!\f1|presentstate.DRAW7B~DUPLICATE_q\ & !\f1|presentstate.DRAW7~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD7B~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS7~q\,
	datac => \f1|ALT_INV_presentstate.DRAW7B~DUPLICATE_q\,
	datad => \f1|ALT_INV_presentstate.DRAW7~DUPLICATE_q\,
	datae => \f1|ALT_INV_presentstate.LOAD7~q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS7B~DUPLICATE_q\,
	combout => \f1|WideOr25~0_combout\);

-- Location: FF_X45_Y11_N53
\f1|presentstate.ACCESS9~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS9~DUPLICATE_q\);

-- Location: FF_X45_Y10_N34
\f1|presentstate.ACCESS9B~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RD|Equal1~0_combout\,
	asdata => \f1|presentstate.LOAD9B~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|presentstate.ACCESS9B~DUPLICATE_q\);

-- Location: LABCELL_X45_Y10_N9
\c1|yso~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~4_combout\ = ( !\f1|presentstate.DRAW9~DUPLICATE_q\ & ( !\f1|presentstate.ACCESS9B~DUPLICATE_q\ & ( (!\f1|presentstate.LOAD9~q\ & (!\f1|presentstate.DRAW9B~q\ & (!\f1|presentstate.LOAD9B~q\ & !\f1|presentstate.ACCESS9~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD9~q\,
	datab => \f1|ALT_INV_presentstate.DRAW9B~q\,
	datac => \f1|ALT_INV_presentstate.LOAD9B~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS9~DUPLICATE_q\,
	datae => \f1|ALT_INV_presentstate.DRAW9~DUPLICATE_q\,
	dataf => \f1|ALT_INV_presentstate.ACCESS9B~DUPLICATE_q\,
	combout => \c1|yso~4_combout\);

-- Location: LABCELL_X50_Y10_N0
\c1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~17_sumout\ = SUM(( \c1|yio\(0) ) + ( VCC ) + ( !VCC ))
-- \c1|Add3~18\ = CARRY(( \c1|yio\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(0),
	cin => GND,
	sumout => \c1|Add3~17_sumout\,
	cout => \c1|Add3~18\);

-- Location: LABCELL_X50_Y10_N30
\c1|yio~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~5_combout\ = ( \f1|WideOr40~3_combout\ & ( (!\c1|yso[4]~6_combout\ & (\c1|yio~0_combout\ & (\f1|presentstate.RESET~q\))) # (\c1|yso[4]~6_combout\ & (((\c1|Add3~17_sumout\)))) ) ) # ( !\f1|WideOr40~3_combout\ & ( (\c1|yio~0_combout\ & 
-- \f1|presentstate.RESET~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio~0_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_yso[4]~6_combout\,
	datad => \c1|ALT_INV_Add3~17_sumout\,
	dataf => \f1|ALT_INV_WideOr40~3_combout\,
	combout => \c1|yio~5_combout\);

-- Location: FF_X50_Y10_N32
\c1|yio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~5_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(0));

-- Location: LABCELL_X50_Y10_N3
\c1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~13_sumout\ = SUM(( \c1|yio\(1) ) + ( GND ) + ( \c1|Add3~18\ ))
-- \c1|Add3~14\ = CARRY(( \c1|yio\(1) ) + ( GND ) + ( \c1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(1),
	cin => \c1|Add3~18\,
	sumout => \c1|Add3~13_sumout\,
	cout => \c1|Add3~14\);

-- Location: LABCELL_X50_Y10_N24
\c1|yio~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~4_combout\ = ( \c1|Add3~13_sumout\ & ( \c1|yso[4]~1_combout\ & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr40~3_combout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_LessThan1~4_combout\,
	datad => \f1|ALT_INV_WideOr40~3_combout\,
	datae => \c1|ALT_INV_Add3~13_sumout\,
	dataf => \c1|ALT_INV_yso[4]~1_combout\,
	combout => \c1|yio~4_combout\);

-- Location: FF_X50_Y10_N26
\c1|yio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(1));

-- Location: LABCELL_X50_Y10_N6
\c1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~9_sumout\ = SUM(( \c1|yio\(2) ) + ( GND ) + ( \c1|Add3~14\ ))
-- \c1|Add3~10\ = CARRY(( \c1|yio\(2) ) + ( GND ) + ( \c1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(2),
	cin => \c1|Add3~14\,
	sumout => \c1|Add3~9_sumout\,
	cout => \c1|Add3~10\);

-- Location: LABCELL_X50_Y10_N9
\c1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~1_sumout\ = SUM(( \c1|yio\(3) ) + ( GND ) + ( \c1|Add3~10\ ))
-- \c1|Add3~2\ = CARRY(( \c1|yio\(3) ) + ( GND ) + ( \c1|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(3),
	cin => \c1|Add3~10\,
	sumout => \c1|Add3~1_sumout\,
	cout => \c1|Add3~2\);

-- Location: LABCELL_X50_Y10_N12
\c1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~5_sumout\ = SUM(( \c1|yio\(4) ) + ( GND ) + ( \c1|Add3~2\ ))
-- \c1|Add3~6\ = CARRY(( \c1|yio\(4) ) + ( GND ) + ( \c1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(4),
	cin => \c1|Add3~2\,
	sumout => \c1|Add3~5_sumout\,
	cout => \c1|Add3~6\);

-- Location: LABCELL_X50_Y10_N15
\c1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~21_sumout\ = SUM(( \c1|yio\(5) ) + ( GND ) + ( \c1|Add3~6\ ))
-- \c1|Add3~22\ = CARRY(( \c1|yio\(5) ) + ( GND ) + ( \c1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(5),
	cin => \c1|Add3~6\,
	sumout => \c1|Add3~21_sumout\,
	cout => \c1|Add3~22\);

-- Location: LABCELL_X50_Y10_N48
\c1|yio~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~6_combout\ = ( \c1|yso[4]~1_combout\ & ( \c1|Add3~21_sumout\ & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr40~3_combout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_LessThan1~4_combout\,
	datad => \f1|ALT_INV_WideOr40~3_combout\,
	datae => \c1|ALT_INV_yso[4]~1_combout\,
	dataf => \c1|ALT_INV_Add3~21_sumout\,
	combout => \c1|yio~6_combout\);

-- Location: FF_X50_Y10_N50
\c1|yio[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(5));

-- Location: LABCELL_X50_Y10_N18
\c1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~25_sumout\ = SUM(( \c1|yio\(6) ) + ( GND ) + ( \c1|Add3~22\ ))
-- \c1|Add3~26\ = CARRY(( \c1|yio\(6) ) + ( GND ) + ( \c1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(6),
	cin => \c1|Add3~22\,
	sumout => \c1|Add3~25_sumout\,
	cout => \c1|Add3~26\);

-- Location: LABCELL_X50_Y10_N54
\c1|yio~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~7_combout\ = ( \c1|yso[4]~1_combout\ & ( \c1|Add3~25_sumout\ & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr40~3_combout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_LessThan1~4_combout\,
	datad => \f1|ALT_INV_WideOr40~3_combout\,
	datae => \c1|ALT_INV_yso[4]~1_combout\,
	dataf => \c1|ALT_INV_Add3~25_sumout\,
	combout => \c1|yio~7_combout\);

-- Location: FF_X50_Y10_N56
\c1|yio[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(6));

-- Location: LABCELL_X50_Y10_N21
\c1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add3~29_sumout\ = SUM(( \c1|yio\(7) ) + ( GND ) + ( \c1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(7),
	cin => \c1|Add3~26\,
	sumout => \c1|Add3~29_sumout\);

-- Location: LABCELL_X50_Y10_N27
\c1|yio~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~8_combout\ = ( \c1|Add3~29_sumout\ & ( \c1|yso[4]~1_combout\ & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr40~3_combout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \f1|ALT_INV_WideOr40~3_combout\,
	datad => \c1|ALT_INV_LessThan1~4_combout\,
	datae => \c1|ALT_INV_Add3~29_sumout\,
	dataf => \c1|ALT_INV_yso[4]~1_combout\,
	combout => \c1|yio~8_combout\);

-- Location: FF_X50_Y10_N29
\c1|yio[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(7));

-- Location: MLABCELL_X52_Y10_N48
\c1|yso[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso[4]~1_combout\ = ( !\c1|yio\(6) & ( !\c1|yio\(5) & ( !\c1|yio\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(7),
	datae => \c1|ALT_INV_yio\(6),
	dataf => \c1|ALT_INV_yio\(5),
	combout => \c1|yso[4]~1_combout\);

-- Location: LABCELL_X50_Y10_N51
\c1|yio~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~1_combout\ = ( \c1|yso[4]~1_combout\ & ( \c1|Add3~1_sumout\ & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr40~3_combout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \f1|ALT_INV_WideOr40~3_combout\,
	datad => \c1|ALT_INV_LessThan1~4_combout\,
	datae => \c1|ALT_INV_yso[4]~1_combout\,
	dataf => \c1|ALT_INV_Add3~1_sumout\,
	combout => \c1|yio~1_combout\);

-- Location: FF_X50_Y10_N53
\c1|yio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(3));

-- Location: LABCELL_X51_Y10_N48
\c1|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan1~3_combout\ = ( \c1|yio\(2) & ( \c1|yio\(0) & ( (\f1|presentstate.RESET~q\ & !\c1|yio\(1)) ) ) ) # ( !\c1|yio\(2) & ( \c1|yio\(0) & ( (!\c1|yio\(1) & (((!\c1|yio\(3) & !\c1|yio\(4))) # (\f1|presentstate.RESET~q\))) ) ) ) # ( \c1|yio\(2) & ( 
-- !\c1|yio\(0) & ( \f1|presentstate.RESET~q\ ) ) ) # ( !\c1|yio\(2) & ( !\c1|yio\(0) & ( ((!\c1|yio\(3) & !\c1|yio\(4))) # (\f1|presentstate.RESET~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110110011001100110011001110110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(3),
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_yio\(4),
	datad => \c1|ALT_INV_yio\(1),
	datae => \c1|ALT_INV_yio\(2),
	dataf => \c1|ALT_INV_yio\(0),
	combout => \c1|LessThan1~3_combout\);

-- Location: LABCELL_X51_Y10_N54
\c1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan1~0_combout\ = ( \c1|yio\(2) & ( (\f1|presentstate.RESET~q\ & ((!\c1|yio\(4)) # (!\c1|yio\(3)))) ) ) # ( !\c1|yio\(2) & ( \f1|presentstate.RESET~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100100011001000110011001100110011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(4),
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_yio\(3),
	datae => \c1|ALT_INV_yio\(2),
	combout => \c1|LessThan1~0_combout\);

-- Location: LABCELL_X48_Y10_N12
\c1|yso[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso[4]~6_combout\ = ( \c1|yso~0_combout\ & ( (\c1|LessThan1~0_combout\ & \c1|yso[4]~1_combout\) ) ) # ( !\c1|yso~0_combout\ & ( (\c1|yso[4]~1_combout\ & ((\c1|LessThan1~0_combout\) # (\c1|LessThan1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_LessThan1~3_combout\,
	datac => \c1|ALT_INV_LessThan1~0_combout\,
	datad => \c1|ALT_INV_yso[4]~1_combout\,
	dataf => \c1|ALT_INV_yso~0_combout\,
	combout => \c1|yso[4]~6_combout\);

-- Location: LABCELL_X50_Y10_N36
\c1|yio~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~3_combout\ = ( \c1|yso~0_combout\ & ( (!\c1|yso[4]~6_combout\ & (\f1|presentstate.RESET~q\)) # (\c1|yso[4]~6_combout\ & ((!\f1|WideOr40~3_combout\ & (\f1|presentstate.RESET~q\)) # (\f1|WideOr40~3_combout\ & ((\c1|Add3~9_sumout\))))) ) ) # ( 
-- !\c1|yso~0_combout\ & ( (\c1|yso[4]~6_combout\ & (\c1|Add3~9_sumout\ & \f1|WideOr40~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100110011001001110011001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso[4]~6_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_Add3~9_sumout\,
	datad => \f1|ALT_INV_WideOr40~3_combout\,
	dataf => \c1|ALT_INV_yso~0_combout\,
	combout => \c1|yio~3_combout\);

-- Location: FF_X50_Y10_N38
\c1|yio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~3_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(2));

-- Location: LABCELL_X50_Y10_N39
\c1|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan1~4_combout\ = ( \c1|yio\(3) & ( (\c1|yio\(4) & \c1|yio\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(4),
	datad => \c1|ALT_INV_yio\(2),
	dataf => \c1|ALT_INV_yio\(3),
	combout => \c1|LessThan1~4_combout\);

-- Location: LABCELL_X50_Y10_N57
\c1|yio~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yio~2_combout\ = ( \c1|yso[4]~1_combout\ & ( \c1|Add3~5_sumout\ & ( (\f1|presentstate.RESET~q\ & (\f1|WideOr40~3_combout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \f1|ALT_INV_WideOr40~3_combout\,
	datad => \c1|ALT_INV_LessThan1~4_combout\,
	datae => \c1|ALT_INV_yso[4]~1_combout\,
	dataf => \c1|ALT_INV_Add3~5_sumout\,
	combout => \c1|yio~2_combout\);

-- Location: FF_X50_Y10_N59
\c1|yio[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yio\(4));

-- Location: LABCELL_X50_Y10_N33
\c1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan1~1_combout\ = ( !\c1|yio\(3) & ( !\c1|yio\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(4),
	dataf => \c1|ALT_INV_yio\(3),
	combout => \c1|LessThan1~1_combout\);

-- Location: LABCELL_X50_Y10_N42
\c1|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|LessThan1~2_combout\ = ( \c1|yio\(2) & ( !\c1|yso~0_combout\ & ( (\f1|presentstate.RESET~q\ & ((!\c1|yio\(1)) # (!\c1|yio\(0)))) ) ) ) # ( !\c1|yio\(2) & ( !\c1|yso~0_combout\ & ( (!\c1|LessThan1~1_combout\ & (\f1|presentstate.RESET~q\ & 
-- ((!\c1|yio\(1)) # (!\c1|yio\(0))))) # (\c1|LessThan1~1_combout\ & (((!\c1|yio\(1)) # (!\c1|yio\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110000001100110011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~1_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_yio\(1),
	datad => \c1|ALT_INV_yio\(0),
	datae => \c1|ALT_INV_yio\(2),
	dataf => \c1|ALT_INV_yso~0_combout\,
	combout => \c1|LessThan1~2_combout\);

-- Location: LABCELL_X46_Y10_N39
\f1|WideOr22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr22~0_combout\ = ( !\f1|presentstate.ACCESS10~DUPLICATE_q\ & ( !\f1|presentstate.DRAW10B~q\ & ( (!\f1|presentstate.LOAD10~q\ & (!\f1|presentstate.ACCESS10B~q\ & (!\f1|presentstate.DRAW10~q\ & !\f1|presentstate.LOAD10B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD10~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS10B~q\,
	datac => \f1|ALT_INV_presentstate.DRAW10~q\,
	datad => \f1|ALT_INV_presentstate.LOAD10B~q\,
	datae => \f1|ALT_INV_presentstate.ACCESS10~DUPLICATE_q\,
	dataf => \f1|ALT_INV_presentstate.DRAW10B~q\,
	combout => \f1|WideOr22~0_combout\);

-- Location: LABCELL_X45_Y10_N42
\f1|WideOr22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr22~2_combout\ = ( \f1|WideOr22~0_combout\ & ( \f1|WideOr22~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f1|ALT_INV_WideOr22~1_combout\,
	dataf => \f1|ALT_INV_WideOr22~0_combout\,
	combout => \f1|WideOr22~2_combout\);

-- Location: MLABCELL_X47_Y11_N51
\f1|WideOr27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr27~0_combout\ = ( !\f1|presentstate.DRAW8B~DUPLICATE_q\ & ( !\f1|presentstate.DRAW8~q\ & ( (!\f1|presentstate.LOAD8B~q\ & (!\f1|presentstate.ACCESS8~q\ & (!\f1|presentstate.LOAD8~q\ & !\f1|presentstate.ACCESS8B~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.LOAD8B~q\,
	datab => \f1|ALT_INV_presentstate.ACCESS8~q\,
	datac => \f1|ALT_INV_presentstate.LOAD8~q\,
	datad => \f1|ALT_INV_presentstate.ACCESS8B~DUPLICATE_q\,
	datae => \f1|ALT_INV_presentstate.DRAW8B~DUPLICATE_q\,
	dataf => \f1|ALT_INV_presentstate.DRAW8~q\,
	combout => \f1|WideOr27~0_combout\);

-- Location: LABCELL_X48_Y10_N15
\f1|WideOr27\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr27~combout\ = ( \f1|WideOr27~0_combout\ & ( (\f1|WideOr22~2_combout\ & \c1|yso~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f1|ALT_INV_WideOr22~2_combout\,
	datad => \c1|ALT_INV_yso~0_combout\,
	dataf => \f1|ALT_INV_WideOr27~0_combout\,
	combout => \f1|WideOr27~combout\);

-- Location: LABCELL_X48_Y10_N30
\c1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~21_sumout\ = SUM(( \c1|yso\(0) ) + ( VCC ) + ( !VCC ))
-- \c1|Add2~22\ = CARRY(( \c1|yso\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yso\(0),
	cin => GND,
	sumout => \c1|Add2~21_sumout\,
	cout => \c1|Add2~22\);

-- Location: LABCELL_X48_Y10_N57
\c1|yso~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~7_combout\ = ( \c1|Add2~21_sumout\ & ( \c1|yso~4_combout\ & ( (\f1|WideOr40~3_combout\ & (\c1|yso[4]~1_combout\ & ((\c1|LessThan1~2_combout\) # (\c1|LessThan1~0_combout\)))) ) ) ) # ( \c1|Add2~21_sumout\ & ( !\c1|yso~4_combout\ ) ) # ( 
-- !\c1|Add2~21_sumout\ & ( !\c1|yso~4_combout\ & ( (!\f1|WideOr40~3_combout\) # ((!\c1|yso[4]~1_combout\) # ((!\c1|LessThan1~0_combout\ & !\c1|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111111111111111100000000000000000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr40~3_combout\,
	datab => \c1|ALT_INV_LessThan1~0_combout\,
	datac => \c1|ALT_INV_yso[4]~1_combout\,
	datad => \c1|ALT_INV_LessThan1~2_combout\,
	datae => \c1|ALT_INV_Add2~21_sumout\,
	dataf => \c1|ALT_INV_yso~4_combout\,
	combout => \c1|yso~7_combout\);

-- Location: FF_X48_Y10_N59
\c1|yso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~7_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(0));

-- Location: LABCELL_X48_Y10_N33
\c1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~25_sumout\ = SUM(( \c1|yso\(1) ) + ( GND ) + ( \c1|Add2~22\ ))
-- \c1|Add2~26\ = CARRY(( \c1|yso\(1) ) + ( GND ) + ( \c1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(1),
	cin => \c1|Add2~22\,
	sumout => \c1|Add2~25_sumout\,
	cout => \c1|Add2~26\);

-- Location: LABCELL_X48_Y10_N21
\c1|yso~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~8_combout\ = ( \f1|WideOr27~combout\ & ( \c1|Add2~25_sumout\ & ( (\c1|yso[4]~1_combout\ & (\f1|WideOr40~3_combout\ & ((\c1|LessThan1~0_combout\) # (\c1|LessThan1~2_combout\)))) ) ) ) # ( !\f1|WideOr27~combout\ & ( \c1|Add2~25_sumout\ ) ) # ( 
-- !\f1|WideOr27~combout\ & ( !\c1|Add2~25_sumout\ & ( (!\c1|yso[4]~1_combout\) # ((!\f1|WideOr40~3_combout\) # ((!\c1|LessThan1~2_combout\ & !\c1|LessThan1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000000000000000000011111111111111110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \c1|ALT_INV_LessThan1~0_combout\,
	datac => \c1|ALT_INV_yso[4]~1_combout\,
	datad => \f1|ALT_INV_WideOr40~3_combout\,
	datae => \f1|ALT_INV_WideOr27~combout\,
	dataf => \c1|ALT_INV_Add2~25_sumout\,
	combout => \c1|yso~8_combout\);

-- Location: FF_X48_Y10_N23
\c1|yso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~8_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(1));

-- Location: LABCELL_X48_Y10_N36
\c1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~29_sumout\ = SUM(( \c1|yso\(2) ) + ( GND ) + ( \c1|Add2~26\ ))
-- \c1|Add2~30\ = CARRY(( \c1|yso\(2) ) + ( GND ) + ( \c1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(2),
	cin => \c1|Add2~26\,
	sumout => \c1|Add2~29_sumout\,
	cout => \c1|Add2~30\);

-- Location: LABCELL_X48_Y10_N24
\c1|yso~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~9_combout\ = ( \f1|presentstate.RESET~q\ & ( \f1|WideOr40~3_combout\ & ( (!\c1|yso[4]~6_combout\ & (\f1|WideOr25~0_combout\ & ((\c1|yso~0_combout\)))) # (\c1|yso[4]~6_combout\ & (((\c1|Add2~29_sumout\)))) ) ) ) # ( !\f1|presentstate.RESET~q\ & ( 
-- \f1|WideOr40~3_combout\ & ( (\c1|yso[4]~6_combout\ & \c1|Add2~29_sumout\) ) ) ) # ( \f1|presentstate.RESET~q\ & ( !\f1|WideOr40~3_combout\ & ( (\f1|WideOr25~0_combout\ & \c1|yso~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000011000000110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr25~0_combout\,
	datab => \c1|ALT_INV_yso[4]~6_combout\,
	datac => \c1|ALT_INV_Add2~29_sumout\,
	datad => \c1|ALT_INV_yso~0_combout\,
	datae => \f1|ALT_INV_presentstate.RESET~q\,
	dataf => \f1|ALT_INV_WideOr40~3_combout\,
	combout => \c1|yso~9_combout\);

-- Location: FF_X48_Y10_N26
\c1|yso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~9_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(2));

-- Location: LABCELL_X48_Y10_N39
\c1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~17_sumout\ = SUM(( \c1|yso\(3) ) + ( GND ) + ( \c1|Add2~30\ ))
-- \c1|Add2~18\ = CARRY(( \c1|yso\(3) ) + ( GND ) + ( \c1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(3),
	cin => \c1|Add2~30\,
	sumout => \c1|Add2~17_sumout\,
	cout => \c1|Add2~18\);

-- Location: LABCELL_X45_Y10_N12
\f1|WideOr25\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr25~combout\ = ( \f1|WideOr22~2_combout\ & ( (\f1|WideOr22~3_combout\ & \f1|WideOr25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr22~3_combout\,
	datab => \f1|ALT_INV_WideOr25~0_combout\,
	dataf => \f1|ALT_INV_WideOr22~2_combout\,
	combout => \f1|WideOr25~combout\);

-- Location: LABCELL_X48_Y10_N54
\c1|yso~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~10_combout\ = ( \c1|Add2~17_sumout\ & ( \f1|WideOr25~combout\ & ( (\f1|WideOr40~3_combout\ & (\c1|yso[4]~1_combout\ & ((\c1|LessThan1~2_combout\) # (\c1|LessThan1~0_combout\)))) ) ) ) # ( \c1|Add2~17_sumout\ & ( !\f1|WideOr25~combout\ ) ) # ( 
-- !\c1|Add2~17_sumout\ & ( !\f1|WideOr25~combout\ & ( (!\f1|WideOr40~3_combout\) # ((!\c1|yso[4]~1_combout\) # ((!\c1|LessThan1~0_combout\ & !\c1|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111111111111111100000000000000000000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr40~3_combout\,
	datab => \c1|ALT_INV_LessThan1~0_combout\,
	datac => \c1|ALT_INV_LessThan1~2_combout\,
	datad => \c1|ALT_INV_yso[4]~1_combout\,
	datae => \c1|ALT_INV_Add2~17_sumout\,
	dataf => \f1|ALT_INV_WideOr25~combout\,
	combout => \c1|yso~10_combout\);

-- Location: FF_X48_Y10_N56
\c1|yso[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~10_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(3));

-- Location: LABCELL_X48_Y10_N42
\c1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~13_sumout\ = SUM(( \c1|yso\(4) ) + ( GND ) + ( \c1|Add2~18\ ))
-- \c1|Add2~14\ = CARRY(( \c1|yso\(4) ) + ( GND ) + ( \c1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(4),
	cin => \c1|Add2~18\,
	sumout => \c1|Add2~13_sumout\,
	cout => \c1|Add2~14\);

-- Location: LABCELL_X48_Y10_N0
\c1|yso~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~5_combout\ = ( \c1|yso[4]~1_combout\ & ( \f1|WideOr40~3_combout\ & ( (\f1|presentstate.RESET~q\ & (\c1|Add2~13_sumout\ & ((!\c1|LessThan1~4_combout\) # (\c1|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \f1|ALT_INV_presentstate.RESET~q\,
	datac => \c1|ALT_INV_LessThan1~4_combout\,
	datad => \c1|ALT_INV_Add2~13_sumout\,
	datae => \c1|ALT_INV_yso[4]~1_combout\,
	dataf => \f1|ALT_INV_WideOr40~3_combout\,
	combout => \c1|yso~5_combout\);

-- Location: FF_X48_Y10_N2
\c1|yso[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(4));

-- Location: LABCELL_X48_Y10_N45
\c1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~5_sumout\ = SUM(( \c1|yso\(5) ) + ( GND ) + ( \c1|Add2~14\ ))
-- \c1|Add2~6\ = CARRY(( \c1|yso\(5) ) + ( GND ) + ( \c1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(5),
	cin => \c1|Add2~14\,
	sumout => \c1|Add2~5_sumout\,
	cout => \c1|Add2~6\);

-- Location: LABCELL_X48_Y10_N9
\c1|yso[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso[4]~3_combout\ = ( \c1|LessThan1~0_combout\ & ( \f1|WideOr40~3_combout\ & ( \c1|yso[4]~1_combout\ ) ) ) # ( !\c1|LessThan1~0_combout\ & ( \f1|WideOr40~3_combout\ & ( (!\c1|yso~0_combout\ & (\c1|yso[4]~1_combout\ & \c1|LessThan1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso~0_combout\,
	datac => \c1|ALT_INV_yso[4]~1_combout\,
	datad => \c1|ALT_INV_LessThan1~3_combout\,
	datae => \c1|ALT_INV_LessThan1~0_combout\,
	dataf => \f1|ALT_INV_WideOr40~3_combout\,
	combout => \c1|yso[4]~3_combout\);

-- Location: LABCELL_X45_Y10_N51
\c1|yso~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~15_combout\ = ( !\c1|yso[4]~3_combout\ & ( (\f1|WideOr25~0_combout\ & (\c1|yso~4_combout\ & (\f1|presentstate.RESET~q\ & (\f1|WideOr22~3_combout\ & \f1|WideOr22~0_combout\)))) ) ) # ( \c1|yso[4]~3_combout\ & ( (((\c1|Add2~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000011110000111100000000000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr25~0_combout\,
	datab => \c1|ALT_INV_yso~4_combout\,
	datac => \c1|ALT_INV_Add2~5_sumout\,
	datad => \f1|ALT_INV_WideOr22~3_combout\,
	datae => \c1|ALT_INV_yso[4]~3_combout\,
	dataf => \f1|ALT_INV_WideOr22~0_combout\,
	datag => \f1|ALT_INV_presentstate.RESET~q\,
	combout => \c1|yso~15_combout\);

-- Location: FF_X45_Y10_N53
\c1|yso[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~15_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(5));

-- Location: LABCELL_X48_Y10_N48
\c1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~9_sumout\ = SUM(( \c1|yso\(6) ) + ( GND ) + ( \c1|Add2~6\ ))
-- \c1|Add2~10\ = CARRY(( \c1|yso\(6) ) + ( GND ) + ( \c1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(6),
	cin => \c1|Add2~6\,
	sumout => \c1|Add2~9_sumout\,
	cout => \c1|Add2~10\);

-- Location: LABCELL_X45_Y10_N24
\c1|yso~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~11_combout\ = ( !\c1|yso[4]~3_combout\ & ( (\f1|WideOr22~3_combout\ & (\f1|WideOr22~1_combout\ & (\f1|presentstate.RESET~q\ & (\f1|WideOr27~0_combout\ & \f1|WideOr25~0_combout\)))) ) ) # ( \c1|yso[4]~3_combout\ & ( (((\c1|Add2~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000011110000111100000000000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr22~3_combout\,
	datab => \f1|ALT_INV_WideOr22~1_combout\,
	datac => \c1|ALT_INV_Add2~9_sumout\,
	datad => \f1|ALT_INV_WideOr27~0_combout\,
	datae => \c1|ALT_INV_yso[4]~3_combout\,
	dataf => \f1|ALT_INV_WideOr25~0_combout\,
	datag => \f1|ALT_INV_presentstate.RESET~q\,
	combout => \c1|yso~11_combout\);

-- Location: FF_X45_Y10_N26
\c1|yso[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~11_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(6));

-- Location: LABCELL_X45_Y10_N45
\f1|WideOr22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr22~4_combout\ = ( \f1|WideOr22~2_combout\ & ( \f1|WideOr22~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr22~3_combout\,
	dataf => \f1|ALT_INV_WideOr22~2_combout\,
	combout => \f1|WideOr22~4_combout\);

-- Location: LABCELL_X48_Y10_N51
\c1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add2~1_sumout\ = SUM(( \c1|yso\(7) ) + ( GND ) + ( \c1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(7),
	cin => \c1|Add2~10\,
	sumout => \c1|Add2~1_sumout\);

-- Location: LABCELL_X48_Y10_N18
\c1|yso~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|yso~2_combout\ = ( \f1|WideOr22~4_combout\ & ( \c1|Add2~1_sumout\ & ( (\f1|WideOr40~3_combout\ & (\c1|yso[4]~1_combout\ & ((\c1|LessThan1~0_combout\) # (\c1|LessThan1~2_combout\)))) ) ) ) # ( !\f1|WideOr22~4_combout\ & ( \c1|Add2~1_sumout\ ) ) # ( 
-- !\f1|WideOr22~4_combout\ & ( !\c1|Add2~1_sumout\ & ( (!\f1|WideOr40~3_combout\) # ((!\c1|yso[4]~1_combout\) # ((!\c1|LessThan1~2_combout\ & !\c1|LessThan1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000000000000000000011111111111111110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan1~2_combout\,
	datab => \c1|ALT_INV_LessThan1~0_combout\,
	datac => \f1|ALT_INV_WideOr40~3_combout\,
	datad => \c1|ALT_INV_yso[4]~1_combout\,
	datae => \f1|ALT_INV_WideOr22~4_combout\,
	dataf => \c1|ALT_INV_Add2~1_sumout\,
	combout => \c1|yso~2_combout\);

-- Location: FF_X48_Y10_N20
\c1|yso[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|yso~2_combout\,
	sclr => \f1|ALT_INV_presentstate.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|yso\(7));

-- Location: LABCELL_X42_Y12_N0
\VGA|user_input_translator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~17_sumout\ = SUM(( !\c1|yso\(0) $ (!\c1|xso\(6)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|user_input_translator|Add1~18\ = CARRY(( !\c1|yso\(0) $ (!\c1|xso\(6)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|user_input_translator|Add1~19\ = SHARE((\c1|yso\(0) & \c1|xso\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(0),
	datac => \c1|ALT_INV_xso\(6),
	cin => GND,
	sharein => GND,
	sumout => \VGA|user_input_translator|Add1~17_sumout\,
	cout => \VGA|user_input_translator|Add1~18\,
	shareout => \VGA|user_input_translator|Add1~19\);

-- Location: LABCELL_X42_Y12_N3
\VGA|user_input_translator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~21_sumout\ = SUM(( !\c1|yso\(1) $ (!\c1|xso\(7)) ) + ( \VGA|user_input_translator|Add1~19\ ) + ( \VGA|user_input_translator|Add1~18\ ))
-- \VGA|user_input_translator|Add1~22\ = CARRY(( !\c1|yso\(1) $ (!\c1|xso\(7)) ) + ( \VGA|user_input_translator|Add1~19\ ) + ( \VGA|user_input_translator|Add1~18\ ))
-- \VGA|user_input_translator|Add1~23\ = SHARE((\c1|yso\(1) & \c1|xso\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yso\(1),
	datac => \c1|ALT_INV_xso\(7),
	cin => \VGA|user_input_translator|Add1~18\,
	sharein => \VGA|user_input_translator|Add1~19\,
	sumout => \VGA|user_input_translator|Add1~21_sumout\,
	cout => \VGA|user_input_translator|Add1~22\,
	shareout => \VGA|user_input_translator|Add1~23\);

-- Location: LABCELL_X42_Y12_N6
\VGA|user_input_translator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~25_sumout\ = SUM(( !\c1|yso\(2) $ (!\c1|xso\(8) $ (\c1|yso\(0))) ) + ( \VGA|user_input_translator|Add1~23\ ) + ( \VGA|user_input_translator|Add1~22\ ))
-- \VGA|user_input_translator|Add1~26\ = CARRY(( !\c1|yso\(2) $ (!\c1|xso\(8) $ (\c1|yso\(0))) ) + ( \VGA|user_input_translator|Add1~23\ ) + ( \VGA|user_input_translator|Add1~22\ ))
-- \VGA|user_input_translator|Add1~27\ = SHARE((!\c1|yso\(2) & (\c1|xso\(8) & \c1|yso\(0))) # (\c1|yso\(2) & ((\c1|yso\(0)) # (\c1|xso\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(2),
	datac => \c1|ALT_INV_xso\(8),
	datad => \c1|ALT_INV_yso\(0),
	cin => \VGA|user_input_translator|Add1~22\,
	sharein => \VGA|user_input_translator|Add1~23\,
	sumout => \VGA|user_input_translator|Add1~25_sumout\,
	cout => \VGA|user_input_translator|Add1~26\,
	shareout => \VGA|user_input_translator|Add1~27\);

-- Location: LABCELL_X42_Y12_N9
\VGA|user_input_translator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~29_sumout\ = SUM(( !\c1|yso\(1) $ (!\c1|yso\(3)) ) + ( \VGA|user_input_translator|Add1~27\ ) + ( \VGA|user_input_translator|Add1~26\ ))
-- \VGA|user_input_translator|Add1~30\ = CARRY(( !\c1|yso\(1) $ (!\c1|yso\(3)) ) + ( \VGA|user_input_translator|Add1~27\ ) + ( \VGA|user_input_translator|Add1~26\ ))
-- \VGA|user_input_translator|Add1~31\ = SHARE((\c1|yso\(1) & \c1|yso\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yso\(1),
	datad => \c1|ALT_INV_yso\(3),
	cin => \VGA|user_input_translator|Add1~26\,
	sharein => \VGA|user_input_translator|Add1~27\,
	sumout => \VGA|user_input_translator|Add1~29_sumout\,
	cout => \VGA|user_input_translator|Add1~30\,
	shareout => \VGA|user_input_translator|Add1~31\);

-- Location: LABCELL_X42_Y12_N12
\VGA|user_input_translator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~33_sumout\ = SUM(( !\c1|yso\(2) $ (!\c1|yso\(4)) ) + ( \VGA|user_input_translator|Add1~31\ ) + ( \VGA|user_input_translator|Add1~30\ ))
-- \VGA|user_input_translator|Add1~34\ = CARRY(( !\c1|yso\(2) $ (!\c1|yso\(4)) ) + ( \VGA|user_input_translator|Add1~31\ ) + ( \VGA|user_input_translator|Add1~30\ ))
-- \VGA|user_input_translator|Add1~35\ = SHARE((\c1|yso\(2) & \c1|yso\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(2),
	datac => \c1|ALT_INV_yso\(4),
	cin => \VGA|user_input_translator|Add1~30\,
	sharein => \VGA|user_input_translator|Add1~31\,
	sumout => \VGA|user_input_translator|Add1~33_sumout\,
	cout => \VGA|user_input_translator|Add1~34\,
	shareout => \VGA|user_input_translator|Add1~35\);

-- Location: LABCELL_X42_Y12_N15
\VGA|user_input_translator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~37_sumout\ = SUM(( !\c1|yso\(5) $ (!\c1|yso\(3)) ) + ( \VGA|user_input_translator|Add1~35\ ) + ( \VGA|user_input_translator|Add1~34\ ))
-- \VGA|user_input_translator|Add1~38\ = CARRY(( !\c1|yso\(5) $ (!\c1|yso\(3)) ) + ( \VGA|user_input_translator|Add1~35\ ) + ( \VGA|user_input_translator|Add1~34\ ))
-- \VGA|user_input_translator|Add1~39\ = SHARE((\c1|yso\(5) & \c1|yso\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(5),
	datad => \c1|ALT_INV_yso\(3),
	cin => \VGA|user_input_translator|Add1~34\,
	sharein => \VGA|user_input_translator|Add1~35\,
	sumout => \VGA|user_input_translator|Add1~37_sumout\,
	cout => \VGA|user_input_translator|Add1~38\,
	shareout => \VGA|user_input_translator|Add1~39\);

-- Location: LABCELL_X42_Y12_N18
\VGA|user_input_translator|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~41_sumout\ = SUM(( !\c1|yso\(4) $ (!\c1|yso\(6)) ) + ( \VGA|user_input_translator|Add1~39\ ) + ( \VGA|user_input_translator|Add1~38\ ))
-- \VGA|user_input_translator|Add1~42\ = CARRY(( !\c1|yso\(4) $ (!\c1|yso\(6)) ) + ( \VGA|user_input_translator|Add1~39\ ) + ( \VGA|user_input_translator|Add1~38\ ))
-- \VGA|user_input_translator|Add1~43\ = SHARE((\c1|yso\(4) & \c1|yso\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(4),
	datac => \c1|ALT_INV_yso\(6),
	cin => \VGA|user_input_translator|Add1~38\,
	sharein => \VGA|user_input_translator|Add1~39\,
	sumout => \VGA|user_input_translator|Add1~41_sumout\,
	cout => \VGA|user_input_translator|Add1~42\,
	shareout => \VGA|user_input_translator|Add1~43\);

-- Location: LABCELL_X42_Y12_N21
\VGA|user_input_translator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~1_sumout\ = SUM(( !\c1|yso\(5) $ (!\c1|yso\(7)) ) + ( \VGA|user_input_translator|Add1~43\ ) + ( \VGA|user_input_translator|Add1~42\ ))
-- \VGA|user_input_translator|Add1~2\ = CARRY(( !\c1|yso\(5) $ (!\c1|yso\(7)) ) + ( \VGA|user_input_translator|Add1~43\ ) + ( \VGA|user_input_translator|Add1~42\ ))
-- \VGA|user_input_translator|Add1~3\ = SHARE((\c1|yso\(5) & \c1|yso\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yso\(5),
	datac => \c1|ALT_INV_yso\(7),
	cin => \VGA|user_input_translator|Add1~42\,
	sharein => \VGA|user_input_translator|Add1~43\,
	sumout => \VGA|user_input_translator|Add1~1_sumout\,
	cout => \VGA|user_input_translator|Add1~2\,
	shareout => \VGA|user_input_translator|Add1~3\);

-- Location: LABCELL_X42_Y12_N24
\VGA|user_input_translator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~9_sumout\ = SUM(( \c1|yso\(6) ) + ( \VGA|user_input_translator|Add1~3\ ) + ( \VGA|user_input_translator|Add1~2\ ))
-- \VGA|user_input_translator|Add1~10\ = CARRY(( \c1|yso\(6) ) + ( \VGA|user_input_translator|Add1~3\ ) + ( \VGA|user_input_translator|Add1~2\ ))
-- \VGA|user_input_translator|Add1~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(6),
	cin => \VGA|user_input_translator|Add1~2\,
	sharein => \VGA|user_input_translator|Add1~3\,
	sumout => \VGA|user_input_translator|Add1~9_sumout\,
	cout => \VGA|user_input_translator|Add1~10\,
	shareout => \VGA|user_input_translator|Add1~11\);

-- Location: LABCELL_X42_Y12_N51
\VGA|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|LessThan3~0_combout\ = ( \c1|yso\(5) & ( \c1|yso\(7) & ( (\c1|yso\(6) & \c1|yso\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yso\(6),
	datad => \c1|ALT_INV_yso\(4),
	datae => \c1|ALT_INV_yso\(5),
	dataf => \c1|ALT_INV_yso\(7),
	combout => \VGA|LessThan3~0_combout\);

-- Location: LABCELL_X45_Y12_N39
\f1|WideOr41~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f1|WideOr41~4_combout\ = ( !\f1|presentstate.DRAW2~q\ & ( !\f1|presentstate.DRAW1~q\ & ( (!\f1|presentstate.DRAW12B~q\ & (!\f1|presentstate.DRAWCB~DUPLICATE_q\ & (!\f1|presentstate.DRAWC~q\ & !\f1|presentstate.DRAW12~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_presentstate.DRAW12B~q\,
	datab => \f1|ALT_INV_presentstate.DRAWCB~DUPLICATE_q\,
	datac => \f1|ALT_INV_presentstate.DRAWC~q\,
	datad => \f1|ALT_INV_presentstate.DRAW12~q\,
	datae => \f1|ALT_INV_presentstate.DRAW2~q\,
	dataf => \f1|ALT_INV_presentstate.DRAW1~q\,
	combout => \f1|WideOr41~4_combout\);

-- Location: LABCELL_X45_Y12_N18
\VGA|writeEn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|writeEn~1_combout\ = ( \f1|WideOr41~1_combout\ & ( \f1|WideOr41~4_combout\ & ( (!\VGA|LessThan3~0_combout\ & ((!\f1|WideOr41~0_combout\) # ((!\f1|WideOr41~3_combout\) # (!\f1|WideOr41~2_combout\)))) ) ) ) # ( !\f1|WideOr41~1_combout\ & ( 
-- \f1|WideOr41~4_combout\ & ( !\VGA|LessThan3~0_combout\ ) ) ) # ( \f1|WideOr41~1_combout\ & ( !\f1|WideOr41~4_combout\ & ( !\VGA|LessThan3~0_combout\ ) ) ) # ( !\f1|WideOr41~1_combout\ & ( !\f1|WideOr41~4_combout\ & ( !\VGA|LessThan3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ALT_INV_WideOr41~0_combout\,
	datab => \VGA|ALT_INV_LessThan3~0_combout\,
	datac => \f1|ALT_INV_WideOr41~3_combout\,
	datad => \f1|ALT_INV_WideOr41~2_combout\,
	datae => \f1|ALT_INV_WideOr41~1_combout\,
	dataf => \f1|ALT_INV_WideOr41~4_combout\,
	combout => \VGA|writeEn~1_combout\);

-- Location: LABCELL_X42_Y12_N27
\VGA|user_input_translator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~13_sumout\ = SUM(( \c1|yso\(7) ) + ( \VGA|user_input_translator|Add1~11\ ) + ( \VGA|user_input_translator|Add1~10\ ))
-- \VGA|user_input_translator|Add1~14\ = CARRY(( \c1|yso\(7) ) + ( \VGA|user_input_translator|Add1~11\ ) + ( \VGA|user_input_translator|Add1~10\ ))
-- \VGA|user_input_translator|Add1~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yso\(7),
	cin => \VGA|user_input_translator|Add1~10\,
	sharein => \VGA|user_input_translator|Add1~11\,
	sumout => \VGA|user_input_translator|Add1~13_sumout\,
	cout => \VGA|user_input_translator|Add1~14\,
	shareout => \VGA|user_input_translator|Add1~15\);

-- Location: LABCELL_X42_Y12_N30
\VGA|user_input_translator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add1~5_sumout\ = SUM(( GND ) + ( \VGA|user_input_translator|Add1~15\ ) + ( \VGA|user_input_translator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \VGA|user_input_translator|Add1~14\,
	sharein => \VGA|user_input_translator|Add1~15\,
	sumout => \VGA|user_input_translator|Add1~5_sumout\);

-- Location: LABCELL_X45_Y12_N12
\VGA|VideoMemory|auto_generated|decode2|w_anode343w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3) = ( \VGA|user_input_translator|Add1~1_sumout\ & ( !\VGA|user_input_translator|Add1~5_sumout\ & ( (!\VGA|writeEn~0_combout\ & (!\VGA|user_input_translator|Add1~9_sumout\ & (\VGA|writeEn~1_combout\ & 
-- !\VGA|user_input_translator|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|ALT_INV_writeEn~1_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3));

-- Location: FF_X39_Y16_N49
\VGA|controller|yCounter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~13_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[6]~DUPLICATE_q\);

-- Location: FF_X39_Y16_N40
\VGA|controller|yCounter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|controller|Add1~33_sumout\,
	sclr => \VGA|controller|always1~3_combout\,
	ena => \VGA|controller|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|controller|yCounter[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y16_N0
\VGA|controller|controller_translator|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~17_sumout\ = SUM(( !\VGA|controller|yCounter[1]~DUPLICATE_q\ $ (!\VGA|controller|xCounter\(7)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~18\ = CARRY(( !\VGA|controller|yCounter[1]~DUPLICATE_q\ $ (!\VGA|controller|xCounter\(7)) ) + ( !VCC ) + ( !VCC ))
-- \VGA|controller|controller_translator|Add1~19\ = SHARE((\VGA|controller|yCounter[1]~DUPLICATE_q\ & \VGA|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter[1]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_xCounter\(7),
	cin => GND,
	sharein => GND,
	sumout => \VGA|controller|controller_translator|Add1~17_sumout\,
	cout => \VGA|controller|controller_translator|Add1~18\,
	shareout => \VGA|controller|controller_translator|Add1~19\);

-- Location: LABCELL_X40_Y16_N3
\VGA|controller|controller_translator|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~21_sumout\ = SUM(( !\VGA|controller|yCounter\(2) $ (!\VGA|controller|xCounter[8]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~22\ = CARRY(( !\VGA|controller|yCounter\(2) $ (!\VGA|controller|xCounter[8]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~19\ ) + ( \VGA|controller|controller_translator|Add1~18\ ))
-- \VGA|controller|controller_translator|Add1~23\ = SHARE((\VGA|controller|yCounter\(2) & \VGA|controller|xCounter[8]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(2),
	datac => \VGA|controller|ALT_INV_xCounter[8]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~18\,
	sharein => \VGA|controller|controller_translator|Add1~19\,
	sumout => \VGA|controller|controller_translator|Add1~21_sumout\,
	cout => \VGA|controller|controller_translator|Add1~22\,
	shareout => \VGA|controller|controller_translator|Add1~23\);

-- Location: LABCELL_X40_Y16_N6
\VGA|controller|controller_translator|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~25_sumout\ = SUM(( !\VGA|controller|yCounter[3]~DUPLICATE_q\ $ (!\VGA|controller|yCounter[1]~DUPLICATE_q\ $ (\VGA|controller|xCounter[9]~DUPLICATE_q\)) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( 
-- \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~26\ = CARRY(( !\VGA|controller|yCounter[3]~DUPLICATE_q\ $ (!\VGA|controller|yCounter[1]~DUPLICATE_q\ $ (\VGA|controller|xCounter[9]~DUPLICATE_q\)) ) + ( \VGA|controller|controller_translator|Add1~23\ ) + ( 
-- \VGA|controller|controller_translator|Add1~22\ ))
-- \VGA|controller|controller_translator|Add1~27\ = SHARE((!\VGA|controller|yCounter[3]~DUPLICATE_q\ & (\VGA|controller|yCounter[1]~DUPLICATE_q\ & \VGA|controller|xCounter[9]~DUPLICATE_q\)) # (\VGA|controller|yCounter[3]~DUPLICATE_q\ & 
-- ((\VGA|controller|xCounter[9]~DUPLICATE_q\) # (\VGA|controller|yCounter[1]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\,
	datab => \VGA|controller|ALT_INV_yCounter[1]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_xCounter[9]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~22\,
	sharein => \VGA|controller|controller_translator|Add1~23\,
	sumout => \VGA|controller|controller_translator|Add1~25_sumout\,
	cout => \VGA|controller|controller_translator|Add1~26\,
	shareout => \VGA|controller|controller_translator|Add1~27\);

-- Location: LABCELL_X40_Y16_N9
\VGA|controller|controller_translator|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~29_sumout\ = SUM(( !\VGA|controller|yCounter\(4) $ (!\VGA|controller|yCounter\(2)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~30\ = CARRY(( !\VGA|controller|yCounter\(4) $ (!\VGA|controller|yCounter\(2)) ) + ( \VGA|controller|controller_translator|Add1~27\ ) + ( \VGA|controller|controller_translator|Add1~26\ ))
-- \VGA|controller|controller_translator|Add1~31\ = SHARE((\VGA|controller|yCounter\(4) & \VGA|controller|yCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter\(4),
	datad => \VGA|controller|ALT_INV_yCounter\(2),
	cin => \VGA|controller|controller_translator|Add1~26\,
	sharein => \VGA|controller|controller_translator|Add1~27\,
	sumout => \VGA|controller|controller_translator|Add1~29_sumout\,
	cout => \VGA|controller|controller_translator|Add1~30\,
	shareout => \VGA|controller|controller_translator|Add1~31\);

-- Location: LABCELL_X40_Y16_N12
\VGA|controller|controller_translator|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~33_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~34\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter[3]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~31\ ) + ( \VGA|controller|controller_translator|Add1~30\ ))
-- \VGA|controller|controller_translator|Add1~35\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter[3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter[3]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~30\,
	sharein => \VGA|controller|controller_translator|Add1~31\,
	sumout => \VGA|controller|controller_translator|Add1~33_sumout\,
	cout => \VGA|controller|controller_translator|Add1~34\,
	shareout => \VGA|controller|controller_translator|Add1~35\);

-- Location: LABCELL_X40_Y16_N15
\VGA|controller|controller_translator|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~37_sumout\ = SUM(( !\VGA|controller|yCounter[6]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~38\ = CARRY(( !\VGA|controller|yCounter[6]~DUPLICATE_q\ $ (!\VGA|controller|yCounter\(4)) ) + ( \VGA|controller|controller_translator|Add1~35\ ) + ( \VGA|controller|controller_translator|Add1~34\ ))
-- \VGA|controller|controller_translator|Add1~39\ = SHARE((\VGA|controller|yCounter[6]~DUPLICATE_q\ & \VGA|controller|yCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\,
	datac => \VGA|controller|ALT_INV_yCounter\(4),
	cin => \VGA|controller|controller_translator|Add1~34\,
	sharein => \VGA|controller|controller_translator|Add1~35\,
	sumout => \VGA|controller|controller_translator|Add1~37_sumout\,
	cout => \VGA|controller|controller_translator|Add1~38\,
	shareout => \VGA|controller|controller_translator|Add1~39\);

-- Location: LABCELL_X40_Y16_N18
\VGA|controller|controller_translator|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~41_sumout\ = SUM(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(7)) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~42\ = CARRY(( !\VGA|controller|yCounter\(5) $ (!\VGA|controller|yCounter\(7)) ) + ( \VGA|controller|controller_translator|Add1~39\ ) + ( \VGA|controller|controller_translator|Add1~38\ ))
-- \VGA|controller|controller_translator|Add1~43\ = SHARE((\VGA|controller|yCounter\(5) & \VGA|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|ALT_INV_yCounter\(5),
	datac => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~38\,
	sharein => \VGA|controller|controller_translator|Add1~39\,
	sumout => \VGA|controller|controller_translator|Add1~41_sumout\,
	cout => \VGA|controller|controller_translator|Add1~42\,
	shareout => \VGA|controller|controller_translator|Add1~43\);

-- Location: LABCELL_X40_Y16_N21
\VGA|controller|controller_translator|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~1_sumout\ = SUM(( !\VGA|controller|yCounter\(8) $ (!\VGA|controller|yCounter[6]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~43\ ) + ( \VGA|controller|controller_translator|Add1~42\ ))
-- \VGA|controller|controller_translator|Add1~2\ = CARRY(( !\VGA|controller|yCounter\(8) $ (!\VGA|controller|yCounter[6]~DUPLICATE_q\) ) + ( \VGA|controller|controller_translator|Add1~43\ ) + ( \VGA|controller|controller_translator|Add1~42\ ))
-- \VGA|controller|controller_translator|Add1~3\ = SHARE((\VGA|controller|yCounter\(8) & \VGA|controller|yCounter[6]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(8),
	datac => \VGA|controller|ALT_INV_yCounter[6]~DUPLICATE_q\,
	cin => \VGA|controller|controller_translator|Add1~42\,
	sharein => \VGA|controller|controller_translator|Add1~43\,
	sumout => \VGA|controller|controller_translator|Add1~1_sumout\,
	cout => \VGA|controller|controller_translator|Add1~2\,
	shareout => \VGA|controller|controller_translator|Add1~3\);

-- Location: LABCELL_X40_Y16_N24
\VGA|controller|controller_translator|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~9_sumout\ = SUM(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~3\ ) + ( \VGA|controller|controller_translator|Add1~2\ ))
-- \VGA|controller|controller_translator|Add1~10\ = CARRY(( \VGA|controller|yCounter\(7) ) + ( \VGA|controller|controller_translator|Add1~3\ ) + ( \VGA|controller|controller_translator|Add1~2\ ))
-- \VGA|controller|controller_translator|Add1~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|ALT_INV_yCounter\(7),
	cin => \VGA|controller|controller_translator|Add1~2\,
	sharein => \VGA|controller|controller_translator|Add1~3\,
	sumout => \VGA|controller|controller_translator|Add1~9_sumout\,
	cout => \VGA|controller|controller_translator|Add1~10\,
	shareout => \VGA|controller|controller_translator|Add1~11\);

-- Location: LABCELL_X40_Y16_N27
\VGA|controller|controller_translator|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~13_sumout\ = SUM(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~14\ = CARRY(( \VGA|controller|yCounter\(8) ) + ( \VGA|controller|controller_translator|Add1~11\ ) + ( \VGA|controller|controller_translator|Add1~10\ ))
-- \VGA|controller|controller_translator|Add1~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|ALT_INV_yCounter\(8),
	cin => \VGA|controller|controller_translator|Add1~10\,
	sharein => \VGA|controller|controller_translator|Add1~11\,
	sumout => \VGA|controller|controller_translator|Add1~13_sumout\,
	cout => \VGA|controller|controller_translator|Add1~14\,
	shareout => \VGA|controller|controller_translator|Add1~15\);

-- Location: LABCELL_X40_Y16_N30
\VGA|controller|controller_translator|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add1~5_sumout\ = SUM(( GND ) + ( \VGA|controller|controller_translator|Add1~15\ ) + ( \VGA|controller|controller_translator|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \VGA|controller|controller_translator|Add1~14\,
	sharein => \VGA|controller|controller_translator|Add1~15\,
	sumout => \VGA|controller|controller_translator|Add1~5_sumout\);

-- Location: LABCELL_X42_Y14_N51
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~1_sumout\ & (!\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datad => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0_combout\);

-- Location: LABCELL_X56_Y11_N51
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X51_Y10_N0
\c1|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~1_sumout\ = SUM(( !\c1|yio\(0) $ (!\c1|xio\(0)) ) + ( !VCC ) + ( !VCC ))
-- \c1|Add4~2\ = CARRY(( !\c1|yio\(0) $ (!\c1|xio\(0)) ) + ( !VCC ) + ( !VCC ))
-- \c1|Add4~3\ = SHARE((\c1|yio\(0) & \c1|xio\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(0),
	datac => \c1|ALT_INV_xio\(0),
	cin => GND,
	sharein => GND,
	sumout => \c1|Add4~1_sumout\,
	cout => \c1|Add4~2\,
	shareout => \c1|Add4~3\);

-- Location: MLABCELL_X47_Y10_N54
\c1|memout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|memout[0]~0_combout\ = ( \f1|WideOr40~2_combout\ & ( \f1|WideOr40~1_combout\ & ( (\c1|LessThan0~2_combout\ & (\c1|LessThan0~1_combout\ & (\f1|WideOr40~0_combout\ & \f1|presentstate.RESET~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_LessThan0~2_combout\,
	datab => \c1|ALT_INV_LessThan0~1_combout\,
	datac => \f1|ALT_INV_WideOr40~0_combout\,
	datad => \f1|ALT_INV_presentstate.RESET~q\,
	datae => \f1|ALT_INV_WideOr40~2_combout\,
	dataf => \f1|ALT_INV_WideOr40~1_combout\,
	combout => \c1|memout[0]~0_combout\);

-- Location: FF_X51_Y10_N2
\c1|memout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~1_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(0));

-- Location: LABCELL_X51_Y10_N3
\c1|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~5_sumout\ = SUM(( !\c1|yio\(1) $ (!\c1|xio\(1)) ) + ( \c1|Add4~3\ ) + ( \c1|Add4~2\ ))
-- \c1|Add4~6\ = CARRY(( !\c1|yio\(1) $ (!\c1|xio\(1)) ) + ( \c1|Add4~3\ ) + ( \c1|Add4~2\ ))
-- \c1|Add4~7\ = SHARE((\c1|yio\(1) & \c1|xio\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(1),
	datac => \c1|ALT_INV_xio\(1),
	cin => \c1|Add4~2\,
	sharein => \c1|Add4~3\,
	sumout => \c1|Add4~5_sumout\,
	cout => \c1|Add4~6\,
	shareout => \c1|Add4~7\);

-- Location: FF_X51_Y10_N5
\c1|memout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~5_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(1));

-- Location: LABCELL_X51_Y10_N6
\c1|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~9_sumout\ = SUM(( !\c1|xio\(2) $ (!\c1|yio\(2)) ) + ( \c1|Add4~7\ ) + ( \c1|Add4~6\ ))
-- \c1|Add4~10\ = CARRY(( !\c1|xio\(2) $ (!\c1|yio\(2)) ) + ( \c1|Add4~7\ ) + ( \c1|Add4~6\ ))
-- \c1|Add4~11\ = SHARE((\c1|xio\(2) & \c1|yio\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_xio\(2),
	datad => \c1|ALT_INV_yio\(2),
	cin => \c1|Add4~6\,
	sharein => \c1|Add4~7\,
	sumout => \c1|Add4~9_sumout\,
	cout => \c1|Add4~10\,
	shareout => \c1|Add4~11\);

-- Location: FF_X51_Y10_N8
\c1|memout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~9_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(2));

-- Location: LABCELL_X51_Y10_N9
\c1|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~13_sumout\ = SUM(( !\c1|yio\(3) $ (!\c1|xio\(3)) ) + ( \c1|Add4~11\ ) + ( \c1|Add4~10\ ))
-- \c1|Add4~14\ = CARRY(( !\c1|yio\(3) $ (!\c1|xio\(3)) ) + ( \c1|Add4~11\ ) + ( \c1|Add4~10\ ))
-- \c1|Add4~15\ = SHARE((\c1|yio\(3) & \c1|xio\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000110011001100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(3),
	datab => \c1|ALT_INV_xio\(3),
	cin => \c1|Add4~10\,
	sharein => \c1|Add4~11\,
	sumout => \c1|Add4~13_sumout\,
	cout => \c1|Add4~14\,
	shareout => \c1|Add4~15\);

-- Location: FF_X51_Y10_N11
\c1|memout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~13_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(3));

-- Location: LABCELL_X51_Y10_N12
\c1|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~17_sumout\ = SUM(( !\c1|yio\(4) $ (!\c1|xio\(4)) ) + ( \c1|Add4~15\ ) + ( \c1|Add4~14\ ))
-- \c1|Add4~18\ = CARRY(( !\c1|yio\(4) $ (!\c1|xio\(4)) ) + ( \c1|Add4~15\ ) + ( \c1|Add4~14\ ))
-- \c1|Add4~19\ = SHARE((\c1|yio\(4) & \c1|xio\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(4),
	datac => \c1|ALT_INV_xio\(4),
	cin => \c1|Add4~14\,
	sharein => \c1|Add4~15\,
	sumout => \c1|Add4~17_sumout\,
	cout => \c1|Add4~18\,
	shareout => \c1|Add4~19\);

-- Location: FF_X51_Y10_N14
\c1|memout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~17_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(4));

-- Location: LABCELL_X51_Y10_N15
\c1|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~21_sumout\ = SUM(( !\c1|yio\(5) $ (!\c1|xio\(5)) ) + ( \c1|Add4~19\ ) + ( \c1|Add4~18\ ))
-- \c1|Add4~22\ = CARRY(( !\c1|yio\(5) $ (!\c1|xio\(5)) ) + ( \c1|Add4~19\ ) + ( \c1|Add4~18\ ))
-- \c1|Add4~23\ = SHARE((\c1|yio\(5) & \c1|xio\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(5),
	datad => \c1|ALT_INV_xio\(5),
	cin => \c1|Add4~18\,
	sharein => \c1|Add4~19\,
	sumout => \c1|Add4~21_sumout\,
	cout => \c1|Add4~22\,
	shareout => \c1|Add4~23\);

-- Location: FF_X51_Y10_N17
\c1|memout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~21_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(5));

-- Location: LABCELL_X51_Y10_N18
\c1|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~25_sumout\ = SUM(( !\c1|yio\(6) $ (!\c1|xio\(6)) ) + ( \c1|Add4~23\ ) + ( \c1|Add4~22\ ))
-- \c1|Add4~26\ = CARRY(( !\c1|yio\(6) $ (!\c1|xio\(6)) ) + ( \c1|Add4~23\ ) + ( \c1|Add4~22\ ))
-- \c1|Add4~27\ = SHARE((\c1|yio\(6) & \c1|xio\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(6),
	datac => \c1|ALT_INV_xio\(6),
	cin => \c1|Add4~22\,
	sharein => \c1|Add4~23\,
	sumout => \c1|Add4~25_sumout\,
	cout => \c1|Add4~26\,
	shareout => \c1|Add4~27\);

-- Location: FF_X51_Y10_N20
\c1|memout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~25_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(6));

-- Location: LABCELL_X51_Y10_N21
\c1|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~29_sumout\ = SUM(( !\c1|yio\(0) $ (!\c1|yio\(7) $ (\c1|xio\(7))) ) + ( \c1|Add4~27\ ) + ( \c1|Add4~26\ ))
-- \c1|Add4~30\ = CARRY(( !\c1|yio\(0) $ (!\c1|yio\(7) $ (\c1|xio\(7))) ) + ( \c1|Add4~27\ ) + ( \c1|Add4~26\ ))
-- \c1|Add4~31\ = SHARE((!\c1|yio\(0) & (\c1|yio\(7) & \c1|xio\(7))) # (\c1|yio\(0) & ((\c1|xio\(7)) # (\c1|yio\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(0),
	datac => \c1|ALT_INV_yio\(7),
	datad => \c1|ALT_INV_xio\(7),
	cin => \c1|Add4~26\,
	sharein => \c1|Add4~27\,
	sumout => \c1|Add4~29_sumout\,
	cout => \c1|Add4~30\,
	shareout => \c1|Add4~31\);

-- Location: FF_X51_Y10_N23
\c1|memout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~29_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(7));

-- Location: LABCELL_X51_Y10_N24
\c1|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~33_sumout\ = SUM(( \c1|yio\(1) ) + ( \c1|Add4~31\ ) + ( \c1|Add4~30\ ))
-- \c1|Add4~34\ = CARRY(( \c1|yio\(1) ) + ( \c1|Add4~31\ ) + ( \c1|Add4~30\ ))
-- \c1|Add4~35\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(1),
	cin => \c1|Add4~30\,
	sharein => \c1|Add4~31\,
	sumout => \c1|Add4~33_sumout\,
	cout => \c1|Add4~34\,
	shareout => \c1|Add4~35\);

-- Location: FF_X51_Y10_N26
\c1|memout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~33_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(8));

-- Location: LABCELL_X51_Y10_N27
\c1|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~37_sumout\ = SUM(( \c1|yio\(2) ) + ( \c1|Add4~35\ ) + ( \c1|Add4~34\ ))
-- \c1|Add4~38\ = CARRY(( \c1|yio\(2) ) + ( \c1|Add4~35\ ) + ( \c1|Add4~34\ ))
-- \c1|Add4~39\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(2),
	cin => \c1|Add4~34\,
	sharein => \c1|Add4~35\,
	sumout => \c1|Add4~37_sumout\,
	cout => \c1|Add4~38\,
	shareout => \c1|Add4~39\);

-- Location: FF_X51_Y10_N29
\c1|memout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~37_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(9));

-- Location: LABCELL_X51_Y10_N30
\c1|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~41_sumout\ = SUM(( \c1|yio\(3) ) + ( \c1|Add4~39\ ) + ( \c1|Add4~38\ ))
-- \c1|Add4~42\ = CARRY(( \c1|yio\(3) ) + ( \c1|Add4~39\ ) + ( \c1|Add4~38\ ))
-- \c1|Add4~43\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_yio\(3),
	cin => \c1|Add4~38\,
	sharein => \c1|Add4~39\,
	sumout => \c1|Add4~41_sumout\,
	cout => \c1|Add4~42\,
	shareout => \c1|Add4~43\);

-- Location: FF_X51_Y10_N32
\c1|memout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~41_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(10));

-- Location: LABCELL_X51_Y10_N33
\c1|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~45_sumout\ = SUM(( \c1|yio\(4) ) + ( \c1|Add4~43\ ) + ( \c1|Add4~42\ ))
-- \c1|Add4~46\ = CARRY(( \c1|yio\(4) ) + ( \c1|Add4~43\ ) + ( \c1|Add4~42\ ))
-- \c1|Add4~47\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_yio\(4),
	cin => \c1|Add4~42\,
	sharein => \c1|Add4~43\,
	sumout => \c1|Add4~45_sumout\,
	cout => \c1|Add4~46\,
	shareout => \c1|Add4~47\);

-- Location: FF_X51_Y10_N35
\c1|memout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~45_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(11));

-- Location: LABCELL_X51_Y10_N36
\c1|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add4~49_sumout\ = SUM(( \c1|yio\(5) ) + ( \c1|Add4~47\ ) + ( \c1|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_yio\(5),
	cin => \c1|Add4~46\,
	sharein => \c1|Add4~47\,
	sumout => \c1|Add4~49_sumout\);

-- Location: FF_X51_Y10_N38
\c1|memout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \c1|Add4~49_sumout\,
	ena => \c1|memout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|memout\(12));

-- Location: M10K_X58_Y11_N0
\s1|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000FFFFF80000000000000200002000000040000400000000000001000010000000200002000000000000008000080000001000010000000000000070000C0000000E00018000000000000038000400000007000080000000000000100002000000020000400000000000000800818000000100103000000000000004004040000000800808000000000000020001A0000000400034000000000000010000D000000020001A0000000000000080006800000010000D00000000000000C0000400000018000080E07000000000400006007038080000C0180C00000000200002006030040000400C0",
	mem_init0 => "600000000100001003018020000200603000000000BC1B080180C017836101F0F80000000047C1BC00F87C08F83780F87C0000000031FE1E007C3E063FC3C0381C000000001E7FE1001C0E03CFFC200000000000000F3FF080000001E7FE10000000000000079FFF60000000F3FFEC000000000000031FE01000000063FC02000000000000018FF00800000031FE0100000000000000CFE3FC00000019FC7F8000000000000067C3000000000CF86000000000000000338100000000067020000000000000001B1F800000000363F0000000000000000C38000000000187000000000000000007F00000000000FE000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../sprites.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Sprites:s1|altsyncram:altsyncram_component|altsyncram_6po1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 4257,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \s1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \s1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \s1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X41_Y10_N0
\VGA|VideoMemory|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: FF_X42_Y14_N11
\VGA|VideoMemory|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(0));

-- Location: FF_X42_Y14_N40
\VGA|VideoMemory|auto_generated|out_address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(0));

-- Location: LABCELL_X45_Y12_N48
\VGA|VideoMemory|auto_generated|decode2|w_anode353w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3) = ( \VGA|user_input_translator|Add1~9_sumout\ & ( !\VGA|user_input_translator|Add1~13_sumout\ & ( (\VGA|writeEn~1_combout\ & (!\VGA|user_input_translator|Add1~5_sumout\ & (!\VGA|writeEn~0_combout\ & 
-- !\VGA|user_input_translator|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~1_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datac => \VGA|ALT_INV_writeEn~0_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3));

-- Location: LABCELL_X42_Y14_N57
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~13_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- \VGA|controller|controller_translator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0_combout\);

-- Location: M10K_X49_Y10_N0
\VGA|VideoMemory|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LABCELL_X45_Y12_N57
\VGA|VideoMemory|auto_generated|decode2|w_anode363w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3) = ( !\VGA|user_input_translator|Add1~13_sumout\ & ( \VGA|user_input_translator|Add1~1_sumout\ & ( (\VGA|writeEn~1_combout\ & (\VGA|user_input_translator|Add1~9_sumout\ & 
-- (!\VGA|user_input_translator|Add1~5_sumout\ & !\VGA|writeEn~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~1_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datad => \VGA|ALT_INV_writeEn~0_combout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3));

-- Location: LABCELL_X42_Y14_N24
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~13_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- \VGA|controller|controller_translator|Add1~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0_combout\);

-- Location: M10K_X49_Y15_N0
\VGA|VideoMemory|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000030E000000000000000000000000000000000000000000000000000000000000000000000000000003F80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LABCELL_X45_Y12_N9
\VGA|VideoMemory|auto_generated|decode2|w_anode326w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3) = ( !\VGA|user_input_translator|Add1~1_sumout\ & ( \VGA|writeEn~1_combout\ & ( (!\VGA|writeEn~0_combout\ & (!\VGA|user_input_translator|Add1~5_sumout\ & (!\VGA|user_input_translator|Add1~13_sumout\ & 
-- !\VGA|user_input_translator|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	dataf => \VGA|ALT_INV_writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3));

-- Location: LABCELL_X42_Y14_N30
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w\(3) = ( !\VGA|controller|controller_translator|Add1~13_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w\(3));

-- Location: M10K_X41_Y17_N0
\VGA|VideoMemory|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000000000000000000000000000000000000000000000000023800000000000000000000000000000000000000000000000000000000000000000000000000000238000000000000000000000000000000000000000000000000000000000000000000000000000003F80000000000000000001F8000000000000000000000000000000000000000000000000000000001F00000000000000000001F800000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000FFF00000000000000000000000000000000000000000000000000000000000000000000000000003FFF80000000000000000000000000000000000000000000000000000000000000000000000000003FFF80000000000000000000000000000000000000000000000000000000000000000000000000003FFFC000000000000000000000000000000000000000000000000000000003000000000000000000FFFFE000000000000000000000000000000000000000000000000000000023800000000000000000FFFFE0000000000000000000000000000000000000000000000000000000238000000000000000008FC7E0000000000000000000000",
	mem_init0 => "0000000000000000000000000000000003F8000000000000000018FC7F00000000000000000000000000000000000000000000000000000001F0000000000000000018FC7F000000000000000000000000000000000000000000000000000000000000000000000000001FFFFF000000000000000000000000000000000000000000000000000000000000000000000000001FFFFF000000000000000000000000000000000000000000000000000000000000000000000000001FFFFF000000000000000000000000000000000000000000000000000000000000000000000000001FFFFF000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: FF_X40_Y16_N44
\VGA|VideoMemory|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(1));

-- Location: LABCELL_X40_Y16_N39
\VGA|VideoMemory|auto_generated|out_address_reg_b[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|out_address_reg_b[1]~feeder_combout\ = \VGA|VideoMemory|auto_generated|address_reg_b\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|out_address_reg_b[1]~feeder_combout\);

-- Location: FF_X40_Y16_N40
\VGA|VideoMemory|auto_generated|out_address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|VideoMemory|auto_generated|out_address_reg_b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(1));

-- Location: LABCELL_X40_Y14_N24
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ 
-- & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a8~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a11~portbdataout\))) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a2~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (\VGA|VideoMemory|auto_generated|ram_block1a5~portbdataout\ & 
-- \VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a8~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a11~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\);

-- Location: LABCELL_X45_Y12_N30
\VGA|VideoMemory|auto_generated|decode2|w_anode403w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3) = ( \VGA|user_input_translator|Add1~1_sumout\ & ( \VGA|writeEn~1_combout\ & ( (!\VGA|writeEn~0_combout\ & (\VGA|user_input_translator|Add1~13_sumout\ & (\VGA|user_input_translator|Add1~9_sumout\ & 
-- !\VGA|user_input_translator|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	dataf => \VGA|ALT_INV_writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3));

-- Location: LABCELL_X42_Y14_N45
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0_combout\ = ( \VGA|controller|controller_translator|Add1~13_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- \VGA|controller|controller_translator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0_combout\);

-- Location: M10K_X49_Y17_N0
\VGA|VideoMemory|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LABCELL_X45_Y12_N51
\VGA|VideoMemory|auto_generated|decode2|w_anode373w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3) = ( \VGA|user_input_translator|Add1~13_sumout\ & ( !\VGA|user_input_translator|Add1~9_sumout\ & ( (\VGA|writeEn~1_combout\ & (!\VGA|user_input_translator|Add1~5_sumout\ & 
-- (!\VGA|user_input_translator|Add1~1_sumout\ & !\VGA|writeEn~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~1_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	datad => \VGA|ALT_INV_writeEn~0_combout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3));

-- Location: LABCELL_X42_Y14_N18
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0_combout\ = ( \VGA|controller|controller_translator|Add1~13_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0_combout\);

-- Location: M10K_X41_Y11_N0
\VGA|VideoMemory|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000010000100000000000000000000000000000000000000000000000000000000000000000000000000100001000000000000000000000000000000000000000000000000000000000000000000000000001C0003000000000000000000000000000000000000000000000000000000000000000000000000001C000200000000000000000000000000000000000000000000000000000000000000000000000000100002000000000000000000000000000000000000000000000000000000000000000000000000001001030000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00001001010000000000000000000000000000000000000000000000000000000000000000000000000010000D0000000000000000000000000000000000000000000000000000000000000000000000000010000D0000000000000000000000000000000000000000000000000000000000000000000000000010000D0000000000000000000000000000000000000000000000000000000000000000000000000030000100000000000000000000000000000000000000000000000000000000000000000000000000200003000000000000000000000000000000000000000000000000000000000000000000000000002000020000000000000000000000",
	mem_init1 => "0000000000000000000000000000000000000000000000000000200002000000000000000000000000000000000000000000000000000000000000000000000000002F06C20000000000000000000000000000000000000000000000000000000000000000000000000023E0DE0000000000000000000000000000000000000000000000000000000000000000000000000031FE1E000000000000000000000000000000000000000000000000000000000000000000000000003CFFC2000000000000000000000000000000000000000000000000000000000000000000000000003CFFC2000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000003CFFFB0000000000000000000000000000000000000000000000000000000000000000000000000031FE010000000000000000000000000000000000000000000000000000000000000000000000000031FE010000000000000000000000000000000000000000000000000000000000000000000000000033F8FF0000000000000000000000000000000000000000000000000000000000000000000000000033E1800000000000000000000000000000000000000000000000000000000000000000000000000033810000000000000000000000000000000000000000000000000000000000000000000000000000363F00000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LABCELL_X45_Y12_N45
\VGA|VideoMemory|auto_generated|decode2|w_anode383w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3) = ( \VGA|user_input_translator|Add1~13_sumout\ & ( \VGA|writeEn~1_combout\ & ( (!\VGA|writeEn~0_combout\ & (!\VGA|user_input_translator|Add1~5_sumout\ & (\VGA|user_input_translator|Add1~1_sumout\ & 
-- !\VGA|user_input_translator|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|ALT_INV_writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3));

-- Location: LABCELL_X42_Y14_N0
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0_combout\ = ( \VGA|controller|controller_translator|Add1~13_sumout\ & ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- \VGA|controller|controller_translator|Add1~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0_combout\);

-- Location: M10K_X41_Y15_N0
\VGA|VideoMemory|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFF0000000000000000000000000000000000000000000000000000000000000000000000000010000100000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LABCELL_X45_Y12_N54
\VGA|VideoMemory|auto_generated|decode2|w_anode393w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3) = ( !\VGA|user_input_translator|Add1~1_sumout\ & ( \VGA|user_input_translator|Add1~13_sumout\ & ( (\VGA|writeEn~1_combout\ & (\VGA|user_input_translator|Add1~9_sumout\ & (!\VGA|writeEn~0_combout\ & 
-- !\VGA|user_input_translator|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~1_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|ALT_INV_writeEn~0_combout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3));

-- Location: LABCELL_X42_Y14_N48
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0_combout\ = ( !\VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~1_sumout\ & (\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- \VGA|controller|controller_translator|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datab => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0_combout\);

-- Location: M10K_X58_Y14_N0
\VGA|VideoMemory|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N30
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (\VGA|VideoMemory|auto_generated|ram_block1a23~portbdataout\ 
-- & \VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a20~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a14~portbdataout\)) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a17~portbdataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a23~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a14~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a17~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a20~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X45_Y12_N24
\VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\ = ( \VGA|user_input_translator|Add1~1_sumout\ & ( \VGA|writeEn~1_combout\ & ( (!\VGA|writeEn~0_combout\ & (!\VGA|user_input_translator|Add1~13_sumout\ & 
-- (!\VGA|user_input_translator|Add1~9_sumout\ & \VGA|user_input_translator|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datad => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	dataf => \VGA|ALT_INV_writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\);

-- Location: LABCELL_X40_Y16_N51
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode606w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode606w\(3) = ( !\VGA|controller|controller_translator|Add1~13_sumout\ & ( \VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~9_sumout\ & 
-- \VGA|controller|controller_translator|Add1~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode606w\(3));

-- Location: M10K_X58_Y10_N0
\s1|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000FFFFF80000000000000200002000000040000400000000000001000010000000200002000000000000008000080000001000010838E08000000070000C20E3820E0001867C79C00000003800041CF1F3070000833E3EE00000001000020EF8F982000041FFFFF000000008008187FFFFC1001030FFFFF800000004004043FFFFE08008087FFFFC000000020001A1FFFFF04000343FFFFE000000010000D0FFFFF820001A1FFFFF000000008000687FFFFC10000D0FFFFF80000000C000043FFFFE18000087FFFFC00000004000061FFFFF080000C31F8FE00000002000020FE3F1840000418FC",
	mem_init0 => "7F000000010000107F1F8C200002047E3F00000000BC1B081F8FC417836103FFFF8000000047C1BC0FFFFE08F83781FFFFC000000031FE1E07FFFF063FC3C07FFFC00000001E7FE101FFFF03CFFC201FFFC00000000F3FF0807FFF01E7FE100FFFE0000000079FFF603FFF80F3FFEC01FFE0000000031FE0100FFF0063FC02001F80000000018FF00800FC0031FE01000FC000000000CFE3FC007E0019FC7F8000000000000067C3000000000CF86000000000000000338100000000067020000000000000001B1F800000000363F0000000000000000C38000000000187000000000000000007F00000000000FE000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../sprites.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Sprites:s1|altsyncram:altsyncram_component|altsyncram_6po1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 4257,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \s1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \s1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \s1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M10K_X41_Y16_N0
\VGA|VideoMemory|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "AAAAAAAAA8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAAA8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AAFEAABFA8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ABC0AAF0280000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFC000ABC0AAF028000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFF000ABC0AAF020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003F03000ABFFAAFFE0000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003F03000ABFFAAFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00000AAFEAABF400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAAAAA0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode606w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LABCELL_X45_Y12_N15
\VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\ = ( \VGA|user_input_translator|Add1~5_sumout\ & ( !\VGA|user_input_translator|Add1~1_sumout\ & ( (!\VGA|writeEn~0_combout\ & (!\VGA|user_input_translator|Add1~9_sumout\ & 
-- (!\VGA|user_input_translator|Add1~13_sumout\ & \VGA|writeEn~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|ALT_INV_writeEn~0_combout\,
	datab => \VGA|user_input_translator|ALT_INV_Add1~9_sumout\,
	datac => \VGA|user_input_translator|ALT_INV_Add1~13_sumout\,
	datad => \VGA|ALT_INV_writeEn~1_combout\,
	datae => \VGA|user_input_translator|ALT_INV_Add1~5_sumout\,
	dataf => \VGA|user_input_translator|ALT_INV_Add1~1_sumout\,
	combout => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\);

-- Location: LABCELL_X42_Y14_N15
\VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w\(3) = ( !\VGA|controller|controller_translator|Add1~13_sumout\ & ( \VGA|controller|controller_translator|Add1~5_sumout\ & ( (!\VGA|controller|controller_translator|Add1~1_sumout\ & 
-- !\VGA|controller|controller_translator|Add1~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|ALT_INV_Add1~1_sumout\,
	datac => \VGA|controller|controller_translator|ALT_INV_Add1~9_sumout\,
	datae => \VGA|controller|controller_translator|ALT_INV_Add1~13_sumout\,
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w\(3));

-- Location: M10K_X49_Y13_N0
\VGA|VideoMemory|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000000000000000000000000000007FFF00000000000000000000000000000000000000000000000000000000000000000000000000003FFC000000000000000000000000000000000000000000000000000000000000000000000000000007E00000000000000000000000000000000000000000000000000000000000000000000000000F8007E00000000000000000000000000000000000000000000000000000000000000000000000001FC000000000000000000000000000000000000000000000000000000000000000000000000000001C4000000000000000000000000000000000000000000000000000000000000000000000000000001C40",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LABCELL_X43_Y14_N15
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # (\VGA|VideoMemory|auto_generated|ram_block1a29\) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a26~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a29\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a29\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a26~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\);

-- Location: FF_X40_Y16_N59
\VGA|VideoMemory|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|controller|controller_translator|Add1~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(2));

-- Location: FF_X40_Y16_N55
\VGA|VideoMemory|auto_generated|out_address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(2));

-- Location: LABCELL_X40_Y16_N36
\VGA|VideoMemory|auto_generated|address_reg_b[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|address_reg_b[3]~feeder_combout\ = ( \VGA|controller|controller_translator|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \VGA|controller|controller_translator|ALT_INV_Add1~5_sumout\,
	combout => \VGA|VideoMemory|auto_generated|address_reg_b[3]~feeder_combout\);

-- Location: FF_X40_Y16_N38
\VGA|VideoMemory|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	d => \VGA|VideoMemory|auto_generated|address_reg_b[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|address_reg_b\(3));

-- Location: FF_X40_Y16_N49
\VGA|VideoMemory|auto_generated|out_address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	asdata => \VGA|VideoMemory|auto_generated|address_reg_b\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA|VideoMemory|auto_generated|out_address_reg_b\(3));

-- Location: LABCELL_X40_Y14_N39
\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\ = ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ( 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~0_combout\ & !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1)) ) ) ) # ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ( 
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~2_combout\ ) ) ) # ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ( 
-- \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~1_combout\,
	datab => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~2_combout\,
	datac => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w2_n0_mux_dataout~0_combout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2),
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w2_n0_mux_dataout~3_combout\);

-- Location: M10K_X49_Y16_N0
\VGA|VideoMemory|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000030E000000000000000000000000000000000000000000000000000000000000000000000000000003F80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y12_N0
\VGA|VideoMemory|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FC1FEFF03FF001FE0000000000000000000000000000000000000000000000000000000000000003FC0FEFF0FFF801FE0000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000003FC0FF7F1FFFC01FE0000000000000000000000000000000000000000000000000000000000000001FC07F7F1FFFC00FE0000000000000000000000000000000000000000000000000000000000000001FC07FFF3FFFE00FE0000000000000000000000000000000000000000000000000000000000000003FC03FFF3FDFE00FE0000000000000000000000000000000000000000000000000000000000000003FC03FFF3F8FE00FE0000000000000000000000000000000000000000000000000000000000000007FE03FFF3F8FE3FFE000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000FFF07FFF3F8FE3FFE000000000000000000000000000000000000000000000000000000000000000FFF0FFFF3F8FE3FFE000000000000000000000000000000000000000000000000000000000000001FFF8FFFF3F8FE3FFE000000000000000000000000000000000000000000000000000000000000001FFF8FE7F3F8FE3FFE000000000000000000000000000000000000000000000000000000000000003FFFCFE7F3FDFE01FE000000000000000000000000000000000000000000000000000000000000003F9FCFE7F3FDFE00FE000000000000000000000000000000000000000000000000000000000000003F9FCFFFF3FDFEF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y14_N0
\VGA|VideoMemory|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000000000000000000007F3FFFF8007F07F83F803F800000000000000000000000000000000000000000000000000000001FFF3FC7F8007F03F83F8FFF800000000000000000000000000000000000000000000000000000001FFF3F83F8007F03FC3F8FFF800000000000000000000000000000000000000000000000000000001FFF3F83F8007F01FE3F8FFF800000000000000000000000000000000000000000000000000000001FFF3F83F8007F01FE3F8FFF800000000000000000000000000000000000000000000000000000001FFF3FC7F8007F00FF3F8FFF800FF80000000000000000000000000000000000000000000000000000FF3FFFF80",
	mem_init2 => "07F01FF3F807F800FFF00000000000000000000000000000000000000000000000000007F1FFFF0007F03FF3F803F800FE3800000000000000000000000000000000000000000000000007FFF1FFFF007FFF7FE3FBFFF800FE3E00000000000000000000000000000000000000000000000003FFF0FFFE003FFF3FE3F9FFF800FE3E00000000000000000000000000000000000000000000000003FFF07FFC003FFE1FC3F9FFF800FFFF00000000000000000000000000000000000000000000000003FFF03FF8003FFE1F83F9FFF800FFFF00000000000000000000000000000000000000000000000003FFF00FE0003FFE0E03F9FFF800FFFF000000000000",
	mem_init1 => "0000000000000000000000000000000000000000000000000000000000000000FFFFC000000000000000000000000000000000000000000000000000000000000000000000000000FFFFC000000000000000000000000000000000000000000000000000000000000000000000000000FFFFC0000000000000000781C0000000000000000000000000000000000000000000000000000000FE3FC00000000000000007C3E0000000000000000000000000000000000000000000000000000000FE3FC00000000000000007C3E0000000000000000000000000000000000000000000000000000000FE3FC00000000000000000C0600000000000000000000000",
	mem_init0 => "00000000000000000000000000000000FFFF000000000000000000C060000000000000000000000000000000000000000000000000000000FFFF000000000000000000C060000000000000000000000000000000000000000000000000000000FFFF00000000000000000381C0000000000000000000000000000000000000000000000000000000FFFE0000000000000000000000000000000000000000000000000000000000000000000000000000FFF80000000000000000000000000000000000000000000000000000000000000000000000000000FFF00000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y9_N0
\VGA|VideoMemory|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFE000000000000000000000000000000000000000000000000000000000000003F9FCFFFF3FDFE7FFE000000000000000000000000000000000000000000000000000000000000003F9FE7FFF3FDFE7FFE000000000000000000000000000000000000000000000000000000000000003F9FE3FFF3FDFE7FFE000000000000000000000000000000000000000000000000000000000000007F9FE1FFF3FDFE7FFE000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0000000000000000000000000000000000000000000000000000000000000000000000000000003E000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000FF00FE00007F00FE3F807F8000000000000000000000000000000000000000000000000000000000FF03FF80007F01FF3F807F8000000000000000000000000000000000000000000000000000000000FF07FFC0007F03FFBF807F80000000000000000000000000000000000000000000000000000000007F0FFFE0007F03FF3F803F80000000000000000000000000000000000000000000000000000000007F1FFFF0007F07FE3F803F80000000000000000000000000000000000000000000000000000000007F1FFFF8007F07FC3F803F80000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N48
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1)) 
-- # ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\))) ) ) ) # 
-- ( !\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ & ( \VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (((\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & 
-- \VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1))) # (\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\))) ) ) ) # 
-- ( \VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\)))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\ & (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1)))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a1~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|ram_block1a4~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a7~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a10~portbdataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a10~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\);

-- Location: M10K_X58_Y15_N0
\VGA|VideoMemory|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000893CA424E49E109E000000000000000000000000000000000000000000000000000000000000000089249425269210120000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000089329C241692702200000000000000000000000000000000000000000000000000000000000000008F02943C15929022000000000000000000000000000000000000000000000000000000000000000089049425259290920000000000000000000000000000000000000000000000000000000000000003E9389C24E492701E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C1800000000000000000000000000000000000000000000000000000000000000000000000000000808000000000000000000000000000000000000000000000000000000000000000104EE1222622789C888F000000000000000000000000000000000000000000000000000000000000104221A363C280B68D900000000000000000000000000488879E12724F084F000000000000000000104221A5524E40A29548000000000000000000000000068D8892129349081000000000000000000011CE2165515230A295460000",
	mem_init0 => "00000000000000000000069550E2120B49380800000000000000000010422164919218B69243000000000000000000000000059550E21E0AC948060000000000000000007DCE2128898E709CA22E000000000000000000000000059248921292C9484300000000000000000000000000000000C1800000000000000000000000000004A22F1E127249380E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y10_N0
\VGA|VideoMemory|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C180000000000000000000000000000000000000000000000000000000000000000000000000000080800000000000000000000000000000000000000000000000000000000000000449E52122262278BC888F0000000000000000000000000000000000000000000000000000000000044924A1A363C280888D90000000000000000000000000000209DC24E49E10B10000000000000000044994E1A5524E4088954800000000000000000000000000020844252692101E0000000000000000047814A165",
	mem_init2 => "5152308895460000000000000000000000000002084424169270120000000000000000044824A1649192188C9243000000000000000000000000000239C43C1592900A00000000000000001F49C4E128898E7088A22E00000000000000000000000000020844252592908C00000000000000000000000000000000C18000000000000000000000000000000FB9C424E492700C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C1800000000000000000000000000000000000000000000000000000000000000000000000000000808000000000000000000000000000000000000000000000000000000000000000023C4122262278BE888F000000000000000000000000000000000000000000000000000000000000024441A363C280848D90000000000000000000000000000009E12724F084440000000000000000000E8641A5524E4088954800000000000000000000000000000921293490806C0000000000",
	mem_init0 => "00000000128641655152309095460000000000000000000000000000392120B49380AA0000000000000000001244416491921890924300000000000000000000000000004921E0AC9480AA0000000000000000000E79F128898E709CA22E00000000000000000000000000004921292C94849200000000000000000000000000000000C180000000000000000000000000000000392127249381110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y11_N0
\VGA|VideoMemory|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000010000100000000000000000000000000000000000000000000000000000000000000000000000000100001000000000000000000000000000000000000000000000000000000000000000000000000001C0003000000000000000000000000000000000000000000000000000000000000000000000000001C000200000000000000000000000000000000000000000000000000000000000000000000000000100002000000000000000000000000000000000000000000000000000000000000000000000000001001030000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00001001010000000000000000000000000000000000000000000000000000000000000000000000000010000D0000000000000000000000000000000000000000000000000000000000000000000000000010000D0000000000000000000000000000000000000000000000000000000000000000000000000010000D0000000000000000000000000000000000000000000000000000000000000000000000000030000100000000000000000000000000000000000000000000000000000000000000000000000000200003000000000000000000000000000000000000000000000000000000000000000000000000002000020000000000000000000000",
	mem_init1 => "0000000000000000000000000000000000000000000000000000200002000000000000000000000000000000000000000000000000000000000000000000000000002F06C20000000000000000000000000000000000000000000000000000000000000000000000000023E0DE0000000000000000000000000000000000000000000000000000000000000000000000000031FE1E000000000000000000000000000000000000000000000000000000000000000000000000003CFFC2000000000000000000000000000000000000000000000000000000000000000000000000003CFFC2000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000003CFFFB0000000000000000000000000000000000000000000000000000000000000000000000000031FE010000000000000000000000000000000000000000000000000000000000000000000000000031FE010000000000000000000000000000000000000000000000000000000000000000000000000033F8FF0000000000000000000000000000000000000000000000000000000000000000000000000033E1800000000000000000000000000000000000000000000000000000000000000000000000000033810000000000000000000000000000000000000000000000000000000000000000000000000000363F00000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M10K_X38_Y13_N0
\VGA|VideoMemory|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C180000000000000000000000000000000000000000000000000000000000000000000000000000080800000000000000000000000000000000003FFFFFFC000000000000000012478843CE1222622789E888F000000000000000000000000000000000000000000000000000000017488844521A363C280908D9000000000000000000000000000000001E7E244000000000000000001550C848721A5524E4090954800000000000000000000000000000001283C",
	mem_init2 => "6C000000000000000001950C8486E1655152308C9546000000000000000000000000000000022424AA0000000000000000018C888444A164919218909243000000000000000000000000000000022314AA0000000000000000010CF3FF78E128898E709CA22E00000000000000000000000000000001219892000000000000000000000000000000000000C1800000000000000000000000000000000001E719110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFF0000000000000000000000000000000000000000000000000000000000000000000000000010000100000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N54
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\))) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\)) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a19~portbdataout\))) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a22~portbdataout\)) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # (\VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a16~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- (\VGA|VideoMemory|auto_generated|ram_block1a13~portbdataout\ & !\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a22~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a19~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a13~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a16~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\);

-- Location: M10K_X49_Y11_N0
\VGA|VideoMemory|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F8000000000000000000000000000000000000000000000000000000000000000000000000000001FC000000000000000000000000000000000000000000000000000000000000000000000000000001C4000000000000000000000000000000000000000000000000000000000000000000000000000001C40",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000001C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N21
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a28~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a25~portbdataout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a25~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a28~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\);

-- Location: LABCELL_X40_Y14_N12
\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\ = ( \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & !\VGA|VideoMemory|auto_generated|out_address_reg_b\(2)) ) ) ) # ( \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & (\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- ((\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~0_combout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & (\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & 
-- ((\VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	datab => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~1_combout\,
	datac => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~2_combout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2),
	datae => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w1_n0_mux_dataout~0_combout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w1_n0_mux_dataout~3_combout\);

-- Location: M10K_X58_Y13_N0
\s1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000FFFFF800000000000002000020000000400004000000000000017FEFD00000002FFDFA000000000000008FF7C800000011FEF900000000000000779F6C0000000EF3ED800000000000003BCFB40000000779F68000000000000011F8EA000000023F1D4000000000000009FC75800000013F8EB000000000000004FE3C400000009FC788000000000000027F3C200000004FE784000000000000013F9E1000000027F3C2000000000000009E0F0800000013C1E100000000000000C71FC400000018E3F880E07000000000440016007038088002C0180C0000000022000A006030044001400C0",
	mem_init0 => "600000000110005003018022000A006030000000008000080180C010000101F0F80000000040003C00F87C08000780F87C0000000030001E007C3E060003C0381C000000001E0001001C0E03C000200000000000000F000080000001E0001000000000000007800060000000F0000C000000000000030000100000006000020000000000000180000800000030000100000000000000C003FC00000018007F800000000000006003000000000C00600000000000000030010000000006002000000000000000181F800000000303F0000000000000000C38000000000187000000000000000007F00000000000FE000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../sprites.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Sprites:s1|altsyncram:altsyncram_component|altsyncram_6po1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 4257,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \s1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \s1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \s1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y15_N0
\VGA|VideoMemory|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "C7C0000000003E0000000007F3FFFF8007F83FC3F803F800000000000000000000000000000000E3C7C0000000003E00000001FFF3FC3FC007F83FC3F8FFF800000000000000000000000000000000E787C0000000003E00000001FFF3F81FC007F03FC3F8FFF800000000000000000000000000000000E707C0000000003E00000001FFF3F81FC007F01FE3F8FFF800000000000000000000000000000000EF07C0000000003E00000001FFF3F81FC007F00FF3F8FFF800000000000000000000000000000000FE07C0000000003E00000001FFF3FC3FC007F00FF3F8FFF800000000000000000000000000000000FC07C0000000003E0000000007F1FFFF80",
	mem_init2 => "07F01FF3F803F800000000000000000000000000000000FC07C0000000003E0000000007F1FFFF8007F83FF3F803F800003000000000000000000000000000F807C0000000003E00000003FFF1FFFF003FFF3FF3F9FFF800023800000000000000000000000000F007C0000000003E00000003FFF0FFFF003FFF3FE3FDFFF800023800000000000000000000000000E007C0000000003E00000003FFF07FFE003FFF1FC3FDFFF80003F80000000000000000001F800000E007C0000000003E00000003FFF03FF8003FFF0F83FDFFF80001F00000000000000000001F800000E007C0000000003E00000003FFF007E0003FFF0E03FDFFF8000000000000000000",
	mem_init1 => "000000FFF00000E007C0000000003E00000000000000000000000000000000000000000000000000000003FFF80000E007C0000000003E00000000000000000000000000000000000000000000000000000003FFF80000E007C0000000003E00000000000000000000000000000000000000000000000000000003FFFC0000E007C0000000003E0000000000000000000000000000000000003000000000000000000FFFFE0000E007C0000000003E0000000000000000000000000000000000023800000000000000000FFFFE0000E007FFFFFFFFFFFE00000000000000000000000000000000000238000000000000000008FC7E0000E007FFFFFFFFFFFE00",
	mem_init0 => "0000000000000000000000000000000003F8000000000000000018FC7F0000E00FFFFFFFFFFFFE000000000000000000000000000000000001F0000000000000000018FC7F0000E01FFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000001FFFFF0000E03FFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000001FFFFF0000E07C0000000000000000000000000000000000000000000000000000000000000000001FFFFF0000E0F80000000000000000000000000000000000000000000000000000000000000000001FFFFF0000E1F00000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode326w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode508w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y12_N0
\VGA|VideoMemory|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "FFE0000000000000000000000000000000000000000000FC07C0000000003E0003F8FEFFFF3FCFE7FFE0000000000000000000000000000000000000000000F807C0000000003E0003F8FE7FFF3FCFE7FFE0000000000000000000000000000000000000000000F007C0000000003E0003F8FE3FFF3FCFE7FFE0000000000000000000000000000000000000000000F007C0000000003E0003F8FE0FFF3FCFE7FFE0000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E00000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E00",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E00FFFFFFFFFFFFE000000000000000000000000C000000000000000000000000000000000000000E00FFFFFFFFFFFFE000000000000000000000003E000000000",
	mem_init0 => "000000000000000000000000000000E01FC0000000003E0000000007F007E00007F80FF3FC03F800000000000000000000000000000000E03FC0000000003E0000000007F03FF80007F81FF3FC03F800000000000000000000000000000000E03FC0000000003E0000000007F07FFE0007F83FFBFC03F800000000000000000000000000000000E077C0000000003E0000000007F0FFFF0007F83FF3FC03F800000000000000000000000000000000E0F7C0000000003E0000000007F1FFFF0007F83FE3FC03F800000000000000000000000000000000E1E7C0000000003E0000000007F1FFFF8007F83FC3F803F800000000000000000000000000000000E1",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode343w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode525w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M10K_X49_Y14_N0
\VGA|VideoMemory|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000003E0000000003E000000000F800070F800000000F800000001F0000000007C030E000003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C03F8000003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0000000003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0000000003E000000003E0000000003E000000000F800070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800",
	mem_init2 => "070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070E0000000007000000001E000000003FC0000000003E00000000F0000000001F0000000001F000070E000000000F000000003C000000007FC0000000003E00000001E0000000003E0000000001E000071C000000000E00000000380000000077C0000000003E00000003C0000000007C0000000003C000071C000000001C000000007800000000",
	mem_init1 => "E7C0000000003E000000078000000000F800000000078000071C000000003C00000000F000000001E7C0000000003E0000000F0000000001F0000000000F00000738000000003800000000E000000001C7C0000000003E0000000F0000000003E0000000001E00000738000000007800000001E00000000387C0000000003E0000001E0000000007C0000000003C00000738000000007000000003C00000000787C0000000003E0000003C000000000F8000000000780000077000000000F000000003800000000F07C0000000003E00000078000000001F0000000000F00000077000000000E000000007800000000E07C0000000003E000000F0000000003E",
	mem_init0 => "0000000001E00000077000000001E000000007000000001E07C0000000003E000001E0000000007C0000000003C0000007E000000001C00000000F000000003C07C0000000003E000001E000000000F8000000000780000007E000000003800000001E000000003807C0000000003E000003C000000001F0000000000F00000007E000000007800000001C000000007807C0000000003E0000078000000003E0000000001E00000007C000000007000000003C00000000F007C0000000003E00000F0000000007C0000000003C00000007C00000000F000000007800000000E007C0000000003E00001E000000000F80000000007800000007C00000000E0000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode363w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode545w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M10K_X49_Y9_N0
\VGA|VideoMemory|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00007000000001E007C0000000003E00001C000000001F0000000000F000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFE007C0000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFE000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFE007C0000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFE000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFE007C0000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E00",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE00001FC0FE7F03FF000FE0000000000000000000000000000000000000000000E00FFFFFFFFFFFFE00001FC0FF7F0FFFC00FE0000000000000",
	mem_init1 => "000000000000000000000000000000E01FC0000000003E00001FC07F7F1FFFC00FE0000000000000000000000000000000000000000000E01FC0000000003E00001FC07F7F1FFFE00FE0000000000000000000000000000000000000000000E03FC0000000003E00001FC07FFF1FFFE00FE0000000000000000000000000000000000000000000E07FC0000000003E00001FC03FFF1FCFE00FE0000000000000000000000000000000000000000000E0F7C0000000003E00003FE03FFF1FCFE00FE0000000000000000000000000000000000000000000E0E7C0000000003E00007FE01FFF1FCFE3FFE0000000000000000000000000000000000000000000E1",
	mem_init0 => "E7C0000000003E00007FF07FFF1FCFE3FFE0000000000000000000000000000000000000000000E3C7C0000000003E0000FFF87FFF1FCFE3FFE0000000000000000000000000000000000000000000E387C0000000003E0001FFF8FFFF1FCFE3FFE0000000000000000000000000000000000000000000E787C0000000003E0001FFFCFE7F1FCFE3FFE0000000000000000000000000000000000000000000EF07C0000000003E0003FDFCFE7F1FCFE00FE0000000000000000000000000000000000000000000EE07C0000000003E0003FDFEFE7F1FCFE00FE0000000000000000000000000000000000000000000FC07C0000000003E0003F8FEFFFF3FCFE7",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode353w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode535w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N6
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # 
-- (\VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (\VGA|VideoMemory|auto_generated|ram_block1a9~portbdataout\ & 
-- \VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\))) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a6~portbdataout\ 
-- & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a0~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- ((\VGA|VideoMemory|auto_generated|ram_block1a3~portbdataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a9~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\);

-- Location: M10K_X49_Y12_N0
\VGA|VideoMemory|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000003FFFF000000000000000000000000000000001FC0000000003E000000000000000000000000000003FFFF000000000000000000000000000000003FC0000000003E000000000000000000000000000000FFFF000000000000000000000000000000003FC0000000003E000000000000000000000000000000FFFF0000000000000000000000000000000077C0000000003E000000000000000000000000000000FFFF0000000000000000000000000000000077C0000000003E0000000000000000000000000000007C7F00000000000000000000000000000000F7C0000000003E0000000000000000000000000000007C7F",
	mem_init2 => "00000000000000000000000000000000E7C0000000003E0000000000000000000000000000000C7F00000000000000000000000000000001E7C0000000003E0000000000000000000000000000000FFF00000000000000000000000000000001C7C0000000003E00000000000000000000000000000001FF00000000000000000000000000000001C7C0000000003E00000000000000000000000000000000000000000000000000000000000000000387C0000000003E00000000000000000000000000000000000000000000000000000000000000000387C0000000003E000000000000000000000000000000000000000000000000000000000000000007",
	mem_init1 => "07C0000000003E00000000000000000000000000000000000000000000000000000000000000000707C0000000003E00000000000000000000000000000000000000000000000000000000000000000F07C0000000003E00000000000000000000000000000000000000000000000000000000000000000E07C0000000003E00000000000000000000000000000000000000000000000000000000000000001E07C0000000003E00000000000000000000000000000000000000000000000000000000000000001C07C0000000003E00000000000000000000000000000000000000000000000000000000000000003C07C0000000003E000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000003807C0000000003E00000000000000000000000000000000000000000000000000000000000000007807C0000000003E00000000000000000000000000000000000000000000000000000000000000007007C0000000003E00000000000000000000000000000000000000000000000000000000000000007007C0000000003E0000000000000000000000000000000000000000000000000000000000000000F007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E00000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode422w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode595w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y18_N0
\VGA|VideoMemory|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015555550000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015555555005400150000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005555555501400050000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555014000500000000000000000000000000000000000000000000000000000000000015555555555555555555555540000000000000000000000000000000000000000000000000000000000005555555501400050000000000000000000000000000000000000000000000000000000000005555555555555555555555554000000000000000000000000000000000000000000000000000000000005555015550155005540000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00155555555555555555555555540000000000000000000000000000000000000000000000000000000000055550155501550055400000000000000000000000000000000000000000000000000000000055555555555555555555555554000000000000000000000000000000000000000000000000000000000005555015550054001500000000000000000000000000000000000000000000000000000000005555555555555555555555555400000000000000000000000000000000000000000000000000000000000555555555000000000000000000000000000000000000000000000000000000000000000001555000000000000000000005540000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode433w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode606w\(3),
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N18
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\ & ( (\VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a27~portbdataout\ & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & \VGA|VideoMemory|auto_generated|ram_block1a24~portbdataout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a24~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a27~portbdataout\,
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\);

-- Location: M10K_X58_Y12_N0
\VGA|VideoMemory|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "0000000000000000000000000000000000000000000000FC07C0000000003E00000000000000000000000000000000000000000000000000000000C0800000FC07C0000000003E0000000000000000000000000000000000000000000000000000000080000000FC07C0000000003E00000000000000000000000000000000000000000445E491133221789E0CCF00F807C0000000003E0000000000000000000000000000000000000000044534919333E140880CC800F807C0000000003E000000000209FE22E44E089100000000000000000445947193514F60880D4C00F007C0000000003E00000000020822223653081F0000000000000000047C149154",
	mem_init2 => "D1493088134600F007C0000000003E00000000020822221651780A00000000000000000445349174C9C9088E132100F007FFFFFFFFFFFE000000000239E23E1551480A00000000000000001F45E4F134C88F708C132E00E007FFFFFFFFFFFE000000000208222235D1488E00000000000000000000000000000000C0800000E007FFFFFFFFFFFE000000000FB9E222E4D178040000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E00FC0000000003E00",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000E00FC0000000003E00000000000000000000000000000000000000000000000000000000C0800000E01FC0000000003E0000000000000000000000000000000000000000000000000000000080000000E01FC0000000003E000000000000000000000000000000000000000000013C41133221789E0CCF00E01FC0000000003E0000000000000000000000000000000000000000000146419333E140840CC800E03FC0000000003E000000000004E117227044660000000000000000000F424193514F60880D4C00E03FC0000000003E0000000000053111B29840660000000000",
	mem_init0 => "0000000009424154D1493090134600E077C0000000003E00000000003D1110B28BC06A00000000000000000009464174C9C90890132100E077C0000000003E00000000002511F0AA8A409A0000000000000000000F3DF134C88F709E132E00E0F7C0000000003E0000000000251111AE8A449900000000000000000000000000000000C0800000E0E7C0000000003E00000000003D1117268BC0990000000000000000000000000000000000000000E1E7C0000000003E0000000000000000000000000000000000000000000000000000000000000000E1C7C0000000003E0000000000000000000000000000000000000000000000000000000000000000E3",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode393w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode575w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: M10K_X49_Y18_N0
\VGA|VideoMemory|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "00000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E007FFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000E00FFFFFFFFFFFFE0000000088BC9222E44E088F0000000000000000000000000000000000000000E00FFFFFFFFFFFFE0000000088A69222365308110000000000000000000000000000000000000000E00FC0000000003E00",
	mem_init2 => "00000088B28E22165178110000000000000000000000000000000000000000E01FC0000000003E000000008F82923E155148110000000000000000000000000000000000000000E01FC0000000003E0000000088A6922235D148910000000000000000000000000000000000000000E03FC0000000003E00000003E8BC9E22E4D1780F0000000000000000000000000000000000000000E03FC0000000003E0000000000000000000000000000000000000000000000000000000000000000E07FC0000000003E0000000000000000000000000000000000000000000000000000000000000000E077C0000000003E0000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000E077C0000000003E00000000000000000000000000000000000000000000000000000000C0800000E0E7C0000000003E0000000000000000000000000000000000000000000000000000000080000000E0E7C0000000003E000000000000000000000000000000000000000000104FF1133221789C0CCF00E1E7C0000000003E0000000000000000000000000000000000000000001041119333E140920CC800E1C7C0000000003E000000044CC78F117227044F00000000000000000010411193514F60920D4C00E1C7C0000000003E000000064CC8D1111B29840800000000000000000011CF1154D1493092134600E3",
	mem_init0 => "87C0000000003E000000064D4851110B28BC0C00000000000000000010411174C9C90892132100E387C0000000003E000000055348511F0AA8A4060000000000000000007DCF1134C88F709C132E00E787C0000000003E00000005D328D1111AE8A44100000000000000000000000000000000C0800000E707C0000000003E00000004D3278F117268BC0E0000000000000000000000000000000000000000EF07C0000000003E0000000000000000000000000000000000000000000000000000000000000000EE07C0000000003E0000000000000000000000000000000000000000000000000000000000000000EE07C0000000003E000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode403w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode585w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y14_N0
\VGA|VideoMemory|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "C7C0000000003E0000000000000000000000000000000000000000000000000000000000000000E387C0000000003E00000000000000000000000000000000000000000000000000000000C0800000E387C0000000003E0000000000000000000000000000000000000000000000000000000080000000E707C0000000003E00000000000003FFFFFFC000000000000000012478843CF1133221789E0CCF00E707C0000000003E00000000000000000000000000000000000001348C8446919333E140900CC800EE07C0000000003E00000000000000F7A266000000000000000001548484429193514F60900D4C00EE07C0000000003E00000000000001143E",
	mem_init2 => "660000000000000000014C848442F154D149308C134600FE07C0000000003E0000000000000116146A0000000000000000018C8C84469174C9C90890132100FC07C0000000003E0000000000000113149A000000000000000001847BFF3CF134C88F709E132E00FC07C0000000003E00000000000001109C99000000000000000000000000000000000000C0800000F807C0000000003E00000000000000F7089900000000000000000000000000000000000000000000F807C0000000003E0000000000000000000000000000000000000000000000000000000000000000F007C0000000003E00000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000F007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000000000000000000000000000000E007C0000000003E0000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => "FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800003F800000000F800000001F0000000007C0000000003E000000003E0000000003E000000000F800003F800000000F800000001F0000000007C01FFFFF003E000000003E0000000003E000000000F800007F800000000F800000001F0000000007C0100001003E000000003E0000000003E000000000F800",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode383w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode565w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M10K_X41_Y13_N0
\VGA|VideoMemory|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => "007F800000000F800000001F0000000007C017FEFD003E000000003E0000000003E000000000F800007F800000000F800000001F0000000007C011FEF9003E000000003E0000000003E000000000F80000EF800000000F800000001F0000000007C01DE7DB003E000000003E0000000003E000000000F80000EF800000000F800000001F0000000007C01DE7DA003E000000003E0000000003E000000000F80000EF800000000F800000001F0000000007C011F8EA003E000000003E0000000003E000000000F80001CF800000000F800000001F0000000007C013F8EB003E000000003E0000000003E000000000F80001CF800000000F800000001F00000000",
	mem_init2 => "07C013F8F1003E000000003E0000000003E000000000F80001CF800000000F800000001F0000000007C013F9E1003E000000003E0000000003E000000000F800038F800000000F800000001F0000000007C013F9E1003E000000003E0000000003E000000000F800038F800000000F800000001F0000000007C013C1E1003E000000003E0000000003E000000000F800038F800000000F800000001F0000000007C031C7F1003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C022000B003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C022000A003E000000003E00000000",
	mem_init1 => "03E000000000F800070F800000000F800000001F0000000007C022000A003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0200002003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C020001E003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C030001E003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C03C0002003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C03C0002003E000000003E0000000003E000000000F800070F800000000F80",
	mem_init0 => "0000001F0000000007C03C0003003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0300001003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0300001003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C03000FF003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0300180003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0300100003E000000003E0000000003E000000000F800070F800000000F800000001F0000000007C0303F00003E00",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Grid.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_l4m1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 76800,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 76800,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3),
	portbre => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	clk1 => \VGA|mypll|altpll_component|auto_generated|clk[0]~CLKENA0_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|decode2|w_anode373w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|rden_decode_b|w_anode555w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \VGA|VideoMemory|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LABCELL_X40_Y14_N0
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ = ( \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & 
-- (\VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & (\VGA|VideoMemory|auto_generated|ram_block1a18~portbdataout\)) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(0) & ((\VGA|VideoMemory|auto_generated|ram_block1a21~portbdataout\))) ) ) ) # ( \VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) # (\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\) ) ) ) # ( !\VGA|VideoMemory|auto_generated|ram_block1a12~portbdataout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- (\VGA|VideoMemory|auto_generated|ram_block1a15~portbdataout\ & \VGA|VideoMemory|auto_generated|out_address_reg_b\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a18~portbdataout\,
	datab => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a21~portbdataout\,
	datac => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a15~portbdataout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(0),
	datae => \VGA|VideoMemory|auto_generated|ALT_INV_ram_block1a12~portbdataout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\);

-- Location: LABCELL_X40_Y14_N42
\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\ = ( \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( 
-- (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((\VGA|VideoMemory|auto_generated|out_address_reg_b\(2)) # (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ & ( \VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\ & !\VGA|VideoMemory|auto_generated|out_address_reg_b\(2))) ) ) ) # ( \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ & ( 
-- !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & (((\VGA|VideoMemory|auto_generated|out_address_reg_b\(2))) # (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\))) # 
-- (\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & (((\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\ & !\VGA|VideoMemory|auto_generated|out_address_reg_b\(2))))) ) ) ) # ( 
-- !\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~2_combout\ & ( !\VGA|VideoMemory|auto_generated|out_address_reg_b\(1) & ( (!\VGA|VideoMemory|auto_generated|out_address_reg_b\(2) & ((!\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & 
-- (\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~1_combout\)) # (\VGA|VideoMemory|auto_generated|out_address_reg_b\(3) & ((\VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100010000000000010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(3),
	datab => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~1_combout\,
	datac => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~0_combout\,
	datad => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(2),
	datae => \VGA|VideoMemory|auto_generated|mux3|ALT_INV_l4_w0_n0_mux_dataout~2_combout\,
	dataf => \VGA|VideoMemory|auto_generated|ALT_INV_out_address_reg_b\(1),
	combout => \VGA|VideoMemory|auto_generated|mux3|l4_w0_n0_mux_dataout~3_combout\);

-- Location: LABCELL_X43_Y11_N21
\data|c|out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|out~0_combout\ = ( !\SW[7]~input_o\ & ( !\data|c|out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \data|c|ALT_INV_out\(0),
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \data|c|out~0_combout\);

-- Location: LABCELL_X42_Y11_N12
\data|e~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|e~3_combout\ = ( \AA|last_data_received\(1) & ( \AA|last_data_received\(3) & ( (\AA|last_data_received\(0) & (!\AA|last_data_received\(2) & \AA|current.exhibit~q\)) ) ) ) # ( !\AA|last_data_received\(1) & ( \AA|last_data_received\(3) & ( 
-- (\AA|last_data_received\(2) & \AA|current.exhibit~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(0),
	datac => \AA|ALT_INV_last_data_received\(2),
	datad => \AA|ALT_INV_current.exhibit~q\,
	datae => \AA|ALT_INV_last_data_received\(1),
	dataf => \AA|ALT_INV_last_data_received\(3),
	combout => \data|e~3_combout\);

-- Location: LABCELL_X43_Y11_N9
\data|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|e~0_combout\ = ( \AA|last_data_received\(4) & ( (!\AA|last_data_received\(5) & (!\AA|last_data_received\(7) & (\AA|current.exhibit~q\ & !\AA|last_data_received\(6)))) ) ) # ( !\AA|last_data_received\(4) & ( (\AA|last_data_received\(5) & 
-- (!\AA|last_data_received\(7) & (\AA|current.exhibit~q\ & !\AA|last_data_received\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(5),
	datab => \AA|ALT_INV_last_data_received\(7),
	datac => \AA|ALT_INV_current.exhibit~q\,
	datad => \AA|ALT_INV_last_data_received\(6),
	dataf => \AA|ALT_INV_last_data_received\(4),
	combout => \data|e~0_combout\);

-- Location: LABCELL_X43_Y11_N39
\data|e~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|e~1_combout\ = ( \data|s4|tmp\(2) & ( \data|e~0_combout\ ) ) # ( !\data|s4|tmp\(2) & ( \data|e~0_combout\ & ( ((\data|s2|tmp\(2)) # (\data|s1|tmp\(2))) # (\data|s3|tmp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|s3|ALT_INV_tmp\(2),
	datac => \data|s1|ALT_INV_tmp\(2),
	datad => \data|s2|ALT_INV_tmp\(2),
	datae => \data|s4|ALT_INV_tmp\(2),
	dataf => \data|ALT_INV_e~0_combout\,
	combout => \data|e~1_combout\);

-- Location: LABCELL_X43_Y11_N57
\data|c|out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|out[0]~1_combout\ = ( \data|e~3_combout\ & ( \data|e~1_combout\ & ( (!\AA|last_data_received\(5)) # ((!\AA|current.exhibit~q\) # ((\BB|Decoder0~2_combout\) # (\SW[7]~input_o\))) ) ) ) # ( !\data|e~3_combout\ & ( \data|e~1_combout\ & ( 
-- (\BB|Decoder0~2_combout\) # (\SW[7]~input_o\) ) ) ) # ( \data|e~3_combout\ & ( !\data|e~1_combout\ & ( \SW[7]~input_o\ ) ) ) # ( !\data|e~3_combout\ & ( !\data|e~1_combout\ & ( \SW[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(5),
	datab => \AA|ALT_INV_current.exhibit~q\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \BB|ALT_INV_Decoder0~2_combout\,
	datae => \data|ALT_INV_e~3_combout\,
	dataf => \data|ALT_INV_e~1_combout\,
	combout => \data|c|out[0]~1_combout\);

-- Location: FF_X43_Y11_N32
\data|c|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|c|out~0_combout\,
	sload => VCC,
	ena => \data|c|out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|c|out\(0));

-- Location: LABCELL_X43_Y11_N27
\data|c|out~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|out~4_combout\ = ( \data|c|out\(1) & ( (!\SW[7]~input_o\ & (!\data|c|out\(3) $ (((!\data|c|out\(0)) # (!\data|c|out\(2)))))) ) ) # ( !\data|c|out\(1) & ( (\data|c|out\(3) & (!\SW[7]~input_o\ & ((!\data|c|out\(0)) # (\data|c|out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010000010000000101000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(3),
	datab => \data|c|ALT_INV_out\(0),
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \data|c|ALT_INV_out\(2),
	dataf => \data|c|ALT_INV_out\(1),
	combout => \data|c|out~4_combout\);

-- Location: FF_X43_Y11_N35
\data|c|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|c|out~4_combout\,
	sload => VCC,
	ena => \data|c|out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|c|out\(3));

-- Location: LABCELL_X43_Y11_N30
\data|c|out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|out~2_combout\ = ( !\SW[7]~input_o\ & ( (!\data|c|out\(1) & (\data|c|out\(0) & ((!\data|c|out\(3)) # (\data|c|out\(2))))) # (\data|c|out\(1) & (((!\data|c|out\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000100001100111100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(2),
	datab => \data|c|ALT_INV_out\(1),
	datac => \data|c|ALT_INV_out\(3),
	datad => \data|c|ALT_INV_out\(0),
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \data|c|out~2_combout\);

-- Location: FF_X43_Y11_N26
\data|c|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|c|out~2_combout\,
	sload => VCC,
	ena => \data|c|out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|c|out\(1));

-- Location: LABCELL_X43_Y11_N51
\data|c|out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|out~3_combout\ = ( \data|c|out\(1) & ( (!\SW[7]~input_o\ & (!\data|c|out\(0) $ (!\data|c|out\(2)))) ) ) # ( !\data|c|out\(1) & ( (!\SW[7]~input_o\ & \data|c|out\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010101000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \data|c|ALT_INV_out\(0),
	datad => \data|c|ALT_INV_out\(2),
	dataf => \data|c|ALT_INV_out\(1),
	combout => \data|c|out~3_combout\);

-- Location: FF_X43_Y11_N29
\data|c|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|c|out~3_combout\,
	sload => VCC,
	ena => \data|c|out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|c|out\(2));

-- Location: LABCELL_X43_Y10_N57
\data|i7|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr6~0_combout\ = ( \data|c|out\(3) & ( \data|c|out\(1) ) ) # ( !\data|c|out\(3) & ( \data|c|out\(1) & ( (!\data|c|out\(0)) # (!\data|c|out\(2)) ) ) ) # ( \data|c|out\(3) & ( !\data|c|out\(1) & ( (!\data|c|out\(2)) # (\data|c|out\(0)) ) ) ) # 
-- ( !\data|c|out\(3) & ( !\data|c|out\(1) & ( \data|c|out\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110101010111111111101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(0),
	datad => \data|c|ALT_INV_out\(2),
	datae => \data|c|ALT_INV_out\(3),
	dataf => \data|c|ALT_INV_out\(1),
	combout => \data|i7|WideOr6~0_combout\);

-- Location: LABCELL_X43_Y12_N15
\data|i7|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr5~0_combout\ = ( \data|c|out\(0) & ( \data|c|out\(3) & ( (!\data|c|out\(1) & \data|c|out\(2)) ) ) ) # ( \data|c|out\(0) & ( !\data|c|out\(3) & ( (!\data|c|out\(2)) # (\data|c|out\(1)) ) ) ) # ( !\data|c|out\(0) & ( !\data|c|out\(3) & ( 
-- (\data|c|out\(1) & !\data|c|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111101011111010100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(1),
	datac => \data|c|ALT_INV_out\(2),
	datae => \data|c|ALT_INV_out\(0),
	dataf => \data|c|ALT_INV_out\(3),
	combout => \data|i7|WideOr5~0_combout\);

-- Location: LABCELL_X43_Y12_N57
\data|i7|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr4~0_combout\ = ( \data|c|out\(0) & ( \data|c|out\(3) & ( (!\data|c|out\(1) & !\data|c|out\(2)) ) ) ) # ( \data|c|out\(0) & ( !\data|c|out\(3) ) ) # ( !\data|c|out\(0) & ( !\data|c|out\(3) & ( (!\data|c|out\(1) & \data|c|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111111111111111100000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(1),
	datac => \data|c|ALT_INV_out\(2),
	datae => \data|c|ALT_INV_out\(0),
	dataf => \data|c|ALT_INV_out\(3),
	combout => \data|i7|WideOr4~0_combout\);

-- Location: LABCELL_X43_Y12_N0
\data|i7|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr3~0_combout\ = ( \data|c|out\(2) & ( \data|c|out\(3) & ( (\data|c|out\(0) & \data|c|out\(1)) ) ) ) # ( !\data|c|out\(2) & ( \data|c|out\(3) & ( (!\data|c|out\(0) & \data|c|out\(1)) ) ) ) # ( \data|c|out\(2) & ( !\data|c|out\(3) & ( 
-- !\data|c|out\(0) $ (\data|c|out\(1)) ) ) ) # ( !\data|c|out\(2) & ( !\data|c|out\(3) & ( (\data|c|out\(0) & !\data|c|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000111100001100001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|c|ALT_INV_out\(0),
	datac => \data|c|ALT_INV_out\(1),
	datae => \data|c|ALT_INV_out\(2),
	dataf => \data|c|ALT_INV_out\(3),
	combout => \data|i7|WideOr3~0_combout\);

-- Location: LABCELL_X43_Y11_N33
\data|i7|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr2~0_combout\ = (!\data|c|out\(2) & (\data|c|out\(1) & (!\data|c|out\(0) & !\data|c|out\(3)))) # (\data|c|out\(2) & (\data|c|out\(3) & ((!\data|c|out\(0)) # (\data|c|out\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001010001001000000101000100100000010100010010000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(2),
	datab => \data|c|ALT_INV_out\(1),
	datac => \data|c|ALT_INV_out\(0),
	datad => \data|c|ALT_INV_out\(3),
	combout => \data|i7|WideOr2~0_combout\);

-- Location: LABCELL_X43_Y12_N33
\data|i7|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr1~0_combout\ = ( \data|c|out\(0) & ( \data|c|out\(3) & ( \data|c|out\(1) ) ) ) # ( !\data|c|out\(0) & ( \data|c|out\(3) & ( \data|c|out\(2) ) ) ) # ( \data|c|out\(0) & ( !\data|c|out\(3) & ( (!\data|c|out\(1) & \data|c|out\(2)) ) ) ) # ( 
-- !\data|c|out\(0) & ( !\data|c|out\(3) & ( (\data|c|out\(1) & \data|c|out\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_out\(1),
	datac => \data|c|ALT_INV_out\(2),
	datae => \data|c|ALT_INV_out\(0),
	dataf => \data|c|ALT_INV_out\(3),
	combout => \data|i7|WideOr1~0_combout\);

-- Location: LABCELL_X43_Y12_N48
\data|i7|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i7|WideOr0~0_combout\ = ( \data|c|out\(2) & ( \data|c|out\(3) & ( (\data|c|out\(0) & !\data|c|out\(1)) ) ) ) # ( !\data|c|out\(2) & ( \data|c|out\(3) & ( (\data|c|out\(0) & \data|c|out\(1)) ) ) ) # ( \data|c|out\(2) & ( !\data|c|out\(3) & ( 
-- (!\data|c|out\(0) & !\data|c|out\(1)) ) ) ) # ( !\data|c|out\(2) & ( !\data|c|out\(3) & ( (\data|c|out\(0) & !\data|c|out\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110000001100000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|c|ALT_INV_out\(0),
	datac => \data|c|ALT_INV_out\(1),
	datae => \data|c|ALT_INV_out\(2),
	dataf => \data|c|ALT_INV_out\(3),
	combout => \data|i7|WideOr0~0_combout\);

-- Location: LABCELL_X43_Y11_N24
\data|c|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|Equal0~0_combout\ = ( \data|c|out\(3) & ( (\data|c|out\(0) & (!\data|c|out\(2) & !\data|c|out\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|c|ALT_INV_out\(0),
	datac => \data|c|ALT_INV_out\(2),
	datad => \data|c|ALT_INV_out\(1),
	dataf => \data|c|ALT_INV_out\(3),
	combout => \data|c|Equal0~0_combout\);

-- Location: LABCELL_X42_Y11_N30
\data|e~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|e~2_combout\ = ( \data|e~3_combout\ & ( (\AA|current.exhibit~q\ & (\AA|last_data_received\(5) & !\BB|Decoder0~2_combout\)) ) ) # ( !\data|e~3_combout\ & ( !\BB|Decoder0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_current.exhibit~q\,
	datac => \AA|ALT_INV_last_data_received\(5),
	datad => \BB|ALT_INV_Decoder0~2_combout\,
	dataf => \data|ALT_INV_e~3_combout\,
	combout => \data|e~2_combout\);

-- Location: LABCELL_X43_Y11_N42
\data|c|outsignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|c|outsignal~0_combout\ = ( \data|c|outsignal~q\ & ( ((!\data|e~1_combout\) # ((\SW[7]~input_o\) # (\data|e~2_combout\))) # (\data|c|Equal0~0_combout\) ) ) # ( !\data|c|outsignal~q\ & ( ((\data|c|Equal0~0_combout\ & (\data|e~1_combout\ & 
-- !\data|e~2_combout\))) # (\SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100001111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data|c|ALT_INV_Equal0~0_combout\,
	datab => \data|ALT_INV_e~1_combout\,
	datac => \data|ALT_INV_e~2_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \data|c|ALT_INV_outsignal~q\,
	combout => \data|c|outsignal~0_combout\);

-- Location: FF_X43_Y11_N38
\data|c|outsignal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|adjust1|Equal0~combout\,
	asdata => \data|c|outsignal~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|c|outsignal~q\);

-- Location: LABCELL_X48_Y11_N30
\data|y|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|y|Q~0_combout\ = ( !\data|y|Q\(0) & ( !\SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \data|y|ALT_INV_Q\(0),
	combout => \data|y|Q~0_combout\);

-- Location: LABCELL_X48_Y11_N36
\data|y|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|y|Q[0]~feeder_combout\ = ( \data|y|Q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \data|y|ALT_INV_Q~0_combout\,
	combout => \data|y|Q[0]~feeder_combout\);

-- Location: FF_X48_Y11_N38
\data|y|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|c|outsignal~q\,
	d => \data|y|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|y|Q\(0));

-- Location: LABCELL_X48_Y11_N27
\data|y|Q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|y|Q~1_combout\ = ( !\data|y|Q\(0) & ( \data|y|Q\(1) & ( !\SW[7]~input_o\ ) ) ) # ( \data|y|Q\(0) & ( !\data|y|Q\(1) & ( !\SW[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datae => \data|y|ALT_INV_Q\(0),
	dataf => \data|y|ALT_INV_Q\(1),
	combout => \data|y|Q~1_combout\);

-- Location: FF_X48_Y11_N53
\data|y|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|c|outsignal~q\,
	asdata => \data|y|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|y|Q\(1));

-- Location: LABCELL_X48_Y11_N57
\data|y|Q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|y|Q~2_combout\ = ( \data|y|Q\(0) & ( \data|y|Q\(1) & ( (!\SW[7]~input_o\ & !\data|y|Q\(2)) ) ) ) # ( !\data|y|Q\(0) & ( \data|y|Q\(1) & ( (!\SW[7]~input_o\ & \data|y|Q\(2)) ) ) ) # ( \data|y|Q\(0) & ( !\data|y|Q\(1) & ( (!\SW[7]~input_o\ & 
-- \data|y|Q\(2)) ) ) ) # ( !\data|y|Q\(0) & ( !\data|y|Q\(1) & ( (!\SW[7]~input_o\ & \data|y|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datad => \data|y|ALT_INV_Q\(2),
	datae => \data|y|ALT_INV_Q\(0),
	dataf => \data|y|ALT_INV_Q\(1),
	combout => \data|y|Q~2_combout\);

-- Location: FF_X48_Y11_N23
\data|y|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|c|outsignal~q\,
	asdata => \data|y|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|y|Q\(2));

-- Location: LABCELL_X48_Y11_N12
\data|y|Q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|y|Q~3_combout\ = ( \data|y|Q\(2) & ( \data|y|Q\(0) & ( (!\SW[7]~input_o\ & (!\data|y|Q\(1) $ (!\data|y|Q\(3)))) ) ) ) # ( !\data|y|Q\(2) & ( \data|y|Q\(0) & ( (!\SW[7]~input_o\ & \data|y|Q\(3)) ) ) ) # ( \data|y|Q\(2) & ( !\data|y|Q\(0) & ( 
-- (!\SW[7]~input_o\ & \data|y|Q\(3)) ) ) ) # ( !\data|y|Q\(2) & ( !\data|y|Q\(0) & ( (!\SW[7]~input_o\ & \data|y|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \data|y|ALT_INV_Q\(1),
	datad => \data|y|ALT_INV_Q\(3),
	datae => \data|y|ALT_INV_Q\(2),
	dataf => \data|y|ALT_INV_Q\(0),
	combout => \data|y|Q~3_combout\);

-- Location: LABCELL_X48_Y11_N42
\data|y|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|y|Q[3]~feeder_combout\ = ( \data|y|Q~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \data|y|ALT_INV_Q~3_combout\,
	combout => \data|y|Q[3]~feeder_combout\);

-- Location: FF_X48_Y11_N44
\data|y|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data|c|outsignal~q\,
	d => \data|y|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data|y|Q\(3));

-- Location: LABCELL_X57_Y11_N24
\data|i8|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr6~0_combout\ = ( \data|y|Q\(0) & ( \data|y|Q\(3) ) ) # ( !\data|y|Q\(0) & ( \data|y|Q\(3) & ( (!\data|y|Q\(2)) # (\data|y|Q\(1)) ) ) ) # ( \data|y|Q\(0) & ( !\data|y|Q\(3) & ( !\data|y|Q\(1) $ (!\data|y|Q\(2)) ) ) ) # ( !\data|y|Q\(0) & ( 
-- !\data|y|Q\(3) & ( (\data|y|Q\(2)) # (\data|y|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(1),
	datac => \data|y|ALT_INV_Q\(2),
	datae => \data|y|ALT_INV_Q\(0),
	dataf => \data|y|ALT_INV_Q\(3),
	combout => \data|i8|WideOr6~0_combout\);

-- Location: LABCELL_X57_Y11_N57
\data|i8|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr5~0_combout\ = ( \data|y|Q\(2) & ( (\data|y|Q\(0) & (!\data|y|Q\(1) $ (!\data|y|Q\(3)))) ) ) # ( !\data|y|Q\(2) & ( (!\data|y|Q\(3) & ((\data|y|Q\(1)) # (\data|y|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000000000110011000000111111000000000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(0),
	datac => \data|y|ALT_INV_Q\(1),
	datad => \data|y|ALT_INV_Q\(3),
	datae => \data|y|ALT_INV_Q\(2),
	combout => \data|i8|WideOr5~0_combout\);

-- Location: LABCELL_X57_Y11_N36
\data|i8|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr4~0_combout\ = ( \data|y|Q\(0) & ( \data|y|Q\(3) & ( (!\data|y|Q\(1) & !\data|y|Q\(2)) ) ) ) # ( \data|y|Q\(0) & ( !\data|y|Q\(3) ) ) # ( !\data|y|Q\(0) & ( !\data|y|Q\(3) & ( (!\data|y|Q\(1) & \data|y|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(1),
	datac => \data|y|ALT_INV_Q\(2),
	datae => \data|y|ALT_INV_Q\(0),
	dataf => \data|y|ALT_INV_Q\(3),
	combout => \data|i8|WideOr4~0_combout\);

-- Location: LABCELL_X57_Y11_N33
\data|i8|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr3~0_combout\ = ( \data|y|Q\(2) & ( (!\data|y|Q\(0) & (!\data|y|Q\(1) & !\data|y|Q\(3))) # (\data|y|Q\(0) & (\data|y|Q\(1))) ) ) # ( !\data|y|Q\(2) & ( (!\data|y|Q\(0) & (\data|y|Q\(1) & \data|y|Q\(3))) # (\data|y|Q\(0) & (!\data|y|Q\(1) & 
-- !\data|y|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100110000110000001100110000000011001100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(0),
	datac => \data|y|ALT_INV_Q\(1),
	datad => \data|y|ALT_INV_Q\(3),
	datae => \data|y|ALT_INV_Q\(2),
	combout => \data|i8|WideOr3~0_combout\);

-- Location: LABCELL_X57_Y11_N12
\data|i8|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr2~0_combout\ = ( \data|y|Q\(0) & ( \data|y|Q\(3) & ( (\data|y|Q\(1) & \data|y|Q\(2)) ) ) ) # ( !\data|y|Q\(0) & ( \data|y|Q\(3) & ( \data|y|Q\(2) ) ) ) # ( !\data|y|Q\(0) & ( !\data|y|Q\(3) & ( (\data|y|Q\(1) & !\data|y|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(1),
	datac => \data|y|ALT_INV_Q\(2),
	datae => \data|y|ALT_INV_Q\(0),
	dataf => \data|y|ALT_INV_Q\(3),
	combout => \data|i8|WideOr2~0_combout\);

-- Location: LABCELL_X57_Y11_N45
\data|i8|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr1~0_combout\ = ( \data|y|Q\(2) & ( (!\data|y|Q\(0) & ((\data|y|Q\(3)) # (\data|y|Q\(1)))) # (\data|y|Q\(0) & (!\data|y|Q\(1) $ (\data|y|Q\(3)))) ) ) # ( !\data|y|Q\(2) & ( (\data|y|Q\(0) & (\data|y|Q\(1) & \data|y|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001111001100111100000000000000110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(0),
	datac => \data|y|ALT_INV_Q\(1),
	datad => \data|y|ALT_INV_Q\(3),
	datae => \data|y|ALT_INV_Q\(2),
	combout => \data|i8|WideOr1~0_combout\);

-- Location: LABCELL_X57_Y11_N48
\data|i8|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data|i8|WideOr0~0_combout\ = ( \data|y|Q\(0) & ( \data|y|Q\(3) & ( !\data|y|Q\(1) $ (!\data|y|Q\(2)) ) ) ) # ( \data|y|Q\(0) & ( !\data|y|Q\(3) & ( (!\data|y|Q\(1) & !\data|y|Q\(2)) ) ) ) # ( !\data|y|Q\(0) & ( !\data|y|Q\(3) & ( (!\data|y|Q\(1) & 
-- \data|y|Q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \data|y|ALT_INV_Q\(1),
	datac => \data|y|ALT_INV_Q\(2),
	datae => \data|y|ALT_INV_Q\(0),
	dataf => \data|y|ALT_INV_Q\(3),
	combout => \data|i8|WideOr0~0_combout\);

-- Location: LABCELL_X43_Y10_N51
\AA|one|HEX2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[0]~0_combout\ = ( \AA|last_data_received\(2) & ( (!\AA|last_data_received\(1) & (!\AA|last_data_received\(3) $ (\AA|last_data_received\(0)))) ) ) # ( !\AA|last_data_received\(2) & ( (\AA|last_data_received\(0) & (!\AA|last_data_received\(3) $ 
-- (\AA|last_data_received\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101101000000101000000000000101001011010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(3),
	datac => \AA|ALT_INV_last_data_received\(1),
	datad => \AA|ALT_INV_last_data_received\(0),
	datae => \AA|ALT_INV_last_data_received\(2),
	combout => \AA|one|HEX2[0]~0_combout\);

-- Location: LABCELL_X43_Y11_N3
\AA|one|HEX2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[1]~1_combout\ = ( \AA|last_data_received\(3) & ( (!\AA|last_data_received\(0) & (\AA|last_data_received\(2))) # (\AA|last_data_received\(0) & ((\AA|last_data_received\(1)))) ) ) # ( !\AA|last_data_received\(3) & ( (\AA|last_data_received\(2) 
-- & (!\AA|last_data_received\(0) $ (!\AA|last_data_received\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(0),
	datac => \AA|ALT_INV_last_data_received\(2),
	datad => \AA|ALT_INV_last_data_received\(1),
	dataf => \AA|ALT_INV_last_data_received\(3),
	combout => \AA|one|HEX2[1]~1_combout\);

-- Location: LABCELL_X42_Y11_N9
\AA|one|HEX2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[2]~2_combout\ = ( \AA|last_data_received\(0) & ( (\AA|last_data_received\(1) & (\AA|last_data_received\(3) & \AA|last_data_received\(2))) ) ) # ( !\AA|last_data_received\(0) & ( (!\AA|last_data_received\(3) & (\AA|last_data_received\(1) & 
-- !\AA|last_data_received\(2))) # (\AA|last_data_received\(3) & ((\AA|last_data_received\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(1),
	datac => \AA|ALT_INV_last_data_received\(3),
	datad => \AA|ALT_INV_last_data_received\(2),
	dataf => \AA|ALT_INV_last_data_received\(0),
	combout => \AA|one|HEX2[2]~2_combout\);

-- Location: LABCELL_X42_Y11_N33
\AA|one|HEX2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[3]~3_combout\ = ( \AA|last_data_received\(0) & ( !\AA|last_data_received\(2) $ (\AA|last_data_received\(1)) ) ) # ( !\AA|last_data_received\(0) & ( (!\AA|last_data_received\(2) & (\AA|last_data_received\(3) & \AA|last_data_received\(1))) # 
-- (\AA|last_data_received\(2) & (!\AA|last_data_received\(3) & !\AA|last_data_received\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(2),
	datac => \AA|ALT_INV_last_data_received\(3),
	datad => \AA|ALT_INV_last_data_received\(1),
	dataf => \AA|ALT_INV_last_data_received\(0),
	combout => \AA|one|HEX2[3]~3_combout\);

-- Location: LABCELL_X42_Y10_N39
\AA|one|HEX2[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[4]~4_combout\ = (!\AA|last_data_received\(1) & ((!\AA|last_data_received\(2) & ((\AA|last_data_received\(0)))) # (\AA|last_data_received\(2) & (!\AA|last_data_received\(3))))) # (\AA|last_data_received\(1) & (((!\AA|last_data_received\(3) & 
-- \AA|last_data_received\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111000010000001111100001000000111110000100000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(2),
	datab => \AA|ALT_INV_last_data_received\(1),
	datac => \AA|ALT_INV_last_data_received\(3),
	datad => \AA|ALT_INV_last_data_received\(0),
	combout => \AA|one|HEX2[4]~4_combout\);

-- Location: LABCELL_X43_Y10_N30
\AA|one|HEX2[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[5]~5_combout\ = ( \AA|last_data_received\(3) & ( (!\AA|last_data_received\(1) & (\AA|last_data_received\(0) & \AA|last_data_received\(2))) ) ) # ( !\AA|last_data_received\(3) & ( (!\AA|last_data_received\(1) & (\AA|last_data_received\(0) & 
-- !\AA|last_data_received\(2))) # (\AA|last_data_received\(1) & ((!\AA|last_data_received\(2)) # (\AA|last_data_received\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(1),
	datac => \AA|ALT_INV_last_data_received\(0),
	datad => \AA|ALT_INV_last_data_received\(2),
	dataf => \AA|ALT_INV_last_data_received\(3),
	combout => \AA|one|HEX2[5]~5_combout\);

-- Location: LABCELL_X40_Y11_N27
\AA|one|HEX2[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|one|HEX2[6]~6_combout\ = ( \AA|last_data_received\(2) & ( \AA|last_data_received\(1) & ( (!\AA|last_data_received\(3) & \AA|last_data_received\(0)) ) ) ) # ( \AA|last_data_received\(2) & ( !\AA|last_data_received\(1) & ( (\AA|last_data_received\(3) & 
-- !\AA|last_data_received\(0)) ) ) ) # ( !\AA|last_data_received\(2) & ( !\AA|last_data_received\(1) & ( !\AA|last_data_received\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010100000101000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(3),
	datac => \AA|ALT_INV_last_data_received\(0),
	datae => \AA|ALT_INV_last_data_received\(2),
	dataf => \AA|ALT_INV_last_data_received\(1),
	combout => \AA|one|HEX2[6]~6_combout\);

-- Location: LABCELL_X42_Y11_N51
\AA|two|HEX2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[0]~0_combout\ = ( \AA|last_data_received\(7) & ( (\AA|last_data_received\(4) & (!\AA|last_data_received\(6) $ (!\AA|last_data_received\(5)))) ) ) # ( !\AA|last_data_received\(7) & ( (!\AA|last_data_received\(5) & (!\AA|last_data_received\(6) 
-- $ (!\AA|last_data_received\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000000000000101101001010000101000000000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(6),
	datac => \AA|ALT_INV_last_data_received\(5),
	datad => \AA|ALT_INV_last_data_received\(4),
	datae => \AA|ALT_INV_last_data_received\(7),
	combout => \AA|two|HEX2[0]~0_combout\);

-- Location: LABCELL_X42_Y11_N42
\AA|two|HEX2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[1]~1_combout\ = ( \AA|last_data_received\(4) & ( (!\AA|last_data_received\(7) & (!\AA|last_data_received\(5) & \AA|last_data_received\(6))) # (\AA|last_data_received\(7) & (\AA|last_data_received\(5))) ) ) # ( !\AA|last_data_received\(4) & ( 
-- (\AA|last_data_received\(6) & ((\AA|last_data_received\(5)) # (\AA|last_data_received\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(7),
	datab => \AA|ALT_INV_last_data_received\(5),
	datac => \AA|ALT_INV_last_data_received\(6),
	dataf => \AA|ALT_INV_last_data_received\(4),
	combout => \AA|two|HEX2[1]~1_combout\);

-- Location: LABCELL_X43_Y10_N24
\AA|two|HEX2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[2]~2_combout\ = ( \AA|last_data_received\(7) & ( \AA|last_data_received\(6) & ( (!\AA|last_data_received\(4)) # (\AA|last_data_received\(5)) ) ) ) # ( !\AA|last_data_received\(7) & ( !\AA|last_data_received\(6) & ( 
-- (!\AA|last_data_received\(4) & \AA|last_data_received\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(4),
	datad => \AA|ALT_INV_last_data_received\(5),
	datae => \AA|ALT_INV_last_data_received\(7),
	dataf => \AA|ALT_INV_last_data_received\(6),
	combout => \AA|two|HEX2[2]~2_combout\);

-- Location: LABCELL_X43_Y10_N0
\AA|two|HEX2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[3]~3_combout\ = ( \AA|last_data_received\(6) & ( (!\AA|last_data_received\(5) & (!\AA|last_data_received\(7) & !\AA|last_data_received\(4))) # (\AA|last_data_received\(5) & ((\AA|last_data_received\(4)))) ) ) # ( !\AA|last_data_received\(6) & 
-- ( (!\AA|last_data_received\(5) & ((\AA|last_data_received\(4)))) # (\AA|last_data_received\(5) & (\AA|last_data_received\(7) & !\AA|last_data_received\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110000000000111111000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(7),
	datac => \AA|ALT_INV_last_data_received\(5),
	datad => \AA|ALT_INV_last_data_received\(4),
	dataf => \AA|ALT_INV_last_data_received\(6),
	combout => \AA|two|HEX2[3]~3_combout\);

-- Location: LABCELL_X42_Y11_N24
\AA|two|HEX2[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[4]~4_combout\ = ( \AA|last_data_received\(5) & ( (!\AA|last_data_received\(7) & \AA|last_data_received\(4)) ) ) # ( !\AA|last_data_received\(5) & ( (!\AA|last_data_received\(6) & ((\AA|last_data_received\(4)))) # (\AA|last_data_received\(6) & 
-- (!\AA|last_data_received\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(7),
	datac => \AA|ALT_INV_last_data_received\(6),
	datad => \AA|ALT_INV_last_data_received\(4),
	dataf => \AA|ALT_INV_last_data_received\(5),
	combout => \AA|two|HEX2[4]~4_combout\);

-- Location: LABCELL_X42_Y11_N57
\AA|two|HEX2[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[5]~5_combout\ = ( \AA|last_data_received\(7) & ( (\AA|last_data_received\(6) & (!\AA|last_data_received\(5) & \AA|last_data_received\(4))) ) ) # ( !\AA|last_data_received\(7) & ( (!\AA|last_data_received\(6) & ((\AA|last_data_received\(4)) # 
-- (\AA|last_data_received\(5)))) # (\AA|last_data_received\(6) & (\AA|last_data_received\(5) & \AA|last_data_received\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000000000101000000001010101011110000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AA|ALT_INV_last_data_received\(6),
	datac => \AA|ALT_INV_last_data_received\(5),
	datad => \AA|ALT_INV_last_data_received\(4),
	datae => \AA|ALT_INV_last_data_received\(7),
	combout => \AA|two|HEX2[5]~5_combout\);

-- Location: LABCELL_X43_Y10_N6
\AA|two|HEX2[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \AA|two|HEX2[6]~6_combout\ = ( \AA|last_data_received\(7) & ( \AA|last_data_received\(6) & ( (!\AA|last_data_received\(4) & !\AA|last_data_received\(5)) ) ) ) # ( !\AA|last_data_received\(7) & ( \AA|last_data_received\(6) & ( (\AA|last_data_received\(4) & 
-- \AA|last_data_received\(5)) ) ) ) # ( !\AA|last_data_received\(7) & ( !\AA|last_data_received\(6) & ( !\AA|last_data_received\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000011000000111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AA|ALT_INV_last_data_received\(4),
	datac => \AA|ALT_INV_last_data_received\(5),
	datae => \AA|ALT_INV_last_data_received\(7),
	dataf => \AA|ALT_INV_last_data_received\(6),
	combout => \AA|two|HEX2[6]~6_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;

