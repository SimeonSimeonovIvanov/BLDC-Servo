-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
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
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "09/25/2018 22:46:26"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	main IS
    PORT (
	sys_clk0 : IN std_logic;
	led1 : OUT std_logic;
	spi_slave_ss : IN std_logic;
	spi_slave_sck : IN std_logic;
	spi_slave_mosi : IN std_logic;
	spi_slave_miso : OUT std_logic;
	encoder1_a : IN std_logic;
	encoder1_b : IN std_logic;
	encoder1_z : IN std_logic;
	encoder1_u_in : IN std_logic;
	encoder1_v_in : IN std_logic;
	encoder1_w_in : IN std_logic;
	encoder1_u_out : OUT std_logic;
	encoder1_v_out : OUT std_logic;
	encoder1_w_out : OUT std_logic;
	encoder1_reset_in : IN std_logic;
	load_dacs : IN std_logic;
	dac0 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(9 DOWNTO 0);
	dac1 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(9 DOWNTO 0);
	dac2 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(9 DOWNTO 0)
	);
END main;

-- Design Ports Information


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_spi_slave_ss : std_logic;
SIGNAL ww_spi_slave_sck : std_logic;
SIGNAL ww_spi_slave_mosi : std_logic;
SIGNAL ww_spi_slave_miso : std_logic;
SIGNAL ww_encoder1_a : std_logic;
SIGNAL ww_encoder1_b : std_logic;
SIGNAL ww_encoder1_z : std_logic;
SIGNAL ww_encoder1_u_in : std_logic;
SIGNAL ww_encoder1_v_in : std_logic;
SIGNAL ww_encoder1_w_in : std_logic;
SIGNAL ww_encoder1_u_out : std_logic;
SIGNAL ww_encoder1_v_out : std_logic;
SIGNAL ww_encoder1_w_out : std_logic;
SIGNAL ww_encoder1_reset_in : std_logic;
SIGNAL ww_load_dacs : std_logic;
SIGNAL ww_dac0 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dac1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dac2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \IC2|LessThan1~5\ : std_logic;
SIGNAL \IC2|LessThan0~5\ : std_logic;
SIGNAL \IC2|LessThan1~10\ : std_logic;
SIGNAL \IC2|LessThan0~10\ : std_logic;
SIGNAL \IC2|LessThan1~15\ : std_logic;
SIGNAL \IC2|LessThan0~15\ : std_logic;
SIGNAL \IC2|LessThan1~20\ : std_logic;
SIGNAL \IC2|LessThan0~20\ : std_logic;
SIGNAL \IC2|LessThan1~25\ : std_logic;
SIGNAL \IC2|LessThan0~25\ : std_logic;
SIGNAL \spi_slave_ss~combout\ : std_logic;
SIGNAL \spi_slave_sck~combout\ : std_logic;
SIGNAL \spi_slave_mosi~combout\ : std_logic;
SIGNAL \IC2|Equal1~0\ : std_logic;
SIGNAL \IC2|Equal1~1\ : std_logic;
SIGNAL \IC2|Equal2~0\ : std_logic;
SIGNAL \IC2|rx_bit_counter[1]~3\ : std_logic;
SIGNAL \IC2|rx_bit_counter[1]~3COUT1_12\ : std_logic;
SIGNAL \IC2|rx_bit_counter[2]~1\ : std_logic;
SIGNAL \IC2|rx_bit_counter[2]~1COUT1_13\ : std_logic;
SIGNAL \IC2|rx_bit_counter[3]~5\ : std_logic;
SIGNAL \IC2|rx_bit_counter[3]~5COUT1_14\ : std_logic;
SIGNAL \IC2|rx_bit_counter[4]~7\ : std_logic;
SIGNAL \IC2|rx_bit_counter[4]~7COUT1_15\ : std_logic;
SIGNAL \IC2|LessThan0~27_cout0\ : std_logic;
SIGNAL \IC2|LessThan0~27COUT1_31\ : std_logic;
SIGNAL \IC2|LessThan0~22_cout0\ : std_logic;
SIGNAL \IC2|LessThan0~22COUT1_32\ : std_logic;
SIGNAL \IC2|LessThan0~17_cout0\ : std_logic;
SIGNAL \IC2|LessThan0~17COUT1_33\ : std_logic;
SIGNAL \IC2|LessThan0~12_cout\ : std_logic;
SIGNAL \IC2|LessThan0~7_cout0\ : std_logic;
SIGNAL \IC2|LessThan0~7COUT1_34\ : std_logic;
SIGNAL \IC2|LessThan0~0_combout\ : std_logic;
SIGNAL \IC2|Equal0~1_combout\ : std_logic;
SIGNAL \IC2|Equal0~2_combout\ : std_logic;
SIGNAL \IC2|Equal0~3_combout\ : std_logic;
SIGNAL \IC2|Equal1~2\ : std_logic;
SIGNAL \IC2|rx_bit_counter_up_value[0]~0_combout\ : std_logic;
SIGNAL \IC2|Equal0~0_combout\ : std_logic;
SIGNAL \IC2|rd_encoder~2_combout\ : std_logic;
SIGNAL \IC2|rd_encoder~combout\ : std_logic;
SIGNAL \IC2|Add2~27\ : std_logic;
SIGNAL \IC2|Add2~27COUT1_31\ : std_logic;
SIGNAL \IC2|Add2~22\ : std_logic;
SIGNAL \IC2|Add2~22COUT1_32\ : std_logic;
SIGNAL \IC2|Add2~17\ : std_logic;
SIGNAL \IC2|Add2~17COUT1_33\ : std_logic;
SIGNAL \IC2|Add2~12\ : std_logic;
SIGNAL \IC2|Add2~7\ : std_logic;
SIGNAL \IC2|Add2~7COUT1_34\ : std_logic;
SIGNAL \IC2|Add2~0_combout\ : std_logic;
SIGNAL \IC2|Add2~5_combout\ : std_logic;
SIGNAL \IC2|Add2~15_combout\ : std_logic;
SIGNAL \IC2|Add2~20_combout\ : std_logic;
SIGNAL \IC2|Add2~25_combout\ : std_logic;
SIGNAL \IC2|LessThan1~27_cout0\ : std_logic;
SIGNAL \IC2|LessThan1~27COUT1_31\ : std_logic;
SIGNAL \IC2|LessThan1~22_cout0\ : std_logic;
SIGNAL \IC2|LessThan1~22COUT1_32\ : std_logic;
SIGNAL \IC2|LessThan1~17_cout0\ : std_logic;
SIGNAL \IC2|LessThan1~17COUT1_33\ : std_logic;
SIGNAL \IC2|LessThan1~12_cout\ : std_logic;
SIGNAL \IC2|Add2~10_combout\ : std_logic;
SIGNAL \IC2|LessThan1~7_cout0\ : std_logic;
SIGNAL \IC2|LessThan1~7COUT1_34\ : std_logic;
SIGNAL \IC2|LessThan1~0_combout\ : std_logic;
SIGNAL \IC2|miso~0_combout\ : std_logic;
SIGNAL \sys_clk0~combout\ : std_logic;
SIGNAL \encoder1_a~combout\ : std_logic;
SIGNAL \encoder1_reset_in~combout\ : std_logic;
SIGNAL \IC1|Shifter:counter~regout\ : std_logic;
SIGNAL \IC1|shiftA[3]~0_combout\ : std_logic;
SIGNAL \IC1|voteA_d~regout\ : std_logic;
SIGNAL \encoder1_b~combout\ : std_logic;
SIGNAL \IC1|voteB_d~regout\ : std_logic;
SIGNAL \IC1|voteA~0\ : std_logic;
SIGNAL \IC1|voteB~0\ : std_logic;
SIGNAL \IC1|rotRight~regout\ : std_logic;
SIGNAL \IC1|rotLeft~regout\ : std_logic;
SIGNAL \IC1|counter[15]~64_combout\ : std_logic;
SIGNAL \IC1|counter[0]~15\ : std_logic;
SIGNAL \IC1|counter[1]~23\ : std_logic;
SIGNAL \IC1|counter[1]~23COUT1_66\ : std_logic;
SIGNAL \IC1|counter[2]~11\ : std_logic;
SIGNAL \IC1|counter[2]~11COUT1_67\ : std_logic;
SIGNAL \IC1|counter[3]~17\ : std_logic;
SIGNAL \IC1|counter[3]~17COUT1_68\ : std_logic;
SIGNAL \IC1|counter[4]~9\ : std_logic;
SIGNAL \IC1|counter[4]~9COUT1_69\ : std_logic;
SIGNAL \IC1|counter[5]~19\ : std_logic;
SIGNAL \IC1|counter[6]~13\ : std_logic;
SIGNAL \IC1|counter[6]~13COUT1_70\ : std_logic;
SIGNAL \IC1|counter[7]~21\ : std_logic;
SIGNAL \IC1|counter[7]~21COUT1_71\ : std_logic;
SIGNAL \IC1|counter[8]~31\ : std_logic;
SIGNAL \IC1|counter[8]~31COUT1_72\ : std_logic;
SIGNAL \IC1|counter[9]~7\ : std_logic;
SIGNAL \IC1|counter[9]~7COUT1_73\ : std_logic;
SIGNAL \IC1|counter[10]~27\ : std_logic;
SIGNAL \IC1|counter[11]~1\ : std_logic;
SIGNAL \IC1|counter[11]~1COUT1_74\ : std_logic;
SIGNAL \IC1|counter[12]~25\ : std_logic;
SIGNAL \IC1|counter[12]~25COUT1_75\ : std_logic;
SIGNAL \IC1|counter[13]~3\ : std_logic;
SIGNAL \IC1|counter[13]~3COUT1_76\ : std_logic;
SIGNAL \IC1|counter[14]~29\ : std_logic;
SIGNAL \IC1|counter[14]~29COUT1_77\ : std_logic;
SIGNAL \IC2|Mux0~0_combout\ : std_logic;
SIGNAL \IC2|Mux0~1_combout\ : std_logic;
SIGNAL \IC2|Mux0~7_combout\ : std_logic;
SIGNAL \IC2|Mux0~8_combout\ : std_logic;
SIGNAL \IC2|Mux0~2_combout\ : std_logic;
SIGNAL \IC2|Mux0~3_combout\ : std_logic;
SIGNAL \IC2|Mux0~4_combout\ : std_logic;
SIGNAL \IC2|Mux0~5_combout\ : std_logic;
SIGNAL \IC2|Mux0~6_combout\ : std_logic;
SIGNAL \IC2|Mux0~9_combout\ : std_logic;
SIGNAL \IC1|counter[15]~5\ : std_logic;
SIGNAL \IC1|counter[16]~59\ : std_logic;
SIGNAL \IC1|counter[16]~59COUT1_78\ : std_logic;
SIGNAL \IC1|counter[17]~61\ : std_logic;
SIGNAL \IC1|counter[17]~61COUT1_79\ : std_logic;
SIGNAL \IC1|counter[18]~43\ : std_logic;
SIGNAL \IC1|counter[18]~43COUT1_80\ : std_logic;
SIGNAL \IC1|counter[19]~45\ : std_logic;
SIGNAL \IC1|counter[19]~45COUT1_81\ : std_logic;
SIGNAL \IC1|counter[20]~33\ : std_logic;
SIGNAL \IC1|counter[21]~37\ : std_logic;
SIGNAL \IC1|counter[21]~37COUT1_82\ : std_logic;
SIGNAL \IC1|counter[22]~49\ : std_logic;
SIGNAL \IC1|counter[22]~49COUT1_83\ : std_logic;
SIGNAL \IC1|counter[23]~53\ : std_logic;
SIGNAL \IC1|counter[23]~53COUT1_84\ : std_logic;
SIGNAL \IC1|counter[24]~63\ : std_logic;
SIGNAL \IC1|counter[24]~63COUT1_85\ : std_logic;
SIGNAL \IC1|counter[25]~57\ : std_logic;
SIGNAL \IC1|counter[26]~47\ : std_logic;
SIGNAL \IC1|counter[26]~47COUT1_86\ : std_logic;
SIGNAL \IC1|counter[27]~41\ : std_logic;
SIGNAL \IC1|counter[27]~41COUT1_87\ : std_logic;
SIGNAL \IC1|counter[28]~39\ : std_logic;
SIGNAL \IC1|counter[28]~39COUT1_88\ : std_logic;
SIGNAL \IC2|Mux0~10_combout\ : std_logic;
SIGNAL \IC2|Mux0~11_combout\ : std_logic;
SIGNAL \IC2|Mux0~17_combout\ : std_logic;
SIGNAL \IC2|Mux0~18_combout\ : std_logic;
SIGNAL \IC2|Mux0~12_combout\ : std_logic;
SIGNAL \IC2|Mux0~13_combout\ : std_logic;
SIGNAL \IC1|counter[29]~35\ : std_logic;
SIGNAL \IC1|counter[29]~35COUT1_89\ : std_logic;
SIGNAL \IC1|counter[30]~55\ : std_logic;
SIGNAL \IC2|Mux0~14_combout\ : std_logic;
SIGNAL \IC2|Mux0~15_combout\ : std_logic;
SIGNAL \IC2|Mux0~16_combout\ : std_logic;
SIGNAL \IC2|Mux0~19_combout\ : std_logic;
SIGNAL \IC2|Mux0~20_combout\ : std_logic;
SIGNAL \IC2|miso$latch~combout\ : std_logic;
SIGNAL \IC2|miso_587~combout\ : std_logic;
SIGNAL \encoder1_u_in~combout\ : std_logic;
SIGNAL \encoder1_v_in~combout\ : std_logic;
SIGNAL \encoder1_w_in~combout\ : std_logic;
SIGNAL \load_dacs~combout\ : std_logic;
SIGNAL \IC2|reg_dacs[15]~2_combout\ : std_logic;
SIGNAL \IC2|wr_dacs~2_combout\ : std_logic;
SIGNAL \IC2|wr_dacs~combout\ : std_logic;
SIGNAL \IC2|reg_dacs[32]~4_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[39]~56_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[7]~reg0_regout\ : std_logic;
SIGNAL \dac0[0]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[38]~3_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[38]~6_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[6]~reg0_regout\ : std_logic;
SIGNAL \dac0[1]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[4]~9_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[1]~8_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[5]~reg0_regout\ : std_logic;
SIGNAL \dac0[2]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[32]~11_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[4]~reg0_regout\ : std_logic;
SIGNAL \dac0[3]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[35]~13_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[3]~reg0_regout\ : std_logic;
SIGNAL \dac0[4]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[34]~15_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[0]~16_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[2]~reg0_regout\ : std_logic;
SIGNAL \dac0[5]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[1]~reg0_regout\ : std_logic;
SIGNAL \dac0[6]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[0]~reg0_regout\ : std_logic;
SIGNAL \dac0[7]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[46]~20_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[46]~21_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[15]~reg0_regout\ : std_logic;
SIGNAL \dac0[8]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[46]~23_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[14]~reg0_regout\ : std_logic;
SIGNAL \dac0[9]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[19]~25_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[23]~reg0_regout\ : std_logic;
SIGNAL \dac1[0]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[16]~27_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[22]~reg0_regout\ : std_logic;
SIGNAL \dac1[1]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[17]~29_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[21]~reg0_regout\ : std_logic;
SIGNAL \dac1[2]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[16]~31_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[20]~reg0_regout\ : std_logic;
SIGNAL \dac1[3]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[18]~33_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[19]~reg0_regout\ : std_logic;
SIGNAL \dac1[4]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[18]~reg0_regout\ : std_logic;
SIGNAL \dac1[5]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[17]~reg0_regout\ : std_logic;
SIGNAL \dac1[6]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[16]~reg0_regout\ : std_logic;
SIGNAL \dac1[7]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[47]~38_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[31]~39_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[31]~reg0_regout\ : std_logic;
SIGNAL \dac1[8]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[30]~41_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[30]~reg0_regout\ : std_logic;
SIGNAL \dac1[9]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[39]~reg0_regout\ : std_logic;
SIGNAL \dac2[0]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[38]~reg0_regout\ : std_logic;
SIGNAL \dac2[1]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[33]~45_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[37]~reg0_regout\ : std_logic;
SIGNAL \dac2[2]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[32]~47_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[36]~reg0_regout\ : std_logic;
SIGNAL \dac2[3]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[35]~reg0_regout\ : std_logic;
SIGNAL \dac2[4]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[34]~50_combout\ : std_logic;
SIGNAL \IC2|reg_dacs[34]~reg0_regout\ : std_logic;
SIGNAL \dac2[5]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[33]~reg0_regout\ : std_logic;
SIGNAL \dac2[6]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[32]~reg0_regout\ : std_logic;
SIGNAL \dac2[7]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[47]~reg0_regout\ : std_logic;
SIGNAL \dac2[8]~reg0_regout\ : std_logic;
SIGNAL \IC2|reg_dacs[46]~reg0_regout\ : std_logic;
SIGNAL \dac2[9]~reg0_regout\ : std_logic;
SIGNAL \IC1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \IC1|shiftA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IC2|rx_bit_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \IC2|rx_buf\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \IC2|rx_bit_counter_up_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \IC1|shiftB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_encoder1_w_in~combout\ : std_logic;
SIGNAL \ALT_INV_encoder1_v_in~combout\ : std_logic;
SIGNAL \ALT_INV_encoder1_u_in~combout\ : std_logic;

BEGIN

ww_sys_clk0 <= sys_clk0;
led1 <= ww_led1;
ww_spi_slave_ss <= spi_slave_ss;
ww_spi_slave_sck <= spi_slave_sck;
ww_spi_slave_mosi <= spi_slave_mosi;
spi_slave_miso <= ww_spi_slave_miso;
ww_encoder1_a <= encoder1_a;
ww_encoder1_b <= encoder1_b;
ww_encoder1_z <= encoder1_z;
ww_encoder1_u_in <= encoder1_u_in;
ww_encoder1_v_in <= encoder1_v_in;
ww_encoder1_w_in <= encoder1_w_in;
encoder1_u_out <= ww_encoder1_u_out;
encoder1_v_out <= ww_encoder1_v_out;
encoder1_w_out <= ww_encoder1_w_out;
ww_encoder1_reset_in <= encoder1_reset_in;
ww_load_dacs <= load_dacs;
dac0 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_dac0);
dac1 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_dac1);
dac2 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_dac2);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_encoder1_w_in~combout\ <= NOT \encoder1_w_in~combout\;
\ALT_INV_encoder1_v_in~combout\ <= NOT \encoder1_v_in~combout\;
\ALT_INV_encoder1_u_in~combout\ <= NOT \encoder1_u_in~combout\;

-- Location: PIN_3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\spi_slave_ss~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_spi_slave_ss,
	combout => \spi_slave_ss~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\spi_slave_sck~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_spi_slave_sck,
	combout => \spi_slave_sck~combout\);

-- Location: LC_X3_Y4_N3
\IC2|rx_buf[6]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_buf\(6) = DFFEAS(GND, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \IC2|rx_buf\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datac => \IC2|rx_buf\(5),
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_buf\(6));

-- Location: LC_X3_Y4_N9
\IC2|rx_buf[3]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_buf\(3) = DFFEAS(GND, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \IC2|rx_buf\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datac => \IC2|rx_buf\(2),
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_buf\(3));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\spi_slave_mosi~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_spi_slave_mosi,
	combout => \spi_slave_mosi~combout\);

-- Location: LC_X3_Y4_N8
\IC2|rx_buf[0]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_buf\(0) = DFFEAS(GND, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \spi_slave_mosi~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datac => \spi_slave_mosi~combout\,
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_buf\(0));

-- Location: LC_X3_Y4_N0
\IC2|rx_buf[7]\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal1~0\ = (((C1_rx_buf[7] & \IC2|rx_buf\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datac => \IC2|rx_buf\(6),
	datad => \IC2|rx_buf\(0),
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal1~0\,
	regout => \IC2|rx_buf\(7));

-- Location: LC_X3_Y4_N1
\IC2|rx_buf[1]\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal1~1\ = (\IC2|rx_buf\(6) & (!\IC2|rx_buf\(3) & (C1_rx_buf[1] & \IC2|Equal1~0\)))
-- \IC2|rx_buf\(1) = DFFEAS(\IC2|Equal1~1\, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \IC2|rx_buf\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_buf\(6),
	datab => \IC2|rx_buf\(3),
	datac => \IC2|rx_buf\(0),
	datad => \IC2|Equal1~0\,
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal1~1\,
	regout => \IC2|rx_buf\(1));

-- Location: LC_X3_Y4_N7
\IC2|rx_buf[2]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_buf\(2) = DFFEAS(GND, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \IC2|rx_buf\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datac => \IC2|rx_buf\(1),
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_buf\(2));

-- Location: LC_X3_Y4_N2
\IC2|rx_buf[4]\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal2~0\ = (!\IC2|rx_buf\(5) & (!\IC2|rx_buf\(2) & (C1_rx_buf[4] & \IC2|Equal1~1\)))
-- \IC2|rx_buf\(4) = DFFEAS(\IC2|Equal2~0\, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \IC2|rx_buf\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_buf\(5),
	datab => \IC2|rx_buf\(2),
	datac => \IC2|rx_buf\(3),
	datad => \IC2|Equal1~1\,
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal2~0\,
	regout => \IC2|rx_buf\(4));

-- Location: LC_X3_Y4_N5
\IC2|rx_buf[5]\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal1~2\ = (!\IC2|rx_buf\(4) & (\IC2|rx_buf\(2) & (C1_rx_buf[5] & \IC2|Equal1~1\)))
-- \IC2|rx_buf\(5) = DFFEAS(\IC2|Equal1~2\, GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , \IC2|rx_buf\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_buf\(4),
	datab => \IC2|rx_buf\(2),
	datac => \IC2|rx_buf\(4),
	datad => \IC2|Equal1~1\,
	aclr => \spi_slave_ss~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal1~2\,
	regout => \IC2|rx_buf\(5));

-- Location: LC_X4_Y4_N0
\IC2|rx_bit_counter_up_value[3]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value\(3) = ((\spi_slave_ss~combout\) # ((!\IC2|rx_bit_counter_up_value[0]~0_combout\ & \IC2|rx_bit_counter_up_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter_up_value[0]~0_combout\,
	datac => \IC2|rx_bit_counter_up_value\(3),
	datad => \spi_slave_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value\(3));

-- Location: LC_X4_Y2_N1
\IC2|rx_bit_counter_up_value[5]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value\(5) = ((!\spi_slave_ss~combout\ & ((\IC2|rx_bit_counter_up_value[0]~0_combout\) # (\IC2|rx_bit_counter_up_value\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter_up_value[0]~0_combout\,
	datac => \spi_slave_ss~combout\,
	datad => \IC2|rx_bit_counter_up_value\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value\(5));

-- Location: LC_X4_Y3_N0
\IC2|rx_bit_counter[0]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter\(0) = DFFEAS(((\IC2|LessThan0~0_combout\ $ (\IC2|rx_bit_counter\(0)))), GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datac => \IC2|LessThan0~0_combout\,
	datad => \IC2|rx_bit_counter\(0),
	aclr => \spi_slave_ss~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_bit_counter\(0));

-- Location: LC_X5_Y3_N5
\IC2|rx_bit_counter[1]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter\(1) = DFFEAS(\IC2|rx_bit_counter\(1) $ ((\IC2|rx_bit_counter\(0))), GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , \IC2|LessThan0~0_combout\, , , , )
-- \IC2|rx_bit_counter[1]~3\ = CARRY((\IC2|rx_bit_counter\(1) & (\IC2|rx_bit_counter\(0))))
-- \IC2|rx_bit_counter[1]~3COUT1_12\ = CARRY((\IC2|rx_bit_counter\(1) & (\IC2|rx_bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_bit_counter\(1),
	datab => \IC2|rx_bit_counter\(0),
	aclr => \spi_slave_ss~combout\,
	ena => \IC2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_bit_counter\(1),
	cout0 => \IC2|rx_bit_counter[1]~3\,
	cout1 => \IC2|rx_bit_counter[1]~3COUT1_12\);

-- Location: LC_X5_Y3_N6
\IC2|rx_bit_counter[2]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter\(2) = DFFEAS(\IC2|rx_bit_counter\(2) $ ((((\IC2|rx_bit_counter[1]~3\)))), GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , \IC2|LessThan0~0_combout\, , , , )
-- \IC2|rx_bit_counter[2]~1\ = CARRY(((!\IC2|rx_bit_counter[1]~3\)) # (!\IC2|rx_bit_counter\(2)))
-- \IC2|rx_bit_counter[2]~1COUT1_13\ = CARRY(((!\IC2|rx_bit_counter[1]~3COUT1_12\)) # (!\IC2|rx_bit_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_bit_counter\(2),
	aclr => \spi_slave_ss~combout\,
	ena => \IC2|LessThan0~0_combout\,
	cin0 => \IC2|rx_bit_counter[1]~3\,
	cin1 => \IC2|rx_bit_counter[1]~3COUT1_12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_bit_counter\(2),
	cout0 => \IC2|rx_bit_counter[2]~1\,
	cout1 => \IC2|rx_bit_counter[2]~1COUT1_13\);

-- Location: LC_X5_Y3_N7
\IC2|rx_bit_counter[3]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter\(3) = DFFEAS((\IC2|rx_bit_counter\(3) $ ((!\IC2|rx_bit_counter[2]~1\))), GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , \IC2|LessThan0~0_combout\, , , , )
-- \IC2|rx_bit_counter[3]~5\ = CARRY(((\IC2|rx_bit_counter\(3) & !\IC2|rx_bit_counter[2]~1\)))
-- \IC2|rx_bit_counter[3]~5COUT1_14\ = CARRY(((\IC2|rx_bit_counter\(3) & !\IC2|rx_bit_counter[2]~1COUT1_13\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datab => \IC2|rx_bit_counter\(3),
	aclr => \spi_slave_ss~combout\,
	ena => \IC2|LessThan0~0_combout\,
	cin0 => \IC2|rx_bit_counter[2]~1\,
	cin1 => \IC2|rx_bit_counter[2]~1COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_bit_counter\(3),
	cout0 => \IC2|rx_bit_counter[3]~5\,
	cout1 => \IC2|rx_bit_counter[3]~5COUT1_14\);

-- Location: LC_X5_Y3_N8
\IC2|rx_bit_counter[4]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter\(4) = DFFEAS(\IC2|rx_bit_counter\(4) $ ((((\IC2|rx_bit_counter[3]~5\)))), GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , \IC2|LessThan0~0_combout\, , , , )
-- \IC2|rx_bit_counter[4]~7\ = CARRY(((!\IC2|rx_bit_counter[3]~5\)) # (!\IC2|rx_bit_counter\(4)))
-- \IC2|rx_bit_counter[4]~7COUT1_15\ = CARRY(((!\IC2|rx_bit_counter[3]~5COUT1_14\)) # (!\IC2|rx_bit_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_bit_counter\(4),
	aclr => \spi_slave_ss~combout\,
	ena => \IC2|LessThan0~0_combout\,
	cin0 => \IC2|rx_bit_counter[3]~5\,
	cin1 => \IC2|rx_bit_counter[3]~5COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_bit_counter\(4),
	cout0 => \IC2|rx_bit_counter[4]~7\,
	cout1 => \IC2|rx_bit_counter[4]~7COUT1_15\);

-- Location: LC_X5_Y3_N9
\IC2|rx_bit_counter[5]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter\(5) = DFFEAS(((\IC2|rx_bit_counter[4]~7\ $ (!\IC2|rx_bit_counter\(5)))), GLOBAL(\spi_slave_sck~combout\), !GLOBAL(\spi_slave_ss~combout\), , \IC2|LessThan0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	datad => \IC2|rx_bit_counter\(5),
	aclr => \spi_slave_ss~combout\,
	ena => \IC2|LessThan0~0_combout\,
	cin0 => \IC2|rx_bit_counter[4]~7\,
	cin1 => \IC2|rx_bit_counter[4]~7COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|rx_bit_counter\(5));

-- Location: LC_X4_Y4_N8
\IC2|rx_bit_counter_up_value[2]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value\(2) = ((!\spi_slave_ss~combout\ & ((\IC2|rx_bit_counter_up_value[0]~0_combout\) # (\IC2|rx_bit_counter_up_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_ss~combout\,
	datac => \IC2|rx_bit_counter_up_value[0]~0_combout\,
	datad => \IC2|rx_bit_counter_up_value\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value\(2));

-- Location: LC_X4_Y2_N3
\IC2|rx_bit_counter_up_value[1]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value\(1) = ((!\spi_slave_ss~combout\ & ((\IC2|rx_bit_counter_up_value[0]~0_combout\) # (\IC2|rx_bit_counter_up_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_ss~combout\,
	datac => \IC2|rx_bit_counter_up_value[0]~0_combout\,
	datad => \IC2|rx_bit_counter_up_value\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value\(1));

-- Location: LC_X4_Y3_N1
\IC2|LessThan0~27\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan0~27_cout0\ = CARRY((\IC2|rx_bit_counter_up_value\(0) & (!\IC2|rx_bit_counter\(0))))
-- \IC2|LessThan0~27COUT1_31\ = CARRY((\IC2|rx_bit_counter_up_value\(0) & (!\IC2|rx_bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(0),
	datab => \IC2|rx_bit_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan0~25\,
	cout0 => \IC2|LessThan0~27_cout0\,
	cout1 => \IC2|LessThan0~27COUT1_31\);

-- Location: LC_X4_Y3_N2
\IC2|LessThan0~22\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan0~22_cout0\ = CARRY((\IC2|rx_bit_counter_up_value\(1) & (\IC2|rx_bit_counter\(1) & !\IC2|LessThan0~27_cout0\)) # (!\IC2|rx_bit_counter_up_value\(1) & ((\IC2|rx_bit_counter\(1)) # (!\IC2|LessThan0~27_cout0\))))
-- \IC2|LessThan0~22COUT1_32\ = CARRY((\IC2|rx_bit_counter_up_value\(1) & (\IC2|rx_bit_counter\(1) & !\IC2|LessThan0~27COUT1_31\)) # (!\IC2|rx_bit_counter_up_value\(1) & ((\IC2|rx_bit_counter\(1)) # (!\IC2|LessThan0~27COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(1),
	datab => \IC2|rx_bit_counter\(1),
	cin0 => \IC2|LessThan0~27_cout0\,
	cin1 => \IC2|LessThan0~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan0~20\,
	cout0 => \IC2|LessThan0~22_cout0\,
	cout1 => \IC2|LessThan0~22COUT1_32\);

-- Location: LC_X4_Y3_N3
\IC2|LessThan0~17\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan0~17_cout0\ = CARRY((\IC2|rx_bit_counter\(2) & (\IC2|rx_bit_counter_up_value\(2) & !\IC2|LessThan0~22_cout0\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|rx_bit_counter_up_value\(2)) # (!\IC2|LessThan0~22_cout0\))))
-- \IC2|LessThan0~17COUT1_33\ = CARRY((\IC2|rx_bit_counter\(2) & (\IC2|rx_bit_counter_up_value\(2) & !\IC2|LessThan0~22COUT1_32\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|rx_bit_counter_up_value\(2)) # (!\IC2|LessThan0~22COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(2),
	datab => \IC2|rx_bit_counter_up_value\(2),
	cin0 => \IC2|LessThan0~22_cout0\,
	cin1 => \IC2|LessThan0~22COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan0~15\,
	cout0 => \IC2|LessThan0~17_cout0\,
	cout1 => \IC2|LessThan0~17COUT1_33\);

-- Location: LC_X4_Y3_N4
\IC2|LessThan0~12\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan0~12_cout\ = CARRY((\IC2|rx_bit_counter\(3) & ((!\IC2|LessThan0~17COUT1_33\) # (!\IC2|rx_bit_counter_up_value\(3)))) # (!\IC2|rx_bit_counter\(3) & (!\IC2|rx_bit_counter_up_value\(3) & !\IC2|LessThan0~17COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC2|rx_bit_counter_up_value\(3),
	cin0 => \IC2|LessThan0~17_cout0\,
	cin1 => \IC2|LessThan0~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan0~10\,
	cout => \IC2|LessThan0~12_cout\);

-- Location: LC_X4_Y3_N8
\IC2|rx_bit_counter_up_value[4]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value\(4) = (!\spi_slave_ss~combout\ & ((\IC2|rx_bit_counter_up_value[0]~0_combout\ & ((\IC2|Equal2~0\))) # (!\IC2|rx_bit_counter_up_value[0]~0_combout\ & (\IC2|rx_bit_counter_up_value\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(4),
	datab => \spi_slave_ss~combout\,
	datac => \IC2|Equal2~0\,
	datad => \IC2|rx_bit_counter_up_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value\(4));

-- Location: LC_X4_Y3_N5
\IC2|LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan0~7_cout0\ = CARRY((\IC2|rx_bit_counter_up_value\(4) & ((!\IC2|LessThan0~12_cout\) # (!\IC2|rx_bit_counter\(4)))) # (!\IC2|rx_bit_counter_up_value\(4) & (!\IC2|rx_bit_counter\(4) & !\IC2|LessThan0~12_cout\)))
-- \IC2|LessThan0~7COUT1_34\ = CARRY((\IC2|rx_bit_counter_up_value\(4) & ((!\IC2|LessThan0~12_cout\) # (!\IC2|rx_bit_counter\(4)))) # (!\IC2|rx_bit_counter_up_value\(4) & (!\IC2|rx_bit_counter\(4) & !\IC2|LessThan0~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(4),
	datab => \IC2|rx_bit_counter\(4),
	cin => \IC2|LessThan0~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan0~5\,
	cout0 => \IC2|LessThan0~7_cout0\,
	cout1 => \IC2|LessThan0~7COUT1_34\);

-- Location: LC_X4_Y3_N6
\IC2|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan0~0_combout\ = (\IC2|rx_bit_counter_up_value\(5) & ((((!\IC2|LessThan0~12_cout\ & \IC2|LessThan0~7_cout0\) # (\IC2|LessThan0~12_cout\ & \IC2|LessThan0~7COUT1_34\))) # (!\IC2|rx_bit_counter\(5)))) # (!\IC2|rx_bit_counter_up_value\(5) & 
-- (!\IC2|rx_bit_counter\(5) & ((!\IC2|LessThan0~12_cout\ & \IC2|LessThan0~7_cout0\) # (\IC2|LessThan0~12_cout\ & \IC2|LessThan0~7COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b2b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(5),
	datab => \IC2|rx_bit_counter\(5),
	cin => \IC2|LessThan0~12_cout\,
	cin0 => \IC2|LessThan0~7_cout0\,
	cin1 => \IC2|LessThan0~7COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan0~0_combout\);

-- Location: LC_X5_Y3_N4
\IC2|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal0~1_combout\ = (\IC2|rx_bit_counter_up_value\(3) & (\IC2|rx_bit_counter\(3) & (\IC2|rx_bit_counter\(2) $ (!\IC2|rx_bit_counter_up_value\(2))))) # (!\IC2|rx_bit_counter_up_value\(3) & (!\IC2|rx_bit_counter\(3) & (\IC2|rx_bit_counter\(2) $ 
-- (!\IC2|rx_bit_counter_up_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(3),
	datab => \IC2|rx_bit_counter\(3),
	datac => \IC2|rx_bit_counter\(2),
	datad => \IC2|rx_bit_counter_up_value\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal0~1_combout\);

-- Location: LC_X5_Y3_N2
\IC2|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal0~2_combout\ = (\IC2|rx_bit_counter_up_value\(5) & (\IC2|rx_bit_counter\(5) & (\IC2|rx_bit_counter_up_value\(4) $ (!\IC2|rx_bit_counter\(4))))) # (!\IC2|rx_bit_counter_up_value\(5) & (!\IC2|rx_bit_counter\(5) & (\IC2|rx_bit_counter_up_value\(4) 
-- $ (!\IC2|rx_bit_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(5),
	datab => \IC2|rx_bit_counter\(5),
	datac => \IC2|rx_bit_counter_up_value\(4),
	datad => \IC2|rx_bit_counter\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal0~2_combout\);

-- Location: LC_X4_Y3_N7
\IC2|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal0~3_combout\ = ((\IC2|Equal0~1_combout\ & (\IC2|Equal0~2_combout\ & \IC2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|Equal0~1_combout\,
	datac => \IC2|Equal0~2_combout\,
	datad => \IC2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal0~3_combout\);

-- Location: LC_X3_Y4_N6
\IC2|rx_bit_counter_up_value[0]~0\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value[0]~0_combout\ = ((\IC2|Equal0~3_combout\ & ((\IC2|Equal2~0\) # (\IC2|Equal1~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|Equal2~0\,
	datac => \IC2|Equal0~3_combout\,
	datad => \IC2|Equal1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value[0]~0_combout\);

-- Location: LC_X4_Y4_N9
\IC2|rx_bit_counter_up_value[0]\ : maxii_lcell
-- Equation(s):
-- \IC2|rx_bit_counter_up_value\(0) = ((!\spi_slave_ss~combout\ & ((\IC2|rx_bit_counter_up_value[0]~0_combout\) # (\IC2|rx_bit_counter_up_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_ss~combout\,
	datac => \IC2|rx_bit_counter_up_value[0]~0_combout\,
	datad => \IC2|rx_bit_counter_up_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rx_bit_counter_up_value\(0));

-- Location: LC_X4_Y3_N9
\IC2|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \IC2|Equal0~0_combout\ = (\IC2|rx_bit_counter_up_value\(0) & (\IC2|rx_bit_counter\(0) & (\IC2|rx_bit_counter_up_value\(1) $ (!\IC2|rx_bit_counter\(1))))) # (!\IC2|rx_bit_counter_up_value\(0) & (!\IC2|rx_bit_counter\(0) & (\IC2|rx_bit_counter_up_value\(1) 
-- $ (!\IC2|rx_bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(0),
	datab => \IC2|rx_bit_counter_up_value\(1),
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC2|rx_bit_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Equal0~0_combout\);

-- Location: LC_X3_Y3_N2
\IC2|rd_encoder~2\ : maxii_lcell
-- Equation(s):
-- \IC2|rd_encoder~2_combout\ = (\IC2|Equal0~0_combout\ & (\IC2|Equal0~2_combout\ & (\IC2|Equal1~2\ & \IC2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|Equal0~0_combout\,
	datab => \IC2|Equal0~2_combout\,
	datac => \IC2|Equal1~2\,
	datad => \IC2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rd_encoder~2_combout\);

-- Location: LC_X3_Y3_N3
\IC2|rd_encoder\ : maxii_lcell
-- Equation(s):
-- \IC2|rd_encoder~combout\ = ((!\spi_slave_ss~combout\ & ((\IC2|rd_encoder~2_combout\) # (\IC2|rd_encoder~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rd_encoder~2_combout\,
	datac => \spi_slave_ss~combout\,
	datad => \IC2|rd_encoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|rd_encoder~combout\);

-- Location: LC_X4_Y4_N1
\IC2|Add2~25\ : maxii_lcell
-- Equation(s):
-- \IC2|Add2~25_combout\ = \IC2|rx_bit_counter_up_value\(1) $ ((\IC2|rx_bit_counter_up_value\(0)))
-- \IC2|Add2~27\ = CARRY((\IC2|rx_bit_counter_up_value\(1) & (\IC2|rx_bit_counter_up_value\(0))))
-- \IC2|Add2~27COUT1_31\ = CARRY((\IC2|rx_bit_counter_up_value\(1) & (\IC2|rx_bit_counter_up_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(1),
	datab => \IC2|rx_bit_counter_up_value\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Add2~25_combout\,
	cout0 => \IC2|Add2~27\,
	cout1 => \IC2|Add2~27COUT1_31\);

-- Location: LC_X4_Y4_N2
\IC2|Add2~20\ : maxii_lcell
-- Equation(s):
-- \IC2|Add2~20_combout\ = \IC2|rx_bit_counter_up_value\(2) $ ((((\IC2|Add2~27\))))
-- \IC2|Add2~22\ = CARRY(((!\IC2|Add2~27\)) # (!\IC2|rx_bit_counter_up_value\(2)))
-- \IC2|Add2~22COUT1_32\ = CARRY(((!\IC2|Add2~27COUT1_31\)) # (!\IC2|rx_bit_counter_up_value\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(2),
	cin0 => \IC2|Add2~27\,
	cin1 => \IC2|Add2~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Add2~20_combout\,
	cout0 => \IC2|Add2~22\,
	cout1 => \IC2|Add2~22COUT1_32\);

-- Location: LC_X4_Y4_N3
\IC2|Add2~15\ : maxii_lcell
-- Equation(s):
-- \IC2|Add2~15_combout\ = (\IC2|rx_bit_counter_up_value\(3) $ ((!\IC2|Add2~22\)))
-- \IC2|Add2~17\ = CARRY(((\IC2|rx_bit_counter_up_value\(3) & !\IC2|Add2~22\)))
-- \IC2|Add2~17COUT1_33\ = CARRY(((\IC2|rx_bit_counter_up_value\(3) & !\IC2|Add2~22COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter_up_value\(3),
	cin0 => \IC2|Add2~22\,
	cin1 => \IC2|Add2~22COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Add2~15_combout\,
	cout0 => \IC2|Add2~17\,
	cout1 => \IC2|Add2~17COUT1_33\);

-- Location: LC_X4_Y4_N4
\IC2|Add2~10\ : maxii_lcell
-- Equation(s):
-- \IC2|Add2~10_combout\ = (\IC2|rx_bit_counter_up_value\(4) $ ((\IC2|Add2~17\)))
-- \IC2|Add2~12\ = CARRY(((!\IC2|Add2~17COUT1_33\) # (!\IC2|rx_bit_counter_up_value\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter_up_value\(4),
	cin0 => \IC2|Add2~17\,
	cin1 => \IC2|Add2~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Add2~10_combout\,
	cout => \IC2|Add2~12\);

-- Location: LC_X4_Y4_N5
\IC2|Add2~5\ : maxii_lcell
-- Equation(s):
-- \IC2|Add2~5_combout\ = \IC2|rx_bit_counter_up_value\(5) $ ((((!\IC2|Add2~12\))))
-- \IC2|Add2~7\ = CARRY((\IC2|rx_bit_counter_up_value\(5) & ((!\IC2|Add2~12\))))
-- \IC2|Add2~7COUT1_34\ = CARRY((\IC2|rx_bit_counter_up_value\(5) & ((!\IC2|Add2~12\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(5),
	cin => \IC2|Add2~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Add2~5_combout\,
	cout0 => \IC2|Add2~7\,
	cout1 => \IC2|Add2~7COUT1_34\);

-- Location: LC_X4_Y4_N6
\IC2|Add2~0\ : maxii_lcell
-- Equation(s):
-- \IC2|Add2~0_combout\ = ((((!\IC2|Add2~12\ & \IC2|Add2~7\) # (\IC2|Add2~12\ & \IC2|Add2~7COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \IC2|Add2~12\,
	cin0 => \IC2|Add2~7\,
	cin1 => \IC2|Add2~7COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Add2~0_combout\);

-- Location: LC_X5_Y4_N1
\IC2|LessThan1~27\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan1~27_cout0\ = CARRY((!\IC2|rx_bit_counter_up_value\(0) & (!\IC2|rx_bit_counter\(0))))
-- \IC2|LessThan1~27COUT1_31\ = CARRY((!\IC2|rx_bit_counter_up_value\(0) & (!\IC2|rx_bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff11",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter_up_value\(0),
	datab => \IC2|rx_bit_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan1~25\,
	cout0 => \IC2|LessThan1~27_cout0\,
	cout1 => \IC2|LessThan1~27COUT1_31\);

-- Location: LC_X5_Y4_N2
\IC2|LessThan1~22\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan1~22_cout0\ = CARRY((\IC2|Add2~25_combout\ & (\IC2|rx_bit_counter\(1) & !\IC2|LessThan1~27_cout0\)) # (!\IC2|Add2~25_combout\ & ((\IC2|rx_bit_counter\(1)) # (!\IC2|LessThan1~27_cout0\))))
-- \IC2|LessThan1~22COUT1_32\ = CARRY((\IC2|Add2~25_combout\ & (\IC2|rx_bit_counter\(1) & !\IC2|LessThan1~27COUT1_31\)) # (!\IC2|Add2~25_combout\ & ((\IC2|rx_bit_counter\(1)) # (!\IC2|LessThan1~27COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|Add2~25_combout\,
	datab => \IC2|rx_bit_counter\(1),
	cin0 => \IC2|LessThan1~27_cout0\,
	cin1 => \IC2|LessThan1~27COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan1~20\,
	cout0 => \IC2|LessThan1~22_cout0\,
	cout1 => \IC2|LessThan1~22COUT1_32\);

-- Location: LC_X5_Y4_N3
\IC2|LessThan1~17\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan1~17_cout0\ = CARRY((\IC2|rx_bit_counter\(2) & (\IC2|Add2~20_combout\ & !\IC2|LessThan1~22_cout0\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|Add2~20_combout\) # (!\IC2|LessThan1~22_cout0\))))
-- \IC2|LessThan1~17COUT1_33\ = CARRY((\IC2|rx_bit_counter\(2) & (\IC2|Add2~20_combout\ & !\IC2|LessThan1~22COUT1_32\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|Add2~20_combout\) # (!\IC2|LessThan1~22COUT1_32\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(2),
	datab => \IC2|Add2~20_combout\,
	cin0 => \IC2|LessThan1~22_cout0\,
	cin1 => \IC2|LessThan1~22COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan1~15\,
	cout0 => \IC2|LessThan1~17_cout0\,
	cout1 => \IC2|LessThan1~17COUT1_33\);

-- Location: LC_X5_Y4_N4
\IC2|LessThan1~12\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan1~12_cout\ = CARRY((\IC2|rx_bit_counter\(3) & ((!\IC2|LessThan1~17COUT1_33\) # (!\IC2|Add2~15_combout\))) # (!\IC2|rx_bit_counter\(3) & (!\IC2|Add2~15_combout\ & !\IC2|LessThan1~17COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC2|Add2~15_combout\,
	cin0 => \IC2|LessThan1~17_cout0\,
	cin1 => \IC2|LessThan1~17COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan1~10\,
	cout => \IC2|LessThan1~12_cout\);

-- Location: LC_X5_Y4_N5
\IC2|LessThan1~7\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan1~7_cout0\ = CARRY((\IC2|rx_bit_counter\(4) & (\IC2|Add2~10_combout\ & !\IC2|LessThan1~12_cout\)) # (!\IC2|rx_bit_counter\(4) & ((\IC2|Add2~10_combout\) # (!\IC2|LessThan1~12_cout\))))
-- \IC2|LessThan1~7COUT1_34\ = CARRY((\IC2|rx_bit_counter\(4) & (\IC2|Add2~10_combout\ & !\IC2|LessThan1~12_cout\)) # (!\IC2|rx_bit_counter\(4) & ((\IC2|Add2~10_combout\) # (!\IC2|LessThan1~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(4),
	datab => \IC2|Add2~10_combout\,
	cin => \IC2|LessThan1~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan1~5\,
	cout0 => \IC2|LessThan1~7_cout0\,
	cout1 => \IC2|LessThan1~7COUT1_34\);

-- Location: LC_X5_Y4_N6
\IC2|LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \IC2|LessThan1~0_combout\ = ((\IC2|rx_bit_counter\(5) & ((!\IC2|LessThan1~12_cout\ & \IC2|LessThan1~7_cout0\) # (\IC2|LessThan1~12_cout\ & \IC2|LessThan1~7COUT1_34\) & \IC2|Add2~5_combout\)) # (!\IC2|rx_bit_counter\(5) & (((!\IC2|LessThan1~12_cout\ & 
-- \IC2|LessThan1~7_cout0\) # (\IC2|LessThan1~12_cout\ & \IC2|LessThan1~7COUT1_34\)) # (\IC2|Add2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(5),
	datad => \IC2|Add2~5_combout\,
	cin => \IC2|LessThan1~12_cout\,
	cin0 => \IC2|LessThan1~7_cout0\,
	cin1 => \IC2|LessThan1~7COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|LessThan1~0_combout\);

-- Location: LC_X4_Y4_N7
\IC2|miso~0\ : maxii_lcell
-- Equation(s):
-- \IC2|miso~0_combout\ = (\IC2|rd_encoder~combout\ & ((\IC2|Add2~0_combout\) # ((\IC2|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rd_encoder~combout\,
	datab => \IC2|Add2~0_combout\,
	datac => \IC2|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|miso~0_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\sys_clk0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sys_clk0,
	combout => \sys_clk0~combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_a~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_a,
	combout => \encoder1_a~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_reset_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_reset_in,
	combout => \encoder1_reset_in~combout\);

-- Location: LC_X2_Y1_N3
\IC1|Shifter:counter\ : maxii_lcell
-- Equation(s):
-- \IC1|Shifter:counter~regout\ = DFFEAS((((!\IC1|shiftA[3]~0_combout\))), GLOBAL(\sys_clk0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datad => \IC1|shiftA[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|Shifter:counter~regout\);

-- Location: LC_X2_Y1_N9
\IC1|shiftA[3]~0\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftA[3]~0_combout\ = ((\encoder1_reset_in~combout\) # ((\IC1|Shifter:counter~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \encoder1_reset_in~combout\,
	datad => \IC1|Shifter:counter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC1|shiftA[3]~0_combout\);

-- Location: LC_X2_Y1_N6
\IC1|shiftA[0]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftA\(0) = DFFEAS(((\encoder1_a~combout\)), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \encoder1_a~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftA\(0));

-- Location: LC_X2_Y1_N7
\IC1|shiftA[1]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftA\(1) = DFFEAS(((\encoder1_reset_in~combout\ & ((\encoder1_a~combout\))) # (!\encoder1_reset_in~combout\ & (\IC1|shiftA\(0)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \encoder1_reset_in~combout\,
	datac => \IC1|shiftA\(0),
	datad => \encoder1_a~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftA\(1));

-- Location: LC_X2_Y1_N5
\IC1|shiftA[2]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftA\(2) = DFFEAS(((\encoder1_reset_in~combout\ & (\encoder1_a~combout\)) # (!\encoder1_reset_in~combout\ & ((\IC1|shiftA\(1))))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \encoder1_a~combout\,
	datac => \IC1|shiftA\(1),
	datad => \encoder1_reset_in~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftA\(2));

-- Location: LC_X2_Y1_N8
\IC1|shiftA[3]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftA\(3) = DFFEAS(((\encoder1_reset_in~combout\ & ((\encoder1_a~combout\))) # (!\encoder1_reset_in~combout\ & (\IC1|shiftA\(2)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \encoder1_reset_in~combout\,
	datac => \IC1|shiftA\(2),
	datad => \encoder1_a~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftA\(3));

-- Location: LC_X2_Y1_N4
\IC1|voteA_d\ : maxii_lcell
-- Equation(s):
-- \IC1|voteA~0\ = (\IC1|shiftA\(2) & (((\IC1|shiftA\(1)) # (\IC1|shiftA\(3))))) # (!\IC1|shiftA\(2) & (((\IC1|shiftA\(1) & \IC1|shiftA\(3)))))
-- \IC1|voteA_d~regout\ = DFFEAS(\IC1|voteA~0\, GLOBAL(\sys_clk0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|shiftA\(2),
	datac => \IC1|shiftA\(1),
	datad => \IC1|shiftA\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC1|voteA~0\,
	regout => \IC1|voteA_d~regout\);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_b~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_b,
	combout => \encoder1_b~combout\);

-- Location: LC_X3_Y1_N6
\IC1|shiftB[0]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftB\(0) = DFFEAS((((\encoder1_b~combout\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datad => \encoder1_b~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftB\(0));

-- Location: LC_X3_Y1_N4
\IC1|shiftB[1]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftB\(1) = DFFEAS(((\encoder1_reset_in~combout\ & ((\encoder1_b~combout\))) # (!\encoder1_reset_in~combout\ & (\IC1|shiftB\(0)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \encoder1_reset_in~combout\,
	datac => \IC1|shiftB\(0),
	datad => \encoder1_b~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftB\(1));

-- Location: LC_X3_Y1_N3
\IC1|shiftB[2]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftB\(2) = DFFEAS(((\encoder1_reset_in~combout\ & ((\encoder1_b~combout\))) # (!\encoder1_reset_in~combout\ & (\IC1|shiftB\(1)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \encoder1_reset_in~combout\,
	datac => \IC1|shiftB\(1),
	datad => \encoder1_b~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftB\(2));

-- Location: LC_X3_Y1_N9
\IC1|shiftB[3]\ : maxii_lcell
-- Equation(s):
-- \IC1|shiftB\(3) = DFFEAS(((\encoder1_reset_in~combout\ & ((\encoder1_b~combout\))) # (!\encoder1_reset_in~combout\ & (\IC1|shiftB\(2)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|shiftA[3]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|shiftB\(2),
	datac => \encoder1_reset_in~combout\,
	datad => \encoder1_b~combout\,
	aclr => GND,
	ena => \IC1|shiftA[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|shiftB\(3));

-- Location: LC_X3_Y1_N5
\IC1|voteB_d\ : maxii_lcell
-- Equation(s):
-- \IC1|voteB~0\ = ((\IC1|shiftB\(1) & ((\IC1|shiftB\(3)) # (\IC1|shiftB\(2)))) # (!\IC1|shiftB\(1) & (\IC1|shiftB\(3) & \IC1|shiftB\(2))))
-- \IC1|voteB_d~regout\ = DFFEAS(\IC1|voteB~0\, GLOBAL(\sys_clk0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \IC1|shiftB\(1),
	datac => \IC1|shiftB\(3),
	datad => \IC1|shiftB\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC1|voteB~0\,
	regout => \IC1|voteB_d~regout\);

-- Location: LC_X4_Y1_N1
\IC1|rotRight\ : maxii_lcell
-- Equation(s):
-- \IC1|rotRight~regout\ = DFFEAS((\IC1|voteA_d~regout\ & (\IC1|voteB~0\ & (\IC1|voteB_d~regout\ $ (\IC1|voteA~0\)))) # (!\IC1|voteA_d~regout\ & (!\IC1|voteB~0\ & (\IC1|voteB_d~regout\ $ (\IC1|voteA~0\)))), GLOBAL(\sys_clk0~combout\), VCC, , , , , 
-- \encoder1_reset_in~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2814",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|voteA_d~regout\,
	datab => \IC1|voteB_d~regout\,
	datac => \IC1|voteA~0\,
	datad => \IC1|voteB~0\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|rotRight~regout\);

-- Location: LC_X3_Y1_N7
\IC1|rotLeft\ : maxii_lcell
-- Equation(s):
-- \IC1|rotLeft~regout\ = DFFEAS((\IC1|voteB~0\ & (!\IC1|voteA_d~regout\ & (\IC1|voteA~0\ $ (!\IC1|voteB_d~regout\)))) # (!\IC1|voteB~0\ & (\IC1|voteA_d~regout\ & (\IC1|voteA~0\ $ (!\IC1|voteB_d~regout\)))), GLOBAL(\sys_clk0~combout\), VCC, , , , , 
-- \encoder1_reset_in~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4182",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|voteB~0\,
	datab => \IC1|voteA~0\,
	datac => \IC1|voteB_d~regout\,
	datad => \IC1|voteA_d~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|rotLeft~regout\);

-- Location: LC_X3_Y1_N8
\IC1|counter[15]~64\ : maxii_lcell
-- Equation(s):
-- \IC1|counter[15]~64_combout\ = (\IC1|rotRight~regout\) # (((\IC1|rotLeft~regout\) # (\encoder1_reset_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|rotRight~regout\,
	datac => \IC1|rotLeft~regout\,
	datad => \encoder1_reset_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC1|counter[15]~64_combout\);

-- Location: LC_X4_Y1_N4
\IC1|counter[0]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(0) = DFFEAS((!\IC1|counter\(0)), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[0]~15\ = CARRY((\IC1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(0),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(0),
	cout => \IC1|counter[0]~15\);

-- Location: LC_X4_Y1_N5
\IC1|counter[1]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(1) = DFFEAS(\IC1|counter\(1) $ (\IC1|rotRight~regout\ $ ((!\IC1|counter[0]~15\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[1]~23\ = CARRY((\IC1|counter\(1) & (\IC1|rotRight~regout\ & !\IC1|counter[0]~15\)) # (!\IC1|counter\(1) & ((\IC1|rotRight~regout\) # (!\IC1|counter[0]~15\))))
-- \IC1|counter[1]~23COUT1_66\ = CARRY((\IC1|counter\(1) & (\IC1|rotRight~regout\ & !\IC1|counter[0]~15\)) # (!\IC1|counter\(1) & ((\IC1|rotRight~regout\) # (!\IC1|counter[0]~15\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(1),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[0]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(1),
	cout0 => \IC1|counter[1]~23\,
	cout1 => \IC1|counter[1]~23COUT1_66\);

-- Location: LC_X4_Y1_N6
\IC1|counter[2]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(2) = DFFEAS(\IC1|counter\(2) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[0]~15\ & \IC1|counter[1]~23\) # (\IC1|counter[0]~15\ & \IC1|counter[1]~23COUT1_66\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[2]~11\ = CARRY((\IC1|counter\(2) & ((!\IC1|counter[1]~23\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(2) & (!\IC1|rotRight~regout\ & !\IC1|counter[1]~23\)))
-- \IC1|counter[2]~11COUT1_67\ = CARRY((\IC1|counter\(2) & ((!\IC1|counter[1]~23COUT1_66\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(2) & (!\IC1|rotRight~regout\ & !\IC1|counter[1]~23COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(2),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[0]~15\,
	cin0 => \IC1|counter[1]~23\,
	cin1 => \IC1|counter[1]~23COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(2),
	cout0 => \IC1|counter[2]~11\,
	cout1 => \IC1|counter[2]~11COUT1_67\);

-- Location: LC_X4_Y1_N7
\IC1|counter[3]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(3) = DFFEAS(\IC1|counter\(3) $ (\IC1|rotRight~regout\ $ ((!(!\IC1|counter[0]~15\ & \IC1|counter[2]~11\) # (\IC1|counter[0]~15\ & \IC1|counter[2]~11COUT1_67\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[3]~17\ = CARRY((\IC1|counter\(3) & (\IC1|rotRight~regout\ & !\IC1|counter[2]~11\)) # (!\IC1|counter\(3) & ((\IC1|rotRight~regout\) # (!\IC1|counter[2]~11\))))
-- \IC1|counter[3]~17COUT1_68\ = CARRY((\IC1|counter\(3) & (\IC1|rotRight~regout\ & !\IC1|counter[2]~11COUT1_67\)) # (!\IC1|counter\(3) & ((\IC1|rotRight~regout\) # (!\IC1|counter[2]~11COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(3),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[0]~15\,
	cin0 => \IC1|counter[2]~11\,
	cin1 => \IC1|counter[2]~11COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(3),
	cout0 => \IC1|counter[3]~17\,
	cout1 => \IC1|counter[3]~17COUT1_68\);

-- Location: LC_X4_Y1_N8
\IC1|counter[4]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(4) = DFFEAS(\IC1|counter\(4) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[0]~15\ & \IC1|counter[3]~17\) # (\IC1|counter[0]~15\ & \IC1|counter[3]~17COUT1_68\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[4]~9\ = CARRY((\IC1|counter\(4) & ((!\IC1|counter[3]~17\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(4) & (!\IC1|rotRight~regout\ & !\IC1|counter[3]~17\)))
-- \IC1|counter[4]~9COUT1_69\ = CARRY((\IC1|counter\(4) & ((!\IC1|counter[3]~17COUT1_68\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(4) & (!\IC1|rotRight~regout\ & !\IC1|counter[3]~17COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(4),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[0]~15\,
	cin0 => \IC1|counter[3]~17\,
	cin1 => \IC1|counter[3]~17COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(4),
	cout0 => \IC1|counter[4]~9\,
	cout1 => \IC1|counter[4]~9COUT1_69\);

-- Location: LC_X4_Y1_N9
\IC1|counter[5]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(5) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(5) $ ((!(!\IC1|counter[0]~15\ & \IC1|counter[4]~9\) # (\IC1|counter[0]~15\ & \IC1|counter[4]~9COUT1_69\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[5]~19\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[4]~9COUT1_69\) # (!\IC1|counter\(5)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(5) & !\IC1|counter[4]~9COUT1_69\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(5),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[0]~15\,
	cin0 => \IC1|counter[4]~9\,
	cin1 => \IC1|counter[4]~9COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(5),
	cout => \IC1|counter[5]~19\);

-- Location: LC_X5_Y1_N0
\IC1|counter[6]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(6) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(6) $ ((\IC1|counter[5]~19\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[6]~13\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(6) & !\IC1|counter[5]~19\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(6)) # (!\IC1|counter[5]~19\))))
-- \IC1|counter[6]~13COUT1_70\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(6) & !\IC1|counter[5]~19\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(6)) # (!\IC1|counter[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(6),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[5]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(6),
	cout0 => \IC1|counter[6]~13\,
	cout1 => \IC1|counter[6]~13COUT1_70\);

-- Location: LC_X5_Y1_N1
\IC1|counter[7]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(7) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(7) $ ((!(!\IC1|counter[5]~19\ & \IC1|counter[6]~13\) # (\IC1|counter[5]~19\ & \IC1|counter[6]~13COUT1_70\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[7]~21\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[6]~13\) # (!\IC1|counter\(7)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(7) & !\IC1|counter[6]~13\)))
-- \IC1|counter[7]~21COUT1_71\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[6]~13COUT1_70\) # (!\IC1|counter\(7)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(7) & !\IC1|counter[6]~13COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(7),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[5]~19\,
	cin0 => \IC1|counter[6]~13\,
	cin1 => \IC1|counter[6]~13COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(7),
	cout0 => \IC1|counter[7]~21\,
	cout1 => \IC1|counter[7]~21COUT1_71\);

-- Location: LC_X5_Y1_N2
\IC1|counter[8]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(8) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(8) $ (((!\IC1|counter[5]~19\ & \IC1|counter[7]~21\) # (\IC1|counter[5]~19\ & \IC1|counter[7]~21COUT1_71\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[8]~31\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(8) & !\IC1|counter[7]~21\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(8)) # (!\IC1|counter[7]~21\))))
-- \IC1|counter[8]~31COUT1_72\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(8) & !\IC1|counter[7]~21COUT1_71\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(8)) # (!\IC1|counter[7]~21COUT1_71\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(8),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[5]~19\,
	cin0 => \IC1|counter[7]~21\,
	cin1 => \IC1|counter[7]~21COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(8),
	cout0 => \IC1|counter[8]~31\,
	cout1 => \IC1|counter[8]~31COUT1_72\);

-- Location: LC_X5_Y1_N3
\IC1|counter[9]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(9) = DFFEAS(\IC1|counter\(9) $ (\IC1|rotRight~regout\ $ ((!(!\IC1|counter[5]~19\ & \IC1|counter[8]~31\) # (\IC1|counter[5]~19\ & \IC1|counter[8]~31COUT1_72\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[9]~7\ = CARRY((\IC1|counter\(9) & (\IC1|rotRight~regout\ & !\IC1|counter[8]~31\)) # (!\IC1|counter\(9) & ((\IC1|rotRight~regout\) # (!\IC1|counter[8]~31\))))
-- \IC1|counter[9]~7COUT1_73\ = CARRY((\IC1|counter\(9) & (\IC1|rotRight~regout\ & !\IC1|counter[8]~31COUT1_72\)) # (!\IC1|counter\(9) & ((\IC1|rotRight~regout\) # (!\IC1|counter[8]~31COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(9),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[5]~19\,
	cin0 => \IC1|counter[8]~31\,
	cin1 => \IC1|counter[8]~31COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(9),
	cout0 => \IC1|counter[9]~7\,
	cout1 => \IC1|counter[9]~7COUT1_73\);

-- Location: LC_X5_Y1_N4
\IC1|counter[10]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(10) = DFFEAS(\IC1|counter\(10) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[5]~19\ & \IC1|counter[9]~7\) # (\IC1|counter[5]~19\ & \IC1|counter[9]~7COUT1_73\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[10]~27\ = CARRY((\IC1|counter\(10) & ((!\IC1|counter[9]~7COUT1_73\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(10) & (!\IC1|rotRight~regout\ & !\IC1|counter[9]~7COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(10),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[5]~19\,
	cin0 => \IC1|counter[9]~7\,
	cin1 => \IC1|counter[9]~7COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(10),
	cout => \IC1|counter[10]~27\);

-- Location: LC_X5_Y1_N5
\IC1|counter[11]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(11) = DFFEAS(\IC1|counter\(11) $ (\IC1|rotRight~regout\ $ ((!\IC1|counter[10]~27\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[11]~1\ = CARRY((\IC1|counter\(11) & (\IC1|rotRight~regout\ & !\IC1|counter[10]~27\)) # (!\IC1|counter\(11) & ((\IC1|rotRight~regout\) # (!\IC1|counter[10]~27\))))
-- \IC1|counter[11]~1COUT1_74\ = CARRY((\IC1|counter\(11) & (\IC1|rotRight~regout\ & !\IC1|counter[10]~27\)) # (!\IC1|counter\(11) & ((\IC1|rotRight~regout\) # (!\IC1|counter[10]~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(11),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[10]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(11),
	cout0 => \IC1|counter[11]~1\,
	cout1 => \IC1|counter[11]~1COUT1_74\);

-- Location: LC_X5_Y1_N6
\IC1|counter[12]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(12) = DFFEAS(\IC1|counter\(12) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[10]~27\ & \IC1|counter[11]~1\) # (\IC1|counter[10]~27\ & \IC1|counter[11]~1COUT1_74\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[12]~25\ = CARRY((\IC1|counter\(12) & ((!\IC1|counter[11]~1\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(12) & (!\IC1|rotRight~regout\ & !\IC1|counter[11]~1\)))
-- \IC1|counter[12]~25COUT1_75\ = CARRY((\IC1|counter\(12) & ((!\IC1|counter[11]~1COUT1_74\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(12) & (!\IC1|rotRight~regout\ & !\IC1|counter[11]~1COUT1_74\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(12),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[10]~27\,
	cin0 => \IC1|counter[11]~1\,
	cin1 => \IC1|counter[11]~1COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(12),
	cout0 => \IC1|counter[12]~25\,
	cout1 => \IC1|counter[12]~25COUT1_75\);

-- Location: LC_X5_Y1_N7
\IC1|counter[13]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(13) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(13) $ ((!(!\IC1|counter[10]~27\ & \IC1|counter[12]~25\) # (\IC1|counter[10]~27\ & \IC1|counter[12]~25COUT1_75\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[13]~3\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[12]~25\) # (!\IC1|counter\(13)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(13) & !\IC1|counter[12]~25\)))
-- \IC1|counter[13]~3COUT1_76\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[12]~25COUT1_75\) # (!\IC1|counter\(13)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(13) & !\IC1|counter[12]~25COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(13),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[10]~27\,
	cin0 => \IC1|counter[12]~25\,
	cin1 => \IC1|counter[12]~25COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(13),
	cout0 => \IC1|counter[13]~3\,
	cout1 => \IC1|counter[13]~3COUT1_76\);

-- Location: LC_X5_Y1_N8
\IC1|counter[14]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(14) = DFFEAS(\IC1|counter\(14) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[10]~27\ & \IC1|counter[13]~3\) # (\IC1|counter[10]~27\ & \IC1|counter[13]~3COUT1_76\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[14]~29\ = CARRY((\IC1|counter\(14) & ((!\IC1|counter[13]~3\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(14) & (!\IC1|rotRight~regout\ & !\IC1|counter[13]~3\)))
-- \IC1|counter[14]~29COUT1_77\ = CARRY((\IC1|counter\(14) & ((!\IC1|counter[13]~3COUT1_76\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(14) & (!\IC1|rotRight~regout\ & !\IC1|counter[13]~3COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(14),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[10]~27\,
	cin0 => \IC1|counter[13]~3\,
	cin1 => \IC1|counter[13]~3COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(14),
	cout0 => \IC1|counter[14]~29\,
	cout1 => \IC1|counter[14]~29COUT1_77\);

-- Location: LC_X5_Y1_N9
\IC1|counter[15]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(15) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(15) $ ((!(!\IC1|counter[10]~27\ & \IC1|counter[14]~29\) # (\IC1|counter[10]~27\ & \IC1|counter[14]~29COUT1_77\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[15]~5\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[14]~29COUT1_77\) # (!\IC1|counter\(15)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(15) & !\IC1|counter[14]~29COUT1_77\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(15),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[10]~27\,
	cin0 => \IC1|counter[14]~29\,
	cin1 => \IC1|counter[14]~29COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(15),
	cout => \IC1|counter[15]~5\);

-- Location: LC_X5_Y2_N8
\IC2|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~0_combout\ = (\IC2|rx_bit_counter\(1) & ((\IC1|counter\(13)) # ((\IC2|rx_bit_counter\(2))))) # (!\IC2|rx_bit_counter\(1) & (((\IC1|counter\(15) & !\IC2|rx_bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(1),
	datab => \IC1|counter\(13),
	datac => \IC1|counter\(15),
	datad => \IC2|rx_bit_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~0_combout\);

-- Location: LC_X5_Y2_N7
\IC2|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~1_combout\ = (\IC2|rx_bit_counter\(2) & ((\IC2|Mux0~0_combout\ & (\IC1|counter\(9))) # (!\IC2|Mux0~0_combout\ & ((\IC1|counter\(11)))))) # (!\IC2|rx_bit_counter\(2) & (((\IC2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(9),
	datab => \IC1|counter\(11),
	datac => \IC2|rx_bit_counter\(2),
	datad => \IC2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~1_combout\);

-- Location: LC_X4_Y2_N2
\IC2|Mux0~7\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~7_combout\ = (\IC2|rx_bit_counter\(2) & ((\IC1|counter\(10)) # ((\IC2|rx_bit_counter\(1))))) # (!\IC2|rx_bit_counter\(2) & (((!\IC2|rx_bit_counter\(1) & \IC1|counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(10),
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|rx_bit_counter\(1),
	datad => \IC1|counter\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~7_combout\);

-- Location: LC_X5_Y2_N6
\IC2|Mux0~8\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~8_combout\ = (\IC2|rx_bit_counter\(1) & ((\IC2|Mux0~7_combout\ & ((\IC1|counter\(8)))) # (!\IC2|Mux0~7_combout\ & (\IC1|counter\(12))))) # (!\IC2|rx_bit_counter\(1) & (((\IC2|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(12),
	datab => \IC1|counter\(8),
	datac => \IC2|rx_bit_counter\(1),
	datad => \IC2|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~8_combout\);

-- Location: LC_X4_Y1_N2
\IC2|Mux0~2\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~2_combout\ = (\IC2|rx_bit_counter\(2) & ((\IC1|counter\(2)) # ((\IC2|rx_bit_counter\(1))))) # (!\IC2|rx_bit_counter\(2) & (((\IC1|counter\(6) & !\IC2|rx_bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(2),
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC1|counter\(6),
	datad => \IC2|rx_bit_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~2_combout\);

-- Location: LC_X4_Y1_N0
\IC2|Mux0~3\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~3_combout\ = (\IC2|rx_bit_counter\(1) & ((\IC2|Mux0~2_combout\ & ((\IC1|counter\(0)))) # (!\IC2|Mux0~2_combout\ & (\IC1|counter\(4))))) # (!\IC2|rx_bit_counter\(1) & (((\IC2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(4),
	datab => \IC2|rx_bit_counter\(1),
	datac => \IC1|counter\(0),
	datad => \IC2|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~3_combout\);

-- Location: LC_X5_Y2_N9
\IC2|Mux0~4\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~4_combout\ = (\IC2|rx_bit_counter\(2) & (((\IC2|rx_bit_counter\(1))))) # (!\IC2|rx_bit_counter\(2) & ((\IC2|rx_bit_counter\(1) & ((\IC1|counter\(5)))) # (!\IC2|rx_bit_counter\(1) & (\IC1|counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(7),
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|rx_bit_counter\(1),
	datad => \IC1|counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~4_combout\);

-- Location: LC_X5_Y2_N0
\IC2|Mux0~5\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~5_combout\ = (\IC2|rx_bit_counter\(2) & ((\IC2|Mux0~4_combout\ & ((\IC1|counter\(1)))) # (!\IC2|Mux0~4_combout\ & (\IC1|counter\(3))))) # (!\IC2|rx_bit_counter\(2) & (((\IC2|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC1|counter\(3),
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC1|counter\(1),
	datad => \IC2|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~5_combout\);

-- Location: LC_X5_Y2_N1
\IC2|Mux0~6\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~6_combout\ = (\IC2|rx_bit_counter\(3) & (\IC2|rx_bit_counter\(0))) # (!\IC2|rx_bit_counter\(3) & ((\IC2|rx_bit_counter\(0) & (\IC2|Mux0~3_combout\)) # (!\IC2|rx_bit_counter\(0) & ((\IC2|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC2|rx_bit_counter\(0),
	datac => \IC2|Mux0~3_combout\,
	datad => \IC2|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~6_combout\);

-- Location: LC_X5_Y2_N5
\IC2|Mux0~9\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~9_combout\ = (\IC2|rx_bit_counter\(3) & ((\IC2|Mux0~6_combout\ & ((\IC2|Mux0~8_combout\))) # (!\IC2|Mux0~6_combout\ & (\IC2|Mux0~1_combout\)))) # (!\IC2|rx_bit_counter\(3) & (((\IC2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC2|Mux0~1_combout\,
	datac => \IC2|Mux0~8_combout\,
	datad => \IC2|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~9_combout\);

-- Location: LC_X6_Y1_N0
\IC1|counter[16]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(16) = DFFEAS(\IC1|counter\(16) $ (\IC1|rotRight~regout\ $ ((\IC1|counter[15]~5\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[16]~59\ = CARRY((\IC1|counter\(16) & ((!\IC1|counter[15]~5\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(16) & (!\IC1|rotRight~regout\ & !\IC1|counter[15]~5\)))
-- \IC1|counter[16]~59COUT1_78\ = CARRY((\IC1|counter\(16) & ((!\IC1|counter[15]~5\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(16) & (!\IC1|rotRight~regout\ & !\IC1|counter[15]~5\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(16),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[15]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(16),
	cout0 => \IC1|counter[16]~59\,
	cout1 => \IC1|counter[16]~59COUT1_78\);

-- Location: LC_X6_Y1_N1
\IC1|counter[17]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(17) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(17) $ ((!(!\IC1|counter[15]~5\ & \IC1|counter[16]~59\) # (\IC1|counter[15]~5\ & \IC1|counter[16]~59COUT1_78\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[17]~61\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[16]~59\) # (!\IC1|counter\(17)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(17) & !\IC1|counter[16]~59\)))
-- \IC1|counter[17]~61COUT1_79\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[16]~59COUT1_78\) # (!\IC1|counter\(17)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(17) & !\IC1|counter[16]~59COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(17),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[15]~5\,
	cin0 => \IC1|counter[16]~59\,
	cin1 => \IC1|counter[16]~59COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(17),
	cout0 => \IC1|counter[17]~61\,
	cout1 => \IC1|counter[17]~61COUT1_79\);

-- Location: LC_X6_Y1_N2
\IC1|counter[18]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(18) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(18) $ (((!\IC1|counter[15]~5\ & \IC1|counter[17]~61\) # (\IC1|counter[15]~5\ & \IC1|counter[17]~61COUT1_79\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[18]~43\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(18) & !\IC1|counter[17]~61\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(18)) # (!\IC1|counter[17]~61\))))
-- \IC1|counter[18]~43COUT1_80\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(18) & !\IC1|counter[17]~61COUT1_79\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(18)) # (!\IC1|counter[17]~61COUT1_79\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(18),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[15]~5\,
	cin0 => \IC1|counter[17]~61\,
	cin1 => \IC1|counter[17]~61COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(18),
	cout0 => \IC1|counter[18]~43\,
	cout1 => \IC1|counter[18]~43COUT1_80\);

-- Location: LC_X6_Y1_N3
\IC1|counter[19]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(19) = DFFEAS(\IC1|counter\(19) $ (\IC1|rotRight~regout\ $ ((!(!\IC1|counter[15]~5\ & \IC1|counter[18]~43\) # (\IC1|counter[15]~5\ & \IC1|counter[18]~43COUT1_80\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[19]~45\ = CARRY((\IC1|counter\(19) & (\IC1|rotRight~regout\ & !\IC1|counter[18]~43\)) # (!\IC1|counter\(19) & ((\IC1|rotRight~regout\) # (!\IC1|counter[18]~43\))))
-- \IC1|counter[19]~45COUT1_81\ = CARRY((\IC1|counter\(19) & (\IC1|rotRight~regout\ & !\IC1|counter[18]~43COUT1_80\)) # (!\IC1|counter\(19) & ((\IC1|rotRight~regout\) # (!\IC1|counter[18]~43COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(19),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[15]~5\,
	cin0 => \IC1|counter[18]~43\,
	cin1 => \IC1|counter[18]~43COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(19),
	cout0 => \IC1|counter[19]~45\,
	cout1 => \IC1|counter[19]~45COUT1_81\);

-- Location: LC_X6_Y1_N4
\IC1|counter[20]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(20) = DFFEAS(\IC1|counter\(20) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[15]~5\ & \IC1|counter[19]~45\) # (\IC1|counter[15]~5\ & \IC1|counter[19]~45COUT1_81\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[20]~33\ = CARRY((\IC1|counter\(20) & ((!\IC1|counter[19]~45COUT1_81\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(20) & (!\IC1|rotRight~regout\ & !\IC1|counter[19]~45COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(20),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[15]~5\,
	cin0 => \IC1|counter[19]~45\,
	cin1 => \IC1|counter[19]~45COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(20),
	cout => \IC1|counter[20]~33\);

-- Location: LC_X6_Y1_N5
\IC1|counter[21]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(21) = DFFEAS(\IC1|counter\(21) $ (\IC1|rotRight~regout\ $ ((!\IC1|counter[20]~33\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[21]~37\ = CARRY((\IC1|counter\(21) & (\IC1|rotRight~regout\ & !\IC1|counter[20]~33\)) # (!\IC1|counter\(21) & ((\IC1|rotRight~regout\) # (!\IC1|counter[20]~33\))))
-- \IC1|counter[21]~37COUT1_82\ = CARRY((\IC1|counter\(21) & (\IC1|rotRight~regout\ & !\IC1|counter[20]~33\)) # (!\IC1|counter\(21) & ((\IC1|rotRight~regout\) # (!\IC1|counter[20]~33\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(21),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[20]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(21),
	cout0 => \IC1|counter[21]~37\,
	cout1 => \IC1|counter[21]~37COUT1_82\);

-- Location: LC_X6_Y1_N6
\IC1|counter[22]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(22) = DFFEAS(\IC1|counter\(22) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[20]~33\ & \IC1|counter[21]~37\) # (\IC1|counter[20]~33\ & \IC1|counter[21]~37COUT1_82\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[22]~49\ = CARRY((\IC1|counter\(22) & ((!\IC1|counter[21]~37\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(22) & (!\IC1|rotRight~regout\ & !\IC1|counter[21]~37\)))
-- \IC1|counter[22]~49COUT1_83\ = CARRY((\IC1|counter\(22) & ((!\IC1|counter[21]~37COUT1_82\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(22) & (!\IC1|rotRight~regout\ & !\IC1|counter[21]~37COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(22),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[20]~33\,
	cin0 => \IC1|counter[21]~37\,
	cin1 => \IC1|counter[21]~37COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(22),
	cout0 => \IC1|counter[22]~49\,
	cout1 => \IC1|counter[22]~49COUT1_83\);

-- Location: LC_X6_Y1_N7
\IC1|counter[23]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(23) = DFFEAS(\IC1|counter\(23) $ (\IC1|rotRight~regout\ $ ((!(!\IC1|counter[20]~33\ & \IC1|counter[22]~49\) # (\IC1|counter[20]~33\ & \IC1|counter[22]~49COUT1_83\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[23]~53\ = CARRY((\IC1|counter\(23) & (\IC1|rotRight~regout\ & !\IC1|counter[22]~49\)) # (!\IC1|counter\(23) & ((\IC1|rotRight~regout\) # (!\IC1|counter[22]~49\))))
-- \IC1|counter[23]~53COUT1_84\ = CARRY((\IC1|counter\(23) & (\IC1|rotRight~regout\ & !\IC1|counter[22]~49COUT1_83\)) # (!\IC1|counter\(23) & ((\IC1|rotRight~regout\) # (!\IC1|counter[22]~49COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(23),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[20]~33\,
	cin0 => \IC1|counter[22]~49\,
	cin1 => \IC1|counter[22]~49COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(23),
	cout0 => \IC1|counter[23]~53\,
	cout1 => \IC1|counter[23]~53COUT1_84\);

-- Location: LC_X6_Y1_N8
\IC1|counter[24]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(24) = DFFEAS(\IC1|counter\(24) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[20]~33\ & \IC1|counter[23]~53\) # (\IC1|counter[20]~33\ & \IC1|counter[23]~53COUT1_84\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[24]~63\ = CARRY((\IC1|counter\(24) & ((!\IC1|counter[23]~53\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(24) & (!\IC1|rotRight~regout\ & !\IC1|counter[23]~53\)))
-- \IC1|counter[24]~63COUT1_85\ = CARRY((\IC1|counter\(24) & ((!\IC1|counter[23]~53COUT1_84\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(24) & (!\IC1|rotRight~regout\ & !\IC1|counter[23]~53COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(24),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[20]~33\,
	cin0 => \IC1|counter[23]~53\,
	cin1 => \IC1|counter[23]~53COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(24),
	cout0 => \IC1|counter[24]~63\,
	cout1 => \IC1|counter[24]~63COUT1_85\);

-- Location: LC_X6_Y1_N9
\IC1|counter[25]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(25) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(25) $ ((!(!\IC1|counter[20]~33\ & \IC1|counter[24]~63\) # (\IC1|counter[20]~33\ & \IC1|counter[24]~63COUT1_85\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[25]~57\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[24]~63COUT1_85\) # (!\IC1|counter\(25)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(25) & !\IC1|counter[24]~63COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(25),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[20]~33\,
	cin0 => \IC1|counter[24]~63\,
	cin1 => \IC1|counter[24]~63COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(25),
	cout => \IC1|counter[25]~57\);

-- Location: LC_X7_Y1_N0
\IC1|counter[26]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(26) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(26) $ ((\IC1|counter[25]~57\))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )
-- \IC1|counter[26]~47\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(26) & !\IC1|counter[25]~57\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(26)) # (!\IC1|counter[25]~57\))))
-- \IC1|counter[26]~47COUT1_86\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(26) & !\IC1|counter[25]~57\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(26)) # (!\IC1|counter[25]~57\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(26),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[25]~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(26),
	cout0 => \IC1|counter[26]~47\,
	cout1 => \IC1|counter[26]~47COUT1_86\);

-- Location: LC_X7_Y1_N1
\IC1|counter[27]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(27) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(27) $ ((!(!\IC1|counter[25]~57\ & \IC1|counter[26]~47\) # (\IC1|counter[25]~57\ & \IC1|counter[26]~47COUT1_86\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[27]~41\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[26]~47\) # (!\IC1|counter\(27)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(27) & !\IC1|counter[26]~47\)))
-- \IC1|counter[27]~41COUT1_87\ = CARRY((\IC1|rotRight~regout\ & ((!\IC1|counter[26]~47COUT1_86\) # (!\IC1|counter\(27)))) # (!\IC1|rotRight~regout\ & (!\IC1|counter\(27) & !\IC1|counter[26]~47COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(27),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[25]~57\,
	cin0 => \IC1|counter[26]~47\,
	cin1 => \IC1|counter[26]~47COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(27),
	cout0 => \IC1|counter[27]~41\,
	cout1 => \IC1|counter[27]~41COUT1_87\);

-- Location: LC_X7_Y1_N2
\IC1|counter[28]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(28) = DFFEAS(\IC1|rotRight~regout\ $ (\IC1|counter\(28) $ (((!\IC1|counter[25]~57\ & \IC1|counter[27]~41\) # (\IC1|counter[25]~57\ & \IC1|counter[27]~41COUT1_87\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[28]~39\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(28) & !\IC1|counter[27]~41\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(28)) # (!\IC1|counter[27]~41\))))
-- \IC1|counter[28]~39COUT1_88\ = CARRY((\IC1|rotRight~regout\ & (\IC1|counter\(28) & !\IC1|counter[27]~41COUT1_87\)) # (!\IC1|rotRight~regout\ & ((\IC1|counter\(28)) # (!\IC1|counter[27]~41COUT1_87\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|rotRight~regout\,
	datab => \IC1|counter\(28),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[25]~57\,
	cin0 => \IC1|counter[27]~41\,
	cin1 => \IC1|counter[27]~41COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(28),
	cout0 => \IC1|counter[28]~39\,
	cout1 => \IC1|counter[28]~39COUT1_88\);

-- Location: LC_X7_Y1_N3
\IC1|counter[29]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(29) = DFFEAS(\IC1|counter\(29) $ (\IC1|rotRight~regout\ $ ((!(!\IC1|counter[25]~57\ & \IC1|counter[28]~39\) # (\IC1|counter[25]~57\ & \IC1|counter[28]~39COUT1_88\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[29]~35\ = CARRY((\IC1|counter\(29) & (\IC1|rotRight~regout\ & !\IC1|counter[28]~39\)) # (!\IC1|counter\(29) & ((\IC1|rotRight~regout\) # (!\IC1|counter[28]~39\))))
-- \IC1|counter[29]~35COUT1_89\ = CARRY((\IC1|counter\(29) & (\IC1|rotRight~regout\ & !\IC1|counter[28]~39COUT1_88\)) # (!\IC1|counter\(29) & ((\IC1|rotRight~regout\) # (!\IC1|counter[28]~39COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(29),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[25]~57\,
	cin0 => \IC1|counter[28]~39\,
	cin1 => \IC1|counter[28]~39COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(29),
	cout0 => \IC1|counter[29]~35\,
	cout1 => \IC1|counter[29]~35COUT1_89\);

-- Location: LC_X6_Y2_N3
\IC2|Mux0~10\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~10_combout\ = (\IC2|rx_bit_counter\(0) & (((\IC2|rx_bit_counter\(3))))) # (!\IC2|rx_bit_counter\(0) & ((\IC2|rx_bit_counter\(3) & (\IC1|counter\(29))) # (!\IC2|rx_bit_counter\(3) & ((\IC1|counter\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC1|counter\(29),
	datac => \IC2|rx_bit_counter\(3),
	datad => \IC1|counter\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~10_combout\);

-- Location: LC_X6_Y2_N9
\IC2|Mux0~11\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~11_combout\ = (\IC2|rx_bit_counter\(0) & ((\IC2|Mux0~10_combout\ & (\IC1|counter\(28))) # (!\IC2|Mux0~10_combout\ & ((\IC1|counter\(20)))))) # (!\IC2|rx_bit_counter\(0) & (((\IC2|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC1|counter\(28),
	datac => \IC1|counter\(20),
	datad => \IC2|Mux0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~11_combout\);

-- Location: LC_X6_Y2_N5
\IC2|Mux0~17\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~17_combout\ = (\IC2|rx_bit_counter\(3) & (((\IC2|rx_bit_counter\(0))))) # (!\IC2|rx_bit_counter\(3) & ((\IC2|rx_bit_counter\(0) & (\IC1|counter\(16))) # (!\IC2|rx_bit_counter\(0) & ((\IC1|counter\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC1|counter\(16),
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC1|counter\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~17_combout\);

-- Location: LC_X6_Y2_N6
\IC2|Mux0~18\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~18_combout\ = (\IC2|rx_bit_counter\(3) & ((\IC2|Mux0~17_combout\ & ((\IC1|counter\(24)))) # (!\IC2|Mux0~17_combout\ & (\IC1|counter\(25))))) # (!\IC2|rx_bit_counter\(3) & (((\IC2|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC1|counter\(25),
	datac => \IC1|counter\(24),
	datad => \IC2|Mux0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~18_combout\);

-- Location: LC_X7_Y1_N6
\IC2|Mux0~12\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~12_combout\ = (\IC2|rx_bit_counter\(3) & (((\IC2|rx_bit_counter\(0))))) # (!\IC2|rx_bit_counter\(3) & ((\IC2|rx_bit_counter\(0) & (\IC1|counter\(18))) # (!\IC2|rx_bit_counter\(0) & ((\IC1|counter\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC1|counter\(18),
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC1|counter\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~12_combout\);

-- Location: LC_X7_Y1_N7
\IC2|Mux0~13\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~13_combout\ = (\IC2|rx_bit_counter\(3) & ((\IC2|Mux0~12_combout\ & ((\IC1|counter\(26)))) # (!\IC2|Mux0~12_combout\ & (\IC1|counter\(27))))) # (!\IC2|rx_bit_counter\(3) & (((\IC2|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC1|counter\(27),
	datac => \IC1|counter\(26),
	datad => \IC2|Mux0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~13_combout\);

-- Location: LC_X7_Y1_N4
\IC1|counter[30]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(30) = DFFEAS(\IC1|counter\(30) $ (\IC1|rotRight~regout\ $ (((!\IC1|counter[25]~57\ & \IC1|counter[29]~35\) # (\IC1|counter[25]~57\ & \IC1|counter[29]~35COUT1_89\)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , 
-- \encoder1_reset_in~combout\, )
-- \IC1|counter[30]~55\ = CARRY((\IC1|counter\(30) & ((!\IC1|counter[29]~35COUT1_89\) # (!\IC1|rotRight~regout\))) # (!\IC1|counter\(30) & (!\IC1|rotRight~regout\ & !\IC1|counter[29]~35COUT1_89\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	dataa => \IC1|counter\(30),
	datab => \IC1|rotRight~regout\,
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[25]~57\,
	cin0 => \IC1|counter[29]~35\,
	cin1 => \IC1|counter[29]~35COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(30),
	cout => \IC1|counter[30]~55\);

-- Location: LC_X7_Y1_N5
\IC1|counter[31]\ : maxii_lcell
-- Equation(s):
-- \IC1|counter\(31) = DFFEAS((\IC1|rotRight~regout\ $ (\IC1|counter[30]~55\ $ (!\IC1|counter\(31)))), GLOBAL(\sys_clk0~combout\), VCC, , \IC1|counter[15]~64_combout\, , , \encoder1_reset_in~combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk0~combout\,
	datab => \IC1|rotRight~regout\,
	datad => \IC1|counter\(31),
	aclr => GND,
	sclr => \encoder1_reset_in~combout\,
	ena => \IC1|counter[15]~64_combout\,
	cin => \IC1|counter[30]~55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC1|counter\(31));

-- Location: LC_X5_Y3_N3
\IC2|Mux0~14\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~14_combout\ = (\IC2|rx_bit_counter\(0) & (\IC2|rx_bit_counter\(3))) # (!\IC2|rx_bit_counter\(0) & ((\IC2|rx_bit_counter\(3) & ((\IC1|counter\(31)))) # (!\IC2|rx_bit_counter\(3) & (\IC1|counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC2|rx_bit_counter\(3),
	datac => \IC1|counter\(23),
	datad => \IC1|counter\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~14_combout\);

-- Location: LC_X5_Y3_N0
\IC2|Mux0~15\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~15_combout\ = (\IC2|rx_bit_counter\(0) & ((\IC2|Mux0~14_combout\ & ((\IC1|counter\(30)))) # (!\IC2|Mux0~14_combout\ & (\IC1|counter\(22))))) # (!\IC2|rx_bit_counter\(0) & (((\IC2|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC1|counter\(22),
	datac => \IC1|counter\(30),
	datad => \IC2|Mux0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~15_combout\);

-- Location: LC_X6_Y2_N0
\IC2|Mux0~16\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~16_combout\ = (\IC2|rx_bit_counter\(1) & (\IC2|rx_bit_counter\(2))) # (!\IC2|rx_bit_counter\(1) & ((\IC2|rx_bit_counter\(2) & (\IC2|Mux0~13_combout\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(1),
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|Mux0~13_combout\,
	datad => \IC2|Mux0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~16_combout\);

-- Location: LC_X6_Y2_N1
\IC2|Mux0~19\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~19_combout\ = (\IC2|rx_bit_counter\(1) & ((\IC2|Mux0~16_combout\ & ((\IC2|Mux0~18_combout\))) # (!\IC2|Mux0~16_combout\ & (\IC2|Mux0~11_combout\)))) # (!\IC2|rx_bit_counter\(1) & (((\IC2|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(1),
	datab => \IC2|Mux0~11_combout\,
	datac => \IC2|Mux0~18_combout\,
	datad => \IC2|Mux0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~19_combout\);

-- Location: LC_X5_Y2_N3
\IC2|Mux0~20\ : maxii_lcell
-- Equation(s):
-- \IC2|Mux0~20_combout\ = (\IC2|rx_bit_counter\(3) & ((\IC2|rx_bit_counter\(4) & (\IC2|Mux0~9_combout\)) # (!\IC2|rx_bit_counter\(4) & ((\IC2|Mux0~19_combout\))))) # (!\IC2|rx_bit_counter\(3) & ((\IC2|rx_bit_counter\(4) & ((\IC2|Mux0~19_combout\))) # 
-- (!\IC2|rx_bit_counter\(4) & (\IC2|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(3),
	datab => \IC2|rx_bit_counter\(4),
	datac => \IC2|Mux0~9_combout\,
	datad => \IC2|Mux0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|Mux0~20_combout\);

-- Location: LC_X5_Y2_N4
\IC2|miso$latch\ : maxii_lcell
-- Equation(s):
-- \IC2|miso$latch~combout\ = (!\spi_slave_ss~combout\ & ((\IC2|miso~0_combout\ & ((\IC2|Mux0~20_combout\))) # (!\IC2|miso~0_combout\ & (\IC2|miso$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_ss~combout\,
	datab => \IC2|miso~0_combout\,
	datac => \IC2|miso$latch~combout\,
	datad => \IC2|Mux0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|miso$latch~combout\);

-- Location: LC_X2_Y2_N9
\IC2|miso_587\ : maxii_lcell
-- Equation(s):
-- \IC2|miso_587~combout\ = ((!\spi_slave_ss~combout\ & ((\IC2|miso~0_combout\) # (\IC2|miso_587~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_ss~combout\,
	datac => \IC2|miso~0_combout\,
	datad => \IC2|miso_587~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|miso_587~combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_u_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_u_in,
	combout => \encoder1_u_in~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_v_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_v_in,
	combout => \encoder1_v_in~combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_w_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_w_in,
	combout => \encoder1_w_in~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\load_dacs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_load_dacs,
	combout => \load_dacs~combout\);

-- Location: LC_X2_Y3_N3
\IC2|reg_dacs[15]~2\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[15]~2_combout\ = (((\IC2|rx_bit_counter\(0) & !\IC2|rx_bit_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC2|rx_bit_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[15]~2_combout\);

-- Location: LC_X3_Y3_N0
\IC2|wr_dacs~2\ : maxii_lcell
-- Equation(s):
-- \IC2|wr_dacs~2_combout\ = (\IC2|Equal0~1_combout\ & (\IC2|Equal0~2_combout\ & (\IC2|Equal0~0_combout\ & \IC2|Equal2~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|Equal0~1_combout\,
	datab => \IC2|Equal0~2_combout\,
	datac => \IC2|Equal0~0_combout\,
	datad => \IC2|Equal2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|wr_dacs~2_combout\);

-- Location: LC_X3_Y3_N9
\IC2|wr_dacs\ : maxii_lcell
-- Equation(s):
-- \IC2|wr_dacs~combout\ = ((!\spi_slave_ss~combout\ & ((\IC2|wr_dacs~2_combout\) # (\IC2|wr_dacs~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|wr_dacs~2_combout\,
	datac => \spi_slave_ss~combout\,
	datad => \IC2|wr_dacs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|wr_dacs~combout\);

-- Location: LC_X4_Y2_N8
\IC2|reg_dacs[32]~4\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[32]~4_combout\ = ((!\spi_slave_ss~combout\ & (\IC2|wr_dacs~combout\ & \IC2|rx_bit_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_ss~combout\,
	datac => \IC2|wr_dacs~combout\,
	datad => \IC2|rx_bit_counter\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[32]~4_combout\);

-- Location: LC_X3_Y2_N6
\IC2|reg_dacs[39]~56\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[39]~56_combout\ = (!\IC2|rx_bit_counter\(4) & (\IC2|rx_bit_counter\(1) & (\IC2|rx_bit_counter\(2) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(4),
	datab => \IC2|rx_bit_counter\(1),
	datac => \IC2|rx_bit_counter\(2),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[39]~56_combout\);

-- Location: LC_X2_Y3_N0
\IC2|reg_dacs[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[7]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[15]~2_combout\ & ((\IC2|reg_dacs[39]~56_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[39]~56_combout\ & (\IC2|reg_dacs[7]~reg0_regout\)))) # (!\IC2|reg_dacs[15]~2_combout\ & 
-- (\IC2|reg_dacs[7]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[15]~2_combout\,
	datab => \IC2|reg_dacs[7]~reg0_regout\,
	datac => \spi_slave_mosi~combout\,
	datad => \IC2|reg_dacs[39]~56_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[7]~reg0_regout\);

-- Location: LC_X2_Y3_N8
\dac0[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[7]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[7]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[0]~reg0_regout\);

-- Location: LC_X5_Y3_N1
\IC2|reg_dacs[38]~3\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[38]~3_combout\ = (\IC2|rx_bit_counter\(1) & (((\IC2|rx_bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(1),
	datac => \IC2|rx_bit_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[38]~3_combout\);

-- Location: LC_X5_Y4_N7
\IC2|reg_dacs[38]~6\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[38]~6_combout\ = (!\IC2|rx_bit_counter\(4) & (!\IC2|rx_bit_counter\(0) & (\IC2|reg_dacs[38]~3_combout\ & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(4),
	datab => \IC2|rx_bit_counter\(0),
	datac => \IC2|reg_dacs[38]~3_combout\,
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[38]~6_combout\);

-- Location: LC_X6_Y4_N6
\IC2|reg_dacs[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[6]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(5) & (((\IC2|reg_dacs[6]~reg0_regout\)))) # (!\IC2|rx_bit_counter\(5) & ((\IC2|reg_dacs[38]~6_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[38]~6_combout\ & 
-- ((\IC2|reg_dacs[6]~reg0_regout\))))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_bit_counter\(5),
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[6]~reg0_regout\,
	datad => \IC2|reg_dacs[38]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[6]~reg0_regout\);

-- Location: LC_X6_Y4_N5
\dac0[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[6]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[6]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[1]~reg0_regout\);

-- Location: LC_X6_Y2_N4
\IC2|reg_dacs[4]~9\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[4]~9_combout\ = ((\IC2|rx_bit_counter\(2) & ((!\IC2|rx_bit_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(2),
	datad => \IC2|rx_bit_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[4]~9_combout\);

-- Location: LC_X5_Y2_N2
\IC2|reg_dacs[1]~8\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[1]~8_combout\ = (\IC2|rx_bit_counter\(0) & (!\IC2|rx_bit_counter\(4) & (!\IC2|rx_bit_counter\(1) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC2|rx_bit_counter\(4),
	datac => \IC2|rx_bit_counter\(1),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[1]~8_combout\);

-- Location: LC_X6_Y2_N7
\IC2|reg_dacs[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[5]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[4]~9_combout\ & ((\IC2|reg_dacs[1]~8_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[1]~8_combout\ & ((\IC2|reg_dacs[5]~reg0_regout\))))) # (!\IC2|reg_dacs[4]~9_combout\ & 
-- (((\IC2|reg_dacs[5]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[5]~reg0_regout\,
	datac => \IC2|reg_dacs[4]~9_combout\,
	datad => \IC2|reg_dacs[1]~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[5]~reg0_regout\);

-- Location: LC_X6_Y2_N8
\dac0[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[5]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[5]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[2]~reg0_regout\);

-- Location: LC_X7_Y2_N8
\IC2|reg_dacs[32]~11\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[32]~11_combout\ = (!\IC2|rx_bit_counter\(4) & (!\IC2|rx_bit_counter\(1) & (!\IC2|rx_bit_counter\(0) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(4),
	datab => \IC2|rx_bit_counter\(1),
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[32]~11_combout\);

-- Location: LC_X7_Y2_N5
\IC2|reg_dacs[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[4]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[4]~9_combout\ & ((\IC2|reg_dacs[32]~11_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[32]~11_combout\ & ((\IC2|reg_dacs[4]~reg0_regout\))))) # (!\IC2|reg_dacs[4]~9_combout\ & 
-- (((\IC2|reg_dacs[4]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[4]~9_combout\,
	datac => \IC2|reg_dacs[4]~reg0_regout\,
	datad => \IC2|reg_dacs[32]~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[4]~reg0_regout\);

-- Location: LC_X7_Y2_N2
\dac0[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[4]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[4]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[3]~reg0_regout\);

-- Location: LC_X3_Y3_N8
\IC2|reg_dacs[35]~13\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[35]~13_combout\ = (!\IC2|rx_bit_counter\(4) & (!\IC2|rx_bit_counter\(2) & (\IC2|rx_bit_counter\(1) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(4),
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|rx_bit_counter\(1),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[35]~13_combout\);

-- Location: LC_X2_Y3_N7
\IC2|reg_dacs[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[3]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[15]~2_combout\ & ((\IC2|reg_dacs[35]~13_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[35]~13_combout\ & ((\IC2|reg_dacs[3]~reg0_regout\))))) # (!\IC2|reg_dacs[15]~2_combout\ & 
-- (((\IC2|reg_dacs[3]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[15]~2_combout\,
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[3]~reg0_regout\,
	datad => \IC2|reg_dacs[35]~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[3]~reg0_regout\);

-- Location: LC_X2_Y3_N9
\dac0[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[3]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[3]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[4]~reg0_regout\);

-- Location: LC_X6_Y3_N6
\IC2|reg_dacs[34]~15\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[34]~15_combout\ = (!\IC2|rx_bit_counter\(0) & (\IC2|rx_bit_counter\(1) & (!\IC2|rx_bit_counter\(4) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC2|rx_bit_counter\(1),
	datac => \IC2|rx_bit_counter\(4),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[34]~15_combout\);

-- Location: LC_X6_Y2_N2
\IC2|reg_dacs[0]~16\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[0]~16_combout\ = ((!\IC2|rx_bit_counter\(2) & ((!\IC2|rx_bit_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(2),
	datad => \IC2|rx_bit_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[0]~16_combout\);

-- Location: LC_X6_Y3_N5
\IC2|reg_dacs[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[2]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[34]~15_combout\ & ((\IC2|reg_dacs[0]~16_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[0]~16_combout\ & (\IC2|reg_dacs[2]~reg0_regout\)))) # (!\IC2|reg_dacs[34]~15_combout\ & 
-- (\IC2|reg_dacs[2]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[2]~reg0_regout\,
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[34]~15_combout\,
	datad => \IC2|reg_dacs[0]~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[2]~reg0_regout\);

-- Location: LC_X6_Y3_N2
\dac0[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[5]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[2]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[2]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[5]~reg0_regout\);

-- Location: LC_X6_Y3_N0
\IC2|reg_dacs[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[1]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[0]~16_combout\ & ((\IC2|reg_dacs[1]~8_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[1]~8_combout\ & (\IC2|reg_dacs[1]~reg0_regout\)))) # (!\IC2|reg_dacs[0]~16_combout\ & 
-- (\IC2|reg_dacs[1]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[1]~reg0_regout\,
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[0]~16_combout\,
	datad => \IC2|reg_dacs[1]~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[1]~reg0_regout\);

-- Location: LC_X6_Y3_N3
\dac0[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[1]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[1]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[6]~reg0_regout\);

-- Location: LC_X6_Y3_N4
\IC2|reg_dacs[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[0]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[0]~16_combout\ & ((\IC2|reg_dacs[32]~11_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[32]~11_combout\ & (\IC2|reg_dacs[0]~reg0_regout\)))) # (!\IC2|reg_dacs[0]~16_combout\ & 
-- (\IC2|reg_dacs[0]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[0]~reg0_regout\,
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[0]~16_combout\,
	datad => \IC2|reg_dacs[32]~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[0]~reg0_regout\);

-- Location: LC_X6_Y3_N9
\dac0[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[0]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[0]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[7]~reg0_regout\);

-- Location: LC_X3_Y3_N6
\IC2|reg_dacs[46]~20\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[46]~20_combout\ = (!\spi_slave_ss~combout\ & (\IC2|wr_dacs~combout\ & (\IC2|rx_bit_counter\(1) & \IC2|rx_bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_ss~combout\,
	datab => \IC2|wr_dacs~combout\,
	datac => \IC2|rx_bit_counter\(1),
	datad => \IC2|rx_bit_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[46]~20_combout\);

-- Location: LC_X3_Y3_N7
\IC2|reg_dacs[46]~21\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[46]~21_combout\ = ((\IC2|rx_bit_counter\(4) & (!\IC2|rx_bit_counter\(3) & \IC2|reg_dacs[46]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(4),
	datac => \IC2|rx_bit_counter\(3),
	datad => \IC2|reg_dacs[46]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[46]~21_combout\);

-- Location: LC_X2_Y3_N4
\IC2|reg_dacs[15]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[15]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[15]~2_combout\ & ((\IC2|reg_dacs[46]~21_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[46]~21_combout\ & (\IC2|reg_dacs[15]~reg0_regout\)))) # (!\IC2|reg_dacs[15]~2_combout\ & 
-- (\IC2|reg_dacs[15]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[15]~2_combout\,
	datab => \IC2|reg_dacs[15]~reg0_regout\,
	datac => \spi_slave_mosi~combout\,
	datad => \IC2|reg_dacs[46]~21_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[15]~reg0_regout\);

-- Location: LC_X2_Y3_N5
\dac0[8]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[15]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[15]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[8]~reg0_regout\);

-- Location: LC_X7_Y3_N3
\IC2|reg_dacs[46]~23\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[46]~23_combout\ = (!\IC2|rx_bit_counter\(0) & (!\IC2|rx_bit_counter\(3) & (\IC2|rx_bit_counter\(4) & \IC2|reg_dacs[46]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC2|rx_bit_counter\(3),
	datac => \IC2|rx_bit_counter\(4),
	datad => \IC2|reg_dacs[46]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[46]~23_combout\);

-- Location: LC_X7_Y3_N4
\IC2|reg_dacs[14]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[14]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(5) & (((\IC2|reg_dacs[14]~reg0_regout\)))) # (!\IC2|rx_bit_counter\(5) & ((\IC2|reg_dacs[46]~23_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[46]~23_combout\ & 
-- ((\IC2|reg_dacs[14]~reg0_regout\))))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[14]~reg0_regout\,
	datac => \IC2|rx_bit_counter\(5),
	datad => \IC2|reg_dacs[46]~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[14]~reg0_regout\);

-- Location: LC_X7_Y3_N6
\dac0[9]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac0[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[14]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[14]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac0[9]~reg0_regout\);

-- Location: LC_X4_Y2_N6
\IC2|reg_dacs[19]~25\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[19]~25_combout\ = (\IC2|rx_bit_counter\(4) & (!\IC2|rx_bit_counter\(5) & (\IC2|rx_bit_counter\(0) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(4),
	datab => \IC2|rx_bit_counter\(5),
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[19]~25_combout\);

-- Location: LC_X2_Y4_N4
\IC2|reg_dacs[23]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[23]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[38]~3_combout\ & ((\IC2|reg_dacs[19]~25_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[19]~25_combout\ & ((\IC2|reg_dacs[23]~reg0_regout\))))) # (!\IC2|reg_dacs[38]~3_combout\ & 
-- (((\IC2|reg_dacs[23]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[23]~reg0_regout\,
	datac => \IC2|reg_dacs[38]~3_combout\,
	datad => \IC2|reg_dacs[19]~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[23]~reg0_regout\);

-- Location: LC_X2_Y4_N1
\dac1[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[23]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[23]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[0]~reg0_regout\);

-- Location: LC_X3_Y2_N0
\IC2|reg_dacs[16]~27\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[16]~27_combout\ = (!\IC2|rx_bit_counter\(0) & (!\IC2|rx_bit_counter\(5) & (\IC2|rx_bit_counter\(4) & \IC2|reg_dacs[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(0),
	datab => \IC2|rx_bit_counter\(5),
	datac => \IC2|rx_bit_counter\(4),
	datad => \IC2|reg_dacs[32]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[16]~27_combout\);

-- Location: LC_X3_Y2_N7
\IC2|reg_dacs[22]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[22]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[38]~3_combout\ & ((\IC2|reg_dacs[16]~27_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[16]~27_combout\ & ((\IC2|reg_dacs[22]~reg0_regout\))))) # (!\IC2|reg_dacs[38]~3_combout\ & 
-- (((\IC2|reg_dacs[22]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[38]~3_combout\,
	datac => \IC2|reg_dacs[22]~reg0_regout\,
	datad => \IC2|reg_dacs[16]~27_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[22]~reg0_regout\);

-- Location: LC_X3_Y2_N9
\dac1[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[22]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[22]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[1]~reg0_regout\);

-- Location: LC_X4_Y2_N0
\IC2|reg_dacs[17]~29\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[17]~29_combout\ = (!\IC2|rx_bit_counter\(1) & (((\IC2|reg_dacs[19]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(1),
	datac => \IC2|reg_dacs[19]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[17]~29_combout\);

-- Location: LC_X4_Y2_N7
\IC2|reg_dacs[21]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[21]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[17]~29_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[17]~29_combout\ & ((\IC2|reg_dacs[21]~reg0_regout\))))) # (!\IC2|rx_bit_counter\(2) & 
-- (((\IC2|reg_dacs[21]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|reg_dacs[21]~reg0_regout\,
	datad => \IC2|reg_dacs[17]~29_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[21]~reg0_regout\);

-- Location: LC_X4_Y2_N9
\dac1[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[21]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[21]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[2]~reg0_regout\);

-- Location: LC_X3_Y2_N1
\IC2|reg_dacs[16]~31\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[16]~31_combout\ = ((!\IC2|rx_bit_counter\(1) & ((\IC2|reg_dacs[16]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(1),
	datad => \IC2|reg_dacs[16]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[16]~31_combout\);

-- Location: LC_X2_Y2_N5
\IC2|reg_dacs[20]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[20]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[16]~31_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[16]~31_combout\ & ((\IC2|reg_dacs[20]~reg0_regout\))))) # (!\IC2|rx_bit_counter\(2) & 
-- (((\IC2|reg_dacs[20]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|reg_dacs[20]~reg0_regout\,
	datad => \IC2|reg_dacs[16]~31_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[20]~reg0_regout\);

-- Location: LC_X2_Y2_N4
\dac1[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[20]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[20]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[3]~reg0_regout\);

-- Location: LC_X5_Y4_N9
\IC2|reg_dacs[18]~33\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[18]~33_combout\ = (((!\IC2|rx_bit_counter\(2) & \IC2|rx_bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \IC2|rx_bit_counter\(2),
	datad => \IC2|rx_bit_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[18]~33_combout\);

-- Location: LC_X5_Y4_N0
\IC2|reg_dacs[19]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[19]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[18]~33_combout\ & ((\IC2|reg_dacs[19]~25_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[19]~25_combout\ & ((\IC2|reg_dacs[19]~reg0_regout\))))) # (!\IC2|reg_dacs[18]~33_combout\ & 
-- (((\IC2|reg_dacs[19]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[18]~33_combout\,
	datac => \IC2|reg_dacs[19]~reg0_regout\,
	datad => \IC2|reg_dacs[19]~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[19]~reg0_regout\);

-- Location: LC_X5_Y4_N8
\dac1[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[19]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[19]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[4]~reg0_regout\);

-- Location: LC_X2_Y2_N6
\IC2|reg_dacs[18]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[18]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[16]~27_combout\ & ((\IC2|reg_dacs[18]~33_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[18]~33_combout\ & ((\IC2|reg_dacs[18]~reg0_regout\))))) # (!\IC2|reg_dacs[16]~27_combout\ & 
-- (((\IC2|reg_dacs[18]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[18]~reg0_regout\,
	datac => \IC2|reg_dacs[16]~27_combout\,
	datad => \IC2|reg_dacs[18]~33_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[18]~reg0_regout\);

-- Location: LC_X2_Y2_N3
\dac1[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[5]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[18]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[18]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[5]~reg0_regout\);

-- Location: LC_X4_Y2_N4
\IC2|reg_dacs[17]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[17]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & (((\IC2|reg_dacs[17]~reg0_regout\)))) # (!\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[17]~29_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[17]~29_combout\ & 
-- ((\IC2|reg_dacs[17]~reg0_regout\))))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|reg_dacs[17]~reg0_regout\,
	datad => \IC2|reg_dacs[17]~29_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[17]~reg0_regout\);

-- Location: LC_X4_Y2_N5
\dac1[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[17]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[17]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[6]~reg0_regout\);

-- Location: LC_X3_Y2_N4
\IC2|reg_dacs[16]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[16]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & (((\IC2|reg_dacs[16]~reg0_regout\)))) # (!\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[16]~31_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[16]~31_combout\ & 
-- ((\IC2|reg_dacs[16]~reg0_regout\))))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|reg_dacs[16]~reg0_regout\,
	datad => \IC2|reg_dacs[16]~31_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[16]~reg0_regout\);

-- Location: LC_X3_Y2_N2
\dac1[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[16]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[16]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[7]~reg0_regout\);

-- Location: LC_X3_Y3_N1
\IC2|reg_dacs[47]~38\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[47]~38_combout\ = (((\IC2|rx_bit_counter\(0) & \IC2|rx_bit_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \IC2|rx_bit_counter\(0),
	datad => \IC2|rx_bit_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[47]~38_combout\);

-- Location: LC_X7_Y3_N2
\IC2|reg_dacs[31]~39\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[31]~39_combout\ = ((!\IC2|rx_bit_counter\(3) & (!\IC2|rx_bit_counter\(4) & \IC2|reg_dacs[46]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(3),
	datac => \IC2|rx_bit_counter\(4),
	datad => \IC2|reg_dacs[46]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[31]~39_combout\);

-- Location: LC_X7_Y3_N5
\IC2|reg_dacs[31]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[31]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[47]~38_combout\ & ((\IC2|reg_dacs[31]~39_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[31]~39_combout\ & (\IC2|reg_dacs[31]~reg0_regout\)))) # (!\IC2|reg_dacs[47]~38_combout\ & 
-- (\IC2|reg_dacs[31]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[31]~reg0_regout\,
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[47]~38_combout\,
	datad => \IC2|reg_dacs[31]~39_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[31]~reg0_regout\);

-- Location: LC_X7_Y3_N1
\dac1[8]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[31]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[31]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[8]~reg0_regout\);

-- Location: LC_X7_Y2_N0
\IC2|reg_dacs[30]~41\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[30]~41_combout\ = (((\IC2|rx_bit_counter\(5) & !\IC2|rx_bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \IC2|rx_bit_counter\(5),
	datad => \IC2|rx_bit_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[30]~41_combout\);

-- Location: LC_X7_Y3_N7
\IC2|reg_dacs[30]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[30]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[30]~41_combout\ & ((\IC2|reg_dacs[31]~39_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[31]~39_combout\ & ((\IC2|reg_dacs[30]~reg0_regout\))))) # (!\IC2|reg_dacs[30]~41_combout\ & 
-- (((\IC2|reg_dacs[30]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[30]~reg0_regout\,
	datac => \IC2|reg_dacs[30]~41_combout\,
	datad => \IC2|reg_dacs[31]~39_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[30]~reg0_regout\);

-- Location: LC_X7_Y3_N9
\dac1[9]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac1[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[30]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[30]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac1[9]~reg0_regout\);

-- Location: LC_X2_Y2_N0
\IC2|reg_dacs[39]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[39]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[39]~56_combout\ & ((\IC2|reg_dacs[47]~38_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[47]~38_combout\ & ((\IC2|reg_dacs[39]~reg0_regout\))))) # (!\IC2|reg_dacs[39]~56_combout\ & 
-- (((\IC2|reg_dacs[39]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[39]~reg0_regout\,
	datac => \IC2|reg_dacs[39]~56_combout\,
	datad => \IC2|reg_dacs[47]~38_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[39]~reg0_regout\);

-- Location: LC_X2_Y2_N2
\dac2[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[39]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[39]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[0]~reg0_regout\);

-- Location: LC_X6_Y4_N4
\IC2|reg_dacs[38]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[38]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(5) & ((\IC2|reg_dacs[38]~6_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[38]~6_combout\ & ((\IC2|reg_dacs[38]~reg0_regout\))))) # (!\IC2|rx_bit_counter\(5) & 
-- (((\IC2|reg_dacs[38]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|rx_bit_counter\(5),
	datab => \spi_slave_mosi~combout\,
	datac => \IC2|reg_dacs[38]~reg0_regout\,
	datad => \IC2|reg_dacs[38]~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[38]~reg0_regout\);

-- Location: LC_X6_Y4_N7
\dac2[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[38]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[38]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[1]~reg0_regout\);

-- Location: LC_X3_Y2_N8
\IC2|reg_dacs[33]~45\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[33]~45_combout\ = (!\IC2|rx_bit_counter\(1) & (\IC2|reg_dacs[32]~4_combout\ & (!\IC2|rx_bit_counter\(4) & \IC2|reg_dacs[47]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IC2|rx_bit_counter\(1),
	datab => \IC2|reg_dacs[32]~4_combout\,
	datac => \IC2|rx_bit_counter\(4),
	datad => \IC2|reg_dacs[47]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[33]~45_combout\);

-- Location: LC_X3_Y2_N5
\IC2|reg_dacs[37]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[37]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[33]~45_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[33]~45_combout\ & ((\IC2|reg_dacs[37]~reg0_regout\))))) # (!\IC2|rx_bit_counter\(2) & 
-- (((\IC2|reg_dacs[37]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \IC2|reg_dacs[37]~reg0_regout\,
	datad => \IC2|reg_dacs[33]~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[37]~reg0_regout\);

-- Location: LC_X3_Y2_N3
\dac2[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[37]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[37]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[2]~reg0_regout\);

-- Location: LC_X7_Y2_N3
\IC2|reg_dacs[32]~47\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[32]~47_combout\ = ((\IC2|rx_bit_counter\(5) & ((\IC2|reg_dacs[32]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(5),
	datad => \IC2|reg_dacs[32]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[32]~47_combout\);

-- Location: LC_X7_Y2_N6
\IC2|reg_dacs[36]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[36]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[32]~47_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[32]~47_combout\ & (\IC2|reg_dacs[36]~reg0_regout\)))) # (!\IC2|rx_bit_counter\(2) & 
-- (\IC2|reg_dacs[36]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[36]~reg0_regout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \spi_slave_mosi~combout\,
	datad => \IC2|reg_dacs[32]~47_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[36]~reg0_regout\);

-- Location: LC_X7_Y2_N7
\dac2[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[36]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[36]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[3]~reg0_regout\);

-- Location: LC_X3_Y3_N5
\IC2|reg_dacs[35]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[35]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[47]~38_combout\ & ((\IC2|reg_dacs[35]~13_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[35]~13_combout\ & ((\IC2|reg_dacs[35]~reg0_regout\))))) # (!\IC2|reg_dacs[47]~38_combout\ & 
-- (((\IC2|reg_dacs[35]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[47]~38_combout\,
	datac => \IC2|reg_dacs[35]~reg0_regout\,
	datad => \IC2|reg_dacs[35]~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[35]~reg0_regout\);

-- Location: LC_X3_Y3_N4
\dac2[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[35]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[35]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[4]~reg0_regout\);

-- Location: LC_X6_Y3_N1
\IC2|reg_dacs[34]~50\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[34]~50_combout\ = ((!\IC2|rx_bit_counter\(2) & ((\IC2|rx_bit_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IC2|rx_bit_counter\(2),
	datad => \IC2|rx_bit_counter\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IC2|reg_dacs[34]~50_combout\);

-- Location: LC_X6_Y3_N7
\IC2|reg_dacs[34]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[34]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[34]~50_combout\ & ((\IC2|reg_dacs[34]~15_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[34]~15_combout\ & ((\IC2|reg_dacs[34]~reg0_regout\))))) # (!\IC2|reg_dacs[34]~50_combout\ & 
-- (((\IC2|reg_dacs[34]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[34]~50_combout\,
	datac => \IC2|reg_dacs[34]~reg0_regout\,
	datad => \IC2|reg_dacs[34]~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[34]~reg0_regout\);

-- Location: LC_X6_Y3_N8
\dac2[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[5]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[34]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[34]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[5]~reg0_regout\);

-- Location: LC_X2_Y2_N7
\IC2|reg_dacs[33]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[33]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & (\IC2|reg_dacs[33]~reg0_regout\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[33]~45_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[33]~45_combout\ & 
-- (\IC2|reg_dacs[33]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[33]~reg0_regout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \spi_slave_mosi~combout\,
	datad => \IC2|reg_dacs[33]~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[33]~reg0_regout\);

-- Location: LC_X2_Y2_N8
\dac2[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[33]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[33]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[6]~reg0_regout\);

-- Location: LC_X7_Y2_N4
\IC2|reg_dacs[32]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[32]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(2) & (\IC2|reg_dacs[32]~reg0_regout\)) # (!\IC2|rx_bit_counter\(2) & ((\IC2|reg_dacs[32]~47_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[32]~47_combout\ & 
-- (\IC2|reg_dacs[32]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[32]~reg0_regout\,
	datab => \IC2|rx_bit_counter\(2),
	datac => \spi_slave_mosi~combout\,
	datad => \IC2|reg_dacs[32]~47_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[32]~reg0_regout\);

-- Location: LC_X7_Y2_N9
\dac2[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[32]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[32]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[7]~reg0_regout\);

-- Location: LC_X2_Y3_N6
\IC2|reg_dacs[47]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[47]~reg0_regout\ = DFFEAS((\IC2|reg_dacs[47]~38_combout\ & ((\IC2|reg_dacs[46]~21_combout\ & ((\spi_slave_mosi~combout\))) # (!\IC2|reg_dacs[46]~21_combout\ & (\IC2|reg_dacs[47]~reg0_regout\)))) # (!\IC2|reg_dacs[47]~38_combout\ & 
-- (\IC2|reg_dacs[47]~reg0_regout\)), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \IC2|reg_dacs[47]~38_combout\,
	datab => \IC2|reg_dacs[47]~reg0_regout\,
	datac => \spi_slave_mosi~combout\,
	datad => \IC2|reg_dacs[46]~21_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[47]~reg0_regout\);

-- Location: LC_X2_Y3_N1
\dac2[8]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[47]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[47]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[8]~reg0_regout\);

-- Location: LC_X7_Y3_N0
\IC2|reg_dacs[46]~reg0\ : maxii_lcell
-- Equation(s):
-- \IC2|reg_dacs[46]~reg0_regout\ = DFFEAS((\IC2|rx_bit_counter\(5) & ((\IC2|reg_dacs[46]~23_combout\ & (\spi_slave_mosi~combout\)) # (!\IC2|reg_dacs[46]~23_combout\ & ((\IC2|reg_dacs[46]~reg0_regout\))))) # (!\IC2|rx_bit_counter\(5) & 
-- (((\IC2|reg_dacs[46]~reg0_regout\)))), GLOBAL(\spi_slave_sck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "accc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \spi_slave_sck~combout\,
	dataa => \spi_slave_mosi~combout\,
	datab => \IC2|reg_dacs[46]~reg0_regout\,
	datac => \IC2|rx_bit_counter\(5),
	datad => \IC2|reg_dacs[46]~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IC2|reg_dacs[46]~reg0_regout\);

-- Location: LC_X7_Y3_N8
\dac2[9]~reg0\ : maxii_lcell
-- Equation(s):
-- \dac2[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\load_dacs~combout\), VCC, , , \IC2|reg_dacs[46]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \load_dacs~combout\,
	datac => \IC2|reg_dacs[46]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dac2[9]~reg0_regout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\led1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led1);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\spi_slave_miso~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IC2|miso$latch~combout\,
	oe => \IC2|miso_587~combout\,
	padio => ww_spi_slave_miso);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\encoder1_z~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_encoder1_z);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\encoder1_u_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_encoder1_u_in~combout\,
	oe => VCC,
	padio => ww_encoder1_u_out);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\encoder1_v_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_encoder1_v_in~combout\,
	oe => VCC,
	padio => ww_encoder1_v_out);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\encoder1_w_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_encoder1_w_in~combout\,
	oe => VCC,
	padio => ww_encoder1_w_out);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[0]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[1]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[2]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[3]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[4]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(4));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[5]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(5));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[6]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(6));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[7]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(7));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[8]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(8));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac0[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac0[9]~reg0_regout\,
	oe => VCC,
	padio => ww_dac0(9));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[0]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[1]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(1));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[2]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(2));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[3]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(3));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[4]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(4));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[5]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(5));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[6]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(6));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[7]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(7));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[8]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(8));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac1[9]~reg0_regout\,
	oe => VCC,
	padio => ww_dac1(9));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[0]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[1]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[2]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[3]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[4]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(4));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[5]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(5));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[6]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(6));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[7]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(7));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[8]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(8));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\dac2[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac2[9]~reg0_regout\,
	oe => VCC,
	padio => ww_dac2(9));
END structure;


