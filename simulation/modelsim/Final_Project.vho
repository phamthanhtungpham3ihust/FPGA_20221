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

-- DATE "12/30/2022 17:03:20"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Entity IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	dht_bus : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	lcd_e : BUFFER std_logic;
	erro : BUFFER std_logic;
	led2 : BUFFER std_logic;
	data_to_lcd : BUFFER std_logic_vector(7 DOWNTO 0);
	tx : BUFFER std_logic
	);
END Top_Entity;

-- Design Ports Information
-- lcd_rw	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_rs	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_e	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- erro	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led2	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[0]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[1]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[2]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[3]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[4]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[5]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[6]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_to_lcd[7]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tx	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dht_bus	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clock	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Top_Entity IS
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
SIGNAL ww_clock : std_logic;
SIGNAL ww_dht_bus : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_data_to_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tx : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dht_bus~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \erro~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \data_to_lcd[0]~output_o\ : std_logic;
SIGNAL \data_to_lcd[1]~output_o\ : std_logic;
SIGNAL \data_to_lcd[2]~output_o\ : std_logic;
SIGNAL \data_to_lcd[3]~output_o\ : std_logic;
SIGNAL \data_to_lcd[4]~output_o\ : std_logic;
SIGNAL \data_to_lcd[5]~output_o\ : std_logic;
SIGNAL \data_to_lcd[6]~output_o\ : std_logic;
SIGNAL \data_to_lcd[7]~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|Equal5~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~9\ : std_logic;
SIGNAL \b2v_inst|Add2~10_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \dht_bus~input_o\ : std_logic;
SIGNAL \b2v_inst|Mux45~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~83_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~14_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~15_combout\ : std_logic;
SIGNAL \b2v_inst|Equal5~1_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~1\ : std_logic;
SIGNAL \b2v_inst|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~82_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~3\ : std_logic;
SIGNAL \b2v_inst|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~81_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~5\ : std_logic;
SIGNAL \b2v_inst|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~11_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~7\ : std_logic;
SIGNAL \b2v_inst|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~9\ : std_logic;
SIGNAL \b2v_inst|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~93_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~13\ : std_logic;
SIGNAL \b2v_inst|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~94_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~15\ : std_logic;
SIGNAL \b2v_inst|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~85_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~17\ : std_logic;
SIGNAL \b2v_inst|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~86_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~19\ : std_logic;
SIGNAL \b2v_inst|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~84_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~21\ : std_logic;
SIGNAL \b2v_inst|Add0~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~95_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~23\ : std_logic;
SIGNAL \b2v_inst|Add0~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~92_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~25\ : std_logic;
SIGNAL \b2v_inst|Add0~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~90_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~27\ : std_logic;
SIGNAL \b2v_inst|Add0~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~91_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~29\ : std_logic;
SIGNAL \b2v_inst|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~77_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~31\ : std_logic;
SIGNAL \b2v_inst|Add0~32_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~76_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~33\ : std_logic;
SIGNAL \b2v_inst|Add0~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~88_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~35\ : std_logic;
SIGNAL \b2v_inst|Add0~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~89_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~37\ : std_logic;
SIGNAL \b2v_inst|Add0~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~75_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~39\ : std_logic;
SIGNAL \b2v_inst|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~69_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~41\ : std_logic;
SIGNAL \b2v_inst|Add0~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~87_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~53\ : std_logic;
SIGNAL \b2v_inst|Add0~54_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~70_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~55\ : std_logic;
SIGNAL \b2v_inst|Add0~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~67_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~57\ : std_logic;
SIGNAL \b2v_inst|Add0~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~66_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~59\ : std_logic;
SIGNAL \b2v_inst|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~65_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~61\ : std_logic;
SIGNAL \b2v_inst|Add0~62_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~64_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~63\ : std_logic;
SIGNAL \b2v_inst|Add0~78_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~80_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~43\ : std_logic;
SIGNAL \b2v_inst|Add0~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~74_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~45\ : std_logic;
SIGNAL \b2v_inst|Add0~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~73_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~47\ : std_logic;
SIGNAL \b2v_inst|Add0~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~72_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal3~0_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal2~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector35~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector33~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector35~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector35~2_combout\ : std_logic;
SIGNAL \b2v_inst|state.read_data~q\ : std_logic;
SIGNAL \b2v_inst|Mux44~0_combout\ : std_logic;
SIGNAL \b2v_inst|tmp_data~0_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|cnt[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~49\ : std_logic;
SIGNAL \b2v_inst|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~71_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~51\ : std_logic;
SIGNAL \b2v_inst|Add0~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~68_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~4_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~5_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~7_combout\ : std_logic;
SIGNAL \b2v_inst|Equal7~8_combout\ : std_logic;
SIGNAL \b2v_inst|Selector36~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.delay~q\ : std_logic;
SIGNAL \b2v_inst|Selector33~4_combout\ : std_logic;
SIGNAL \b2v_inst|Selector34~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector34~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector34~2_combout\ : std_logic;
SIGNAL \b2v_inst|state.get_data~q\ : std_logic;
SIGNAL \b2v_inst|Equal4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~0_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~1\ : std_logic;
SIGNAL \b2v_inst|Add2~2_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~3\ : std_logic;
SIGNAL \b2v_inst|Add2~4_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~5\ : std_logic;
SIGNAL \b2v_inst|Add2~7\ : std_logic;
SIGNAL \b2v_inst|Add2~8_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~6_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~6_combout\ : std_logic;
SIGNAL \b2v_inst|ptr~2_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bh_tmp[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.check~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|state.check~q\ : std_logic;
SIGNAL \b2v_inst|Selector33~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector33~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector33~3_combout\ : std_logic;
SIGNAL \b2v_inst|state.init~q\ : std_logic;
SIGNAL \b2v_inst|init_stp[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|init_stp[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~2_combout\ : std_logic;
SIGNAL \b2v_inst|dht_en~q\ : std_logic;
SIGNAL \b2v_inst5|Selector26~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector31~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~1\ : std_logic;
SIGNAL \b2v_inst5|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector30~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~3\ : std_logic;
SIGNAL \b2v_inst5|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector29~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~5\ : std_logic;
SIGNAL \b2v_inst5|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector28~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~7\ : std_logic;
SIGNAL \b2v_inst5|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector27~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~9\ : std_logic;
SIGNAL \b2v_inst5|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~11\ : std_logic;
SIGNAL \b2v_inst5|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector25~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~13\ : std_logic;
SIGNAL \b2v_inst5|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector24~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~15\ : std_logic;
SIGNAL \b2v_inst5|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector23~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~17\ : std_logic;
SIGNAL \b2v_inst5|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector22~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~19\ : std_logic;
SIGNAL \b2v_inst5|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector21~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~21\ : std_logic;
SIGNAL \b2v_inst5|Add0~22_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector20~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~23\ : std_logic;
SIGNAL \b2v_inst5|Add0~24_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector19~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~25\ : std_logic;
SIGNAL \b2v_inst5|Add0~26_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector18~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~27\ : std_logic;
SIGNAL \b2v_inst5|Add0~28_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector17~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~29\ : std_logic;
SIGNAL \b2v_inst5|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector16~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~31\ : std_logic;
SIGNAL \b2v_inst5|Add0~33\ : std_logic;
SIGNAL \b2v_inst5|Add0~34_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector14~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~35\ : std_logic;
SIGNAL \b2v_inst5|Add0~36_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector13~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~37\ : std_logic;
SIGNAL \b2v_inst5|Add0~38_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector12~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~39\ : std_logic;
SIGNAL \b2v_inst5|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector11~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~41\ : std_logic;
SIGNAL \b2v_inst5|Add0~42_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector10~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~43\ : std_logic;
SIGNAL \b2v_inst5|Add0~44_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector9~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~45\ : std_logic;
SIGNAL \b2v_inst5|Add0~46_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector8~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~47\ : std_logic;
SIGNAL \b2v_inst5|Add0~48_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector7~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~49\ : std_logic;
SIGNAL \b2v_inst5|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~51\ : std_logic;
SIGNAL \b2v_inst5|Add0~52_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~53\ : std_logic;
SIGNAL \b2v_inst5|Add0~54_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~55\ : std_logic;
SIGNAL \b2v_inst5|Add0~56_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~57\ : std_logic;
SIGNAL \b2v_inst5|Add0~58_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~59\ : std_logic;
SIGNAL \b2v_inst5|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~61\ : std_logic;
SIGNAL \b2v_inst5|Add0~62_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~7_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~6_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~8_combout\ : std_logic;
SIGNAL \b2v_inst5|LessThan0~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector47~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~11_combout\ : std_logic;
SIGNAL \b2v_inst5|cmd_ptr[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst5|cmd_ptr~1_combout\ : std_logic;
SIGNAL \b2v_inst5|cmd_ptr~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector43~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector43~4_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.lcd_add_l0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.lcd_add_l0~q\ : std_logic;
SIGNAL \b2v_inst5|Equal4~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal4~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal4~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal4~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector44~0_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[0]~34_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[2]~100_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal4~4_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[0]~40_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[0]~41_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[0]~35\ : std_logic;
SIGNAL \b2v_inst5|ptr[1]~36_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[1]~37\ : std_logic;
SIGNAL \b2v_inst5|ptr[2]~38_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[2]~39\ : std_logic;
SIGNAL \b2v_inst5|ptr[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[3]~43\ : std_logic;
SIGNAL \b2v_inst5|ptr[4]~44_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[4]~45\ : std_logic;
SIGNAL \b2v_inst5|ptr[5]~46_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[5]~47\ : std_logic;
SIGNAL \b2v_inst5|ptr[6]~48_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[6]~49\ : std_logic;
SIGNAL \b2v_inst5|ptr[7]~50_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[7]~51\ : std_logic;
SIGNAL \b2v_inst5|ptr[8]~52_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[8]~53\ : std_logic;
SIGNAL \b2v_inst5|ptr[9]~54_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[9]~55\ : std_logic;
SIGNAL \b2v_inst5|ptr[10]~56_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[10]~57\ : std_logic;
SIGNAL \b2v_inst5|ptr[11]~58_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~2_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[11]~59\ : std_logic;
SIGNAL \b2v_inst5|ptr[12]~60_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[12]~61\ : std_logic;
SIGNAL \b2v_inst5|ptr[13]~62_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[13]~63\ : std_logic;
SIGNAL \b2v_inst5|ptr[14]~64_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[14]~65\ : std_logic;
SIGNAL \b2v_inst5|ptr[15]~66_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[15]~67\ : std_logic;
SIGNAL \b2v_inst5|ptr[16]~68_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[16]~69\ : std_logic;
SIGNAL \b2v_inst5|ptr[17]~70_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[17]~71\ : std_logic;
SIGNAL \b2v_inst5|ptr[18]~72_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[18]~73\ : std_logic;
SIGNAL \b2v_inst5|ptr[19]~74_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[19]~75\ : std_logic;
SIGNAL \b2v_inst5|ptr[20]~76_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[20]~77\ : std_logic;
SIGNAL \b2v_inst5|ptr[21]~78_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[21]~79\ : std_logic;
SIGNAL \b2v_inst5|ptr[22]~80_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[22]~81\ : std_logic;
SIGNAL \b2v_inst5|ptr[23]~82_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[23]~83\ : std_logic;
SIGNAL \b2v_inst5|ptr[24]~84_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[24]~85\ : std_logic;
SIGNAL \b2v_inst5|ptr[25]~86_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[25]~87\ : std_logic;
SIGNAL \b2v_inst5|ptr[26]~88_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[26]~89\ : std_logic;
SIGNAL \b2v_inst5|ptr[27]~90_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~4_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[27]~91\ : std_logic;
SIGNAL \b2v_inst5|ptr[28]~92_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[28]~93\ : std_logic;
SIGNAL \b2v_inst5|ptr[29]~94_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[29]~95\ : std_logic;
SIGNAL \b2v_inst5|ptr[30]~96_combout\ : std_logic;
SIGNAL \b2v_inst5|ptr[30]~97\ : std_logic;
SIGNAL \b2v_inst5|ptr[31]~98_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~12_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal5~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal4~5_combout\ : std_logic;
SIGNAL \b2v_inst5|cnt[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector45~8_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.lcd_add_11~q\ : std_logic;
SIGNAL \b2v_inst5|Selector46~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector44~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector44~2_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.lcd_data_l0~q\ : std_logic;
SIGNAL \b2v_inst5|Selector39~13_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector43~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector43~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector43~2_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.initial~0_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.initial~q\ : std_logic;
SIGNAL \b2v_inst5|Selector46~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~4_combout\ : std_logic;
SIGNAL \b2v_inst5|cnt[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|cnt[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector15~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Add0~32_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector46~10_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.lcd_data_l1~q\ : std_logic;
SIGNAL \b2v_inst5|Selector47~2_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_state.lcd_delay~q\ : std_logic;
SIGNAL \b2v_inst5|Selector32~0_combout\ : std_logic;
SIGNAL \b2v_inst5|rs_temp~q\ : std_logic;
SIGNAL \b2v_inst5|e_temp~0_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_data_temp[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|e_temp~q\ : std_logic;
SIGNAL \b2v_inst|err~0_combout\ : std_logic;
SIGNAL \b2v_inst|err~q\ : std_logic;
SIGNAL \b2v_inst|Decoder0~2_combout\ : std_logic;
SIGNAL \b2v_inst|tmp_data~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \b2v_inst|tmp_data~2_combout\ : std_logic;
SIGNAL \b2v_inst|tmp_data~q\ : std_logic;
SIGNAL \b2v_inst|Decoder0~7_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~16_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[10]~15_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bl_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bh_tmp[7]~1_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~12_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~13_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[18]~14_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bh_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~8_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[9]~3_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bl_tmp[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~5_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~6_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[17]~2_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~3_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[8]~5_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bl_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[16]~4_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bh_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~1\ : std_logic;
SIGNAL \b2v_inst|Add4~3\ : std_logic;
SIGNAL \b2v_inst|Add4~4_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~17_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[34]~18_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bh_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~10_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~18_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[26]~19_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bl_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~11_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[25]~7_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bl_tmp[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~9_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[33]~6_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bh_tmp[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Equal5~2_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[24]~9_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bl_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[32]~8_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bh_tmp[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~1\ : std_logic;
SIGNAL \b2v_inst|Add3~3\ : std_logic;
SIGNAL \b2v_inst|Add3~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~1\ : std_logic;
SIGNAL \b2v_inst|Add5~3\ : std_logic;
SIGNAL \b2v_inst|Add5~4_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~15_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~4_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~14_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[2]~10_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[11]~13_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[19]~12_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_bh_tmp[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~5\ : std_logic;
SIGNAL \b2v_inst|Add4~6_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[27]~17_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bl_tmp[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[35]~16_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_bh_tmp[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~5\ : std_logic;
SIGNAL \b2v_inst|Add3~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~5\ : std_logic;
SIGNAL \b2v_inst|Add5~6_combout\ : std_logic;
SIGNAL \b2v_inst|Equal6~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~2_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~1_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~0_combout\ : std_logic;
SIGNAL \b2v_inst|Equal6~0_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[7]~31_combout\ : std_logic;
SIGNAL \b2v_inst|check_sum_tmp[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~20_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[38]~38_combout\ : std_logic;
SIGNAL \b2v_inst|Decoder0~19_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[30]~39_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[37]~26_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[29]~27_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[36]~28_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[28]~29_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~7\ : std_logic;
SIGNAL \b2v_inst|Add3~9\ : std_logic;
SIGNAL \b2v_inst|Add3~11\ : std_logic;
SIGNAL \b2v_inst|Add3~12_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[14]~35_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[22]~34_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[21]~22_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[13]~23_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[20]~24_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[12]~25_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~7\ : std_logic;
SIGNAL \b2v_inst|Add4~9\ : std_logic;
SIGNAL \b2v_inst|Add4~11\ : std_logic;
SIGNAL \b2v_inst|Add4~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~7\ : std_logic;
SIGNAL \b2v_inst|Add5~9\ : std_logic;
SIGNAL \b2v_inst|Add5~11\ : std_logic;
SIGNAL \b2v_inst|Add5~12_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[6]~30_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[31]~37_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[39]~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~13\ : std_logic;
SIGNAL \b2v_inst|Add3~14_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[15]~33_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[23]~32_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~13\ : std_logic;
SIGNAL \b2v_inst|Add4~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~13\ : std_logic;
SIGNAL \b2v_inst|Add5~14_combout\ : std_logic;
SIGNAL \b2v_inst|Equal6~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~8_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[5]~21_combout\ : std_logic;
SIGNAL \b2v_inst|check_sum_tmp[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|tmp[4]~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add5~10_combout\ : std_logic;
SIGNAL \b2v_inst|Equal6~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal6~4_combout\ : std_logic;
SIGNAL \b2v_inst|check_sum_led~0_combout\ : std_logic;
SIGNAL \b2v_inst|check_sum_led~q\ : std_logic;
SIGNAL \b2v_inst5|Selector40~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~10_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_integral[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~7_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_data_temp[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_data_temp[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~3_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~2_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~1_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~7_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~5_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~6_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~10_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~8_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~9_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~12_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~0_combout\ : std_logic;
SIGNAL \b2v_inst6|LessThan4~0_combout\ : std_logic;
SIGNAL \b2v_inst6|LessThan4~1_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~14_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~13_combout\ : std_logic;
SIGNAL \b2v_inst6|Add6~0_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~4_combout\ : std_logic;
SIGNAL \b2v_inst6|hundreds[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~13_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~0_combout\ : std_logic;
SIGNAL \b2v_inst5|cmd_ptr~0_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_decimal[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_data_temp[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_data_temp[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~3_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~2_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~0_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~1_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_integral[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~4_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~5_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~3_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~8_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_integral[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~6_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~7_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst7|LessThan4~0_combout\ : std_logic;
SIGNAL \b2v_inst7|LessThan4~1_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~13_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~10_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~12_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~11_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~14_combout\ : std_logic;
SIGNAL \b2v_inst7|Add6~0_combout\ : std_logic;
SIGNAL \b2v_inst7|tmp~9_combout\ : std_logic;
SIGNAL \b2v_inst7|hundreds[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector40~11_combout\ : std_logic;
SIGNAL \b2v_inst|dht_temp_decimal[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~2_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~0_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~1_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~4_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~3_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~5_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~7_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~8_combout\ : std_logic;
SIGNAL \b2v_inst8|tmp~6_combout\ : std_logic;
SIGNAL \b2v_inst8|LessThan5~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~8_combout\ : std_logic;
SIGNAL \b2v_inst6|unit[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~10_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~11_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~7_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_decimal[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|dht_humi_decimal[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~0_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~2_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~1_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~4_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~3_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~5_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~6_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~8_combout\ : std_logic;
SIGNAL \b2v_inst9|tmp~7_combout\ : std_logic;
SIGNAL \b2v_inst9|unit[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~3_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector39~12_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~4_combout\ : std_logic;
SIGNAL \b2v_inst7|unit[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst9|unit[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~7_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector33~0_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst6|tens[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~0_combout\ : std_logic;
SIGNAL \b2v_inst6|unit[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|unit[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~10_combout\ : std_logic;
SIGNAL \b2v_inst7|unit[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst9|unit[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector38~11_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst5|lcd_data_temp[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst6|tmp~11_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux8~3_combout\ : std_logic;
SIGNAL \b2v_inst8|unit[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux8~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux8~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux8~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux8~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~4_combout\ : std_logic;
SIGNAL \b2v_inst7|Add6~1_combout\ : std_logic;
SIGNAL \b2v_inst7|tens[3]~13_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector37~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~8_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~6_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~4_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector34~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~3_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~5_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~7_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector36~9_combout\ : std_logic;
SIGNAL \b2v_inst5|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector35~0_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector35~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector34~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector34~2_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector33~1_combout\ : std_logic;
SIGNAL \b2v_inst5|Selector33~2_combout\ : std_logic;
SIGNAL \b2v_inst13|rd_ptr[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|wr_ptr[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst13|wr_ptr[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Add1~2_combout\ : std_logic;
SIGNAL \b2v_inst13|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Add1~1_combout\ : std_logic;
SIGNAL \b2v_inst13|rd_ptr[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst13|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux12~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux12~1_combout\ : std_logic;
SIGNAL \b2v_inst13|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst13|rd_ptr[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux12~2_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux12~3_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux13~5_combout\ : std_logic;
SIGNAL \b2v_inst13|full_tmp~q\ : std_logic;
SIGNAL \b2v_inst12|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~1\ : std_logic;
SIGNAL \b2v_inst12|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~3\ : std_logic;
SIGNAL \b2v_inst12|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~5\ : std_logic;
SIGNAL \b2v_inst12|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~7\ : std_logic;
SIGNAL \b2v_inst12|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~9\ : std_logic;
SIGNAL \b2v_inst12|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~11\ : std_logic;
SIGNAL \b2v_inst12|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~29\ : std_logic;
SIGNAL \b2v_inst12|Add0~30_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[15]~9_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~31\ : std_logic;
SIGNAL \b2v_inst12|Add0~32_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~33\ : std_logic;
SIGNAL \b2v_inst12|Add0~34_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[17]~0_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~35\ : std_logic;
SIGNAL \b2v_inst12|Add0~36_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[18]~1_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~37\ : std_logic;
SIGNAL \b2v_inst12|Add0~38_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~39\ : std_logic;
SIGNAL \b2v_inst12|Add0~40_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~41\ : std_logic;
SIGNAL \b2v_inst12|Add0~42_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[21]~2_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~43\ : std_logic;
SIGNAL \b2v_inst12|Add0~44_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[22]~3_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~45\ : std_logic;
SIGNAL \b2v_inst12|Add0~46_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[23]~4_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~47\ : std_logic;
SIGNAL \b2v_inst12|Add0~48_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~49\ : std_logic;
SIGNAL \b2v_inst12|Add0~50_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[25]~5_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~51\ : std_logic;
SIGNAL \b2v_inst12|Add0~52_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[26]~6_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~53\ : std_logic;
SIGNAL \b2v_inst12|Add0~54_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[27]~7_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~55\ : std_logic;
SIGNAL \b2v_inst12|Add0~56_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~57\ : std_logic;
SIGNAL \b2v_inst12|Add0~58_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~59\ : std_logic;
SIGNAL \b2v_inst12|Add0~60_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~61\ : std_logic;
SIGNAL \b2v_inst12|Add0~62_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~13\ : std_logic;
SIGNAL \b2v_inst12|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[7]~8_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~15\ : std_logic;
SIGNAL \b2v_inst12|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~10_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~11_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~17\ : std_logic;
SIGNAL \b2v_inst12|Add0~18_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[9]~10_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~19\ : std_logic;
SIGNAL \b2v_inst12|Add0~20_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~21\ : std_logic;
SIGNAL \b2v_inst12|Add0~22_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~23\ : std_logic;
SIGNAL \b2v_inst12|Add0~24_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[12]~12_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~25\ : std_logic;
SIGNAL \b2v_inst12|Add0~26_combout\ : std_logic;
SIGNAL \b2v_inst12|reg_cnt_in[13]~11_combout\ : std_logic;
SIGNAL \b2v_inst12|Add0~27\ : std_logic;
SIGNAL \b2v_inst12|Add0~28_combout\ : std_logic;
SIGNAL \b2v_inst12|dividedFrq~0_combout\ : std_logic;
SIGNAL \b2v_inst12|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst12|LessThan1~1_combout\ : std_logic;
SIGNAL \b2v_inst12|dividedFrq~1_combout\ : std_logic;
SIGNAL \b2v_inst12|dividedFrq~2_combout\ : std_logic;
SIGNAL \b2v_inst12|dividedFrq~3_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_ena~q\ : std_logic;
SIGNAL \b2v_inst13|rd_ptr[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux13~2_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux13~3_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux13~4_combout\ : std_logic;
SIGNAL \b2v_inst13|Mux13~6_combout\ : std_logic;
SIGNAL \b2v_inst13|empty_tmp~q\ : std_logic;
SIGNAL \b2v_inst14|Selector2~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~6_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~7_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~3_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~8_combout\ : std_logic;
SIGNAL \b2v_inst14|state_r.data~q\ : std_logic;
SIGNAL \b2v_inst14|Selector2~3_combout\ : std_logic;
SIGNAL \b2v_inst14|state_r.start~q\ : std_logic;
SIGNAL \b2v_inst14|n_r[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst14|n_r[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst14|n_r[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst14|n_r[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~5_combout\ : std_logic;
SIGNAL \b2v_inst14|state_r.idle~0_combout\ : std_logic;
SIGNAL \b2v_inst14|state_r.idle~q\ : std_logic;
SIGNAL \b2v_inst14|s_r[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst10|r_n[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~1\ : std_logic;
SIGNAL \b2v_inst10|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst10|r_n[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~3\ : std_logic;
SIGNAL \b2v_inst10|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~5\ : std_logic;
SIGNAL \b2v_inst10|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~7\ : std_logic;
SIGNAL \b2v_inst10|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~9\ : std_logic;
SIGNAL \b2v_inst10|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst10|r_n[5]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~11\ : std_logic;
SIGNAL \b2v_inst10|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~13\ : std_logic;
SIGNAL \b2v_inst10|Add0~14_combout\ : std_logic;
SIGNAL \b2v_inst10|r_n[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~15\ : std_logic;
SIGNAL \b2v_inst10|Add0~16_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[1]~6_combout\ : std_logic;
SIGNAL \b2v_inst14|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst14|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst14|s_r[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector3~1_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector4~1_combout\ : std_logic;
SIGNAL \b2v_inst14|state_r.stop~q\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector15~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit8~q\ : std_logic;
SIGNAL \b2v_inst11|Selector16~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit9~q\ : std_logic;
SIGNAL \b2v_inst11|Selector8~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit1~q\ : std_logic;
SIGNAL \b2v_inst11|Selector9~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit2~q\ : std_logic;
SIGNAL \b2v_inst11|Selector10~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit3~q\ : std_logic;
SIGNAL \b2v_inst11|Selector11~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit4~q\ : std_logic;
SIGNAL \b2v_inst11|Selector12~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit5~q\ : std_logic;
SIGNAL \b2v_inst11|Selector13~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit6~q\ : std_logic;
SIGNAL \b2v_inst11|Selector14~0_combout\ : std_logic;
SIGNAL \b2v_inst11|state.digit7~q\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|wr_en~combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~5_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~2_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~3_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~4_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][0]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector16~0_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~1_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][0]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector16~1_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~18_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~19_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~23_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~20_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~21_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~22_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][0]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector16~7_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector16~8_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~12_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~13_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~14_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~17_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~16_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][0]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~15_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][0]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector16~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector16~5_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~6_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~7_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~8_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~11_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][0]~q\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~10_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][0]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|Decoder0~9_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][0]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector16~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector16~3_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector16~6_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector16~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[4]~7_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector6~1_combout\ : std_logic;
SIGNAL \b2v_inst8|unit[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector6~2_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector6~3_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector6~4_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][1]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector15~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector15~3_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][1]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector15~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector15~5_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector15~6_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][1]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector15~0_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][1]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector15~1_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][1]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector15~7_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][1]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][1]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector15~8_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector15~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector5~2_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector5~1_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector5~3_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~7_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~8_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~0_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~1_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector14~5_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~2_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][2]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][2]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector14~3_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector14~6_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector14~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~2_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~3_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~4_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~1_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~5_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~7_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~8_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~2_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~3_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~4_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~5_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector13~6_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~0_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][3]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][3]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector13~1_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector13~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[4]~8_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][4]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector12~7_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector12~8_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][4]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector12~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector12~1_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][4]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector12~2_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][4]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector12~3_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][4]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][4]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector12~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector12~5_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector12~6_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector12~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|uart_tx_data[5]~9_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][5]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector11~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector11~1_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][5]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector11~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector11~5_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][5]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector11~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector11~3_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector11~6_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][5]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][5]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector11~7_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector11~8_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector11~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[14][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[10][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[6][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[2][6]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector10~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector10~1_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[11][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[15][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[3][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[7][6]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector10~7_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector10~8_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[5][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[13][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[1][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[9][6]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector10~2_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector10~3_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[4][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[12][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst13|array_r[8][6]~q\ : std_logic;
SIGNAL \b2v_inst13|array_r[0][6]~q\ : std_logic;
SIGNAL \b2v_inst14|Selector10~4_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector10~5_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector10~6_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector10~9_combout\ : std_logic;
SIGNAL \b2v_inst14|b_r[5]~0_combout\ : std_logic;
SIGNAL \b2v_inst14|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst14|tx_r~q\ : std_logic;
SIGNAL \b2v_inst|tmp\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \b2v_inst|rd_stp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst|ptr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst|init_stp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst|dht_temp_integral\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_temp_decimal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_temp_bl_tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_temp_bh_tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_humi_integral\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_humi_decimal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_humi_bl_tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dht_humi_bh_tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst|check_sum_tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst5|lcd_data_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst5|cmd_ptr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst12|reg_cnt_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst10|r_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \b2v_inst5|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst5|ptr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst11|uart_tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst13|wr_ptr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst13|rd_ptr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst14|s_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst14|n_r\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b2v_inst14|b_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst14|ALT_INV_tx_r~q\ : std_logic;
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst13|ALT_INV_full_tmp~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_dht_en~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
dht_bus <= ww_dht_bus;
lcd_rw <= ww_lcd_rw;
lcd_rs <= ww_lcd_rs;
lcd_e <= ww_lcd_e;
erro <= ww_erro;
led2 <= ww_led2;
data_to_lcd <= ww_data_to_lcd;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\b2v_inst14|ALT_INV_tx_r~q\ <= NOT \b2v_inst14|tx_r~q\;
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\b2v_inst13|ALT_INV_full_tmp~q\ <= NOT \b2v_inst13|full_tmp~q\;
\b2v_inst|ALT_INV_dht_en~q\ <= NOT \b2v_inst|dht_en~q\;

-- Location: IOOBUF_X0_Y9_N9
\dht_bus~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ALT_INV_dht_en~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \dht_bus~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|rs_temp~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|e_temp~q\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\erro~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|err~q\,
	devoe => ww_devoe,
	o => \erro~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|check_sum_led~q\,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\data_to_lcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(0),
	devoe => ww_devoe,
	o => \data_to_lcd[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\data_to_lcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(1),
	devoe => ww_devoe,
	o => \data_to_lcd[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\data_to_lcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(2),
	devoe => ww_devoe,
	o => \data_to_lcd[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\data_to_lcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(3),
	devoe => ww_devoe,
	o => \data_to_lcd[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\data_to_lcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(4),
	devoe => ww_devoe,
	o => \data_to_lcd[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\data_to_lcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(5),
	devoe => ww_devoe,
	o => \data_to_lcd[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\data_to_lcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(6),
	devoe => ww_devoe,
	o => \data_to_lcd[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\data_to_lcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|lcd_data_temp\(7),
	devoe => ww_devoe,
	o => \data_to_lcd[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst14|ALT_INV_tx_r~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y15_N24
\b2v_inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal5~0_combout\ = (!\b2v_inst|ptr\(2) & (!\b2v_inst|ptr\(1) & !\b2v_inst|ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(2),
	datac => \b2v_inst|ptr\(1),
	datad => \b2v_inst|ptr\(0),
	combout => \b2v_inst|Equal5~0_combout\);

-- Location: LCCOMB_X18_Y15_N14
\b2v_inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~8_combout\ = (\b2v_inst|ptr\(4) & (\b2v_inst|Add2~7\ $ (GND))) # (!\b2v_inst|ptr\(4) & (!\b2v_inst|Add2~7\ & VCC))
-- \b2v_inst|Add2~9\ = CARRY((\b2v_inst|ptr\(4) & !\b2v_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(4),
	datad => VCC,
	cin => \b2v_inst|Add2~7\,
	combout => \b2v_inst|Add2~8_combout\,
	cout => \b2v_inst|Add2~9\);

-- Location: LCCOMB_X18_Y15_N16
\b2v_inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~10_combout\ = \b2v_inst|ptr\(5) $ (\b2v_inst|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(5),
	cin => \b2v_inst|Add2~9\,
	combout => \b2v_inst|Add2~10_combout\);

-- Location: LCCOMB_X18_Y15_N4
\b2v_inst|ptr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~1_combout\ = (\b2v_inst|ptr~0_combout\ & \b2v_inst|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ptr~0_combout\,
	datad => \b2v_inst|Add2~10_combout\,
	combout => \b2v_inst|ptr~1_combout\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N8
\dht_bus~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dht_bus,
	o => \dht_bus~input_o\);

-- Location: LCCOMB_X21_Y13_N2
\b2v_inst|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux45~0_combout\ = (!\dht_bus~input_o\ & ((!\b2v_inst|rd_stp\(1)) # (!\b2v_inst|rd_stp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht_bus~input_o\,
	datac => \b2v_inst|rd_stp\(0),
	datad => \b2v_inst|rd_stp\(1),
	combout => \b2v_inst|Mux45~0_combout\);

-- Location: LCCOMB_X24_Y16_N0
\b2v_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = \b2v_inst|cnt\(0) $ (VCC)
-- \b2v_inst|Add0~1\ = CARRY(\b2v_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(0),
	datad => VCC,
	combout => \b2v_inst|Add0~0_combout\,
	cout => \b2v_inst|Add0~1\);

-- Location: LCCOMB_X22_Y15_N6
\b2v_inst|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~83_combout\ = (\b2v_inst|Add0~0_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~0_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~83_combout\);

-- Location: LCCOMB_X21_Y14_N12
\b2v_inst|cnt[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~13_combout\ = (\b2v_inst|state.get_data~q\ & (\b2v_inst|state.init~q\)) # (!\b2v_inst|state.get_data~q\ & (!\b2v_inst|state.init~q\ & \b2v_inst|init_stp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|state.init~q\,
	datad => \b2v_inst|init_stp\(2),
	combout => \b2v_inst|cnt[0]~13_combout\);

-- Location: LCCOMB_X21_Y14_N18
\b2v_inst|cnt[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~12_combout\ = \dht_bus~input_o\ $ (((\b2v_inst|rd_stp\(0) & \b2v_inst|state.read_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|rd_stp\(0),
	datac => \dht_bus~input_o\,
	datad => \b2v_inst|state.read_data~q\,
	combout => \b2v_inst|cnt[0]~12_combout\);

-- Location: LCCOMB_X21_Y14_N26
\b2v_inst|cnt[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~14_combout\ = (\b2v_inst|cnt[0]~13_combout\ & ((\b2v_inst|state.get_data~q\) # ((\b2v_inst|init_stp\(0) & \b2v_inst|cnt[0]~12_combout\)))) # (!\b2v_inst|cnt[0]~13_combout\ & (\b2v_inst|state.get_data~q\ & ((\b2v_inst|cnt[0]~12_combout\) # 
-- (!\b2v_inst|init_stp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt[0]~13_combout\,
	datab => \b2v_inst|init_stp\(0),
	datac => \b2v_inst|state.get_data~q\,
	datad => \b2v_inst|cnt[0]~12_combout\,
	combout => \b2v_inst|cnt[0]~14_combout\);

-- Location: LCCOMB_X21_Y14_N0
\b2v_inst|cnt[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~15_combout\ = (\b2v_inst|state.read_data~q\ & (\b2v_inst|cnt[0]~12_combout\ & ((\b2v_inst|cnt[0]~14_combout\) # (!\b2v_inst|rd_stp\(1))))) # (!\b2v_inst|state.read_data~q\ & (((\b2v_inst|cnt[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.read_data~q\,
	datab => \b2v_inst|rd_stp\(1),
	datac => \b2v_inst|cnt[0]~14_combout\,
	datad => \b2v_inst|cnt[0]~12_combout\,
	combout => \b2v_inst|cnt[0]~15_combout\);

-- Location: LCCOMB_X18_Y15_N26
\b2v_inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal5~1_combout\ = (!\b2v_inst|ptr\(4) & (\b2v_inst|Equal5~0_combout\ & (!\b2v_inst|ptr\(5) & !\b2v_inst|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(4),
	datab => \b2v_inst|Equal5~0_combout\,
	datac => \b2v_inst|ptr\(5),
	datad => \b2v_inst|ptr\(3),
	combout => \b2v_inst|Equal5~1_combout\);

-- Location: LCCOMB_X21_Y15_N6
\b2v_inst|cnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~11_combout\ = (\b2v_inst|state.check~q\) # ((\b2v_inst|cnt[0]~2_combout\) # ((\b2v_inst|Equal5~1_combout\ & \b2v_inst|state.get_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.check~q\,
	datab => \b2v_inst|Equal5~1_combout\,
	datac => \b2v_inst|state.get_data~q\,
	datad => \b2v_inst|cnt[0]~2_combout\,
	combout => \b2v_inst|cnt[0]~11_combout\);

-- Location: LCCOMB_X21_Y15_N24
\b2v_inst|cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~16_combout\ = (!\b2v_inst|cnt[0]~11_combout\ & ((\b2v_inst|dht_temp_bh_tmp[7]~0_combout\) # (!\b2v_inst|cnt[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt[0]~15_combout\,
	datac => \b2v_inst|dht_temp_bh_tmp[7]~0_combout\,
	datad => \b2v_inst|cnt[0]~11_combout\,
	combout => \b2v_inst|cnt[0]~16_combout\);

-- Location: FF_X22_Y15_N7
\b2v_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~83_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(0));

-- Location: LCCOMB_X24_Y16_N2
\b2v_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~2_combout\ = (\b2v_inst|cnt\(1) & (!\b2v_inst|Add0~1\)) # (!\b2v_inst|cnt\(1) & ((\b2v_inst|Add0~1\) # (GND)))
-- \b2v_inst|Add0~3\ = CARRY((!\b2v_inst|Add0~1\) # (!\b2v_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(1),
	datad => VCC,
	cin => \b2v_inst|Add0~1\,
	combout => \b2v_inst|Add0~2_combout\,
	cout => \b2v_inst|Add0~3\);

-- Location: LCCOMB_X22_Y15_N28
\b2v_inst|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~82_combout\ = (\b2v_inst|Add0~2_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~2_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~82_combout\);

-- Location: FF_X22_Y15_N29
\b2v_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~82_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(1));

-- Location: LCCOMB_X24_Y16_N4
\b2v_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~4_combout\ = (\b2v_inst|cnt\(2) & (\b2v_inst|Add0~3\ $ (GND))) # (!\b2v_inst|cnt\(2) & (!\b2v_inst|Add0~3\ & VCC))
-- \b2v_inst|Add0~5\ = CARRY((\b2v_inst|cnt\(2) & !\b2v_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(2),
	datad => VCC,
	cin => \b2v_inst|Add0~3\,
	combout => \b2v_inst|Add0~4_combout\,
	cout => \b2v_inst|Add0~5\);

-- Location: LCCOMB_X22_Y15_N22
\b2v_inst|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~81_combout\ = (\b2v_inst|Add0~4_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~4_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~81_combout\);

-- Location: FF_X22_Y15_N23
\b2v_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~81_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(2));

-- Location: LCCOMB_X24_Y16_N6
\b2v_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~6_combout\ = (\b2v_inst|cnt\(3) & (!\b2v_inst|Add0~5\)) # (!\b2v_inst|cnt\(3) & ((\b2v_inst|Add0~5\) # (GND)))
-- \b2v_inst|Add0~7\ = CARRY((!\b2v_inst|Add0~5\) # (!\b2v_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(3),
	datad => VCC,
	cin => \b2v_inst|Add0~5\,
	combout => \b2v_inst|Add0~6_combout\,
	cout => \b2v_inst|Add0~7\);

-- Location: LCCOMB_X23_Y14_N20
\b2v_inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~11_combout\ = (\b2v_inst|Add0~6_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~6_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~11_combout\);

-- Location: FF_X23_Y14_N21
\b2v_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(3));

-- Location: LCCOMB_X24_Y16_N8
\b2v_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~8_combout\ = (\b2v_inst|cnt\(4) & (\b2v_inst|Add0~7\ $ (GND))) # (!\b2v_inst|cnt\(4) & (!\b2v_inst|Add0~7\ & VCC))
-- \b2v_inst|Add0~9\ = CARRY((\b2v_inst|cnt\(4) & !\b2v_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(4),
	datad => VCC,
	cin => \b2v_inst|Add0~7\,
	combout => \b2v_inst|Add0~8_combout\,
	cout => \b2v_inst|Add0~9\);

-- Location: LCCOMB_X23_Y16_N12
\b2v_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~10_combout\ = (\b2v_inst|Add0~8_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~8_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~10_combout\);

-- Location: FF_X23_Y16_N13
\b2v_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(4));

-- Location: LCCOMB_X24_Y16_N10
\b2v_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~12_combout\ = (\b2v_inst|cnt\(5) & (!\b2v_inst|Add0~9\)) # (!\b2v_inst|cnt\(5) & ((\b2v_inst|Add0~9\) # (GND)))
-- \b2v_inst|Add0~13\ = CARRY((!\b2v_inst|Add0~9\) # (!\b2v_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(5),
	datad => VCC,
	cin => \b2v_inst|Add0~9\,
	combout => \b2v_inst|Add0~12_combout\,
	cout => \b2v_inst|Add0~13\);

-- Location: LCCOMB_X23_Y14_N0
\b2v_inst|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~93_combout\ = (\b2v_inst|Add0~12_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~12_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~93_combout\);

-- Location: FF_X23_Y14_N1
\b2v_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~93_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(5));

-- Location: LCCOMB_X24_Y16_N12
\b2v_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~14_combout\ = (\b2v_inst|cnt\(6) & (\b2v_inst|Add0~13\ $ (GND))) # (!\b2v_inst|cnt\(6) & (!\b2v_inst|Add0~13\ & VCC))
-- \b2v_inst|Add0~15\ = CARRY((\b2v_inst|cnt\(6) & !\b2v_inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(6),
	datad => VCC,
	cin => \b2v_inst|Add0~13\,
	combout => \b2v_inst|Add0~14_combout\,
	cout => \b2v_inst|Add0~15\);

-- Location: LCCOMB_X23_Y16_N8
\b2v_inst|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~94_combout\ = (\b2v_inst|Add0~14_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~14_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~94_combout\);

-- Location: FF_X23_Y16_N9
\b2v_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~94_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(6));

-- Location: LCCOMB_X24_Y16_N14
\b2v_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~16_combout\ = (\b2v_inst|cnt\(7) & (!\b2v_inst|Add0~15\)) # (!\b2v_inst|cnt\(7) & ((\b2v_inst|Add0~15\) # (GND)))
-- \b2v_inst|Add0~17\ = CARRY((!\b2v_inst|Add0~15\) # (!\b2v_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(7),
	datad => VCC,
	cin => \b2v_inst|Add0~15\,
	combout => \b2v_inst|Add0~16_combout\,
	cout => \b2v_inst|Add0~17\);

-- Location: LCCOMB_X23_Y16_N2
\b2v_inst|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~85_combout\ = (\b2v_inst|Add0~16_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~16_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~85_combout\);

-- Location: FF_X23_Y16_N3
\b2v_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~85_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(7));

-- Location: LCCOMB_X24_Y16_N16
\b2v_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~18_combout\ = (\b2v_inst|cnt\(8) & (\b2v_inst|Add0~17\ $ (GND))) # (!\b2v_inst|cnt\(8) & (!\b2v_inst|Add0~17\ & VCC))
-- \b2v_inst|Add0~19\ = CARRY((\b2v_inst|cnt\(8) & !\b2v_inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(8),
	datad => VCC,
	cin => \b2v_inst|Add0~17\,
	combout => \b2v_inst|Add0~18_combout\,
	cout => \b2v_inst|Add0~19\);

-- Location: LCCOMB_X23_Y15_N14
\b2v_inst|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~86_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cnt[0]~17_combout\,
	datad => \b2v_inst|Add0~18_combout\,
	combout => \b2v_inst|Add0~86_combout\);

-- Location: FF_X23_Y15_N15
\b2v_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~86_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(8));

-- Location: LCCOMB_X24_Y16_N18
\b2v_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~20_combout\ = (\b2v_inst|cnt\(9) & (!\b2v_inst|Add0~19\)) # (!\b2v_inst|cnt\(9) & ((\b2v_inst|Add0~19\) # (GND)))
-- \b2v_inst|Add0~21\ = CARRY((!\b2v_inst|Add0~19\) # (!\b2v_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(9),
	datad => VCC,
	cin => \b2v_inst|Add0~19\,
	combout => \b2v_inst|Add0~20_combout\,
	cout => \b2v_inst|Add0~21\);

-- Location: LCCOMB_X23_Y16_N4
\b2v_inst|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~84_combout\ = (\b2v_inst|Add0~20_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~20_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~84_combout\);

-- Location: FF_X23_Y16_N5
\b2v_inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~84_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(9));

-- Location: LCCOMB_X24_Y16_N20
\b2v_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~22_combout\ = (\b2v_inst|cnt\(10) & (\b2v_inst|Add0~21\ $ (GND))) # (!\b2v_inst|cnt\(10) & (!\b2v_inst|Add0~21\ & VCC))
-- \b2v_inst|Add0~23\ = CARRY((\b2v_inst|cnt\(10) & !\b2v_inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(10),
	datad => VCC,
	cin => \b2v_inst|Add0~21\,
	combout => \b2v_inst|Add0~22_combout\,
	cout => \b2v_inst|Add0~23\);

-- Location: LCCOMB_X23_Y14_N28
\b2v_inst|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~95_combout\ = (\b2v_inst|Add0~22_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~22_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~95_combout\);

-- Location: FF_X23_Y14_N29
\b2v_inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~95_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(10));

-- Location: LCCOMB_X24_Y16_N22
\b2v_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~24_combout\ = (\b2v_inst|cnt\(11) & (!\b2v_inst|Add0~23\)) # (!\b2v_inst|cnt\(11) & ((\b2v_inst|Add0~23\) # (GND)))
-- \b2v_inst|Add0~25\ = CARRY((!\b2v_inst|Add0~23\) # (!\b2v_inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(11),
	datad => VCC,
	cin => \b2v_inst|Add0~23\,
	combout => \b2v_inst|Add0~24_combout\,
	cout => \b2v_inst|Add0~25\);

-- Location: LCCOMB_X23_Y14_N22
\b2v_inst|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~92_combout\ = (\b2v_inst|Add0~24_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~24_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~92_combout\);

-- Location: FF_X23_Y14_N23
\b2v_inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~92_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(11));

-- Location: LCCOMB_X24_Y16_N24
\b2v_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~26_combout\ = (\b2v_inst|cnt\(12) & (\b2v_inst|Add0~25\ $ (GND))) # (!\b2v_inst|cnt\(12) & (!\b2v_inst|Add0~25\ & VCC))
-- \b2v_inst|Add0~27\ = CARRY((\b2v_inst|cnt\(12) & !\b2v_inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(12),
	datad => VCC,
	cin => \b2v_inst|Add0~25\,
	combout => \b2v_inst|Add0~26_combout\,
	cout => \b2v_inst|Add0~27\);

-- Location: LCCOMB_X23_Y15_N2
\b2v_inst|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~90_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cnt[0]~17_combout\,
	datad => \b2v_inst|Add0~26_combout\,
	combout => \b2v_inst|Add0~90_combout\);

-- Location: FF_X23_Y15_N3
\b2v_inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~90_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(12));

-- Location: LCCOMB_X24_Y16_N26
\b2v_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~28_combout\ = (\b2v_inst|cnt\(13) & (!\b2v_inst|Add0~27\)) # (!\b2v_inst|cnt\(13) & ((\b2v_inst|Add0~27\) # (GND)))
-- \b2v_inst|Add0~29\ = CARRY((!\b2v_inst|Add0~27\) # (!\b2v_inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(13),
	datad => VCC,
	cin => \b2v_inst|Add0~27\,
	combout => \b2v_inst|Add0~28_combout\,
	cout => \b2v_inst|Add0~29\);

-- Location: LCCOMB_X24_Y14_N28
\b2v_inst|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~91_combout\ = (\b2v_inst|Add0~28_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~28_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~91_combout\);

-- Location: FF_X24_Y14_N29
\b2v_inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~91_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(13));

-- Location: LCCOMB_X24_Y16_N28
\b2v_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~30_combout\ = (\b2v_inst|cnt\(14) & (\b2v_inst|Add0~29\ $ (GND))) # (!\b2v_inst|cnt\(14) & (!\b2v_inst|Add0~29\ & VCC))
-- \b2v_inst|Add0~31\ = CARRY((\b2v_inst|cnt\(14) & !\b2v_inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(14),
	datad => VCC,
	cin => \b2v_inst|Add0~29\,
	combout => \b2v_inst|Add0~30_combout\,
	cout => \b2v_inst|Add0~31\);

-- Location: LCCOMB_X23_Y16_N16
\b2v_inst|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~77_combout\ = (\b2v_inst|Add0~30_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~30_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~77_combout\);

-- Location: FF_X23_Y16_N17
\b2v_inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~77_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(14));

-- Location: LCCOMB_X24_Y16_N30
\b2v_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~32_combout\ = (\b2v_inst|cnt\(15) & (!\b2v_inst|Add0~31\)) # (!\b2v_inst|cnt\(15) & ((\b2v_inst|Add0~31\) # (GND)))
-- \b2v_inst|Add0~33\ = CARRY((!\b2v_inst|Add0~31\) # (!\b2v_inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(15),
	datad => VCC,
	cin => \b2v_inst|Add0~31\,
	combout => \b2v_inst|Add0~32_combout\,
	cout => \b2v_inst|Add0~33\);

-- Location: LCCOMB_X23_Y16_N26
\b2v_inst|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~76_combout\ = (\b2v_inst|Add0~32_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~32_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~76_combout\);

-- Location: FF_X23_Y16_N27
\b2v_inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~76_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(15));

-- Location: LCCOMB_X24_Y15_N0
\b2v_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~34_combout\ = (\b2v_inst|cnt\(16) & (\b2v_inst|Add0~33\ $ (GND))) # (!\b2v_inst|cnt\(16) & (!\b2v_inst|Add0~33\ & VCC))
-- \b2v_inst|Add0~35\ = CARRY((\b2v_inst|cnt\(16) & !\b2v_inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(16),
	datad => VCC,
	cin => \b2v_inst|Add0~33\,
	combout => \b2v_inst|Add0~34_combout\,
	cout => \b2v_inst|Add0~35\);

-- Location: LCCOMB_X23_Y14_N26
\b2v_inst|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~88_combout\ = (\b2v_inst|Add0~34_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~34_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~88_combout\);

-- Location: FF_X23_Y14_N27
\b2v_inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~88_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(16));

-- Location: LCCOMB_X24_Y15_N2
\b2v_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~36_combout\ = (\b2v_inst|cnt\(17) & (!\b2v_inst|Add0~35\)) # (!\b2v_inst|cnt\(17) & ((\b2v_inst|Add0~35\) # (GND)))
-- \b2v_inst|Add0~37\ = CARRY((!\b2v_inst|Add0~35\) # (!\b2v_inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(17),
	datad => VCC,
	cin => \b2v_inst|Add0~35\,
	combout => \b2v_inst|Add0~36_combout\,
	cout => \b2v_inst|Add0~37\);

-- Location: LCCOMB_X23_Y15_N16
\b2v_inst|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~89_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cnt[0]~17_combout\,
	datad => \b2v_inst|Add0~36_combout\,
	combout => \b2v_inst|Add0~89_combout\);

-- Location: FF_X23_Y15_N17
\b2v_inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~89_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(17));

-- Location: LCCOMB_X24_Y15_N4
\b2v_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~38_combout\ = (\b2v_inst|cnt\(18) & (\b2v_inst|Add0~37\ $ (GND))) # (!\b2v_inst|cnt\(18) & (!\b2v_inst|Add0~37\ & VCC))
-- \b2v_inst|Add0~39\ = CARRY((\b2v_inst|cnt\(18) & !\b2v_inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(18),
	datad => VCC,
	cin => \b2v_inst|Add0~37\,
	combout => \b2v_inst|Add0~38_combout\,
	cout => \b2v_inst|Add0~39\);

-- Location: LCCOMB_X23_Y16_N28
\b2v_inst|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~75_combout\ = (\b2v_inst|Add0~38_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~38_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~75_combout\);

-- Location: FF_X23_Y16_N29
\b2v_inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~75_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(18));

-- Location: LCCOMB_X24_Y15_N6
\b2v_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~40_combout\ = (\b2v_inst|cnt\(19) & (!\b2v_inst|Add0~39\)) # (!\b2v_inst|cnt\(19) & ((\b2v_inst|Add0~39\) # (GND)))
-- \b2v_inst|Add0~41\ = CARRY((!\b2v_inst|Add0~39\) # (!\b2v_inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(19),
	datad => VCC,
	cin => \b2v_inst|Add0~39\,
	combout => \b2v_inst|Add0~40_combout\,
	cout => \b2v_inst|Add0~41\);

-- Location: LCCOMB_X22_Y15_N0
\b2v_inst|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~69_combout\ = (\b2v_inst|Add0~40_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~40_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~69_combout\);

-- Location: FF_X22_Y15_N1
\b2v_inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~69_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(19));

-- Location: LCCOMB_X24_Y15_N8
\b2v_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~42_combout\ = (\b2v_inst|cnt\(20) & (\b2v_inst|Add0~41\ $ (GND))) # (!\b2v_inst|cnt\(20) & (!\b2v_inst|Add0~41\ & VCC))
-- \b2v_inst|Add0~43\ = CARRY((\b2v_inst|cnt\(20) & !\b2v_inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(20),
	datad => VCC,
	cin => \b2v_inst|Add0~41\,
	combout => \b2v_inst|Add0~42_combout\,
	cout => \b2v_inst|Add0~43\);

-- Location: LCCOMB_X23_Y15_N24
\b2v_inst|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~87_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt[0]~17_combout\,
	datac => \b2v_inst|Add0~42_combout\,
	combout => \b2v_inst|Add0~87_combout\);

-- Location: FF_X23_Y15_N25
\b2v_inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~87_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(20));

-- Location: LCCOMB_X23_Y15_N26
\b2v_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~3_combout\ = (!\b2v_inst|cnt\(16) & !\b2v_inst|cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cnt\(16),
	datad => \b2v_inst|cnt\(20),
	combout => \b2v_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y15_N28
\b2v_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~2_combout\ = (\b2v_inst|LessThan0~3_combout\ & (!\b2v_inst|cnt\(17) & (\b2v_inst|cnt\(8) & !\b2v_inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~3_combout\,
	datab => \b2v_inst|cnt\(17),
	datac => \b2v_inst|cnt\(8),
	datad => \b2v_inst|cnt\(12),
	combout => \b2v_inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y15_N18
\b2v_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~52_combout\ = (\b2v_inst|cnt\(25) & (!\b2v_inst|Add0~51\)) # (!\b2v_inst|cnt\(25) & ((\b2v_inst|Add0~51\) # (GND)))
-- \b2v_inst|Add0~53\ = CARRY((!\b2v_inst|Add0~51\) # (!\b2v_inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(25),
	datad => VCC,
	cin => \b2v_inst|Add0~51\,
	combout => \b2v_inst|Add0~52_combout\,
	cout => \b2v_inst|Add0~53\);

-- Location: LCCOMB_X24_Y15_N20
\b2v_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~54_combout\ = (\b2v_inst|cnt\(26) & (\b2v_inst|Add0~53\ $ (GND))) # (!\b2v_inst|cnt\(26) & (!\b2v_inst|Add0~53\ & VCC))
-- \b2v_inst|Add0~55\ = CARRY((\b2v_inst|cnt\(26) & !\b2v_inst|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(26),
	datad => VCC,
	cin => \b2v_inst|Add0~53\,
	combout => \b2v_inst|Add0~54_combout\,
	cout => \b2v_inst|Add0~55\);

-- Location: LCCOMB_X23_Y15_N8
\b2v_inst|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~70_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt[0]~17_combout\,
	datac => \b2v_inst|Add0~54_combout\,
	combout => \b2v_inst|Add0~70_combout\);

-- Location: FF_X23_Y15_N9
\b2v_inst|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~70_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(26));

-- Location: LCCOMB_X24_Y15_N22
\b2v_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~56_combout\ = (\b2v_inst|cnt\(27) & (!\b2v_inst|Add0~55\)) # (!\b2v_inst|cnt\(27) & ((\b2v_inst|Add0~55\) # (GND)))
-- \b2v_inst|Add0~57\ = CARRY((!\b2v_inst|Add0~55\) # (!\b2v_inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(27),
	datad => VCC,
	cin => \b2v_inst|Add0~55\,
	combout => \b2v_inst|Add0~56_combout\,
	cout => \b2v_inst|Add0~57\);

-- Location: LCCOMB_X22_Y15_N18
\b2v_inst|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~67_combout\ = (\b2v_inst|Add0~56_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~56_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~67_combout\);

-- Location: FF_X22_Y15_N19
\b2v_inst|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~67_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(27));

-- Location: LCCOMB_X24_Y15_N24
\b2v_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~58_combout\ = (\b2v_inst|cnt\(28) & (\b2v_inst|Add0~57\ $ (GND))) # (!\b2v_inst|cnt\(28) & (!\b2v_inst|Add0~57\ & VCC))
-- \b2v_inst|Add0~59\ = CARRY((\b2v_inst|cnt\(28) & !\b2v_inst|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(28),
	datad => VCC,
	cin => \b2v_inst|Add0~57\,
	combout => \b2v_inst|Add0~58_combout\,
	cout => \b2v_inst|Add0~59\);

-- Location: LCCOMB_X22_Y15_N16
\b2v_inst|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~66_combout\ = (\b2v_inst|Add0~58_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~58_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~66_combout\);

-- Location: FF_X22_Y15_N17
\b2v_inst|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~66_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(28));

-- Location: LCCOMB_X24_Y15_N26
\b2v_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~60_combout\ = (\b2v_inst|cnt\(29) & (!\b2v_inst|Add0~59\)) # (!\b2v_inst|cnt\(29) & ((\b2v_inst|Add0~59\) # (GND)))
-- \b2v_inst|Add0~61\ = CARRY((!\b2v_inst|Add0~59\) # (!\b2v_inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(29),
	datad => VCC,
	cin => \b2v_inst|Add0~59\,
	combout => \b2v_inst|Add0~60_combout\,
	cout => \b2v_inst|Add0~61\);

-- Location: LCCOMB_X22_Y15_N14
\b2v_inst|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~65_combout\ = (\b2v_inst|Add0~60_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~60_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~65_combout\);

-- Location: FF_X22_Y15_N15
\b2v_inst|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~65_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(29));

-- Location: LCCOMB_X24_Y15_N28
\b2v_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~62_combout\ = (\b2v_inst|cnt\(30) & (\b2v_inst|Add0~61\ $ (GND))) # (!\b2v_inst|cnt\(30) & (!\b2v_inst|Add0~61\ & VCC))
-- \b2v_inst|Add0~63\ = CARRY((\b2v_inst|cnt\(30) & !\b2v_inst|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(30),
	datad => VCC,
	cin => \b2v_inst|Add0~61\,
	combout => \b2v_inst|Add0~62_combout\,
	cout => \b2v_inst|Add0~63\);

-- Location: LCCOMB_X22_Y15_N12
\b2v_inst|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~64_combout\ = (\b2v_inst|Add0~62_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~62_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~64_combout\);

-- Location: FF_X22_Y15_N13
\b2v_inst|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~64_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(30));

-- Location: LCCOMB_X24_Y15_N30
\b2v_inst|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~78_combout\ = \b2v_inst|Add0~63\ $ (\b2v_inst|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|cnt\(31),
	cin => \b2v_inst|Add0~63\,
	combout => \b2v_inst|Add0~78_combout\);

-- Location: LCCOMB_X22_Y15_N20
\b2v_inst|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~80_combout\ = (\b2v_inst|Add0~78_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Add0~78_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~80_combout\);

-- Location: FF_X22_Y15_N21
\b2v_inst|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~80_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(31));

-- Location: LCCOMB_X22_Y15_N4
\b2v_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~0_combout\ = (!\b2v_inst|cnt\(0) & (!\b2v_inst|cnt\(1) & (!\b2v_inst|cnt\(2) & !\b2v_inst|cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(0),
	datab => \b2v_inst|cnt\(1),
	datac => \b2v_inst|cnt\(2),
	datad => \b2v_inst|cnt\(31),
	combout => \b2v_inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y14_N8
\b2v_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~1_combout\ = (\b2v_inst|Equal0~0_combout\ & (\b2v_inst|cnt\(7) & \b2v_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|cnt\(7),
	datad => \b2v_inst|cnt\(9),
	combout => \b2v_inst|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y15_N10
\b2v_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~44_combout\ = (\b2v_inst|cnt\(21) & (!\b2v_inst|Add0~43\)) # (!\b2v_inst|cnt\(21) & ((\b2v_inst|Add0~43\) # (GND)))
-- \b2v_inst|Add0~45\ = CARRY((!\b2v_inst|Add0~43\) # (!\b2v_inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(21),
	datad => VCC,
	cin => \b2v_inst|Add0~43\,
	combout => \b2v_inst|Add0~44_combout\,
	cout => \b2v_inst|Add0~45\);

-- Location: LCCOMB_X23_Y16_N10
\b2v_inst|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~74_combout\ = (\b2v_inst|Add0~44_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~44_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~74_combout\);

-- Location: FF_X23_Y16_N11
\b2v_inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~74_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(21));

-- Location: LCCOMB_X24_Y15_N12
\b2v_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~46_combout\ = (\b2v_inst|cnt\(22) & (\b2v_inst|Add0~45\ $ (GND))) # (!\b2v_inst|cnt\(22) & (!\b2v_inst|Add0~45\ & VCC))
-- \b2v_inst|Add0~47\ = CARRY((\b2v_inst|cnt\(22) & !\b2v_inst|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(22),
	datad => VCC,
	cin => \b2v_inst|Add0~45\,
	combout => \b2v_inst|Add0~46_combout\,
	cout => \b2v_inst|Add0~47\);

-- Location: LCCOMB_X23_Y15_N6
\b2v_inst|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~73_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt[0]~17_combout\,
	datac => \b2v_inst|Add0~46_combout\,
	combout => \b2v_inst|Add0~73_combout\);

-- Location: FF_X23_Y15_N7
\b2v_inst|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~73_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(22));

-- Location: LCCOMB_X24_Y15_N14
\b2v_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~48_combout\ = (\b2v_inst|cnt\(23) & (!\b2v_inst|Add0~47\)) # (!\b2v_inst|cnt\(23) & ((\b2v_inst|Add0~47\) # (GND)))
-- \b2v_inst|Add0~49\ = CARRY((!\b2v_inst|Add0~47\) # (!\b2v_inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(23),
	datad => VCC,
	cin => \b2v_inst|Add0~47\,
	combout => \b2v_inst|Add0~48_combout\,
	cout => \b2v_inst|Add0~49\);

-- Location: LCCOMB_X23_Y15_N4
\b2v_inst|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~72_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt[0]~17_combout\,
	datac => \b2v_inst|Add0~48_combout\,
	combout => \b2v_inst|Add0~72_combout\);

-- Location: FF_X23_Y15_N5
\b2v_inst|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~72_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(23));

-- Location: LCCOMB_X23_Y15_N20
\b2v_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~0_combout\ = (!\b2v_inst|cnt\(24) & (!\b2v_inst|cnt\(26) & (!\b2v_inst|cnt\(23) & !\b2v_inst|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(24),
	datab => \b2v_inst|cnt\(26),
	datac => \b2v_inst|cnt\(23),
	datad => \b2v_inst|cnt\(22),
	combout => \b2v_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y15_N8
\b2v_inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~0_combout\ = (!\b2v_inst|cnt\(30) & (!\b2v_inst|cnt\(28) & (!\b2v_inst|cnt\(29) & !\b2v_inst|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(30),
	datab => \b2v_inst|cnt\(28),
	datac => \b2v_inst|cnt\(29),
	datad => \b2v_inst|cnt\(27),
	combout => \b2v_inst|Equal7~0_combout\);

-- Location: LCCOMB_X22_Y15_N30
\b2v_inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~1_combout\ = (!\b2v_inst|cnt\(25) & !\b2v_inst|cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(25),
	datad => \b2v_inst|cnt\(19),
	combout => \b2v_inst|Equal7~1_combout\);

-- Location: LCCOMB_X23_Y16_N14
\b2v_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~1_combout\ = (!\b2v_inst|cnt\(21) & (!\b2v_inst|cnt\(18) & (!\b2v_inst|cnt\(15) & !\b2v_inst|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(21),
	datab => \b2v_inst|cnt\(18),
	datac => \b2v_inst|cnt\(15),
	datad => \b2v_inst|cnt\(14),
	combout => \b2v_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y14_N2
\b2v_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~2_combout\ = (\b2v_inst|LessThan0~0_combout\ & (\b2v_inst|Equal7~0_combout\ & (\b2v_inst|Equal7~1_combout\ & \b2v_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~0_combout\,
	datab => \b2v_inst|Equal7~0_combout\,
	datac => \b2v_inst|Equal7~1_combout\,
	datad => \b2v_inst|LessThan0~1_combout\,
	combout => \b2v_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y14_N24
\b2v_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~3_combout\ = (\b2v_inst|Equal0~2_combout\ & (!\b2v_inst|cnt\(13) & (\b2v_inst|Equal0~1_combout\ & \b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~2_combout\,
	datab => \b2v_inst|cnt\(13),
	datac => \b2v_inst|Equal0~1_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y14_N14
\b2v_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~4_combout\ = (!\b2v_inst|cnt\(6) & (\b2v_inst|cnt\(5) & (\b2v_inst|cnt\(11) & \b2v_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(6),
	datab => \b2v_inst|cnt\(5),
	datac => \b2v_inst|cnt\(11),
	datad => \b2v_inst|Equal0~3_combout\,
	combout => \b2v_inst|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y14_N6
\b2v_inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal3~0_combout\ = (\b2v_inst|cnt\(4)) # (((\b2v_inst|cnt\(3)) # (!\b2v_inst|Equal0~4_combout\)) # (!\b2v_inst|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(4),
	datab => \b2v_inst|cnt\(10),
	datac => \b2v_inst|Equal0~4_combout\,
	datad => \b2v_inst|cnt\(3),
	combout => \b2v_inst|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\b2v_inst|init_stp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[0]~0_combout\ = (\b2v_inst|init_stp\(1) & (!\b2v_inst|init_stp\(2) & ((!\b2v_inst|Equal3~0_combout\) # (!\b2v_inst|init_stp\(0))))) # (!\b2v_inst|init_stp\(1) & (!\b2v_inst|init_stp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(0),
	datab => \b2v_inst|init_stp\(1),
	datac => \b2v_inst|init_stp\(2),
	datad => \b2v_inst|Equal3~0_combout\,
	combout => \b2v_inst|init_stp[0]~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\b2v_inst|init_stp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[2]~1_combout\ = (\dht_bus~input_o\ & \b2v_inst|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dht_bus~input_o\,
	datad => \b2v_inst|Equal3~0_combout\,
	combout => \b2v_inst|init_stp[2]~1_combout\);

-- Location: LCCOMB_X22_Y14_N20
\b2v_inst|init_stp[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[2]~2_combout\ = (\b2v_inst|init_stp\(0) & (((\dht_bus~input_o\)) # (!\b2v_inst|init_stp\(2)))) # (!\b2v_inst|init_stp\(0) & (\b2v_inst|init_stp\(2) & (!\dht_bus~input_o\ & \b2v_inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(0),
	datab => \b2v_inst|init_stp\(2),
	datac => \dht_bus~input_o\,
	datad => \b2v_inst|Equal3~0_combout\,
	combout => \b2v_inst|init_stp[2]~2_combout\);

-- Location: LCCOMB_X23_Y15_N30
\b2v_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal1~1_combout\ = (\b2v_inst|cnt\(6) & (\b2v_inst|cnt\(17) & (!\b2v_inst|cnt\(8) & \b2v_inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(6),
	datab => \b2v_inst|cnt\(17),
	datac => \b2v_inst|cnt\(8),
	datad => \b2v_inst|cnt\(12),
	combout => \b2v_inst|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y14_N18
\b2v_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal2~1_combout\ = (!\b2v_inst|cnt\(3) & (!\b2v_inst|cnt\(11) & !\b2v_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(3),
	datac => \b2v_inst|cnt\(11),
	datad => \b2v_inst|cnt\(5),
	combout => \b2v_inst|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y14_N16
\b2v_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal1~0_combout\ = (\b2v_inst|cnt\(16) & (\b2v_inst|Equal2~1_combout\ & (\b2v_inst|cnt\(20) & !\b2v_inst|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(16),
	datab => \b2v_inst|Equal2~1_combout\,
	datac => \b2v_inst|cnt\(20),
	datad => \b2v_inst|cnt\(10),
	combout => \b2v_inst|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\b2v_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~6_combout\ = (!\b2v_inst|cnt\(13) & (\b2v_inst|Equal0~1_combout\ & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(13),
	datac => \b2v_inst|Equal0~1_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y14_N30
\b2v_inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal1~2_combout\ = (\b2v_inst|Equal1~1_combout\ & (\b2v_inst|Equal1~0_combout\ & (\b2v_inst|cnt\(4) & \b2v_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal1~1_combout\,
	datab => \b2v_inst|Equal1~0_combout\,
	datac => \b2v_inst|cnt\(4),
	datad => \b2v_inst|Equal0~6_combout\,
	combout => \b2v_inst|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\b2v_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal2~0_combout\ = (\b2v_inst|cnt\(10) & \b2v_inst|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(10),
	datac => \b2v_inst|cnt\(6),
	combout => \b2v_inst|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\b2v_inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal2~2_combout\ = (\b2v_inst|Equal2~0_combout\ & (\b2v_inst|Equal2~1_combout\ & (\b2v_inst|cnt\(4) & \b2v_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal2~0_combout\,
	datab => \b2v_inst|Equal2~1_combout\,
	datac => \b2v_inst|cnt\(4),
	datad => \b2v_inst|Equal0~3_combout\,
	combout => \b2v_inst|Equal2~2_combout\);

-- Location: LCCOMB_X23_Y14_N4
\b2v_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~5_combout\ = (\b2v_inst|cnt\(4) & (!\b2v_inst|cnt\(10) & (\b2v_inst|Equal0~4_combout\ & \b2v_inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(4),
	datab => \b2v_inst|cnt\(10),
	datac => \b2v_inst|Equal0~4_combout\,
	datad => \b2v_inst|cnt\(3),
	combout => \b2v_inst|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y14_N2
\b2v_inst|init_stp[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[2]~3_combout\ = (\b2v_inst|init_stp\(1) & ((\b2v_inst|init_stp[2]~2_combout\) # ((\b2v_inst|Equal2~2_combout\)))) # (!\b2v_inst|init_stp\(1) & (!\b2v_inst|init_stp[2]~2_combout\ & ((\b2v_inst|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(1),
	datab => \b2v_inst|init_stp[2]~2_combout\,
	datac => \b2v_inst|Equal2~2_combout\,
	datad => \b2v_inst|Equal0~5_combout\,
	combout => \b2v_inst|init_stp[2]~3_combout\);

-- Location: LCCOMB_X22_Y14_N8
\b2v_inst|init_stp[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[2]~4_combout\ = (\b2v_inst|init_stp\(2) & (!\b2v_inst|init_stp[2]~2_combout\ & ((!\b2v_inst|init_stp[2]~3_combout\)))) # (!\b2v_inst|init_stp\(2) & (\b2v_inst|init_stp[2]~2_combout\ & ((\b2v_inst|Equal1~2_combout\) # 
-- (\b2v_inst|init_stp[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(2),
	datab => \b2v_inst|init_stp[2]~2_combout\,
	datac => \b2v_inst|Equal1~2_combout\,
	datad => \b2v_inst|init_stp[2]~3_combout\,
	combout => \b2v_inst|init_stp[2]~4_combout\);

-- Location: LCCOMB_X22_Y14_N18
\b2v_inst|init_stp[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[2]~5_combout\ = (\b2v_inst|state.init~q\) # ((\b2v_inst|init_stp[2]~4_combout\ & (\b2v_inst|init_stp[2]~1_combout\ & \b2v_inst|init_stp[2]~3_combout\)) # (!\b2v_inst|init_stp[2]~4_combout\ & ((!\b2v_inst|init_stp[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp[2]~1_combout\,
	datab => \b2v_inst|state.init~q\,
	datac => \b2v_inst|init_stp[2]~4_combout\,
	datad => \b2v_inst|init_stp[2]~3_combout\,
	combout => \b2v_inst|init_stp[2]~5_combout\);

-- Location: LCCOMB_X22_Y14_N12
\b2v_inst|init_stp[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[0]~6_combout\ = (\b2v_inst|init_stp[2]~5_combout\ & ((\b2v_inst|init_stp\(0)))) # (!\b2v_inst|init_stp[2]~5_combout\ & (\b2v_inst|init_stp[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|init_stp[0]~0_combout\,
	datac => \b2v_inst|init_stp\(0),
	datad => \b2v_inst|init_stp[2]~5_combout\,
	combout => \b2v_inst|init_stp[0]~6_combout\);

-- Location: FF_X22_Y14_N13
\b2v_inst|init_stp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|init_stp[0]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|init_stp\(0));

-- Location: LCCOMB_X22_Y14_N6
\b2v_inst|init_stp[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[2]~7_combout\ = (\b2v_inst|init_stp[2]~5_combout\ & (((\b2v_inst|init_stp\(2))))) # (!\b2v_inst|init_stp[2]~5_combout\ & ((\b2v_inst|init_stp\(2) & ((!\b2v_inst|init_stp\(1)))) # (!\b2v_inst|init_stp\(2) & (\b2v_inst|init_stp\(0) & 
-- \b2v_inst|init_stp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(0),
	datab => \b2v_inst|init_stp[2]~5_combout\,
	datac => \b2v_inst|init_stp\(2),
	datad => \b2v_inst|init_stp\(1),
	combout => \b2v_inst|init_stp[2]~7_combout\);

-- Location: FF_X22_Y14_N7
\b2v_inst|init_stp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|init_stp[2]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|init_stp\(2));

-- Location: LCCOMB_X21_Y15_N12
\b2v_inst|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~2_combout\ = (!\b2v_inst|state.init~q\ & (\b2v_inst|init_stp\(1) & \b2v_inst|init_stp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.init~q\,
	datac => \b2v_inst|init_stp\(1),
	datad => \b2v_inst|init_stp\(2),
	combout => \b2v_inst|cnt[0]~2_combout\);

-- Location: LCCOMB_X21_Y15_N18
\b2v_inst|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector35~0_combout\ = (\b2v_inst|state.read_data~q\ & (!\b2v_inst|state.get_data~q\ & !\b2v_inst|cnt[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.read_data~q\,
	datac => \b2v_inst|state.get_data~q\,
	datad => \b2v_inst|cnt[0]~2_combout\,
	combout => \b2v_inst|Selector35~0_combout\);

-- Location: LCCOMB_X21_Y14_N4
\b2v_inst|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector33~0_combout\ = (\b2v_inst|rd_stp\(0) & \b2v_inst|rd_stp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|rd_stp\(0),
	datad => \b2v_inst|rd_stp\(1),
	combout => \b2v_inst|Selector33~0_combout\);

-- Location: LCCOMB_X21_Y15_N20
\b2v_inst|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector35~1_combout\ = (\b2v_inst|state.init~q\ & ((\b2v_inst|state.delay~q\ & (\b2v_inst|Equal7~8_combout\)) # (!\b2v_inst|state.delay~q\ & ((\b2v_inst|Selector33~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal7~8_combout\,
	datab => \b2v_inst|state.delay~q\,
	datac => \b2v_inst|state.init~q\,
	datad => \b2v_inst|Selector33~0_combout\,
	combout => \b2v_inst|Selector35~1_combout\);

-- Location: LCCOMB_X21_Y15_N28
\b2v_inst|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector35~2_combout\ = (\b2v_inst|state.get_data~q\ & ((\b2v_inst|Equal4~0_combout\) # ((\b2v_inst|Selector35~0_combout\ & !\b2v_inst|Selector35~1_combout\)))) # (!\b2v_inst|state.get_data~q\ & (\b2v_inst|Selector35~0_combout\ & 
-- ((!\b2v_inst|Selector35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.get_data~q\,
	datab => \b2v_inst|Selector35~0_combout\,
	datac => \b2v_inst|Equal4~0_combout\,
	datad => \b2v_inst|Selector35~1_combout\,
	combout => \b2v_inst|Selector35~2_combout\);

-- Location: FF_X21_Y15_N29
\b2v_inst|state.read_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector35~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.read_data~q\);

-- Location: FF_X21_Y13_N3
\b2v_inst|rd_stp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Mux45~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.read_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rd_stp\(0));

-- Location: LCCOMB_X21_Y13_N0
\b2v_inst|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux44~0_combout\ = (\b2v_inst|rd_stp\(1) & ((!\b2v_inst|rd_stp\(0)))) # (!\b2v_inst|rd_stp\(1) & (\dht_bus~input_o\ & \b2v_inst|rd_stp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dht_bus~input_o\,
	datac => \b2v_inst|rd_stp\(1),
	datad => \b2v_inst|rd_stp\(0),
	combout => \b2v_inst|Mux44~0_combout\);

-- Location: FF_X21_Y13_N1
\b2v_inst|rd_stp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Mux44~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.read_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rd_stp\(1));

-- Location: LCCOMB_X21_Y14_N22
\b2v_inst|tmp_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp_data~0_combout\ = (\b2v_inst|rd_stp\(1) & !\b2v_inst|rd_stp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|rd_stp\(1),
	datad => \b2v_inst|rd_stp\(0),
	combout => \b2v_inst|tmp_data~0_combout\);

-- Location: LCCOMB_X21_Y14_N16
\b2v_inst|cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~10_combout\ = (\b2v_inst|state.get_data~q\) # ((\b2v_inst|state.read_data~q\ & ((!\dht_bus~input_o\) # (!\b2v_inst|tmp_data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~0_combout\,
	datab => \dht_bus~input_o\,
	datac => \b2v_inst|state.get_data~q\,
	datad => \b2v_inst|state.read_data~q\,
	combout => \b2v_inst|cnt[0]~10_combout\);

-- Location: LCCOMB_X21_Y14_N24
\b2v_inst|cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~6_combout\ = (!\b2v_inst|state.delay~q\ & (!\b2v_inst|init_stp\(0) & !\b2v_inst|init_stp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.delay~q\,
	datac => \b2v_inst|init_stp\(0),
	datad => \b2v_inst|init_stp\(2),
	combout => \b2v_inst|cnt[0]~6_combout\);

-- Location: LCCOMB_X22_Y14_N14
\b2v_inst|cnt[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~7_combout\ = (\b2v_inst|cnt[0]~6_combout\ & ((\b2v_inst|init_stp\(1) & (\b2v_inst|Equal2~2_combout\)) # (!\b2v_inst|init_stp\(1) & ((\b2v_inst|Equal0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(1),
	datab => \b2v_inst|cnt[0]~6_combout\,
	datac => \b2v_inst|Equal2~2_combout\,
	datad => \b2v_inst|Equal0~5_combout\,
	combout => \b2v_inst|cnt[0]~7_combout\);

-- Location: LCCOMB_X22_Y14_N10
\b2v_inst|cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~8_combout\ = (\b2v_inst|cnt[0]~7_combout\) # ((\b2v_inst|Selector33~4_combout\ & ((!\b2v_inst|init_stp\(1)) # (!\b2v_inst|init_stp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(0),
	datab => \b2v_inst|Selector33~4_combout\,
	datac => \b2v_inst|cnt[0]~7_combout\,
	datad => \b2v_inst|init_stp\(1),
	combout => \b2v_inst|cnt[0]~8_combout\);

-- Location: LCCOMB_X22_Y14_N24
\b2v_inst|cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~3_combout\ = (\b2v_inst|init_stp\(2)) # ((!\b2v_inst|state.delay~q\ & (\b2v_inst|Equal1~2_combout\ & !\b2v_inst|init_stp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.delay~q\,
	datab => \b2v_inst|init_stp\(2),
	datac => \b2v_inst|Equal1~2_combout\,
	datad => \b2v_inst|init_stp\(1),
	combout => \b2v_inst|cnt[0]~3_combout\);

-- Location: LCCOMB_X22_Y14_N30
\b2v_inst|cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~4_combout\ = (\b2v_inst|init_stp\(0) & ((\b2v_inst|cnt[0]~3_combout\) # ((\b2v_inst|init_stp\(1) & !\b2v_inst|init_stp[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(1),
	datab => \b2v_inst|cnt[0]~3_combout\,
	datac => \b2v_inst|init_stp[2]~1_combout\,
	datad => \b2v_inst|init_stp\(0),
	combout => \b2v_inst|cnt[0]~4_combout\);

-- Location: LCCOMB_X22_Y14_N16
\b2v_inst|cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~5_combout\ = (\b2v_inst|init_stp\(2) & (((\dht_bus~input_o\ & !\b2v_inst|state.delay~q\)) # (!\b2v_inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(2),
	datab => \dht_bus~input_o\,
	datac => \b2v_inst|state.delay~q\,
	datad => \b2v_inst|Equal3~0_combout\,
	combout => \b2v_inst|cnt[0]~5_combout\);

-- Location: LCCOMB_X22_Y14_N28
\b2v_inst|cnt[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~9_combout\ = (!\b2v_inst|state.init~q\ & ((\b2v_inst|cnt[0]~8_combout\) # ((\b2v_inst|cnt[0]~4_combout\) # (\b2v_inst|cnt[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt[0]~8_combout\,
	datab => \b2v_inst|state.init~q\,
	datac => \b2v_inst|cnt[0]~4_combout\,
	datad => \b2v_inst|cnt[0]~5_combout\,
	combout => \b2v_inst|cnt[0]~9_combout\);

-- Location: LCCOMB_X22_Y14_N22
\b2v_inst|cnt[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|cnt[0]~17_combout\ = (\b2v_inst|cnt[0]~10_combout\) # ((\b2v_inst|cnt[0]~9_combout\) # ((\b2v_inst|state.delay~q\ & \b2v_inst|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.delay~q\,
	datab => \b2v_inst|Equal7~8_combout\,
	datac => \b2v_inst|cnt[0]~10_combout\,
	datad => \b2v_inst|cnt[0]~9_combout\,
	combout => \b2v_inst|cnt[0]~17_combout\);

-- Location: LCCOMB_X24_Y15_N16
\b2v_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~50_combout\ = (\b2v_inst|cnt\(24) & (\b2v_inst|Add0~49\ $ (GND))) # (!\b2v_inst|cnt\(24) & (!\b2v_inst|Add0~49\ & VCC))
-- \b2v_inst|Add0~51\ = CARRY((\b2v_inst|cnt\(24) & !\b2v_inst|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(24),
	datad => VCC,
	cin => \b2v_inst|Add0~49\,
	combout => \b2v_inst|Add0~50_combout\,
	cout => \b2v_inst|Add0~51\);

-- Location: LCCOMB_X23_Y15_N10
\b2v_inst|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~71_combout\ = (!\b2v_inst|cnt[0]~17_combout\ & \b2v_inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cnt[0]~17_combout\,
	datad => \b2v_inst|Add0~50_combout\,
	combout => \b2v_inst|Add0~71_combout\);

-- Location: FF_X23_Y15_N11
\b2v_inst|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~71_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(24));

-- Location: LCCOMB_X22_Y15_N2
\b2v_inst|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~68_combout\ = (\b2v_inst|Add0~52_combout\ & !\b2v_inst|cnt[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add0~52_combout\,
	datad => \b2v_inst|cnt[0]~17_combout\,
	combout => \b2v_inst|Add0~68_combout\);

-- Location: FF_X22_Y15_N3
\b2v_inst|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Add0~68_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|cnt[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cnt\(25));

-- Location: LCCOMB_X22_Y15_N26
\b2v_inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~2_combout\ = (!\b2v_inst|cnt\(25) & (\b2v_inst|Equal7~0_combout\ & !\b2v_inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cnt\(25),
	datac => \b2v_inst|Equal7~0_combout\,
	datad => \b2v_inst|cnt\(19),
	combout => \b2v_inst|Equal7~2_combout\);

-- Location: LCCOMB_X23_Y16_N18
\b2v_inst|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~3_combout\ = (!\b2v_inst|cnt\(4) & (!\b2v_inst|cnt\(7) & (!\b2v_inst|cnt\(6) & \b2v_inst|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(4),
	datab => \b2v_inst|cnt\(7),
	datac => \b2v_inst|cnt\(6),
	datad => \b2v_inst|cnt\(8),
	combout => \b2v_inst|Equal7~3_combout\);

-- Location: LCCOMB_X23_Y15_N0
\b2v_inst|Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~4_combout\ = (\b2v_inst|cnt\(24) & (!\b2v_inst|cnt\(17) & (\b2v_inst|cnt\(26) & !\b2v_inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(24),
	datab => \b2v_inst|cnt\(17),
	datac => \b2v_inst|cnt\(26),
	datad => \b2v_inst|cnt\(12),
	combout => \b2v_inst|Equal7~4_combout\);

-- Location: LCCOMB_X23_Y16_N22
\b2v_inst|Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~6_combout\ = (\b2v_inst|cnt\(15) & (\b2v_inst|cnt\(14) & (!\b2v_inst|cnt\(9) & \b2v_inst|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(15),
	datab => \b2v_inst|cnt\(14),
	datac => \b2v_inst|cnt\(9),
	datad => \b2v_inst|cnt\(13),
	combout => \b2v_inst|Equal7~6_combout\);

-- Location: LCCOMB_X23_Y16_N0
\b2v_inst|Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~5_combout\ = (\b2v_inst|cnt\(21) & (\b2v_inst|cnt\(22) & (\b2v_inst|cnt\(23) & \b2v_inst|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(21),
	datab => \b2v_inst|cnt\(22),
	datac => \b2v_inst|cnt\(23),
	datad => \b2v_inst|cnt\(18),
	combout => \b2v_inst|Equal7~5_combout\);

-- Location: LCCOMB_X23_Y16_N20
\b2v_inst|Equal7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~7_combout\ = (\b2v_inst|Equal0~0_combout\ & (\b2v_inst|Equal7~4_combout\ & (\b2v_inst|Equal7~6_combout\ & \b2v_inst|Equal7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst|Equal7~4_combout\,
	datac => \b2v_inst|Equal7~6_combout\,
	datad => \b2v_inst|Equal7~5_combout\,
	combout => \b2v_inst|Equal7~7_combout\);

-- Location: LCCOMB_X23_Y16_N6
\b2v_inst|Equal7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal7~8_combout\ = (\b2v_inst|Equal7~2_combout\ & (\b2v_inst|Equal7~3_combout\ & (\b2v_inst|Equal1~0_combout\ & \b2v_inst|Equal7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal7~2_combout\,
	datab => \b2v_inst|Equal7~3_combout\,
	datac => \b2v_inst|Equal1~0_combout\,
	datad => \b2v_inst|Equal7~7_combout\,
	combout => \b2v_inst|Equal7~8_combout\);

-- Location: LCCOMB_X21_Y15_N0
\b2v_inst|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector36~0_combout\ = (\b2v_inst|state.check~q\) # ((\b2v_inst|state.delay~q\ & !\b2v_inst|Equal7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.check~q\,
	datac => \b2v_inst|state.delay~q\,
	datad => \b2v_inst|Equal7~8_combout\,
	combout => \b2v_inst|Selector36~0_combout\);

-- Location: FF_X21_Y15_N1
\b2v_inst|state.delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector36~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.delay~q\);

-- Location: LCCOMB_X22_Y14_N4
\b2v_inst|Selector33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector33~4_combout\ = (\b2v_inst|state.delay~q\ & \b2v_inst|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|state.delay~q\,
	datad => \b2v_inst|Equal7~8_combout\,
	combout => \b2v_inst|Selector33~4_combout\);

-- Location: LCCOMB_X21_Y15_N26
\b2v_inst|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector34~0_combout\ = (!\b2v_inst|state.check~q\ & !\b2v_inst|state.get_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.check~q\,
	datac => \b2v_inst|state.get_data~q\,
	combout => \b2v_inst|Selector34~0_combout\);

-- Location: LCCOMB_X21_Y15_N16
\b2v_inst|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector34~1_combout\ = (\b2v_inst|Selector34~0_combout\ & (((\b2v_inst|state.read_data~q\ & \b2v_inst|Selector33~0_combout\)) # (!\b2v_inst|init_stp\(0)))) # (!\b2v_inst|Selector34~0_combout\ & (\b2v_inst|state.read_data~q\ & 
-- ((\b2v_inst|Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector34~0_combout\,
	datab => \b2v_inst|state.read_data~q\,
	datac => \b2v_inst|init_stp\(0),
	datad => \b2v_inst|Selector33~0_combout\,
	combout => \b2v_inst|Selector34~1_combout\);

-- Location: LCCOMB_X21_Y15_N30
\b2v_inst|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector34~2_combout\ = (!\b2v_inst|Selector33~4_combout\ & (\b2v_inst|Selector34~1_combout\ & ((\b2v_inst|cnt[0]~2_combout\) # (!\b2v_inst|Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector33~4_combout\,
	datab => \b2v_inst|Selector34~1_combout\,
	datac => \b2v_inst|Selector33~1_combout\,
	datad => \b2v_inst|cnt[0]~2_combout\,
	combout => \b2v_inst|Selector34~2_combout\);

-- Location: FF_X21_Y15_N31
\b2v_inst|state.get_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector34~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.get_data~q\);

-- Location: FF_X18_Y15_N5
\b2v_inst|ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|ptr~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.get_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ptr\(5));

-- Location: LCCOMB_X18_Y15_N0
\b2v_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal4~0_combout\ = (\b2v_inst|ptr\(4)) # (((!\b2v_inst|ptr\(3)) # (!\b2v_inst|ptr\(5))) # (!\b2v_inst|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(4),
	datab => \b2v_inst|Equal5~0_combout\,
	datac => \b2v_inst|ptr\(5),
	datad => \b2v_inst|ptr\(3),
	combout => \b2v_inst|Equal4~0_combout\);

-- Location: LCCOMB_X18_Y15_N6
\b2v_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~0_combout\ = \b2v_inst|ptr\(0) $ (VCC)
-- \b2v_inst|Add2~1\ = CARRY(\b2v_inst|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(0),
	datad => VCC,
	combout => \b2v_inst|Add2~0_combout\,
	cout => \b2v_inst|Add2~1\);

-- Location: LCCOMB_X18_Y15_N28
\b2v_inst|ptr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~3_combout\ = (\b2v_inst|Equal5~1_combout\) # ((\b2v_inst|Equal4~0_combout\ & \b2v_inst|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Equal4~0_combout\,
	datac => \b2v_inst|Equal5~1_combout\,
	datad => \b2v_inst|Add2~0_combout\,
	combout => \b2v_inst|ptr~3_combout\);

-- Location: FF_X18_Y15_N29
\b2v_inst|ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|ptr~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.get_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ptr\(0));

-- Location: LCCOMB_X18_Y15_N8
\b2v_inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~2_combout\ = (\b2v_inst|ptr\(1) & (!\b2v_inst|Add2~1\)) # (!\b2v_inst|ptr\(1) & ((\b2v_inst|Add2~1\) # (GND)))
-- \b2v_inst|Add2~3\ = CARRY((!\b2v_inst|Add2~1\) # (!\b2v_inst|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(1),
	datad => VCC,
	cin => \b2v_inst|Add2~1\,
	combout => \b2v_inst|Add2~2_combout\,
	cout => \b2v_inst|Add2~3\);

-- Location: LCCOMB_X18_Y15_N20
\b2v_inst|ptr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~5_combout\ = (\b2v_inst|ptr~0_combout\ & \b2v_inst|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr~0_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	combout => \b2v_inst|ptr~5_combout\);

-- Location: FF_X18_Y15_N21
\b2v_inst|ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|ptr~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.get_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ptr\(1));

-- Location: LCCOMB_X18_Y15_N10
\b2v_inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~4_combout\ = (\b2v_inst|ptr\(2) & (\b2v_inst|Add2~3\ $ (GND))) # (!\b2v_inst|ptr\(2) & (!\b2v_inst|Add2~3\ & VCC))
-- \b2v_inst|Add2~5\ = CARRY((\b2v_inst|ptr\(2) & !\b2v_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(2),
	datad => VCC,
	cin => \b2v_inst|Add2~3\,
	combout => \b2v_inst|Add2~4_combout\,
	cout => \b2v_inst|Add2~5\);

-- Location: LCCOMB_X18_Y15_N18
\b2v_inst|ptr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~4_combout\ = (\b2v_inst|ptr~0_combout\ & \b2v_inst|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ptr~0_combout\,
	datad => \b2v_inst|Add2~4_combout\,
	combout => \b2v_inst|ptr~4_combout\);

-- Location: FF_X18_Y15_N19
\b2v_inst|ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|ptr~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.get_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ptr\(2));

-- Location: LCCOMB_X18_Y15_N12
\b2v_inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~6_combout\ = (\b2v_inst|ptr\(3) & (!\b2v_inst|Add2~5\)) # (!\b2v_inst|ptr\(3) & ((\b2v_inst|Add2~5\) # (GND)))
-- \b2v_inst|Add2~7\ = CARRY((!\b2v_inst|Add2~5\) # (!\b2v_inst|ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(3),
	datad => VCC,
	cin => \b2v_inst|Add2~5\,
	combout => \b2v_inst|Add2~6_combout\,
	cout => \b2v_inst|Add2~7\);

-- Location: LCCOMB_X18_Y15_N30
\b2v_inst|ptr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~6_combout\ = (\b2v_inst|ptr~0_combout\ & \b2v_inst|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr~0_combout\,
	datac => \b2v_inst|Add2~8_combout\,
	combout => \b2v_inst|ptr~6_combout\);

-- Location: FF_X18_Y15_N31
\b2v_inst|ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|ptr~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.get_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ptr\(4));

-- Location: LCCOMB_X18_Y15_N22
\b2v_inst|ptr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~0_combout\ = (\b2v_inst|ptr\(4)) # ((\b2v_inst|ptr\(5) $ (\b2v_inst|ptr\(3))) # (!\b2v_inst|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(4),
	datab => \b2v_inst|Equal5~0_combout\,
	datac => \b2v_inst|ptr\(5),
	datad => \b2v_inst|ptr\(3),
	combout => \b2v_inst|ptr~0_combout\);

-- Location: LCCOMB_X18_Y15_N2
\b2v_inst|ptr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|ptr~2_combout\ = (\b2v_inst|ptr~0_combout\ & \b2v_inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ptr~0_combout\,
	datad => \b2v_inst|Add2~6_combout\,
	combout => \b2v_inst|ptr~2_combout\);

-- Location: FF_X18_Y15_N3
\b2v_inst|ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|ptr~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst|state.get_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ptr\(3));

-- Location: LCCOMB_X17_Y15_N12
\b2v_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~0_combout\ = (\b2v_inst|ptr\(3) & (!\b2v_inst|ptr\(0) & (!\b2v_inst|ptr\(1) & !\b2v_inst|ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(3),
	datab => \b2v_inst|ptr\(0),
	datac => \b2v_inst|ptr\(1),
	datad => \b2v_inst|ptr\(2),
	combout => \b2v_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X17_Y15_N22
\b2v_inst|dht_temp_bh_tmp[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bh_tmp[7]~0_combout\ = (\b2v_inst|Decoder0~0_combout\ & (\b2v_inst|state.get_data~q\ & (!\b2v_inst|ptr\(4) & \b2v_inst|ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~0_combout\,
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|ptr\(5),
	combout => \b2v_inst|dht_temp_bh_tmp[7]~0_combout\);

-- Location: LCCOMB_X21_Y15_N10
\b2v_inst|state.check~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|state.check~feeder_combout\ = \b2v_inst|dht_temp_bh_tmp[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|dht_temp_bh_tmp[7]~0_combout\,
	combout => \b2v_inst|state.check~feeder_combout\);

-- Location: FF_X21_Y15_N11
\b2v_inst|state.check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|state.check~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.check~q\);

-- Location: LCCOMB_X21_Y15_N4
\b2v_inst|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector33~1_combout\ = (!\b2v_inst|state.check~q\ & (!\b2v_inst|state.get_data~q\ & ((!\b2v_inst|Selector33~0_combout\) # (!\b2v_inst|state.read_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.check~q\,
	datab => \b2v_inst|state.read_data~q\,
	datac => \b2v_inst|state.get_data~q\,
	datad => \b2v_inst|Selector33~0_combout\,
	combout => \b2v_inst|Selector33~1_combout\);

-- Location: LCCOMB_X21_Y15_N22
\b2v_inst|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector33~2_combout\ = (\b2v_inst|Selector33~1_combout\ & ((\b2v_inst|cnt[0]~2_combout\ & ((\b2v_inst|init_stp\(0)))) # (!\b2v_inst|cnt[0]~2_combout\ & (!\b2v_inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.init~q\,
	datab => \b2v_inst|Selector33~1_combout\,
	datac => \b2v_inst|init_stp\(0),
	datad => \b2v_inst|cnt[0]~2_combout\,
	combout => \b2v_inst|Selector33~2_combout\);

-- Location: LCCOMB_X21_Y15_N14
\b2v_inst|Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector33~3_combout\ = (!\b2v_inst|Selector33~2_combout\ & ((!\b2v_inst|Equal7~8_combout\) # (!\b2v_inst|state.delay~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector33~2_combout\,
	datab => \b2v_inst|state.delay~q\,
	datad => \b2v_inst|Equal7~8_combout\,
	combout => \b2v_inst|Selector33~3_combout\);

-- Location: FF_X21_Y15_N15
\b2v_inst|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector33~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|state.init~q\);

-- Location: LCCOMB_X21_Y14_N14
\b2v_inst|init_stp[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[1]~8_combout\ = (!\b2v_inst|init_stp\(2) & (((\dht_bus~input_o\) # (!\b2v_inst|Equal3~0_combout\)) # (!\b2v_inst|init_stp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(2),
	datab => \b2v_inst|init_stp\(0),
	datac => \dht_bus~input_o\,
	datad => \b2v_inst|Equal3~0_combout\,
	combout => \b2v_inst|init_stp[1]~8_combout\);

-- Location: LCCOMB_X21_Y14_N28
\b2v_inst|init_stp[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[1]~9_combout\ = (\b2v_inst|init_stp\(0) & ((\b2v_inst|init_stp\(2) & (!\dht_bus~input_o\)) # (!\b2v_inst|init_stp\(2) & ((\b2v_inst|Equal1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(2),
	datab => \b2v_inst|init_stp\(0),
	datac => \dht_bus~input_o\,
	datad => \b2v_inst|Equal1~2_combout\,
	combout => \b2v_inst|init_stp[1]~9_combout\);

-- Location: LCCOMB_X21_Y14_N6
\b2v_inst|init_stp[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[1]~10_combout\ = (\b2v_inst|init_stp[1]~9_combout\) # ((\b2v_inst|init_stp\(2) & (!\b2v_inst|init_stp\(0) & !\b2v_inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(2),
	datab => \b2v_inst|init_stp[1]~9_combout\,
	datac => \b2v_inst|init_stp\(0),
	datad => \b2v_inst|Equal3~0_combout\,
	combout => \b2v_inst|init_stp[1]~10_combout\);

-- Location: LCCOMB_X21_Y14_N8
\b2v_inst|init_stp[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|init_stp[1]~11_combout\ = (\b2v_inst|state.init~q\ & (((\b2v_inst|init_stp\(1))))) # (!\b2v_inst|state.init~q\ & ((\b2v_inst|init_stp\(1) & (\b2v_inst|init_stp[1]~8_combout\)) # (!\b2v_inst|init_stp\(1) & ((\b2v_inst|init_stp[1]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.init~q\,
	datab => \b2v_inst|init_stp[1]~8_combout\,
	datac => \b2v_inst|init_stp\(1),
	datad => \b2v_inst|init_stp[1]~10_combout\,
	combout => \b2v_inst|init_stp[1]~11_combout\);

-- Location: FF_X21_Y14_N9
\b2v_inst|init_stp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|init_stp[1]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|init_stp\(1));

-- Location: LCCOMB_X21_Y14_N20
\b2v_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~1_combout\ = (\b2v_inst|init_stp\(1) & (((\b2v_inst|dht_en~q\ & \b2v_inst|init_stp\(2))))) # (!\b2v_inst|init_stp\(1) & (\b2v_inst|init_stp\(0) & ((!\b2v_inst|init_stp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|init_stp\(1),
	datab => \b2v_inst|init_stp\(0),
	datac => \b2v_inst|dht_en~q\,
	datad => \b2v_inst|init_stp\(2),
	combout => \b2v_inst|Selector0~1_combout\);

-- Location: LCCOMB_X21_Y14_N2
\b2v_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~0_combout\ = (\b2v_inst|dht_en~q\ & (((\b2v_inst|rd_stp\(0) & \b2v_inst|rd_stp\(1))) # (!\b2v_inst|state.read_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.read_data~q\,
	datab => \b2v_inst|rd_stp\(0),
	datac => \b2v_inst|dht_en~q\,
	datad => \b2v_inst|rd_stp\(1),
	combout => \b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\b2v_inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~2_combout\ = (\b2v_inst|state.init~q\ & ((\b2v_inst|Selector0~0_combout\))) # (!\b2v_inst|state.init~q\ & (\b2v_inst|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Selector0~1_combout\,
	datac => \b2v_inst|state.init~q\,
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst|Selector0~2_combout\);

-- Location: FF_X21_Y14_N31
\b2v_inst|dht_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector0~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_en~q\);

-- Location: LCCOMB_X7_Y20_N4
\b2v_inst5|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector26~0_combout\ = (\b2v_inst5|Add0~10_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~10_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector26~0_combout\);

-- Location: FF_X7_Y20_N5
\b2v_inst5|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector26~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(5));

-- Location: LCCOMB_X7_Y19_N0
\b2v_inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~0_combout\ = \b2v_inst5|cnt\(0) $ (VCC)
-- \b2v_inst5|Add0~1\ = CARRY(\b2v_inst5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(0),
	datad => VCC,
	combout => \b2v_inst5|Add0~0_combout\,
	cout => \b2v_inst5|Add0~1\);

-- Location: LCCOMB_X6_Y20_N28
\b2v_inst5|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector31~0_combout\ = (\b2v_inst5|Add0~0_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~0_combout\,
	datac => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector31~0_combout\);

-- Location: FF_X6_Y20_N29
\b2v_inst5|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector31~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(0));

-- Location: LCCOMB_X7_Y19_N2
\b2v_inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~2_combout\ = (\b2v_inst5|cnt\(1) & (!\b2v_inst5|Add0~1\)) # (!\b2v_inst5|cnt\(1) & ((\b2v_inst5|Add0~1\) # (GND)))
-- \b2v_inst5|Add0~3\ = CARRY((!\b2v_inst5|Add0~1\) # (!\b2v_inst5|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(1),
	datad => VCC,
	cin => \b2v_inst5|Add0~1\,
	combout => \b2v_inst5|Add0~2_combout\,
	cout => \b2v_inst5|Add0~3\);

-- Location: LCCOMB_X8_Y19_N20
\b2v_inst5|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector30~0_combout\ = (\b2v_inst5|Add0~2_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~2_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector30~0_combout\);

-- Location: FF_X8_Y19_N21
\b2v_inst5|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector30~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(1));

-- Location: LCCOMB_X7_Y19_N4
\b2v_inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~4_combout\ = (\b2v_inst5|cnt\(2) & (\b2v_inst5|Add0~3\ $ (GND))) # (!\b2v_inst5|cnt\(2) & (!\b2v_inst5|Add0~3\ & VCC))
-- \b2v_inst5|Add0~5\ = CARRY((\b2v_inst5|cnt\(2) & !\b2v_inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(2),
	datad => VCC,
	cin => \b2v_inst5|Add0~3\,
	combout => \b2v_inst5|Add0~4_combout\,
	cout => \b2v_inst5|Add0~5\);

-- Location: LCCOMB_X8_Y19_N12
\b2v_inst5|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector29~0_combout\ = (\b2v_inst5|Add0~4_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~4_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector29~0_combout\);

-- Location: FF_X8_Y19_N13
\b2v_inst5|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector29~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(2));

-- Location: LCCOMB_X7_Y19_N6
\b2v_inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~6_combout\ = (\b2v_inst5|cnt\(3) & (!\b2v_inst5|Add0~5\)) # (!\b2v_inst5|cnt\(3) & ((\b2v_inst5|Add0~5\) # (GND)))
-- \b2v_inst5|Add0~7\ = CARRY((!\b2v_inst5|Add0~5\) # (!\b2v_inst5|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(3),
	datad => VCC,
	cin => \b2v_inst5|Add0~5\,
	combout => \b2v_inst5|Add0~6_combout\,
	cout => \b2v_inst5|Add0~7\);

-- Location: LCCOMB_X6_Y19_N14
\b2v_inst5|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector28~0_combout\ = (\b2v_inst5|Add0~6_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~6_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector28~0_combout\);

-- Location: FF_X6_Y19_N15
\b2v_inst5|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector28~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(3));

-- Location: LCCOMB_X7_Y19_N8
\b2v_inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~8_combout\ = (\b2v_inst5|cnt\(4) & (\b2v_inst5|Add0~7\ $ (GND))) # (!\b2v_inst5|cnt\(4) & (!\b2v_inst5|Add0~7\ & VCC))
-- \b2v_inst5|Add0~9\ = CARRY((\b2v_inst5|cnt\(4) & !\b2v_inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(4),
	datad => VCC,
	cin => \b2v_inst5|Add0~7\,
	combout => \b2v_inst5|Add0~8_combout\,
	cout => \b2v_inst5|Add0~9\);

-- Location: LCCOMB_X8_Y19_N2
\b2v_inst5|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector27~0_combout\ = (\b2v_inst5|Add0~8_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~8_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector27~0_combout\);

-- Location: FF_X8_Y19_N3
\b2v_inst5|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector27~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(4));

-- Location: LCCOMB_X7_Y19_N10
\b2v_inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~10_combout\ = (\b2v_inst5|cnt\(5) & (!\b2v_inst5|Add0~9\)) # (!\b2v_inst5|cnt\(5) & ((\b2v_inst5|Add0~9\) # (GND)))
-- \b2v_inst5|Add0~11\ = CARRY((!\b2v_inst5|Add0~9\) # (!\b2v_inst5|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(5),
	datad => VCC,
	cin => \b2v_inst5|Add0~9\,
	combout => \b2v_inst5|Add0~10_combout\,
	cout => \b2v_inst5|Add0~11\);

-- Location: LCCOMB_X8_Y20_N28
\b2v_inst5|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector5~0_combout\ = (\b2v_inst5|Add0~52_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~52_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector5~0_combout\);

-- Location: FF_X8_Y20_N29
\b2v_inst5|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(26));

-- Location: LCCOMB_X7_Y19_N12
\b2v_inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~12_combout\ = (\b2v_inst5|cnt\(6) & (\b2v_inst5|Add0~11\ $ (GND))) # (!\b2v_inst5|cnt\(6) & (!\b2v_inst5|Add0~11\ & VCC))
-- \b2v_inst5|Add0~13\ = CARRY((\b2v_inst5|cnt\(6) & !\b2v_inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(6),
	datad => VCC,
	cin => \b2v_inst5|Add0~11\,
	combout => \b2v_inst5|Add0~12_combout\,
	cout => \b2v_inst5|Add0~13\);

-- Location: LCCOMB_X8_Y19_N24
\b2v_inst5|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector25~0_combout\ = (\b2v_inst5|Add0~12_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~12_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector25~0_combout\);

-- Location: FF_X8_Y19_N25
\b2v_inst5|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector25~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(6));

-- Location: LCCOMB_X7_Y19_N14
\b2v_inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~14_combout\ = (\b2v_inst5|cnt\(7) & (!\b2v_inst5|Add0~13\)) # (!\b2v_inst5|cnt\(7) & ((\b2v_inst5|Add0~13\) # (GND)))
-- \b2v_inst5|Add0~15\ = CARRY((!\b2v_inst5|Add0~13\) # (!\b2v_inst5|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(7),
	datad => VCC,
	cin => \b2v_inst5|Add0~13\,
	combout => \b2v_inst5|Add0~14_combout\,
	cout => \b2v_inst5|Add0~15\);

-- Location: LCCOMB_X7_Y20_N30
\b2v_inst5|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector24~0_combout\ = (\b2v_inst5|Add0~14_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~14_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector24~0_combout\);

-- Location: FF_X7_Y20_N31
\b2v_inst5|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector24~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(7));

-- Location: LCCOMB_X7_Y19_N16
\b2v_inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~16_combout\ = (\b2v_inst5|cnt\(8) & (\b2v_inst5|Add0~15\ $ (GND))) # (!\b2v_inst5|cnt\(8) & (!\b2v_inst5|Add0~15\ & VCC))
-- \b2v_inst5|Add0~17\ = CARRY((\b2v_inst5|cnt\(8) & !\b2v_inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(8),
	datad => VCC,
	cin => \b2v_inst5|Add0~15\,
	combout => \b2v_inst5|Add0~16_combout\,
	cout => \b2v_inst5|Add0~17\);

-- Location: LCCOMB_X8_Y19_N14
\b2v_inst5|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector23~0_combout\ = (\b2v_inst5|Add0~16_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~16_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector23~0_combout\);

-- Location: FF_X8_Y19_N15
\b2v_inst5|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector23~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(8));

-- Location: LCCOMB_X7_Y19_N18
\b2v_inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~18_combout\ = (\b2v_inst5|cnt\(9) & (!\b2v_inst5|Add0~17\)) # (!\b2v_inst5|cnt\(9) & ((\b2v_inst5|Add0~17\) # (GND)))
-- \b2v_inst5|Add0~19\ = CARRY((!\b2v_inst5|Add0~17\) # (!\b2v_inst5|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(9),
	datad => VCC,
	cin => \b2v_inst5|Add0~17\,
	combout => \b2v_inst5|Add0~18_combout\,
	cout => \b2v_inst5|Add0~19\);

-- Location: LCCOMB_X8_Y20_N2
\b2v_inst5|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector22~0_combout\ = (\b2v_inst5|Add0~18_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~18_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector22~0_combout\);

-- Location: FF_X8_Y20_N3
\b2v_inst5|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector22~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(9));

-- Location: LCCOMB_X7_Y19_N20
\b2v_inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~20_combout\ = (\b2v_inst5|cnt\(10) & (\b2v_inst5|Add0~19\ $ (GND))) # (!\b2v_inst5|cnt\(10) & (!\b2v_inst5|Add0~19\ & VCC))
-- \b2v_inst5|Add0~21\ = CARRY((\b2v_inst5|cnt\(10) & !\b2v_inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(10),
	datad => VCC,
	cin => \b2v_inst5|Add0~19\,
	combout => \b2v_inst5|Add0~20_combout\,
	cout => \b2v_inst5|Add0~21\);

-- Location: LCCOMB_X8_Y19_N28
\b2v_inst5|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector21~0_combout\ = (\b2v_inst5|Add0~20_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~20_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector21~0_combout\);

-- Location: FF_X8_Y19_N29
\b2v_inst5|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector21~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(10));

-- Location: LCCOMB_X7_Y19_N22
\b2v_inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~22_combout\ = (\b2v_inst5|cnt\(11) & (!\b2v_inst5|Add0~21\)) # (!\b2v_inst5|cnt\(11) & ((\b2v_inst5|Add0~21\) # (GND)))
-- \b2v_inst5|Add0~23\ = CARRY((!\b2v_inst5|Add0~21\) # (!\b2v_inst5|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(11),
	datad => VCC,
	cin => \b2v_inst5|Add0~21\,
	combout => \b2v_inst5|Add0~22_combout\,
	cout => \b2v_inst5|Add0~23\);

-- Location: LCCOMB_X8_Y19_N6
\b2v_inst5|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector20~0_combout\ = (\b2v_inst5|Add0~22_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~22_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector20~0_combout\);

-- Location: FF_X8_Y19_N7
\b2v_inst5|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector20~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(11));

-- Location: LCCOMB_X7_Y19_N24
\b2v_inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~24_combout\ = (\b2v_inst5|cnt\(12) & (\b2v_inst5|Add0~23\ $ (GND))) # (!\b2v_inst5|cnt\(12) & (!\b2v_inst5|Add0~23\ & VCC))
-- \b2v_inst5|Add0~25\ = CARRY((\b2v_inst5|cnt\(12) & !\b2v_inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(12),
	datad => VCC,
	cin => \b2v_inst5|Add0~23\,
	combout => \b2v_inst5|Add0~24_combout\,
	cout => \b2v_inst5|Add0~25\);

-- Location: LCCOMB_X7_Y20_N0
\b2v_inst5|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector19~0_combout\ = (\b2v_inst5|Add0~24_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~24_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector19~0_combout\);

-- Location: FF_X7_Y20_N1
\b2v_inst5|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector19~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(12));

-- Location: LCCOMB_X7_Y19_N26
\b2v_inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~26_combout\ = (\b2v_inst5|cnt\(13) & (!\b2v_inst5|Add0~25\)) # (!\b2v_inst5|cnt\(13) & ((\b2v_inst5|Add0~25\) # (GND)))
-- \b2v_inst5|Add0~27\ = CARRY((!\b2v_inst5|Add0~25\) # (!\b2v_inst5|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(13),
	datad => VCC,
	cin => \b2v_inst5|Add0~25\,
	combout => \b2v_inst5|Add0~26_combout\,
	cout => \b2v_inst5|Add0~27\);

-- Location: LCCOMB_X7_Y20_N2
\b2v_inst5|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector18~0_combout\ = (\b2v_inst5|Add0~26_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~26_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector18~0_combout\);

-- Location: FF_X7_Y20_N3
\b2v_inst5|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector18~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(13));

-- Location: LCCOMB_X7_Y19_N28
\b2v_inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~28_combout\ = (\b2v_inst5|cnt\(14) & (\b2v_inst5|Add0~27\ $ (GND))) # (!\b2v_inst5|cnt\(14) & (!\b2v_inst5|Add0~27\ & VCC))
-- \b2v_inst5|Add0~29\ = CARRY((\b2v_inst5|cnt\(14) & !\b2v_inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(14),
	datad => VCC,
	cin => \b2v_inst5|Add0~27\,
	combout => \b2v_inst5|Add0~28_combout\,
	cout => \b2v_inst5|Add0~29\);

-- Location: LCCOMB_X7_Y20_N16
\b2v_inst5|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector17~0_combout\ = (\b2v_inst5|Add0~28_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~28_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector17~0_combout\);

-- Location: FF_X7_Y20_N17
\b2v_inst5|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector17~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(14));

-- Location: LCCOMB_X7_Y19_N30
\b2v_inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~30_combout\ = (\b2v_inst5|cnt\(15) & (!\b2v_inst5|Add0~29\)) # (!\b2v_inst5|cnt\(15) & ((\b2v_inst5|Add0~29\) # (GND)))
-- \b2v_inst5|Add0~31\ = CARRY((!\b2v_inst5|Add0~29\) # (!\b2v_inst5|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(15),
	datad => VCC,
	cin => \b2v_inst5|Add0~29\,
	combout => \b2v_inst5|Add0~30_combout\,
	cout => \b2v_inst5|Add0~31\);

-- Location: LCCOMB_X6_Y19_N16
\b2v_inst5|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector16~0_combout\ = (\b2v_inst5|Add0~30_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~30_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector16~0_combout\);

-- Location: FF_X6_Y19_N17
\b2v_inst5|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector16~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(15));

-- Location: LCCOMB_X7_Y18_N0
\b2v_inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~32_combout\ = (\b2v_inst5|cnt\(16) & (\b2v_inst5|Add0~31\ $ (GND))) # (!\b2v_inst5|cnt\(16) & (!\b2v_inst5|Add0~31\ & VCC))
-- \b2v_inst5|Add0~33\ = CARRY((\b2v_inst5|cnt\(16) & !\b2v_inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(16),
	datad => VCC,
	cin => \b2v_inst5|Add0~31\,
	combout => \b2v_inst5|Add0~32_combout\,
	cout => \b2v_inst5|Add0~33\);

-- Location: LCCOMB_X7_Y18_N2
\b2v_inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~34_combout\ = (\b2v_inst5|cnt\(17) & (!\b2v_inst5|Add0~33\)) # (!\b2v_inst5|cnt\(17) & ((\b2v_inst5|Add0~33\) # (GND)))
-- \b2v_inst5|Add0~35\ = CARRY((!\b2v_inst5|Add0~33\) # (!\b2v_inst5|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(17),
	datad => VCC,
	cin => \b2v_inst5|Add0~33\,
	combout => \b2v_inst5|Add0~34_combout\,
	cout => \b2v_inst5|Add0~35\);

-- Location: LCCOMB_X6_Y18_N16
\b2v_inst5|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector14~0_combout\ = (\b2v_inst5|Add0~34_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~34_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector14~0_combout\);

-- Location: FF_X6_Y18_N17
\b2v_inst5|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector14~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(17));

-- Location: LCCOMB_X7_Y18_N4
\b2v_inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~36_combout\ = (\b2v_inst5|cnt\(18) & (\b2v_inst5|Add0~35\ $ (GND))) # (!\b2v_inst5|cnt\(18) & (!\b2v_inst5|Add0~35\ & VCC))
-- \b2v_inst5|Add0~37\ = CARRY((\b2v_inst5|cnt\(18) & !\b2v_inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(18),
	datad => VCC,
	cin => \b2v_inst5|Add0~35\,
	combout => \b2v_inst5|Add0~36_combout\,
	cout => \b2v_inst5|Add0~37\);

-- Location: LCCOMB_X7_Y20_N18
\b2v_inst5|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector13~0_combout\ = (\b2v_inst5|Add0~36_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~36_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector13~0_combout\);

-- Location: FF_X7_Y20_N19
\b2v_inst5|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector13~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(18));

-- Location: LCCOMB_X7_Y18_N6
\b2v_inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~38_combout\ = (\b2v_inst5|cnt\(19) & (!\b2v_inst5|Add0~37\)) # (!\b2v_inst5|cnt\(19) & ((\b2v_inst5|Add0~37\) # (GND)))
-- \b2v_inst5|Add0~39\ = CARRY((!\b2v_inst5|Add0~37\) # (!\b2v_inst5|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(19),
	datad => VCC,
	cin => \b2v_inst5|Add0~37\,
	combout => \b2v_inst5|Add0~38_combout\,
	cout => \b2v_inst5|Add0~39\);

-- Location: LCCOMB_X6_Y20_N22
\b2v_inst5|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector12~0_combout\ = (\b2v_inst5|Add0~38_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~38_combout\,
	datac => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector12~0_combout\);

-- Location: FF_X6_Y20_N23
\b2v_inst5|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(19));

-- Location: LCCOMB_X7_Y18_N8
\b2v_inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~40_combout\ = (\b2v_inst5|cnt\(20) & (\b2v_inst5|Add0~39\ $ (GND))) # (!\b2v_inst5|cnt\(20) & (!\b2v_inst5|Add0~39\ & VCC))
-- \b2v_inst5|Add0~41\ = CARRY((\b2v_inst5|cnt\(20) & !\b2v_inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(20),
	datad => VCC,
	cin => \b2v_inst5|Add0~39\,
	combout => \b2v_inst5|Add0~40_combout\,
	cout => \b2v_inst5|Add0~41\);

-- Location: LCCOMB_X7_Y20_N28
\b2v_inst5|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector11~0_combout\ = (\b2v_inst5|Add0~40_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~40_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector11~0_combout\);

-- Location: FF_X7_Y20_N29
\b2v_inst5|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector11~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(20));

-- Location: LCCOMB_X7_Y18_N10
\b2v_inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~42_combout\ = (\b2v_inst5|cnt\(21) & (!\b2v_inst5|Add0~41\)) # (!\b2v_inst5|cnt\(21) & ((\b2v_inst5|Add0~41\) # (GND)))
-- \b2v_inst5|Add0~43\ = CARRY((!\b2v_inst5|Add0~41\) # (!\b2v_inst5|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(21),
	datad => VCC,
	cin => \b2v_inst5|Add0~41\,
	combout => \b2v_inst5|Add0~42_combout\,
	cout => \b2v_inst5|Add0~43\);

-- Location: LCCOMB_X6_Y18_N6
\b2v_inst5|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector10~0_combout\ = (\b2v_inst5|Add0~42_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~42_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector10~0_combout\);

-- Location: FF_X6_Y18_N7
\b2v_inst5|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(21));

-- Location: LCCOMB_X7_Y18_N12
\b2v_inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~44_combout\ = (\b2v_inst5|cnt\(22) & (\b2v_inst5|Add0~43\ $ (GND))) # (!\b2v_inst5|cnt\(22) & (!\b2v_inst5|Add0~43\ & VCC))
-- \b2v_inst5|Add0~45\ = CARRY((\b2v_inst5|cnt\(22) & !\b2v_inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(22),
	datad => VCC,
	cin => \b2v_inst5|Add0~43\,
	combout => \b2v_inst5|Add0~44_combout\,
	cout => \b2v_inst5|Add0~45\);

-- Location: LCCOMB_X8_Y18_N18
\b2v_inst5|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector9~0_combout\ = (\b2v_inst5|Add0~44_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~44_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector9~0_combout\);

-- Location: FF_X8_Y18_N19
\b2v_inst5|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(22));

-- Location: LCCOMB_X7_Y18_N14
\b2v_inst5|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~46_combout\ = (\b2v_inst5|cnt\(23) & (!\b2v_inst5|Add0~45\)) # (!\b2v_inst5|cnt\(23) & ((\b2v_inst5|Add0~45\) # (GND)))
-- \b2v_inst5|Add0~47\ = CARRY((!\b2v_inst5|Add0~45\) # (!\b2v_inst5|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(23),
	datad => VCC,
	cin => \b2v_inst5|Add0~45\,
	combout => \b2v_inst5|Add0~46_combout\,
	cout => \b2v_inst5|Add0~47\);

-- Location: LCCOMB_X8_Y18_N4
\b2v_inst5|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector8~0_combout\ = (\b2v_inst5|Add0~46_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~46_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector8~0_combout\);

-- Location: FF_X8_Y18_N5
\b2v_inst5|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(23));

-- Location: LCCOMB_X7_Y18_N16
\b2v_inst5|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~48_combout\ = (\b2v_inst5|cnt\(24) & (\b2v_inst5|Add0~47\ $ (GND))) # (!\b2v_inst5|cnt\(24) & (!\b2v_inst5|Add0~47\ & VCC))
-- \b2v_inst5|Add0~49\ = CARRY((\b2v_inst5|cnt\(24) & !\b2v_inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(24),
	datad => VCC,
	cin => \b2v_inst5|Add0~47\,
	combout => \b2v_inst5|Add0~48_combout\,
	cout => \b2v_inst5|Add0~49\);

-- Location: LCCOMB_X8_Y18_N6
\b2v_inst5|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector7~0_combout\ = (\b2v_inst5|Add0~48_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~48_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector7~0_combout\);

-- Location: FF_X8_Y18_N7
\b2v_inst5|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(24));

-- Location: LCCOMB_X7_Y18_N18
\b2v_inst5|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~50_combout\ = (\b2v_inst5|cnt\(25) & (!\b2v_inst5|Add0~49\)) # (!\b2v_inst5|cnt\(25) & ((\b2v_inst5|Add0~49\) # (GND)))
-- \b2v_inst5|Add0~51\ = CARRY((!\b2v_inst5|Add0~49\) # (!\b2v_inst5|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(25),
	datad => VCC,
	cin => \b2v_inst5|Add0~49\,
	combout => \b2v_inst5|Add0~50_combout\,
	cout => \b2v_inst5|Add0~51\);

-- Location: LCCOMB_X8_Y18_N8
\b2v_inst5|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector6~0_combout\ = (\b2v_inst5|Add0~50_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~50_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector6~0_combout\);

-- Location: FF_X8_Y18_N9
\b2v_inst5|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(25));

-- Location: LCCOMB_X7_Y18_N20
\b2v_inst5|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~52_combout\ = (\b2v_inst5|cnt\(26) & (\b2v_inst5|Add0~51\ $ (GND))) # (!\b2v_inst5|cnt\(26) & (!\b2v_inst5|Add0~51\ & VCC))
-- \b2v_inst5|Add0~53\ = CARRY((\b2v_inst5|cnt\(26) & !\b2v_inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(26),
	datad => VCC,
	cin => \b2v_inst5|Add0~51\,
	combout => \b2v_inst5|Add0~52_combout\,
	cout => \b2v_inst5|Add0~53\);

-- Location: LCCOMB_X8_Y20_N4
\b2v_inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~0_combout\ = (!\b2v_inst5|Add0~52_combout\ & (!\b2v_inst5|Add0~48_combout\ & (!\b2v_inst5|Add0~46_combout\ & !\b2v_inst5|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~52_combout\,
	datab => \b2v_inst5|Add0~48_combout\,
	datac => \b2v_inst5|Add0~46_combout\,
	datad => \b2v_inst5|Add0~50_combout\,
	combout => \b2v_inst5|LessThan0~0_combout\);

-- Location: FF_X7_Y18_N31
\b2v_inst5|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Add0~62_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(31));

-- Location: LCCOMB_X7_Y18_N22
\b2v_inst5|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~54_combout\ = (\b2v_inst5|cnt\(27) & (!\b2v_inst5|Add0~53\)) # (!\b2v_inst5|cnt\(27) & ((\b2v_inst5|Add0~53\) # (GND)))
-- \b2v_inst5|Add0~55\ = CARRY((!\b2v_inst5|Add0~53\) # (!\b2v_inst5|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(27),
	datad => VCC,
	cin => \b2v_inst5|Add0~53\,
	combout => \b2v_inst5|Add0~54_combout\,
	cout => \b2v_inst5|Add0~55\);

-- Location: LCCOMB_X7_Y20_N26
\b2v_inst5|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector4~0_combout\ = (\b2v_inst5|Add0~54_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~54_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector4~0_combout\);

-- Location: FF_X7_Y20_N27
\b2v_inst5|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector4~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(27));

-- Location: LCCOMB_X7_Y18_N24
\b2v_inst5|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~56_combout\ = (\b2v_inst5|cnt\(28) & (\b2v_inst5|Add0~55\ $ (GND))) # (!\b2v_inst5|cnt\(28) & (!\b2v_inst5|Add0~55\ & VCC))
-- \b2v_inst5|Add0~57\ = CARRY((\b2v_inst5|cnt\(28) & !\b2v_inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(28),
	datad => VCC,
	cin => \b2v_inst5|Add0~55\,
	combout => \b2v_inst5|Add0~56_combout\,
	cout => \b2v_inst5|Add0~57\);

-- Location: LCCOMB_X8_Y18_N26
\b2v_inst5|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector3~0_combout\ = (\b2v_inst5|Add0~56_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~56_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector3~0_combout\);

-- Location: FF_X8_Y18_N27
\b2v_inst5|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(28));

-- Location: LCCOMB_X7_Y18_N26
\b2v_inst5|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~58_combout\ = (\b2v_inst5|cnt\(29) & (!\b2v_inst5|Add0~57\)) # (!\b2v_inst5|cnt\(29) & ((\b2v_inst5|Add0~57\) # (GND)))
-- \b2v_inst5|Add0~59\ = CARRY((!\b2v_inst5|Add0~57\) # (!\b2v_inst5|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cnt\(29),
	datad => VCC,
	cin => \b2v_inst5|Add0~57\,
	combout => \b2v_inst5|Add0~58_combout\,
	cout => \b2v_inst5|Add0~59\);

-- Location: LCCOMB_X8_Y18_N12
\b2v_inst5|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector2~0_combout\ = (\b2v_inst5|Add0~58_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~58_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector2~0_combout\);

-- Location: FF_X8_Y18_N13
\b2v_inst5|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(29));

-- Location: LCCOMB_X7_Y18_N28
\b2v_inst5|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~60_combout\ = (\b2v_inst5|cnt\(30) & (\b2v_inst5|Add0~59\ $ (GND))) # (!\b2v_inst5|cnt\(30) & (!\b2v_inst5|Add0~59\ & VCC))
-- \b2v_inst5|Add0~61\ = CARRY((\b2v_inst5|cnt\(30) & !\b2v_inst5|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(30),
	datad => VCC,
	cin => \b2v_inst5|Add0~59\,
	combout => \b2v_inst5|Add0~60_combout\,
	cout => \b2v_inst5|Add0~61\);

-- Location: LCCOMB_X7_Y20_N12
\b2v_inst5|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector1~0_combout\ = (\b2v_inst5|Add0~60_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~60_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector1~0_combout\);

-- Location: FF_X7_Y20_N13
\b2v_inst5|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(30));

-- Location: LCCOMB_X7_Y18_N30
\b2v_inst5|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Add0~62_combout\ = \b2v_inst5|cnt\(31) $ (\b2v_inst5|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt\(31),
	cin => \b2v_inst5|Add0~61\,
	combout => \b2v_inst5|Add0~62_combout\);

-- Location: LCCOMB_X8_Y20_N14
\b2v_inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~1_combout\ = (!\b2v_inst5|Add0~60_combout\ & (!\b2v_inst5|Add0~54_combout\ & (!\b2v_inst5|Add0~58_combout\ & !\b2v_inst5|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~60_combout\,
	datab => \b2v_inst5|Add0~54_combout\,
	datac => \b2v_inst5|Add0~58_combout\,
	datad => \b2v_inst5|Add0~56_combout\,
	combout => \b2v_inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y20_N4
\b2v_inst5|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~7_combout\ = (\b2v_inst5|Add0~32_combout\) # (\b2v_inst5|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~32_combout\,
	datad => \b2v_inst5|Add0~34_combout\,
	combout => \b2v_inst5|LessThan0~7_combout\);

-- Location: LCCOMB_X6_Y20_N2
\b2v_inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~2_combout\ = (\b2v_inst5|Add0~0_combout\) # ((\b2v_inst5|Add0~4_combout\) # ((\b2v_inst5|Add0~2_combout\) # (\b2v_inst5|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~0_combout\,
	datab => \b2v_inst5|Add0~4_combout\,
	datac => \b2v_inst5|Add0~2_combout\,
	datad => \b2v_inst5|Add0~8_combout\,
	combout => \b2v_inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y20_N0
\b2v_inst5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~3_combout\ = (\b2v_inst5|Add0~12_combout\ & ((\b2v_inst5|Add0~10_combout\) # ((\b2v_inst5|Add0~6_combout\) # (\b2v_inst5|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~10_combout\,
	datab => \b2v_inst5|Add0~6_combout\,
	datac => \b2v_inst5|Add0~12_combout\,
	datad => \b2v_inst5|LessThan0~2_combout\,
	combout => \b2v_inst5|LessThan0~3_combout\);

-- Location: LCCOMB_X6_Y20_N6
\b2v_inst5|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~4_combout\ = (\b2v_inst5|Add0~18_combout\ & (\b2v_inst5|Add0~16_combout\ & ((\b2v_inst5|Add0~14_combout\) # (\b2v_inst5|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~14_combout\,
	datab => \b2v_inst5|Add0~18_combout\,
	datac => \b2v_inst5|Add0~16_combout\,
	datad => \b2v_inst5|LessThan0~3_combout\,
	combout => \b2v_inst5|LessThan0~4_combout\);

-- Location: LCCOMB_X6_Y20_N16
\b2v_inst5|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~5_combout\ = (\b2v_inst5|Add0~24_combout\) # ((\b2v_inst5|Add0~22_combout\ & ((\b2v_inst5|Add0~20_combout\) # (\b2v_inst5|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~20_combout\,
	datab => \b2v_inst5|Add0~22_combout\,
	datac => \b2v_inst5|Add0~24_combout\,
	datad => \b2v_inst5|LessThan0~4_combout\,
	combout => \b2v_inst5|LessThan0~5_combout\);

-- Location: LCCOMB_X6_Y20_N18
\b2v_inst5|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~6_combout\ = (\b2v_inst5|Add0~30_combout\) # ((\b2v_inst5|Add0~28_combout\ & ((\b2v_inst5|Add0~26_combout\) # (\b2v_inst5|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~26_combout\,
	datab => \b2v_inst5|Add0~30_combout\,
	datac => \b2v_inst5|Add0~28_combout\,
	datad => \b2v_inst5|LessThan0~5_combout\,
	combout => \b2v_inst5|LessThan0~6_combout\);

-- Location: LCCOMB_X6_Y20_N10
\b2v_inst5|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~8_combout\ = (\b2v_inst5|Add0~38_combout\ & (\b2v_inst5|Add0~36_combout\ & ((\b2v_inst5|LessThan0~7_combout\) # (\b2v_inst5|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~38_combout\,
	datab => \b2v_inst5|Add0~36_combout\,
	datac => \b2v_inst5|LessThan0~7_combout\,
	datad => \b2v_inst5|LessThan0~6_combout\,
	combout => \b2v_inst5|LessThan0~8_combout\);

-- Location: LCCOMB_X6_Y20_N12
\b2v_inst5|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LessThan0~9_combout\ = (\b2v_inst5|Add0~44_combout\ & ((\b2v_inst5|Add0~40_combout\) # ((\b2v_inst5|Add0~42_combout\) # (\b2v_inst5|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~44_combout\,
	datab => \b2v_inst5|Add0~40_combout\,
	datac => \b2v_inst5|Add0~42_combout\,
	datad => \b2v_inst5|LessThan0~8_combout\,
	combout => \b2v_inst5|LessThan0~9_combout\);

-- Location: LCCOMB_X6_Y20_N26
\b2v_inst5|Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector47~1_combout\ = (!\b2v_inst5|Add0~62_combout\ & (((\b2v_inst5|LessThan0~9_combout\) # (!\b2v_inst5|LessThan0~1_combout\)) # (!\b2v_inst5|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LessThan0~0_combout\,
	datab => \b2v_inst5|Add0~62_combout\,
	datac => \b2v_inst5|LessThan0~1_combout\,
	datad => \b2v_inst5|LessThan0~9_combout\,
	combout => \b2v_inst5|Selector47~1_combout\);

-- Location: LCCOMB_X5_Y20_N10
\b2v_inst5|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~11_combout\ = (\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|Selector47~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|lcd_state.lcd_delay~q\,
	datad => \b2v_inst5|Selector47~1_combout\,
	combout => \b2v_inst5|Selector46~11_combout\);

-- Location: LCCOMB_X8_Y18_N2
\b2v_inst5|cmd_ptr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cmd_ptr[0]~3_combout\ = !\b2v_inst5|cmd_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|cmd_ptr[0]~3_combout\);

-- Location: FF_X8_Y18_N3
\b2v_inst5|cmd_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|cmd_ptr[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst5|Selector46~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cmd_ptr\(0));

-- Location: LCCOMB_X8_Y18_N24
\b2v_inst5|cmd_ptr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cmd_ptr~1_combout\ = (\b2v_inst5|cmd_ptr\(1) & ((!\b2v_inst5|cmd_ptr\(0)))) # (!\b2v_inst5|cmd_ptr\(1) & (!\b2v_inst5|cmd_ptr\(2) & \b2v_inst5|cmd_ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cmd_ptr\(2),
	datac => \b2v_inst5|cmd_ptr\(1),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|cmd_ptr~1_combout\);

-- Location: FF_X8_Y18_N25
\b2v_inst5|cmd_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|cmd_ptr~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst5|Selector46~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cmd_ptr\(1));

-- Location: LCCOMB_X8_Y18_N22
\b2v_inst5|cmd_ptr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cmd_ptr~2_combout\ = (\b2v_inst5|cmd_ptr\(2) & ((!\b2v_inst5|cmd_ptr\(0)))) # (!\b2v_inst5|cmd_ptr\(2) & (\b2v_inst5|cmd_ptr\(1) & \b2v_inst5|cmd_ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cmd_ptr\(1),
	datac => \b2v_inst5|cmd_ptr\(2),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|cmd_ptr~2_combout\);

-- Location: FF_X8_Y18_N23
\b2v_inst5|cmd_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|cmd_ptr~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst5|Selector46~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cmd_ptr\(2));

-- Location: LCCOMB_X8_Y18_N30
\b2v_inst5|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector43~3_combout\ = (\b2v_inst5|cmd_ptr\(2) & (!\b2v_inst5|cmd_ptr\(1) & (!\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|cmd_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cmd_ptr\(2),
	datab => \b2v_inst5|cmd_ptr\(1),
	datac => \b2v_inst5|lcd_state.lcd_delay~q\,
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|Selector43~3_combout\);

-- Location: LCCOMB_X5_Y20_N4
\b2v_inst5|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector43~4_combout\ = (\b2v_inst5|Selector43~3_combout\ & \b2v_inst5|Selector46~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Selector43~3_combout\,
	datad => \b2v_inst5|Selector46~4_combout\,
	combout => \b2v_inst5|Selector43~4_combout\);

-- Location: LCCOMB_X5_Y20_N28
\b2v_inst5|lcd_state.lcd_add_l0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_state.lcd_add_l0~0_combout\ = (\b2v_inst5|Selector43~2_combout\ & ((\b2v_inst5|Selector46~11_combout\) # ((\b2v_inst5|Selector43~4_combout\) # (\b2v_inst5|lcd_state.lcd_add_l0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector46~11_combout\,
	datab => \b2v_inst5|Selector43~4_combout\,
	datac => \b2v_inst5|lcd_state.lcd_add_l0~q\,
	datad => \b2v_inst5|Selector43~2_combout\,
	combout => \b2v_inst5|lcd_state.lcd_add_l0~0_combout\);

-- Location: FF_X5_Y20_N29
\b2v_inst5|lcd_state.lcd_add_l0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|lcd_state.lcd_add_l0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_state.lcd_add_l0~q\);

-- Location: LCCOMB_X8_Y19_N16
\b2v_inst5|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal4~0_combout\ = (\b2v_inst5|Add0~6_combout\ & (!\b2v_inst5|Add0~34_combout\ & !\b2v_inst5|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~6_combout\,
	datac => \b2v_inst5|Add0~34_combout\,
	datad => \b2v_inst5|Add0~30_combout\,
	combout => \b2v_inst5|Equal4~0_combout\);

-- Location: LCCOMB_X8_Y19_N4
\b2v_inst5|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal4~2_combout\ = (\b2v_inst5|Add0~22_combout\ & \b2v_inst5|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Add0~22_combout\,
	datad => \b2v_inst5|Add0~12_combout\,
	combout => \b2v_inst5|Equal4~2_combout\);

-- Location: LCCOMB_X8_Y19_N10
\b2v_inst5|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal4~1_combout\ = (\b2v_inst5|Add0~10_combout\ & (!\b2v_inst5|Add0~2_combout\ & (\b2v_inst5|Add0~4_combout\ & \b2v_inst5|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~10_combout\,
	datab => \b2v_inst5|Add0~2_combout\,
	datac => \b2v_inst5|Add0~4_combout\,
	datad => \b2v_inst5|Add0~14_combout\,
	combout => \b2v_inst5|Equal4~1_combout\);

-- Location: LCCOMB_X8_Y19_N18
\b2v_inst5|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal4~3_combout\ = (\b2v_inst5|Add0~8_combout\ & (\b2v_inst5|Equal4~0_combout\ & (\b2v_inst5|Equal4~2_combout\ & \b2v_inst5|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~8_combout\,
	datab => \b2v_inst5|Equal4~0_combout\,
	datac => \b2v_inst5|Equal4~2_combout\,
	datad => \b2v_inst5|Equal4~1_combout\,
	combout => \b2v_inst5|Equal4~3_combout\);

-- Location: LCCOMB_X8_Y20_N12
\b2v_inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~2_combout\ = (!\b2v_inst5|Add0~16_combout\ & (!\b2v_inst5|Add0~0_combout\ & (!\b2v_inst5|Add0~20_combout\ & !\b2v_inst5|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~16_combout\,
	datab => \b2v_inst5|Add0~0_combout\,
	datac => \b2v_inst5|Add0~20_combout\,
	datad => \b2v_inst5|Add0~18_combout\,
	combout => \b2v_inst5|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y20_N14
\b2v_inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~1_combout\ = (!\b2v_inst5|Add0~24_combout\ & (!\b2v_inst5|Add0~26_combout\ & (!\b2v_inst5|Add0~40_combout\ & !\b2v_inst5|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~24_combout\,
	datab => \b2v_inst5|Add0~26_combout\,
	datac => \b2v_inst5|Add0~40_combout\,
	datad => \b2v_inst5|Add0~42_combout\,
	combout => \b2v_inst5|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y20_N0
\b2v_inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~8_combout\ = (\b2v_inst5|Equal0~2_combout\ & (\b2v_inst5|LessThan0~0_combout\ & (\b2v_inst5|LessThan0~1_combout\ & \b2v_inst5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal0~2_combout\,
	datab => \b2v_inst5|LessThan0~0_combout\,
	datac => \b2v_inst5|LessThan0~1_combout\,
	datad => \b2v_inst5|Equal0~1_combout\,
	combout => \b2v_inst5|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y18_N12
\b2v_inst5|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector44~0_combout\ = (\b2v_inst5|lcd_state.lcd_add_l0~q\ & (\b2v_inst5|Equal4~3_combout\ & (\b2v_inst5|Equal0~9_combout\ & \b2v_inst5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_add_l0~q\,
	datab => \b2v_inst5|Equal4~3_combout\,
	datac => \b2v_inst5|Equal0~9_combout\,
	datad => \b2v_inst5|Equal0~8_combout\,
	combout => \b2v_inst5|Selector44~0_combout\);

-- Location: LCCOMB_X9_Y20_N0
\b2v_inst5|ptr[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[0]~34_combout\ = \b2v_inst5|ptr\(0) $ (VCC)
-- \b2v_inst5|ptr[0]~35\ = CARRY(\b2v_inst5|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(0),
	datad => VCC,
	combout => \b2v_inst5|ptr[0]~34_combout\,
	cout => \b2v_inst5|ptr[0]~35\);

-- Location: LCCOMB_X5_Y20_N30
\b2v_inst5|ptr[2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[2]~100_combout\ = ((!\b2v_inst5|lcd_state.lcd_data_l0~q\ & !\b2v_inst5|lcd_state.lcd_data_l1~q\)) # (!\b2v_inst5|Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|Equal5~9_combout\,
	combout => \b2v_inst5|ptr[2]~100_combout\);

-- Location: LCCOMB_X8_Y19_N0
\b2v_inst5|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal4~4_combout\ = (\b2v_inst5|Add0~8_combout\ & (\b2v_inst5|Add0~22_combout\ & (\b2v_inst5|Add0~12_combout\ & \b2v_inst5|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~8_combout\,
	datab => \b2v_inst5|Add0~22_combout\,
	datac => \b2v_inst5|Add0~12_combout\,
	datad => \b2v_inst5|Equal4~0_combout\,
	combout => \b2v_inst5|Equal4~4_combout\);

-- Location: LCCOMB_X8_Y19_N8
\b2v_inst5|ptr[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[0]~40_combout\ = (\b2v_inst5|lcd_state.initial~q\ & (!\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|lcd_state.initial~q\,
	datac => \b2v_inst5|lcd_state.lcd_delay~q\,
	datad => \b2v_inst5|Equal4~1_combout\,
	combout => \b2v_inst5|ptr[0]~40_combout\);

-- Location: LCCOMB_X8_Y20_N6
\b2v_inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~3_combout\ = (\b2v_inst5|Equal0~2_combout\ & (!\b2v_inst5|Add0~44_combout\ & (\b2v_inst5|Equal0~0_combout\ & \b2v_inst5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal0~2_combout\,
	datab => \b2v_inst5|Add0~44_combout\,
	datac => \b2v_inst5|Equal0~0_combout\,
	datad => \b2v_inst5|Equal0~1_combout\,
	combout => \b2v_inst5|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y20_N20
\b2v_inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~4_combout\ = (!\b2v_inst5|Add0~56_combout\ & (!\b2v_inst5|Add0~54_combout\ & (\b2v_inst5|LessThan0~0_combout\ & \b2v_inst5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~56_combout\,
	datab => \b2v_inst5|Add0~54_combout\,
	datac => \b2v_inst5|LessThan0~0_combout\,
	datad => \b2v_inst5|Equal0~3_combout\,
	combout => \b2v_inst5|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y20_N18
\b2v_inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~5_combout\ = (!\b2v_inst5|Add0~60_combout\ & (!\b2v_inst5|Add0~58_combout\ & (!\b2v_inst5|Add0~62_combout\ & \b2v_inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~60_combout\,
	datab => \b2v_inst5|Add0~58_combout\,
	datac => \b2v_inst5|Add0~62_combout\,
	datad => \b2v_inst5|Equal0~4_combout\,
	combout => \b2v_inst5|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y20_N30
\b2v_inst5|ptr[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[0]~41_combout\ = (\reset~input_o\ & (\b2v_inst5|Equal4~4_combout\ & (\b2v_inst5|ptr[0]~40_combout\ & \b2v_inst5|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \b2v_inst5|Equal4~4_combout\,
	datac => \b2v_inst5|ptr[0]~40_combout\,
	datad => \b2v_inst5|Equal0~5_combout\,
	combout => \b2v_inst5|ptr[0]~41_combout\);

-- Location: FF_X9_Y20_N1
\b2v_inst5|ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[0]~34_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(0));

-- Location: LCCOMB_X9_Y20_N2
\b2v_inst5|ptr[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[1]~36_combout\ = (\b2v_inst5|ptr\(1) & (!\b2v_inst5|ptr[0]~35\)) # (!\b2v_inst5|ptr\(1) & ((\b2v_inst5|ptr[0]~35\) # (GND)))
-- \b2v_inst5|ptr[1]~37\ = CARRY((!\b2v_inst5|ptr[0]~35\) # (!\b2v_inst5|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(1),
	datad => VCC,
	cin => \b2v_inst5|ptr[0]~35\,
	combout => \b2v_inst5|ptr[1]~36_combout\,
	cout => \b2v_inst5|ptr[1]~37\);

-- Location: FF_X9_Y20_N3
\b2v_inst5|ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[1]~36_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(1));

-- Location: LCCOMB_X9_Y20_N4
\b2v_inst5|ptr[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[2]~38_combout\ = (\b2v_inst5|ptr\(2) & (\b2v_inst5|ptr[1]~37\ $ (GND))) # (!\b2v_inst5|ptr\(2) & (!\b2v_inst5|ptr[1]~37\ & VCC))
-- \b2v_inst5|ptr[2]~39\ = CARRY((\b2v_inst5|ptr\(2) & !\b2v_inst5|ptr[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(2),
	datad => VCC,
	cin => \b2v_inst5|ptr[1]~37\,
	combout => \b2v_inst5|ptr[2]~38_combout\,
	cout => \b2v_inst5|ptr[2]~39\);

-- Location: FF_X9_Y20_N5
\b2v_inst5|ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[2]~38_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(2));

-- Location: LCCOMB_X9_Y20_N6
\b2v_inst5|ptr[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[3]~42_combout\ = (\b2v_inst5|ptr\(3) & (!\b2v_inst5|ptr[2]~39\)) # (!\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr[2]~39\) # (GND)))
-- \b2v_inst5|ptr[3]~43\ = CARRY((!\b2v_inst5|ptr[2]~39\) # (!\b2v_inst5|ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datad => VCC,
	cin => \b2v_inst5|ptr[2]~39\,
	combout => \b2v_inst5|ptr[3]~42_combout\,
	cout => \b2v_inst5|ptr[3]~43\);

-- Location: FF_X9_Y20_N7
\b2v_inst5|ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[3]~42_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(3));

-- Location: LCCOMB_X9_Y20_N8
\b2v_inst5|ptr[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[4]~44_combout\ = (\b2v_inst5|ptr\(4) & (\b2v_inst5|ptr[3]~43\ $ (GND))) # (!\b2v_inst5|ptr\(4) & (!\b2v_inst5|ptr[3]~43\ & VCC))
-- \b2v_inst5|ptr[4]~45\ = CARRY((\b2v_inst5|ptr\(4) & !\b2v_inst5|ptr[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(4),
	datad => VCC,
	cin => \b2v_inst5|ptr[3]~43\,
	combout => \b2v_inst5|ptr[4]~44_combout\,
	cout => \b2v_inst5|ptr[4]~45\);

-- Location: FF_X9_Y20_N9
\b2v_inst5|ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[4]~44_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(4));

-- Location: LCCOMB_X9_Y20_N10
\b2v_inst5|ptr[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[5]~46_combout\ = (\b2v_inst5|ptr\(5) & (!\b2v_inst5|ptr[4]~45\)) # (!\b2v_inst5|ptr\(5) & ((\b2v_inst5|ptr[4]~45\) # (GND)))
-- \b2v_inst5|ptr[5]~47\ = CARRY((!\b2v_inst5|ptr[4]~45\) # (!\b2v_inst5|ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(5),
	datad => VCC,
	cin => \b2v_inst5|ptr[4]~45\,
	combout => \b2v_inst5|ptr[5]~46_combout\,
	cout => \b2v_inst5|ptr[5]~47\);

-- Location: FF_X9_Y20_N11
\b2v_inst5|ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[5]~46_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(5));

-- Location: LCCOMB_X9_Y20_N12
\b2v_inst5|ptr[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[6]~48_combout\ = (\b2v_inst5|ptr\(6) & (\b2v_inst5|ptr[5]~47\ $ (GND))) # (!\b2v_inst5|ptr\(6) & (!\b2v_inst5|ptr[5]~47\ & VCC))
-- \b2v_inst5|ptr[6]~49\ = CARRY((\b2v_inst5|ptr\(6) & !\b2v_inst5|ptr[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(6),
	datad => VCC,
	cin => \b2v_inst5|ptr[5]~47\,
	combout => \b2v_inst5|ptr[6]~48_combout\,
	cout => \b2v_inst5|ptr[6]~49\);

-- Location: FF_X9_Y20_N13
\b2v_inst5|ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[6]~48_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(6));

-- Location: LCCOMB_X9_Y20_N14
\b2v_inst5|ptr[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[7]~50_combout\ = (\b2v_inst5|ptr\(7) & (!\b2v_inst5|ptr[6]~49\)) # (!\b2v_inst5|ptr\(7) & ((\b2v_inst5|ptr[6]~49\) # (GND)))
-- \b2v_inst5|ptr[7]~51\ = CARRY((!\b2v_inst5|ptr[6]~49\) # (!\b2v_inst5|ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(7),
	datad => VCC,
	cin => \b2v_inst5|ptr[6]~49\,
	combout => \b2v_inst5|ptr[7]~50_combout\,
	cout => \b2v_inst5|ptr[7]~51\);

-- Location: FF_X9_Y20_N15
\b2v_inst5|ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[7]~50_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(7));

-- Location: LCCOMB_X9_Y20_N16
\b2v_inst5|ptr[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[8]~52_combout\ = (\b2v_inst5|ptr\(8) & (\b2v_inst5|ptr[7]~51\ $ (GND))) # (!\b2v_inst5|ptr\(8) & (!\b2v_inst5|ptr[7]~51\ & VCC))
-- \b2v_inst5|ptr[8]~53\ = CARRY((\b2v_inst5|ptr\(8) & !\b2v_inst5|ptr[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(8),
	datad => VCC,
	cin => \b2v_inst5|ptr[7]~51\,
	combout => \b2v_inst5|ptr[8]~52_combout\,
	cout => \b2v_inst5|ptr[8]~53\);

-- Location: FF_X9_Y20_N17
\b2v_inst5|ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[8]~52_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(8));

-- Location: LCCOMB_X9_Y20_N18
\b2v_inst5|ptr[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[9]~54_combout\ = (\b2v_inst5|ptr\(9) & (!\b2v_inst5|ptr[8]~53\)) # (!\b2v_inst5|ptr\(9) & ((\b2v_inst5|ptr[8]~53\) # (GND)))
-- \b2v_inst5|ptr[9]~55\ = CARRY((!\b2v_inst5|ptr[8]~53\) # (!\b2v_inst5|ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(9),
	datad => VCC,
	cin => \b2v_inst5|ptr[8]~53\,
	combout => \b2v_inst5|ptr[9]~54_combout\,
	cout => \b2v_inst5|ptr[9]~55\);

-- Location: FF_X9_Y20_N19
\b2v_inst5|ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[9]~54_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(9));

-- Location: LCCOMB_X9_Y20_N20
\b2v_inst5|ptr[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[10]~56_combout\ = (\b2v_inst5|ptr\(10) & (\b2v_inst5|ptr[9]~55\ $ (GND))) # (!\b2v_inst5|ptr\(10) & (!\b2v_inst5|ptr[9]~55\ & VCC))
-- \b2v_inst5|ptr[10]~57\ = CARRY((\b2v_inst5|ptr\(10) & !\b2v_inst5|ptr[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(10),
	datad => VCC,
	cin => \b2v_inst5|ptr[9]~55\,
	combout => \b2v_inst5|ptr[10]~56_combout\,
	cout => \b2v_inst5|ptr[10]~57\);

-- Location: FF_X9_Y20_N21
\b2v_inst5|ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[10]~56_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(10));

-- Location: LCCOMB_X9_Y20_N22
\b2v_inst5|ptr[11]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[11]~58_combout\ = (\b2v_inst5|ptr\(11) & (!\b2v_inst5|ptr[10]~57\)) # (!\b2v_inst5|ptr\(11) & ((\b2v_inst5|ptr[10]~57\) # (GND)))
-- \b2v_inst5|ptr[11]~59\ = CARRY((!\b2v_inst5|ptr[10]~57\) # (!\b2v_inst5|ptr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(11),
	datad => VCC,
	cin => \b2v_inst5|ptr[10]~57\,
	combout => \b2v_inst5|ptr[11]~58_combout\,
	cout => \b2v_inst5|ptr[11]~59\);

-- Location: FF_X9_Y20_N23
\b2v_inst5|ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[11]~58_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(11));

-- Location: LCCOMB_X10_Y20_N26
\b2v_inst5|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~2_combout\ = (\b2v_inst5|ptr\(10)) # ((\b2v_inst5|ptr\(11)) # ((\b2v_inst5|ptr\(8)) # (\b2v_inst5|ptr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(10),
	datab => \b2v_inst5|ptr\(11),
	datac => \b2v_inst5|ptr\(8),
	datad => \b2v_inst5|ptr\(9),
	combout => \b2v_inst5|Equal5~2_combout\);

-- Location: LCCOMB_X9_Y20_N24
\b2v_inst5|ptr[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[12]~60_combout\ = (\b2v_inst5|ptr\(12) & (\b2v_inst5|ptr[11]~59\ $ (GND))) # (!\b2v_inst5|ptr\(12) & (!\b2v_inst5|ptr[11]~59\ & VCC))
-- \b2v_inst5|ptr[12]~61\ = CARRY((\b2v_inst5|ptr\(12) & !\b2v_inst5|ptr[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(12),
	datad => VCC,
	cin => \b2v_inst5|ptr[11]~59\,
	combout => \b2v_inst5|ptr[12]~60_combout\,
	cout => \b2v_inst5|ptr[12]~61\);

-- Location: FF_X9_Y20_N25
\b2v_inst5|ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[12]~60_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(12));

-- Location: LCCOMB_X9_Y20_N26
\b2v_inst5|ptr[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[13]~62_combout\ = (\b2v_inst5|ptr\(13) & (!\b2v_inst5|ptr[12]~61\)) # (!\b2v_inst5|ptr\(13) & ((\b2v_inst5|ptr[12]~61\) # (GND)))
-- \b2v_inst5|ptr[13]~63\ = CARRY((!\b2v_inst5|ptr[12]~61\) # (!\b2v_inst5|ptr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(13),
	datad => VCC,
	cin => \b2v_inst5|ptr[12]~61\,
	combout => \b2v_inst5|ptr[13]~62_combout\,
	cout => \b2v_inst5|ptr[13]~63\);

-- Location: FF_X9_Y20_N27
\b2v_inst5|ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[13]~62_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(13));

-- Location: LCCOMB_X9_Y20_N28
\b2v_inst5|ptr[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[14]~64_combout\ = (\b2v_inst5|ptr\(14) & (\b2v_inst5|ptr[13]~63\ $ (GND))) # (!\b2v_inst5|ptr\(14) & (!\b2v_inst5|ptr[13]~63\ & VCC))
-- \b2v_inst5|ptr[14]~65\ = CARRY((\b2v_inst5|ptr\(14) & !\b2v_inst5|ptr[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(14),
	datad => VCC,
	cin => \b2v_inst5|ptr[13]~63\,
	combout => \b2v_inst5|ptr[14]~64_combout\,
	cout => \b2v_inst5|ptr[14]~65\);

-- Location: FF_X9_Y20_N29
\b2v_inst5|ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[14]~64_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(14));

-- Location: LCCOMB_X9_Y20_N30
\b2v_inst5|ptr[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[15]~66_combout\ = (\b2v_inst5|ptr\(15) & (!\b2v_inst5|ptr[14]~65\)) # (!\b2v_inst5|ptr\(15) & ((\b2v_inst5|ptr[14]~65\) # (GND)))
-- \b2v_inst5|ptr[15]~67\ = CARRY((!\b2v_inst5|ptr[14]~65\) # (!\b2v_inst5|ptr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(15),
	datad => VCC,
	cin => \b2v_inst5|ptr[14]~65\,
	combout => \b2v_inst5|ptr[15]~66_combout\,
	cout => \b2v_inst5|ptr[15]~67\);

-- Location: FF_X9_Y20_N31
\b2v_inst5|ptr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[15]~66_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(15));

-- Location: LCCOMB_X9_Y19_N0
\b2v_inst5|ptr[16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[16]~68_combout\ = (\b2v_inst5|ptr\(16) & (\b2v_inst5|ptr[15]~67\ $ (GND))) # (!\b2v_inst5|ptr\(16) & (!\b2v_inst5|ptr[15]~67\ & VCC))
-- \b2v_inst5|ptr[16]~69\ = CARRY((\b2v_inst5|ptr\(16) & !\b2v_inst5|ptr[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(16),
	datad => VCC,
	cin => \b2v_inst5|ptr[15]~67\,
	combout => \b2v_inst5|ptr[16]~68_combout\,
	cout => \b2v_inst5|ptr[16]~69\);

-- Location: FF_X9_Y19_N1
\b2v_inst5|ptr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[16]~68_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(16));

-- Location: LCCOMB_X9_Y19_N2
\b2v_inst5|ptr[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[17]~70_combout\ = (\b2v_inst5|ptr\(17) & (!\b2v_inst5|ptr[16]~69\)) # (!\b2v_inst5|ptr\(17) & ((\b2v_inst5|ptr[16]~69\) # (GND)))
-- \b2v_inst5|ptr[17]~71\ = CARRY((!\b2v_inst5|ptr[16]~69\) # (!\b2v_inst5|ptr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(17),
	datad => VCC,
	cin => \b2v_inst5|ptr[16]~69\,
	combout => \b2v_inst5|ptr[17]~70_combout\,
	cout => \b2v_inst5|ptr[17]~71\);

-- Location: FF_X9_Y19_N3
\b2v_inst5|ptr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[17]~70_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(17));

-- Location: LCCOMB_X9_Y19_N4
\b2v_inst5|ptr[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[18]~72_combout\ = (\b2v_inst5|ptr\(18) & (\b2v_inst5|ptr[17]~71\ $ (GND))) # (!\b2v_inst5|ptr\(18) & (!\b2v_inst5|ptr[17]~71\ & VCC))
-- \b2v_inst5|ptr[18]~73\ = CARRY((\b2v_inst5|ptr\(18) & !\b2v_inst5|ptr[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(18),
	datad => VCC,
	cin => \b2v_inst5|ptr[17]~71\,
	combout => \b2v_inst5|ptr[18]~72_combout\,
	cout => \b2v_inst5|ptr[18]~73\);

-- Location: FF_X9_Y19_N5
\b2v_inst5|ptr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[18]~72_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(18));

-- Location: LCCOMB_X9_Y19_N6
\b2v_inst5|ptr[19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[19]~74_combout\ = (\b2v_inst5|ptr\(19) & (!\b2v_inst5|ptr[18]~73\)) # (!\b2v_inst5|ptr\(19) & ((\b2v_inst5|ptr[18]~73\) # (GND)))
-- \b2v_inst5|ptr[19]~75\ = CARRY((!\b2v_inst5|ptr[18]~73\) # (!\b2v_inst5|ptr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(19),
	datad => VCC,
	cin => \b2v_inst5|ptr[18]~73\,
	combout => \b2v_inst5|ptr[19]~74_combout\,
	cout => \b2v_inst5|ptr[19]~75\);

-- Location: FF_X9_Y19_N7
\b2v_inst5|ptr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[19]~74_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(19));

-- Location: LCCOMB_X9_Y19_N8
\b2v_inst5|ptr[20]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[20]~76_combout\ = (\b2v_inst5|ptr\(20) & (\b2v_inst5|ptr[19]~75\ $ (GND))) # (!\b2v_inst5|ptr\(20) & (!\b2v_inst5|ptr[19]~75\ & VCC))
-- \b2v_inst5|ptr[20]~77\ = CARRY((\b2v_inst5|ptr\(20) & !\b2v_inst5|ptr[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(20),
	datad => VCC,
	cin => \b2v_inst5|ptr[19]~75\,
	combout => \b2v_inst5|ptr[20]~76_combout\,
	cout => \b2v_inst5|ptr[20]~77\);

-- Location: FF_X9_Y19_N9
\b2v_inst5|ptr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[20]~76_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(20));

-- Location: LCCOMB_X9_Y19_N10
\b2v_inst5|ptr[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[21]~78_combout\ = (\b2v_inst5|ptr\(21) & (!\b2v_inst5|ptr[20]~77\)) # (!\b2v_inst5|ptr\(21) & ((\b2v_inst5|ptr[20]~77\) # (GND)))
-- \b2v_inst5|ptr[21]~79\ = CARRY((!\b2v_inst5|ptr[20]~77\) # (!\b2v_inst5|ptr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(21),
	datad => VCC,
	cin => \b2v_inst5|ptr[20]~77\,
	combout => \b2v_inst5|ptr[21]~78_combout\,
	cout => \b2v_inst5|ptr[21]~79\);

-- Location: FF_X9_Y19_N11
\b2v_inst5|ptr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[21]~78_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(21));

-- Location: LCCOMB_X9_Y19_N12
\b2v_inst5|ptr[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[22]~80_combout\ = (\b2v_inst5|ptr\(22) & (\b2v_inst5|ptr[21]~79\ $ (GND))) # (!\b2v_inst5|ptr\(22) & (!\b2v_inst5|ptr[21]~79\ & VCC))
-- \b2v_inst5|ptr[22]~81\ = CARRY((\b2v_inst5|ptr\(22) & !\b2v_inst5|ptr[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(22),
	datad => VCC,
	cin => \b2v_inst5|ptr[21]~79\,
	combout => \b2v_inst5|ptr[22]~80_combout\,
	cout => \b2v_inst5|ptr[22]~81\);

-- Location: FF_X9_Y19_N13
\b2v_inst5|ptr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[22]~80_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(22));

-- Location: LCCOMB_X9_Y19_N14
\b2v_inst5|ptr[23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[23]~82_combout\ = (\b2v_inst5|ptr\(23) & (!\b2v_inst5|ptr[22]~81\)) # (!\b2v_inst5|ptr\(23) & ((\b2v_inst5|ptr[22]~81\) # (GND)))
-- \b2v_inst5|ptr[23]~83\ = CARRY((!\b2v_inst5|ptr[22]~81\) # (!\b2v_inst5|ptr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(23),
	datad => VCC,
	cin => \b2v_inst5|ptr[22]~81\,
	combout => \b2v_inst5|ptr[23]~82_combout\,
	cout => \b2v_inst5|ptr[23]~83\);

-- Location: FF_X9_Y19_N15
\b2v_inst5|ptr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[23]~82_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(23));

-- Location: LCCOMB_X9_Y19_N16
\b2v_inst5|ptr[24]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[24]~84_combout\ = (\b2v_inst5|ptr\(24) & (\b2v_inst5|ptr[23]~83\ $ (GND))) # (!\b2v_inst5|ptr\(24) & (!\b2v_inst5|ptr[23]~83\ & VCC))
-- \b2v_inst5|ptr[24]~85\ = CARRY((\b2v_inst5|ptr\(24) & !\b2v_inst5|ptr[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(24),
	datad => VCC,
	cin => \b2v_inst5|ptr[23]~83\,
	combout => \b2v_inst5|ptr[24]~84_combout\,
	cout => \b2v_inst5|ptr[24]~85\);

-- Location: FF_X9_Y19_N17
\b2v_inst5|ptr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[24]~84_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(24));

-- Location: LCCOMB_X9_Y19_N18
\b2v_inst5|ptr[25]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[25]~86_combout\ = (\b2v_inst5|ptr\(25) & (!\b2v_inst5|ptr[24]~85\)) # (!\b2v_inst5|ptr\(25) & ((\b2v_inst5|ptr[24]~85\) # (GND)))
-- \b2v_inst5|ptr[25]~87\ = CARRY((!\b2v_inst5|ptr[24]~85\) # (!\b2v_inst5|ptr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(25),
	datad => VCC,
	cin => \b2v_inst5|ptr[24]~85\,
	combout => \b2v_inst5|ptr[25]~86_combout\,
	cout => \b2v_inst5|ptr[25]~87\);

-- Location: FF_X9_Y19_N19
\b2v_inst5|ptr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[25]~86_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(25));

-- Location: LCCOMB_X9_Y19_N20
\b2v_inst5|ptr[26]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[26]~88_combout\ = (\b2v_inst5|ptr\(26) & (\b2v_inst5|ptr[25]~87\ $ (GND))) # (!\b2v_inst5|ptr\(26) & (!\b2v_inst5|ptr[25]~87\ & VCC))
-- \b2v_inst5|ptr[26]~89\ = CARRY((\b2v_inst5|ptr\(26) & !\b2v_inst5|ptr[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(26),
	datad => VCC,
	cin => \b2v_inst5|ptr[25]~87\,
	combout => \b2v_inst5|ptr[26]~88_combout\,
	cout => \b2v_inst5|ptr[26]~89\);

-- Location: FF_X9_Y19_N21
\b2v_inst5|ptr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[26]~88_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(26));

-- Location: LCCOMB_X9_Y19_N22
\b2v_inst5|ptr[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[27]~90_combout\ = (\b2v_inst5|ptr\(27) & (!\b2v_inst5|ptr[26]~89\)) # (!\b2v_inst5|ptr\(27) & ((\b2v_inst5|ptr[26]~89\) # (GND)))
-- \b2v_inst5|ptr[27]~91\ = CARRY((!\b2v_inst5|ptr[26]~89\) # (!\b2v_inst5|ptr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(27),
	datad => VCC,
	cin => \b2v_inst5|ptr[26]~89\,
	combout => \b2v_inst5|ptr[27]~90_combout\,
	cout => \b2v_inst5|ptr[27]~91\);

-- Location: FF_X9_Y19_N23
\b2v_inst5|ptr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[27]~90_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(27));

-- Location: LCCOMB_X10_Y19_N12
\b2v_inst5|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~6_combout\ = (\b2v_inst5|ptr\(27)) # ((\b2v_inst5|ptr\(26)) # ((\b2v_inst5|ptr\(24)) # (\b2v_inst5|ptr\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(27),
	datab => \b2v_inst5|ptr\(26),
	datac => \b2v_inst5|ptr\(24),
	datad => \b2v_inst5|ptr\(25),
	combout => \b2v_inst5|Equal5~6_combout\);

-- Location: LCCOMB_X10_Y19_N16
\b2v_inst5|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~4_combout\ = (\b2v_inst5|ptr\(16)) # ((\b2v_inst5|ptr\(19)) # ((\b2v_inst5|ptr\(18)) # (\b2v_inst5|ptr\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(16),
	datab => \b2v_inst5|ptr\(19),
	datac => \b2v_inst5|ptr\(18),
	datad => \b2v_inst5|ptr\(17),
	combout => \b2v_inst5|Equal5~4_combout\);

-- Location: LCCOMB_X9_Y19_N24
\b2v_inst5|ptr[28]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[28]~92_combout\ = (\b2v_inst5|ptr\(28) & (\b2v_inst5|ptr[27]~91\ $ (GND))) # (!\b2v_inst5|ptr\(28) & (!\b2v_inst5|ptr[27]~91\ & VCC))
-- \b2v_inst5|ptr[28]~93\ = CARRY((\b2v_inst5|ptr\(28) & !\b2v_inst5|ptr[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(28),
	datad => VCC,
	cin => \b2v_inst5|ptr[27]~91\,
	combout => \b2v_inst5|ptr[28]~92_combout\,
	cout => \b2v_inst5|ptr[28]~93\);

-- Location: FF_X9_Y19_N25
\b2v_inst5|ptr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[28]~92_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(28));

-- Location: LCCOMB_X9_Y19_N26
\b2v_inst5|ptr[29]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[29]~94_combout\ = (\b2v_inst5|ptr\(29) & (!\b2v_inst5|ptr[28]~93\)) # (!\b2v_inst5|ptr\(29) & ((\b2v_inst5|ptr[28]~93\) # (GND)))
-- \b2v_inst5|ptr[29]~95\ = CARRY((!\b2v_inst5|ptr[28]~93\) # (!\b2v_inst5|ptr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(29),
	datad => VCC,
	cin => \b2v_inst5|ptr[28]~93\,
	combout => \b2v_inst5|ptr[29]~94_combout\,
	cout => \b2v_inst5|ptr[29]~95\);

-- Location: FF_X9_Y19_N27
\b2v_inst5|ptr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[29]~94_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(29));

-- Location: LCCOMB_X9_Y19_N28
\b2v_inst5|ptr[30]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[30]~96_combout\ = (\b2v_inst5|ptr\(30) & (\b2v_inst5|ptr[29]~95\ $ (GND))) # (!\b2v_inst5|ptr\(30) & (!\b2v_inst5|ptr[29]~95\ & VCC))
-- \b2v_inst5|ptr[30]~97\ = CARRY((\b2v_inst5|ptr\(30) & !\b2v_inst5|ptr[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(30),
	datad => VCC,
	cin => \b2v_inst5|ptr[29]~95\,
	combout => \b2v_inst5|ptr[30]~96_combout\,
	cout => \b2v_inst5|ptr[30]~97\);

-- Location: FF_X9_Y19_N29
\b2v_inst5|ptr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[30]~96_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(30));

-- Location: LCCOMB_X9_Y19_N30
\b2v_inst5|ptr[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|ptr[31]~98_combout\ = \b2v_inst5|ptr\(31) $ (\b2v_inst5|ptr[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(31),
	cin => \b2v_inst5|ptr[30]~97\,
	combout => \b2v_inst5|ptr[31]~98_combout\);

-- Location: FF_X9_Y19_N31
\b2v_inst5|ptr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|ptr[31]~98_combout\,
	sclr => \b2v_inst5|ptr[2]~100_combout\,
	ena => \b2v_inst5|ptr[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|ptr\(31));

-- Location: LCCOMB_X10_Y19_N22
\b2v_inst5|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~7_combout\ = (\b2v_inst5|ptr\(31)) # ((\b2v_inst5|ptr\(28)) # ((\b2v_inst5|ptr\(29)) # (\b2v_inst5|ptr\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(31),
	datab => \b2v_inst5|ptr\(28),
	datac => \b2v_inst5|ptr\(29),
	datad => \b2v_inst5|ptr\(30),
	combout => \b2v_inst5|Equal5~7_combout\);

-- Location: LCCOMB_X10_Y19_N2
\b2v_inst5|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~5_combout\ = (\b2v_inst5|ptr\(21)) # ((\b2v_inst5|ptr\(20)) # ((\b2v_inst5|ptr\(23)) # (\b2v_inst5|ptr\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(21),
	datab => \b2v_inst5|ptr\(20),
	datac => \b2v_inst5|ptr\(23),
	datad => \b2v_inst5|ptr\(22),
	combout => \b2v_inst5|Equal5~5_combout\);

-- Location: LCCOMB_X10_Y19_N0
\b2v_inst5|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~8_combout\ = (\b2v_inst5|Equal5~6_combout\) # ((\b2v_inst5|Equal5~4_combout\) # ((\b2v_inst5|Equal5~7_combout\) # (\b2v_inst5|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal5~6_combout\,
	datab => \b2v_inst5|Equal5~4_combout\,
	datac => \b2v_inst5|Equal5~7_combout\,
	datad => \b2v_inst5|Equal5~5_combout\,
	combout => \b2v_inst5|Equal5~8_combout\);

-- Location: LCCOMB_X10_Y20_N2
\b2v_inst5|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~0_combout\ = ((\b2v_inst5|ptr\(5)) # ((\b2v_inst5|ptr\(6)) # (\b2v_inst5|ptr\(7)))) # (!\b2v_inst5|ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(4),
	datab => \b2v_inst5|ptr\(5),
	datac => \b2v_inst5|ptr\(6),
	datad => \b2v_inst5|ptr\(7),
	combout => \b2v_inst5|Equal5~0_combout\);

-- Location: LCCOMB_X10_Y20_N12
\b2v_inst5|Selector40~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~12_combout\ = (!\b2v_inst5|ptr\(3) & !\b2v_inst5|ptr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(3),
	datac => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Selector40~12_combout\);

-- Location: LCCOMB_X10_Y20_N4
\b2v_inst5|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~1_combout\ = ((\b2v_inst5|Equal5~0_combout\) # ((!\b2v_inst5|Selector40~12_combout\) # (!\b2v_inst5|ptr\(0)))) # (!\b2v_inst5|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|Equal5~0_combout\,
	datac => \b2v_inst5|ptr\(0),
	datad => \b2v_inst5|Selector40~12_combout\,
	combout => \b2v_inst5|Equal5~1_combout\);

-- Location: LCCOMB_X10_Y20_N0
\b2v_inst5|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~3_combout\ = (\b2v_inst5|ptr\(15)) # ((\b2v_inst5|ptr\(14)) # ((\b2v_inst5|ptr\(13)) # (\b2v_inst5|ptr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(15),
	datab => \b2v_inst5|ptr\(14),
	datac => \b2v_inst5|ptr\(13),
	datad => \b2v_inst5|ptr\(12),
	combout => \b2v_inst5|Equal5~3_combout\);

-- Location: LCCOMB_X10_Y20_N14
\b2v_inst5|Equal5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal5~9_combout\ = (\b2v_inst5|Equal5~2_combout\) # ((\b2v_inst5|Equal5~8_combout\) # ((\b2v_inst5|Equal5~1_combout\) # (\b2v_inst5|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal5~2_combout\,
	datab => \b2v_inst5|Equal5~8_combout\,
	datac => \b2v_inst5|Equal5~1_combout\,
	datad => \b2v_inst5|Equal5~3_combout\,
	combout => \b2v_inst5|Equal5~9_combout\);

-- Location: LCCOMB_X8_Y20_N16
\b2v_inst5|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~2_combout\ = (!\b2v_inst5|Equal5~9_combout\ & (\b2v_inst5|Equal4~3_combout\ & (\b2v_inst5|Equal0~9_combout\ & \b2v_inst5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal5~9_combout\,
	datab => \b2v_inst5|Equal4~3_combout\,
	datac => \b2v_inst5|Equal0~9_combout\,
	datad => \b2v_inst5|Equal0~8_combout\,
	combout => \b2v_inst5|Selector45~2_combout\);

-- Location: LCCOMB_X7_Y20_N24
\b2v_inst5|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal4~5_combout\ = (\b2v_inst5|Equal4~1_combout\ & (\b2v_inst5|Equal4~4_combout\ & \b2v_inst5|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|Equal4~1_combout\,
	datac => \b2v_inst5|Equal4~4_combout\,
	datad => \b2v_inst5|Equal0~5_combout\,
	combout => \b2v_inst5|Equal4~5_combout\);

-- Location: LCCOMB_X7_Y20_N10
\b2v_inst5|cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cnt[0]~1_combout\ = (\b2v_inst5|lcd_state.initial~q\ & ((\b2v_inst5|lcd_state.lcd_delay~q\ & (\b2v_inst5|Selector47~1_combout\)) # (!\b2v_inst5|lcd_state.lcd_delay~q\ & ((\b2v_inst5|Equal4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|lcd_state.lcd_delay~q\,
	datac => \b2v_inst5|Selector47~1_combout\,
	datad => \b2v_inst5|Equal4~5_combout\,
	combout => \b2v_inst5|cnt[0]~1_combout\);

-- Location: LCCOMB_X8_Y18_N0
\b2v_inst5|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~5_combout\ = (!\b2v_inst5|lcd_state.initial~q\ & (!\b2v_inst5|cmd_ptr\(1) & (\b2v_inst5|cmd_ptr\(2) & \b2v_inst5|cmd_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|cmd_ptr\(1),
	datac => \b2v_inst5|cmd_ptr\(2),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|Selector46~5_combout\);

-- Location: LCCOMB_X8_Y19_N22
\b2v_inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~6_combout\ = (!\b2v_inst5|Add0~12_combout\ & (!\b2v_inst5|Add0~22_combout\ & (!\b2v_inst5|Add0~4_combout\ & !\b2v_inst5|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~12_combout\,
	datab => \b2v_inst5|Add0~22_combout\,
	datac => \b2v_inst5|Add0~4_combout\,
	datad => \b2v_inst5|Add0~8_combout\,
	combout => \b2v_inst5|Equal0~6_combout\);

-- Location: LCCOMB_X6_Y20_N14
\b2v_inst5|Selector45~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~9_combout\ = (\b2v_inst5|Add0~30_combout\ & (!\b2v_inst5|Add0~6_combout\ & (\b2v_inst5|Selector46~2_combout\ & \b2v_inst5|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~30_combout\,
	datab => \b2v_inst5|Add0~6_combout\,
	datac => \b2v_inst5|Selector46~2_combout\,
	datad => \b2v_inst5|Add0~34_combout\,
	combout => \b2v_inst5|Selector45~9_combout\);

-- Location: LCCOMB_X8_Y19_N26
\b2v_inst5|Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~3_combout\ = (!\b2v_inst5|Add0~14_combout\ & (\b2v_inst5|Equal4~0_combout\ & (\b2v_inst5|Add0~10_combout\ $ (\b2v_inst5|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~10_combout\,
	datab => \b2v_inst5|Add0~2_combout\,
	datac => \b2v_inst5|Add0~14_combout\,
	datad => \b2v_inst5|Equal4~0_combout\,
	combout => \b2v_inst5|Selector45~3_combout\);

-- Location: LCCOMB_X6_Y20_N24
\b2v_inst5|Selector45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~4_combout\ = (\b2v_inst5|Selector45~9_combout\ & ((\b2v_inst5|Selector45~3_combout\ & ((\b2v_inst5|Add0~2_combout\))) # (!\b2v_inst5|Selector45~3_combout\ & (!\b2v_inst5|lcd_state.initial~q\)))) # (!\b2v_inst5|Selector45~9_combout\ & 
-- (\b2v_inst5|lcd_state.initial~q\ & ((\b2v_inst5|Selector45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|Add0~2_combout\,
	datac => \b2v_inst5|Selector45~9_combout\,
	datad => \b2v_inst5|Selector45~3_combout\,
	combout => \b2v_inst5|Selector45~4_combout\);

-- Location: LCCOMB_X6_Y20_N30
\b2v_inst5|Selector45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~5_combout\ = \b2v_inst5|lcd_state.initial~q\ $ (((!\b2v_inst5|Selector45~4_combout\) # (!\b2v_inst5|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datac => \b2v_inst5|Equal0~6_combout\,
	datad => \b2v_inst5|Selector45~4_combout\,
	combout => \b2v_inst5|Selector45~5_combout\);

-- Location: LCCOMB_X6_Y20_N20
\b2v_inst5|Selector45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~6_combout\ = (!\b2v_inst5|lcd_state.lcd_delay~q\ & ((\b2v_inst5|Equal0~5_combout\ & ((\b2v_inst5|Selector45~5_combout\))) # (!\b2v_inst5|Equal0~5_combout\ & (!\b2v_inst5|lcd_state.initial~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|lcd_state.lcd_delay~q\,
	datac => \b2v_inst5|Selector45~5_combout\,
	datad => \b2v_inst5|Equal0~5_combout\,
	combout => \b2v_inst5|Selector45~6_combout\);

-- Location: LCCOMB_X7_Y20_N6
\b2v_inst5|Selector45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~7_combout\ = (\b2v_inst5|lcd_state.lcd_add_11~q\ & ((\b2v_inst5|Selector45~6_combout\) # ((!\b2v_inst5|cnt[0]~1_combout\ & !\b2v_inst5|Selector46~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|cnt[0]~1_combout\,
	datab => \b2v_inst5|Selector46~5_combout\,
	datac => \b2v_inst5|lcd_state.lcd_add_11~q\,
	datad => \b2v_inst5|Selector45~6_combout\,
	combout => \b2v_inst5|Selector45~7_combout\);

-- Location: LCCOMB_X7_Y20_N8
\b2v_inst5|Selector45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector45~8_combout\ = (\b2v_inst5|Selector45~2_combout\ & (!\b2v_inst5|lcd_state.lcd_data_l1~q\ & ((\b2v_inst5|lcd_state.lcd_data_l0~q\) # (\b2v_inst5|Selector45~7_combout\)))) # (!\b2v_inst5|Selector45~2_combout\ & 
-- (((\b2v_inst5|Selector45~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datab => \b2v_inst5|Selector45~2_combout\,
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|Selector45~7_combout\,
	combout => \b2v_inst5|Selector45~8_combout\);

-- Location: FF_X7_Y20_N9
\b2v_inst5|lcd_state.lcd_add_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector45~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_state.lcd_add_11~q\);

-- Location: LCCOMB_X6_Y18_N2
\b2v_inst5|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~8_combout\ = (\b2v_inst5|lcd_state.lcd_add_11~q\ & (\b2v_inst5|Equal4~3_combout\ & (\b2v_inst5|Equal0~9_combout\ & \b2v_inst5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_add_11~q\,
	datab => \b2v_inst5|Equal4~3_combout\,
	datac => \b2v_inst5|Equal0~9_combout\,
	datad => \b2v_inst5|Equal0~8_combout\,
	combout => \b2v_inst5|Selector46~8_combout\);

-- Location: LCCOMB_X6_Y18_N22
\b2v_inst5|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~1_combout\ = (\b2v_inst5|lcd_state.initial~q\ & (\b2v_inst5|Equal4~1_combout\ & (\b2v_inst5|Equal0~5_combout\ & \b2v_inst5|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|Equal4~1_combout\,
	datac => \b2v_inst5|Equal0~5_combout\,
	datad => \b2v_inst5|Equal4~4_combout\,
	combout => \b2v_inst5|Selector46~1_combout\);

-- Location: LCCOMB_X6_Y18_N4
\b2v_inst5|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~6_combout\ = (\b2v_inst5|Selector46~5_combout\) # ((\b2v_inst5|lcd_state.initial~q\ & (!\b2v_inst5|lcd_state.lcd_delay~q\ & !\b2v_inst5|Equal5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|Selector46~5_combout\,
	datac => \b2v_inst5|lcd_state.lcd_delay~q\,
	datad => \b2v_inst5|Equal5~9_combout\,
	combout => \b2v_inst5|Selector46~6_combout\);

-- Location: LCCOMB_X6_Y18_N18
\b2v_inst5|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~7_combout\ = (\b2v_inst5|Selector46~6_combout\) # ((\b2v_inst5|lcd_state.initial~q\ & (\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|Selector47~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|lcd_state.lcd_delay~q\,
	datac => \b2v_inst5|Selector46~6_combout\,
	datad => \b2v_inst5|Selector47~1_combout\,
	combout => \b2v_inst5|Selector46~7_combout\);

-- Location: LCCOMB_X6_Y18_N24
\b2v_inst5|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector44~1_combout\ = ((!\b2v_inst5|Selector46~1_combout\ & (!\b2v_inst5|lcd_state.lcd_delay~q\ & !\b2v_inst5|Selector46~4_combout\))) # (!\b2v_inst5|Selector46~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector46~1_combout\,
	datab => \b2v_inst5|lcd_state.lcd_delay~q\,
	datac => \b2v_inst5|Selector46~4_combout\,
	datad => \b2v_inst5|Selector46~7_combout\,
	combout => \b2v_inst5|Selector44~1_combout\);

-- Location: LCCOMB_X6_Y18_N20
\b2v_inst5|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector44~2_combout\ = (!\b2v_inst5|Selector46~8_combout\ & ((\b2v_inst5|Selector44~0_combout\) # ((\b2v_inst5|lcd_state.lcd_data_l0~q\ & \b2v_inst5|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector44~0_combout\,
	datab => \b2v_inst5|Selector46~8_combout\,
	datac => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datad => \b2v_inst5|Selector44~1_combout\,
	combout => \b2v_inst5|Selector44~2_combout\);

-- Location: FF_X6_Y18_N21
\b2v_inst5|lcd_state.lcd_data_l0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector44~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_state.lcd_data_l0~q\);

-- Location: LCCOMB_X5_Y20_N6
\b2v_inst5|Selector39~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~13_combout\ = (!\b2v_inst5|lcd_state.lcd_data_l1~q\ & !\b2v_inst5|lcd_state.lcd_data_l0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	combout => \b2v_inst5|Selector39~13_combout\);

-- Location: LCCOMB_X5_Y20_N12
\b2v_inst5|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector43~0_combout\ = (!\b2v_inst5|lcd_state.lcd_add_l0~q\ & (!\b2v_inst5|lcd_state.lcd_add_11~q\ & ((\b2v_inst5|Selector39~13_combout\) # (\b2v_inst5|Equal5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector39~13_combout\,
	datab => \b2v_inst5|lcd_state.lcd_add_l0~q\,
	datac => \b2v_inst5|lcd_state.lcd_add_11~q\,
	datad => \b2v_inst5|Equal5~9_combout\,
	combout => \b2v_inst5|Selector43~0_combout\);

-- Location: LCCOMB_X5_Y20_N18
\b2v_inst5|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector43~1_combout\ = \b2v_inst5|Add0~2_combout\ $ (\b2v_inst5|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~2_combout\,
	datad => \b2v_inst5|Add0~10_combout\,
	combout => \b2v_inst5|Selector43~1_combout\);

-- Location: LCCOMB_X8_Y20_N24
\b2v_inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~7_combout\ = (!\b2v_inst5|Add0~14_combout\ & (\b2v_inst5|Equal4~0_combout\ & (\b2v_inst5|Equal0~6_combout\ & \b2v_inst5|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~14_combout\,
	datab => \b2v_inst5|Equal4~0_combout\,
	datac => \b2v_inst5|Equal0~6_combout\,
	datad => \b2v_inst5|Equal0~5_combout\,
	combout => \b2v_inst5|Equal0~7_combout\);

-- Location: LCCOMB_X5_Y20_N24
\b2v_inst5|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector43~2_combout\ = (\b2v_inst5|Selector43~0_combout\) # (((\b2v_inst5|Selector43~1_combout\ & \b2v_inst5|Equal0~7_combout\)) # (!\b2v_inst5|Equal4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector43~0_combout\,
	datab => \b2v_inst5|Selector43~1_combout\,
	datac => \b2v_inst5|Equal0~7_combout\,
	datad => \b2v_inst5|Equal4~5_combout\,
	combout => \b2v_inst5|Selector43~2_combout\);

-- Location: LCCOMB_X5_Y20_N14
\b2v_inst5|lcd_state.initial~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_state.initial~0_combout\ = (\b2v_inst5|Selector46~11_combout\) # ((\b2v_inst5|Selector43~4_combout\) # ((\b2v_inst5|lcd_state.initial~q\) # (!\b2v_inst5|Selector43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector46~11_combout\,
	datab => \b2v_inst5|Selector43~4_combout\,
	datac => \b2v_inst5|lcd_state.initial~q\,
	datad => \b2v_inst5|Selector43~2_combout\,
	combout => \b2v_inst5|lcd_state.initial~0_combout\);

-- Location: FF_X5_Y20_N15
\b2v_inst5|lcd_state.initial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|lcd_state.initial~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_state.initial~q\);

-- Location: LCCOMB_X6_Y20_N8
\b2v_inst5|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~2_combout\ = (\b2v_inst5|Add0~10_combout\ & (!\b2v_inst5|Add0~2_combout\ & (!\b2v_inst5|lcd_state.initial~q\ & \b2v_inst5|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~10_combout\,
	datab => \b2v_inst5|Add0~2_combout\,
	datac => \b2v_inst5|lcd_state.initial~q\,
	datad => \b2v_inst5|Add0~14_combout\,
	combout => \b2v_inst5|Selector46~2_combout\);

-- Location: LCCOMB_X8_Y20_N8
\b2v_inst5|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~3_combout\ = (\b2v_inst5|Add0~34_combout\ & (!\b2v_inst5|Add0~6_combout\ & \b2v_inst5|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~34_combout\,
	datac => \b2v_inst5|Add0~6_combout\,
	datad => \b2v_inst5|Add0~30_combout\,
	combout => \b2v_inst5|Selector46~3_combout\);

-- Location: LCCOMB_X8_Y20_N10
\b2v_inst5|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~4_combout\ = (\b2v_inst5|Selector46~2_combout\ & (\b2v_inst5|Selector46~3_combout\ & (\b2v_inst5|Equal0~6_combout\ & \b2v_inst5|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector46~2_combout\,
	datab => \b2v_inst5|Selector46~3_combout\,
	datac => \b2v_inst5|Equal0~6_combout\,
	datad => \b2v_inst5|Equal0~5_combout\,
	combout => \b2v_inst5|Selector46~4_combout\);

-- Location: LCCOMB_X7_Y20_N22
\b2v_inst5|cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cnt[0]~0_combout\ = (\b2v_inst5|Add0~10_combout\ $ (!\b2v_inst5|Add0~2_combout\)) # (!\b2v_inst5|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~10_combout\,
	datac => \b2v_inst5|Add0~2_combout\,
	datad => \b2v_inst5|Equal0~7_combout\,
	combout => \b2v_inst5|cnt[0]~0_combout\);

-- Location: LCCOMB_X7_Y20_N20
\b2v_inst5|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cnt[0]~2_combout\ = (\b2v_inst5|lcd_state.lcd_delay~q\ & ((\b2v_inst5|Selector46~4_combout\) # ((\b2v_inst5|cnt[0]~1_combout\)))) # (!\b2v_inst5|lcd_state.lcd_delay~q\ & (\b2v_inst5|cnt[0]~0_combout\ & ((\b2v_inst5|Selector46~4_combout\) # 
-- (\b2v_inst5|cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_delay~q\,
	datab => \b2v_inst5|Selector46~4_combout\,
	datac => \b2v_inst5|cnt[0]~0_combout\,
	datad => \b2v_inst5|cnt[0]~1_combout\,
	combout => \b2v_inst5|cnt[0]~2_combout\);

-- Location: LCCOMB_X6_Y18_N14
\b2v_inst5|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector15~0_combout\ = (\b2v_inst5|Add0~32_combout\ & !\b2v_inst5|cnt[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|Add0~32_combout\,
	datad => \b2v_inst5|cnt[0]~2_combout\,
	combout => \b2v_inst5|Selector15~0_combout\);

-- Location: FF_X6_Y18_N15
\b2v_inst5|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector15~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|cnt\(16));

-- Location: LCCOMB_X8_Y20_N26
\b2v_inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~0_combout\ = (!\b2v_inst5|Add0~32_combout\ & (!\b2v_inst5|Add0~28_combout\ & (!\b2v_inst5|Add0~36_combout\ & !\b2v_inst5|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Add0~32_combout\,
	datab => \b2v_inst5|Add0~28_combout\,
	datac => \b2v_inst5|Add0~36_combout\,
	datad => \b2v_inst5|Add0~38_combout\,
	combout => \b2v_inst5|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y20_N22
\b2v_inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Equal0~9_combout\ = (\b2v_inst5|Equal0~0_combout\ & (!\b2v_inst5|Add0~44_combout\ & !\b2v_inst5|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal0~0_combout\,
	datab => \b2v_inst5|Add0~44_combout\,
	datac => \b2v_inst5|Add0~62_combout\,
	combout => \b2v_inst5|Equal0~9_combout\);

-- Location: LCCOMB_X5_Y20_N20
\b2v_inst5|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~9_combout\ = (\b2v_inst5|Equal4~3_combout\ & ((\b2v_inst5|lcd_state.lcd_add_11~q\) # ((\b2v_inst5|Equal5~9_combout\ & \b2v_inst5|lcd_state.lcd_data_l1~q\)))) # (!\b2v_inst5|Equal4~3_combout\ & 
-- (((\b2v_inst5|lcd_state.lcd_data_l1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal5~9_combout\,
	datab => \b2v_inst5|lcd_state.lcd_add_11~q\,
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|Equal4~3_combout\,
	combout => \b2v_inst5|Selector46~9_combout\);

-- Location: LCCOMB_X5_Y20_N22
\b2v_inst5|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector46~10_combout\ = (\b2v_inst5|Equal0~9_combout\ & ((\b2v_inst5|Equal0~8_combout\ & ((\b2v_inst5|Selector46~9_combout\))) # (!\b2v_inst5|Equal0~8_combout\ & (\b2v_inst5|lcd_state.lcd_data_l1~q\)))) # (!\b2v_inst5|Equal0~9_combout\ & 
-- (((\b2v_inst5|lcd_state.lcd_data_l1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal0~9_combout\,
	datab => \b2v_inst5|Equal0~8_combout\,
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|Selector46~9_combout\,
	combout => \b2v_inst5|Selector46~10_combout\);

-- Location: FF_X5_Y20_N23
\b2v_inst5|lcd_state.lcd_data_l1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector46~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_state.lcd_data_l1~q\);

-- Location: LCCOMB_X5_Y20_N16
\b2v_inst5|Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector47~2_combout\ = (\b2v_inst5|lcd_state.lcd_data_l1~q\ & ((\b2v_inst5|Selector45~2_combout\) # ((!\b2v_inst5|Selector47~1_combout\ & \b2v_inst5|lcd_state.lcd_delay~q\)))) # (!\b2v_inst5|lcd_state.lcd_data_l1~q\ & 
-- (!\b2v_inst5|Selector47~1_combout\ & (\b2v_inst5|lcd_state.lcd_delay~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datab => \b2v_inst5|Selector47~1_combout\,
	datac => \b2v_inst5|lcd_state.lcd_delay~q\,
	datad => \b2v_inst5|Selector45~2_combout\,
	combout => \b2v_inst5|Selector47~2_combout\);

-- Location: FF_X5_Y20_N17
\b2v_inst5|lcd_state.lcd_delay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector47~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_state.lcd_delay~q\);

-- Location: LCCOMB_X9_Y18_N28
\b2v_inst5|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector32~0_combout\ = (\b2v_inst5|lcd_state.lcd_data_l0~q\) # ((\b2v_inst5|lcd_state.lcd_data_l1~q\) # ((\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|rs_temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_delay~q\,
	datab => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datac => \b2v_inst5|rs_temp~q\,
	datad => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	combout => \b2v_inst5|Selector32~0_combout\);

-- Location: FF_X9_Y18_N29
\b2v_inst5|rs_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector32~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|rs_temp~q\);

-- Location: LCCOMB_X5_Y20_N8
\b2v_inst5|e_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|e_temp~0_combout\ = (\b2v_inst5|Equal0~7_combout\ & ((\b2v_inst5|Add0~10_combout\ & (\b2v_inst5|e_temp~q\ & \b2v_inst5|Add0~2_combout\)) # (!\b2v_inst5|Add0~10_combout\ & ((\b2v_inst5|e_temp~q\) # (\b2v_inst5|Add0~2_combout\))))) # 
-- (!\b2v_inst5|Equal0~7_combout\ & (((\b2v_inst5|e_temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Equal0~7_combout\,
	datab => \b2v_inst5|Add0~10_combout\,
	datac => \b2v_inst5|e_temp~q\,
	datad => \b2v_inst5|Add0~2_combout\,
	combout => \b2v_inst5|e_temp~0_combout\);

-- Location: LCCOMB_X5_Y20_N26
\b2v_inst5|lcd_data_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_data_temp[0]~0_combout\ = (\reset~input_o\ & !\b2v_inst5|lcd_state.lcd_delay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \b2v_inst5|lcd_state.lcd_delay~q\,
	combout => \b2v_inst5|lcd_data_temp[0]~0_combout\);

-- Location: FF_X5_Y20_N9
\b2v_inst5|e_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|e_temp~0_combout\,
	ena => \b2v_inst5|lcd_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|e_temp~q\);

-- Location: LCCOMB_X21_Y15_N8
\b2v_inst|err~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|err~0_combout\ = (\reset~input_o\ & ((\b2v_inst|cnt[0]~2_combout\ & (\b2v_inst|init_stp\(0))) # (!\b2v_inst|cnt[0]~2_combout\ & ((\b2v_inst|err~q\))))) # (!\reset~input_o\ & (((\b2v_inst|err~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \b2v_inst|init_stp\(0),
	datac => \b2v_inst|err~q\,
	datad => \b2v_inst|cnt[0]~2_combout\,
	combout => \b2v_inst|err~0_combout\);

-- Location: FF_X21_Y15_N9
\b2v_inst|err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|err~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|err~q\);

-- Location: LCCOMB_X16_Y15_N12
\b2v_inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~2_combout\ = (\b2v_inst|ptr\(2) & \b2v_inst|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(2),
	datad => \b2v_inst|ptr\(1),
	combout => \b2v_inst|Decoder0~2_combout\);

-- Location: LCCOMB_X21_Y14_N10
\b2v_inst|tmp_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp_data~1_combout\ = (\reset~input_o\ & (!\dht_bus~input_o\ & (\b2v_inst|tmp_data~0_combout\ & \b2v_inst|state.read_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dht_bus~input_o\,
	datac => \b2v_inst|tmp_data~0_combout\,
	datad => \b2v_inst|state.read_data~q\,
	combout => \b2v_inst|tmp_data~1_combout\);

-- Location: LCCOMB_X23_Y15_N22
\b2v_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~4_combout\ = (\b2v_inst|cnt\(11)) # ((\b2v_inst|cnt\(17)) # ((\b2v_inst|cnt\(12)) # (!\b2v_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(11),
	datab => \b2v_inst|cnt\(17),
	datac => \b2v_inst|LessThan0~3_combout\,
	datad => \b2v_inst|cnt\(12),
	combout => \b2v_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y16_N24
\b2v_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~5_combout\ = (\b2v_inst|cnt\(10) & (\b2v_inst|cnt\(6) & (\b2v_inst|cnt\(9) & \b2v_inst|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(10),
	datab => \b2v_inst|cnt\(6),
	datac => \b2v_inst|cnt\(9),
	datad => \b2v_inst|cnt\(7),
	combout => \b2v_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y15_N10
\b2v_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~6_combout\ = (\b2v_inst|cnt\(2)) # ((\b2v_inst|cnt\(1)) # ((\b2v_inst|cnt\(3)) # (\b2v_inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(2),
	datab => \b2v_inst|cnt\(1),
	datac => \b2v_inst|cnt\(3),
	datad => \b2v_inst|cnt\(0),
	combout => \b2v_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y16_N30
\b2v_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~7_combout\ = (\b2v_inst|LessThan0~5_combout\ & ((\b2v_inst|cnt\(5)) # ((\b2v_inst|cnt\(4) & \b2v_inst|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cnt\(4),
	datab => \b2v_inst|LessThan0~5_combout\,
	datac => \b2v_inst|LessThan0~6_combout\,
	datad => \b2v_inst|cnt\(5),
	combout => \b2v_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X23_Y15_N12
\b2v_inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~8_combout\ = (\b2v_inst|Equal7~2_combout\ & (\b2v_inst|LessThan0~0_combout\ & (!\b2v_inst|cnt\(13) & \b2v_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal7~2_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|cnt\(13),
	datad => \b2v_inst|LessThan0~1_combout\,
	combout => \b2v_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X23_Y15_N18
\b2v_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~9_combout\ = (\b2v_inst|LessThan0~4_combout\) # (((\b2v_inst|cnt\(8) & \b2v_inst|LessThan0~7_combout\)) # (!\b2v_inst|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~4_combout\,
	datab => \b2v_inst|cnt\(8),
	datac => \b2v_inst|LessThan0~7_combout\,
	datad => \b2v_inst|LessThan0~8_combout\,
	combout => \b2v_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X22_Y15_N24
\b2v_inst|tmp_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp_data~2_combout\ = (\b2v_inst|tmp_data~1_combout\ & (!\b2v_inst|cnt\(31) & ((\b2v_inst|LessThan0~9_combout\)))) # (!\b2v_inst|tmp_data~1_combout\ & (((\b2v_inst|tmp_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~1_combout\,
	datab => \b2v_inst|cnt\(31),
	datac => \b2v_inst|tmp_data~q\,
	datad => \b2v_inst|LessThan0~9_combout\,
	combout => \b2v_inst|tmp_data~2_combout\);

-- Location: FF_X22_Y15_N25
\b2v_inst|tmp_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp_data~q\);

-- Location: LCCOMB_X17_Y15_N26
\b2v_inst|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~7_combout\ = (!\b2v_inst|ptr\(5) & (\b2v_inst|state.get_data~q\ & (\b2v_inst|ptr\(4) & \b2v_inst|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(5),
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|ptr\(3),
	combout => \b2v_inst|Decoder0~7_combout\);

-- Location: LCCOMB_X16_Y15_N0
\b2v_inst|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~16_combout\ = (!\b2v_inst|ptr\(0) & \b2v_inst|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(0),
	datad => \b2v_inst|Decoder0~7_combout\,
	combout => \b2v_inst|Decoder0~16_combout\);

-- Location: LCCOMB_X16_Y15_N8
\b2v_inst|tmp[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[10]~15_combout\ = (\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|Decoder0~16_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~16_combout\ & ((\b2v_inst|tmp\(10)))))) # (!\b2v_inst|Decoder0~2_combout\ & (((\b2v_inst|tmp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~2_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(10),
	datad => \b2v_inst|Decoder0~16_combout\,
	combout => \b2v_inst|tmp[10]~15_combout\);

-- Location: FF_X16_Y15_N9
\b2v_inst|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[10]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(10));

-- Location: LCCOMB_X12_Y15_N6
\b2v_inst|dht_temp_bl_tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bl_tmp[2]~feeder_combout\ = \b2v_inst|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(10),
	combout => \b2v_inst|dht_temp_bl_tmp[2]~feeder_combout\);

-- Location: LCCOMB_X11_Y15_N18
\b2v_inst|dht_temp_bh_tmp[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bh_tmp[7]~1_combout\ = (\reset~input_o\ & \b2v_inst|dht_temp_bh_tmp[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \b2v_inst|dht_temp_bh_tmp[7]~0_combout\,
	combout => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\);

-- Location: FF_X12_Y15_N7
\b2v_inst|dht_temp_bl_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_bl_tmp[2]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(2));

-- Location: LCCOMB_X17_Y15_N4
\b2v_inst|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~12_combout\ = (!\b2v_inst|ptr\(3) & (\b2v_inst|state.get_data~q\ & (!\b2v_inst|ptr\(0) & !\b2v_inst|ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(3),
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(0),
	datad => \b2v_inst|ptr\(5),
	combout => \b2v_inst|Decoder0~12_combout\);

-- Location: LCCOMB_X16_Y15_N16
\b2v_inst|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~13_combout\ = (\b2v_inst|ptr\(4) & \b2v_inst|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|Decoder0~12_combout\,
	combout => \b2v_inst|Decoder0~13_combout\);

-- Location: LCCOMB_X16_Y15_N6
\b2v_inst|tmp[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[18]~14_combout\ = (\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|Decoder0~13_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~13_combout\ & ((\b2v_inst|tmp\(18)))))) # (!\b2v_inst|Decoder0~2_combout\ & (((\b2v_inst|tmp\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~2_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(18),
	datad => \b2v_inst|Decoder0~13_combout\,
	combout => \b2v_inst|tmp[18]~14_combout\);

-- Location: FF_X16_Y15_N7
\b2v_inst|tmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[18]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(18));

-- Location: LCCOMB_X12_Y15_N0
\b2v_inst|dht_temp_bh_tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bh_tmp[2]~feeder_combout\ = \b2v_inst|tmp\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(18),
	combout => \b2v_inst|dht_temp_bh_tmp[2]~feeder_combout\);

-- Location: FF_X12_Y15_N1
\b2v_inst|dht_temp_bh_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_bh_tmp[2]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(2));

-- Location: LCCOMB_X17_Y15_N16
\b2v_inst|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~8_combout\ = (\b2v_inst|ptr\(0) & \b2v_inst|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(0),
	datac => \b2v_inst|Decoder0~7_combout\,
	combout => \b2v_inst|Decoder0~8_combout\);

-- Location: LCCOMB_X13_Y15_N4
\b2v_inst|tmp[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[9]~3_combout\ = (\b2v_inst|Decoder0~8_combout\ & ((\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~2_combout\ & (\b2v_inst|tmp\(9))))) # (!\b2v_inst|Decoder0~8_combout\ & (((\b2v_inst|tmp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~8_combout\,
	datab => \b2v_inst|Decoder0~2_combout\,
	datac => \b2v_inst|tmp\(9),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[9]~3_combout\);

-- Location: FF_X13_Y15_N5
\b2v_inst|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[9]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(9));

-- Location: LCCOMB_X12_Y15_N30
\b2v_inst|dht_temp_bl_tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bl_tmp[1]~feeder_combout\ = \b2v_inst|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(9),
	combout => \b2v_inst|dht_temp_bl_tmp[1]~feeder_combout\);

-- Location: FF_X12_Y15_N31
\b2v_inst|dht_temp_bl_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_bl_tmp[1]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(1));

-- Location: LCCOMB_X17_Y15_N0
\b2v_inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~5_combout\ = (!\b2v_inst|ptr\(3) & (\b2v_inst|state.get_data~q\ & (\b2v_inst|ptr\(0) & !\b2v_inst|ptr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(3),
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(0),
	datad => \b2v_inst|ptr\(5),
	combout => \b2v_inst|Decoder0~5_combout\);

-- Location: LCCOMB_X13_Y15_N16
\b2v_inst|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~6_combout\ = (\b2v_inst|Decoder0~5_combout\ & \b2v_inst|ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Decoder0~5_combout\,
	datad => \b2v_inst|ptr\(4),
	combout => \b2v_inst|Decoder0~6_combout\);

-- Location: LCCOMB_X13_Y15_N30
\b2v_inst|tmp[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[17]~2_combout\ = (\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|Decoder0~6_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~6_combout\ & (\b2v_inst|tmp\(17))))) # (!\b2v_inst|Decoder0~2_combout\ & (((\b2v_inst|tmp\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~2_combout\,
	datab => \b2v_inst|Decoder0~6_combout\,
	datac => \b2v_inst|tmp\(17),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[17]~2_combout\);

-- Location: FF_X13_Y15_N31
\b2v_inst|tmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[17]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(17));

-- Location: FF_X12_Y15_N9
\b2v_inst|dht_temp_bh_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(17),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(1));

-- Location: LCCOMB_X17_Y15_N18
\b2v_inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~3_combout\ = (\b2v_inst|ptr\(5) & (\b2v_inst|state.get_data~q\ & (!\b2v_inst|ptr\(4) & !\b2v_inst|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(5),
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|ptr\(3),
	combout => \b2v_inst|Decoder0~3_combout\);

-- Location: LCCOMB_X17_Y15_N20
\b2v_inst|tmp[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[8]~5_combout\ = (\b2v_inst|Decoder0~3_combout\ & ((\b2v_inst|Equal5~0_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Equal5~0_combout\ & ((\b2v_inst|tmp\(8)))))) # (!\b2v_inst|Decoder0~3_combout\ & (((\b2v_inst|tmp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~3_combout\,
	datac => \b2v_inst|tmp\(8),
	datad => \b2v_inst|Equal5~0_combout\,
	combout => \b2v_inst|tmp[8]~5_combout\);

-- Location: FF_X17_Y15_N21
\b2v_inst|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[8]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(8));

-- Location: LCCOMB_X12_Y15_N10
\b2v_inst|dht_temp_bl_tmp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bl_tmp[0]~feeder_combout\ = \b2v_inst|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(8),
	combout => \b2v_inst|dht_temp_bl_tmp[0]~feeder_combout\);

-- Location: FF_X12_Y15_N11
\b2v_inst|dht_temp_bl_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_bl_tmp[0]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(0));

-- Location: LCCOMB_X17_Y15_N14
\b2v_inst|tmp[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[16]~4_combout\ = (\b2v_inst|Decoder0~7_combout\ & ((\b2v_inst|Equal5~0_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Equal5~0_combout\ & ((\b2v_inst|tmp\(16)))))) # (!\b2v_inst|Decoder0~7_combout\ & (((\b2v_inst|tmp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~7_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(16),
	datad => \b2v_inst|Equal5~0_combout\,
	combout => \b2v_inst|tmp[16]~4_combout\);

-- Location: FF_X17_Y15_N15
\b2v_inst|tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[16]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(16));

-- Location: LCCOMB_X12_Y15_N28
\b2v_inst|dht_temp_bh_tmp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bh_tmp[0]~feeder_combout\ = \b2v_inst|tmp\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|tmp\(16),
	combout => \b2v_inst|dht_temp_bh_tmp[0]~feeder_combout\);

-- Location: FF_X12_Y15_N29
\b2v_inst|dht_temp_bh_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_bh_tmp[0]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(0));

-- Location: LCCOMB_X12_Y15_N12
\b2v_inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~0_combout\ = (\b2v_inst|dht_temp_bl_tmp\(0) & (\b2v_inst|dht_temp_bh_tmp\(0) $ (VCC))) # (!\b2v_inst|dht_temp_bl_tmp\(0) & (\b2v_inst|dht_temp_bh_tmp\(0) & VCC))
-- \b2v_inst|Add4~1\ = CARRY((\b2v_inst|dht_temp_bl_tmp\(0) & \b2v_inst|dht_temp_bh_tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bl_tmp\(0),
	datab => \b2v_inst|dht_temp_bh_tmp\(0),
	datad => VCC,
	combout => \b2v_inst|Add4~0_combout\,
	cout => \b2v_inst|Add4~1\);

-- Location: LCCOMB_X12_Y15_N14
\b2v_inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~2_combout\ = (\b2v_inst|dht_temp_bl_tmp\(1) & ((\b2v_inst|dht_temp_bh_tmp\(1) & (\b2v_inst|Add4~1\ & VCC)) # (!\b2v_inst|dht_temp_bh_tmp\(1) & (!\b2v_inst|Add4~1\)))) # (!\b2v_inst|dht_temp_bl_tmp\(1) & ((\b2v_inst|dht_temp_bh_tmp\(1) & 
-- (!\b2v_inst|Add4~1\)) # (!\b2v_inst|dht_temp_bh_tmp\(1) & ((\b2v_inst|Add4~1\) # (GND)))))
-- \b2v_inst|Add4~3\ = CARRY((\b2v_inst|dht_temp_bl_tmp\(1) & (!\b2v_inst|dht_temp_bh_tmp\(1) & !\b2v_inst|Add4~1\)) # (!\b2v_inst|dht_temp_bl_tmp\(1) & ((!\b2v_inst|Add4~1\) # (!\b2v_inst|dht_temp_bh_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bl_tmp\(1),
	datab => \b2v_inst|dht_temp_bh_tmp\(1),
	datad => VCC,
	cin => \b2v_inst|Add4~1\,
	combout => \b2v_inst|Add4~2_combout\,
	cout => \b2v_inst|Add4~3\);

-- Location: LCCOMB_X12_Y15_N16
\b2v_inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~4_combout\ = ((\b2v_inst|dht_temp_bl_tmp\(2) $ (\b2v_inst|dht_temp_bh_tmp\(2) $ (!\b2v_inst|Add4~3\)))) # (GND)
-- \b2v_inst|Add4~5\ = CARRY((\b2v_inst|dht_temp_bl_tmp\(2) & ((\b2v_inst|dht_temp_bh_tmp\(2)) # (!\b2v_inst|Add4~3\))) # (!\b2v_inst|dht_temp_bl_tmp\(2) & (\b2v_inst|dht_temp_bh_tmp\(2) & !\b2v_inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bl_tmp\(2),
	datab => \b2v_inst|dht_temp_bh_tmp\(2),
	datad => VCC,
	cin => \b2v_inst|Add4~3\,
	combout => \b2v_inst|Add4~4_combout\,
	cout => \b2v_inst|Add4~5\);

-- Location: LCCOMB_X17_Y15_N30
\b2v_inst|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~17_combout\ = (!\b2v_inst|ptr\(4) & (\b2v_inst|Decoder0~12_combout\ & \b2v_inst|ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(4),
	datac => \b2v_inst|Decoder0~12_combout\,
	datad => \b2v_inst|ptr\(2),
	combout => \b2v_inst|Decoder0~17_combout\);

-- Location: LCCOMB_X17_Y15_N8
\b2v_inst|tmp[34]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[34]~18_combout\ = (\b2v_inst|ptr\(1) & ((\b2v_inst|Decoder0~17_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~17_combout\ & ((\b2v_inst|tmp\(34)))))) # (!\b2v_inst|ptr\(1) & (((\b2v_inst|tmp\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(1),
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(34),
	datad => \b2v_inst|Decoder0~17_combout\,
	combout => \b2v_inst|tmp[34]~18_combout\);

-- Location: FF_X17_Y15_N9
\b2v_inst|tmp[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[34]~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(34));

-- Location: LCCOMB_X10_Y15_N28
\b2v_inst|dht_humi_bh_tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bh_tmp[2]~feeder_combout\ = \b2v_inst|tmp\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(34),
	combout => \b2v_inst|dht_humi_bh_tmp[2]~feeder_combout\);

-- Location: FF_X10_Y15_N29
\b2v_inst|dht_humi_bh_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bh_tmp[2]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(2));

-- Location: LCCOMB_X17_Y15_N10
\b2v_inst|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~10_combout\ = (!\b2v_inst|ptr\(5) & (\b2v_inst|state.get_data~q\ & (!\b2v_inst|ptr\(4) & \b2v_inst|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(5),
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|ptr\(3),
	combout => \b2v_inst|Decoder0~10_combout\);

-- Location: LCCOMB_X14_Y15_N14
\b2v_inst|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~18_combout\ = (!\b2v_inst|ptr\(0) & \b2v_inst|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(0),
	datac => \b2v_inst|Decoder0~10_combout\,
	combout => \b2v_inst|Decoder0~18_combout\);

-- Location: LCCOMB_X14_Y15_N10
\b2v_inst|tmp[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[26]~19_combout\ = (\b2v_inst|Decoder0~18_combout\ & ((\b2v_inst|Decoder0~2_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|tmp\(26)))))) # (!\b2v_inst|Decoder0~18_combout\ & (((\b2v_inst|tmp\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~18_combout\,
	datac => \b2v_inst|tmp\(26),
	datad => \b2v_inst|Decoder0~2_combout\,
	combout => \b2v_inst|tmp[26]~19_combout\);

-- Location: FF_X14_Y15_N11
\b2v_inst|tmp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[26]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(26));

-- Location: LCCOMB_X10_Y15_N18
\b2v_inst|dht_humi_bl_tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bl_tmp[2]~feeder_combout\ = \b2v_inst|tmp\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(26),
	combout => \b2v_inst|dht_humi_bl_tmp[2]~feeder_combout\);

-- Location: FF_X10_Y15_N19
\b2v_inst|dht_humi_bl_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bl_tmp[2]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(2));

-- Location: LCCOMB_X14_Y15_N26
\b2v_inst|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~11_combout\ = (\b2v_inst|ptr\(0) & \b2v_inst|Decoder0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(0),
	datac => \b2v_inst|Decoder0~10_combout\,
	combout => \b2v_inst|Decoder0~11_combout\);

-- Location: LCCOMB_X14_Y15_N16
\b2v_inst|tmp[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[25]~7_combout\ = (\b2v_inst|Decoder0~11_combout\ & ((\b2v_inst|Decoder0~2_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|tmp\(25)))))) # (!\b2v_inst|Decoder0~11_combout\ & (((\b2v_inst|tmp\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~11_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(25),
	datad => \b2v_inst|Decoder0~2_combout\,
	combout => \b2v_inst|tmp[25]~7_combout\);

-- Location: FF_X14_Y15_N17
\b2v_inst|tmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[25]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(25));

-- Location: LCCOMB_X10_Y15_N22
\b2v_inst|dht_humi_bl_tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bl_tmp[1]~feeder_combout\ = \b2v_inst|tmp\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(25),
	combout => \b2v_inst|dht_humi_bl_tmp[1]~feeder_combout\);

-- Location: FF_X10_Y15_N23
\b2v_inst|dht_humi_bl_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bl_tmp[1]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(1));

-- Location: LCCOMB_X13_Y15_N2
\b2v_inst|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~9_combout\ = (\b2v_inst|Decoder0~5_combout\ & !\b2v_inst|ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Decoder0~5_combout\,
	datad => \b2v_inst|ptr\(4),
	combout => \b2v_inst|Decoder0~9_combout\);

-- Location: LCCOMB_X13_Y15_N18
\b2v_inst|tmp[33]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[33]~6_combout\ = (\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|Decoder0~9_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~9_combout\ & (\b2v_inst|tmp\(33))))) # (!\b2v_inst|Decoder0~2_combout\ & (((\b2v_inst|tmp\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~2_combout\,
	datab => \b2v_inst|Decoder0~9_combout\,
	datac => \b2v_inst|tmp\(33),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[33]~6_combout\);

-- Location: FF_X13_Y15_N19
\b2v_inst|tmp[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[33]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(33));

-- Location: LCCOMB_X10_Y15_N16
\b2v_inst|dht_humi_bh_tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bh_tmp[1]~feeder_combout\ = \b2v_inst|tmp\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(33),
	combout => \b2v_inst|dht_humi_bh_tmp[1]~feeder_combout\);

-- Location: FF_X10_Y15_N17
\b2v_inst|dht_humi_bh_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bh_tmp[1]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(1));

-- Location: LCCOMB_X16_Y15_N26
\b2v_inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal5~2_combout\ = (!\b2v_inst|ptr\(2) & !\b2v_inst|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(2),
	datad => \b2v_inst|ptr\(1),
	combout => \b2v_inst|Equal5~2_combout\);

-- Location: LCCOMB_X16_Y15_N28
\b2v_inst|tmp[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[24]~9_combout\ = (\b2v_inst|Equal5~2_combout\ & ((\b2v_inst|Decoder0~13_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~13_combout\ & ((\b2v_inst|tmp\(24)))))) # (!\b2v_inst|Equal5~2_combout\ & (((\b2v_inst|tmp\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal5~2_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(24),
	datad => \b2v_inst|Decoder0~13_combout\,
	combout => \b2v_inst|tmp[24]~9_combout\);

-- Location: FF_X16_Y15_N29
\b2v_inst|tmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[24]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(24));

-- Location: LCCOMB_X10_Y15_N26
\b2v_inst|dht_humi_bl_tmp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bl_tmp[0]~feeder_combout\ = \b2v_inst|tmp\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(24),
	combout => \b2v_inst|dht_humi_bl_tmp[0]~feeder_combout\);

-- Location: FF_X10_Y15_N27
\b2v_inst|dht_humi_bl_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bl_tmp[0]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(0));

-- Location: LCCOMB_X17_Y15_N6
\b2v_inst|tmp[32]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[32]~8_combout\ = (\b2v_inst|Equal5~0_combout\ & ((\b2v_inst|Decoder0~10_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~10_combout\ & ((\b2v_inst|tmp\(32)))))) # (!\b2v_inst|Equal5~0_combout\ & (((\b2v_inst|tmp\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Equal5~0_combout\,
	datac => \b2v_inst|tmp\(32),
	datad => \b2v_inst|Decoder0~10_combout\,
	combout => \b2v_inst|tmp[32]~8_combout\);

-- Location: FF_X17_Y15_N7
\b2v_inst|tmp[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[32]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(32));

-- Location: LCCOMB_X10_Y15_N20
\b2v_inst|dht_humi_bh_tmp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bh_tmp[0]~feeder_combout\ = \b2v_inst|tmp\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(32),
	combout => \b2v_inst|dht_humi_bh_tmp[0]~feeder_combout\);

-- Location: FF_X10_Y15_N21
\b2v_inst|dht_humi_bh_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bh_tmp[0]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(0));

-- Location: LCCOMB_X10_Y15_N0
\b2v_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~0_combout\ = (\b2v_inst|dht_humi_bl_tmp\(0) & (\b2v_inst|dht_humi_bh_tmp\(0) $ (VCC))) # (!\b2v_inst|dht_humi_bl_tmp\(0) & (\b2v_inst|dht_humi_bh_tmp\(0) & VCC))
-- \b2v_inst|Add3~1\ = CARRY((\b2v_inst|dht_humi_bl_tmp\(0) & \b2v_inst|dht_humi_bh_tmp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bl_tmp\(0),
	datab => \b2v_inst|dht_humi_bh_tmp\(0),
	datad => VCC,
	combout => \b2v_inst|Add3~0_combout\,
	cout => \b2v_inst|Add3~1\);

-- Location: LCCOMB_X10_Y15_N2
\b2v_inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~2_combout\ = (\b2v_inst|dht_humi_bl_tmp\(1) & ((\b2v_inst|dht_humi_bh_tmp\(1) & (\b2v_inst|Add3~1\ & VCC)) # (!\b2v_inst|dht_humi_bh_tmp\(1) & (!\b2v_inst|Add3~1\)))) # (!\b2v_inst|dht_humi_bl_tmp\(1) & ((\b2v_inst|dht_humi_bh_tmp\(1) & 
-- (!\b2v_inst|Add3~1\)) # (!\b2v_inst|dht_humi_bh_tmp\(1) & ((\b2v_inst|Add3~1\) # (GND)))))
-- \b2v_inst|Add3~3\ = CARRY((\b2v_inst|dht_humi_bl_tmp\(1) & (!\b2v_inst|dht_humi_bh_tmp\(1) & !\b2v_inst|Add3~1\)) # (!\b2v_inst|dht_humi_bl_tmp\(1) & ((!\b2v_inst|Add3~1\) # (!\b2v_inst|dht_humi_bh_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bl_tmp\(1),
	datab => \b2v_inst|dht_humi_bh_tmp\(1),
	datad => VCC,
	cin => \b2v_inst|Add3~1\,
	combout => \b2v_inst|Add3~2_combout\,
	cout => \b2v_inst|Add3~3\);

-- Location: LCCOMB_X10_Y15_N4
\b2v_inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~4_combout\ = ((\b2v_inst|dht_humi_bh_tmp\(2) $ (\b2v_inst|dht_humi_bl_tmp\(2) $ (!\b2v_inst|Add3~3\)))) # (GND)
-- \b2v_inst|Add3~5\ = CARRY((\b2v_inst|dht_humi_bh_tmp\(2) & ((\b2v_inst|dht_humi_bl_tmp\(2)) # (!\b2v_inst|Add3~3\))) # (!\b2v_inst|dht_humi_bh_tmp\(2) & (\b2v_inst|dht_humi_bl_tmp\(2) & !\b2v_inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bh_tmp\(2),
	datab => \b2v_inst|dht_humi_bl_tmp\(2),
	datad => VCC,
	cin => \b2v_inst|Add3~3\,
	combout => \b2v_inst|Add3~4_combout\,
	cout => \b2v_inst|Add3~5\);

-- Location: LCCOMB_X11_Y15_N2
\b2v_inst|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~0_combout\ = (\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add4~0_combout\ $ (VCC))) # (!\b2v_inst|Add3~0_combout\ & (\b2v_inst|Add4~0_combout\ & VCC))
-- \b2v_inst|Add5~1\ = CARRY((\b2v_inst|Add3~0_combout\ & \b2v_inst|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~0_combout\,
	datab => \b2v_inst|Add4~0_combout\,
	datad => VCC,
	combout => \b2v_inst|Add5~0_combout\,
	cout => \b2v_inst|Add5~1\);

-- Location: LCCOMB_X11_Y15_N4
\b2v_inst|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~2_combout\ = (\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Add4~2_combout\ & (\b2v_inst|Add5~1\ & VCC)) # (!\b2v_inst|Add4~2_combout\ & (!\b2v_inst|Add5~1\)))) # (!\b2v_inst|Add3~2_combout\ & ((\b2v_inst|Add4~2_combout\ & (!\b2v_inst|Add5~1\)) # 
-- (!\b2v_inst|Add4~2_combout\ & ((\b2v_inst|Add5~1\) # (GND)))))
-- \b2v_inst|Add5~3\ = CARRY((\b2v_inst|Add3~2_combout\ & (!\b2v_inst|Add4~2_combout\ & !\b2v_inst|Add5~1\)) # (!\b2v_inst|Add3~2_combout\ & ((!\b2v_inst|Add5~1\) # (!\b2v_inst|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~2_combout\,
	datab => \b2v_inst|Add4~2_combout\,
	datad => VCC,
	cin => \b2v_inst|Add5~1\,
	combout => \b2v_inst|Add5~2_combout\,
	cout => \b2v_inst|Add5~3\);

-- Location: LCCOMB_X11_Y15_N6
\b2v_inst|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~4_combout\ = ((\b2v_inst|Add4~4_combout\ $ (\b2v_inst|Add3~4_combout\ $ (!\b2v_inst|Add5~3\)))) # (GND)
-- \b2v_inst|Add5~5\ = CARRY((\b2v_inst|Add4~4_combout\ & ((\b2v_inst|Add3~4_combout\) # (!\b2v_inst|Add5~3\))) # (!\b2v_inst|Add4~4_combout\ & (\b2v_inst|Add3~4_combout\ & !\b2v_inst|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add4~4_combout\,
	datab => \b2v_inst|Add3~4_combout\,
	datad => VCC,
	cin => \b2v_inst|Add5~3\,
	combout => \b2v_inst|Add5~4_combout\,
	cout => \b2v_inst|Add5~5\);

-- Location: LCCOMB_X16_Y15_N18
\b2v_inst|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~15_combout\ = (\b2v_inst|ptr\(2) & !\b2v_inst|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(2),
	datad => \b2v_inst|ptr\(1),
	combout => \b2v_inst|Decoder0~15_combout\);

-- Location: LCCOMB_X14_Y15_N4
\b2v_inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~4_combout\ = (\b2v_inst|ptr\(0) & \b2v_inst|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(0),
	datac => \b2v_inst|Decoder0~3_combout\,
	combout => \b2v_inst|Decoder0~4_combout\);

-- Location: LCCOMB_X13_Y15_N20
\b2v_inst|tmp[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[3]~11_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~4_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~4_combout\ & ((\b2v_inst|tmp\(3)))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~15_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(3),
	datad => \b2v_inst|Decoder0~4_combout\,
	combout => \b2v_inst|tmp[3]~11_combout\);

-- Location: FF_X13_Y15_N21
\b2v_inst|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[3]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(3));

-- Location: FF_X11_Y15_N5
\b2v_inst|check_sum_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(3),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(3));

-- Location: LCCOMB_X14_Y15_N0
\b2v_inst|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~14_combout\ = (!\b2v_inst|ptr\(0) & \b2v_inst|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(0),
	datac => \b2v_inst|Decoder0~3_combout\,
	combout => \b2v_inst|Decoder0~14_combout\);

-- Location: LCCOMB_X14_Y15_N30
\b2v_inst|tmp[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[2]~10_combout\ = (\b2v_inst|Decoder0~14_combout\ & ((\b2v_inst|Decoder0~2_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|tmp\(2)))))) # (!\b2v_inst|Decoder0~14_combout\ & (((\b2v_inst|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~14_combout\,
	datac => \b2v_inst|tmp\(2),
	datad => \b2v_inst|Decoder0~2_combout\,
	combout => \b2v_inst|tmp[2]~10_combout\);

-- Location: FF_X14_Y15_N31
\b2v_inst|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[2]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(2));

-- Location: FF_X11_Y15_N23
\b2v_inst|check_sum_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(2),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(2));

-- Location: LCCOMB_X13_Y15_N8
\b2v_inst|tmp[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[11]~13_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~8_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~8_combout\ & ((\b2v_inst|tmp\(11)))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~15_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(11),
	datad => \b2v_inst|Decoder0~8_combout\,
	combout => \b2v_inst|tmp[11]~13_combout\);

-- Location: FF_X13_Y15_N9
\b2v_inst|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[11]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(11));

-- Location: FF_X12_Y15_N3
\b2v_inst|dht_temp_bl_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(11),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(3));

-- Location: LCCOMB_X13_Y15_N6
\b2v_inst|tmp[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[19]~12_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~6_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~6_combout\ & (\b2v_inst|tmp\(19))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~15_combout\,
	datab => \b2v_inst|Decoder0~6_combout\,
	datac => \b2v_inst|tmp\(19),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[19]~12_combout\);

-- Location: FF_X13_Y15_N7
\b2v_inst|tmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[19]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(19));

-- Location: LCCOMB_X12_Y15_N4
\b2v_inst|dht_temp_bh_tmp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_bh_tmp[3]~feeder_combout\ = \b2v_inst|tmp\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(19),
	combout => \b2v_inst|dht_temp_bh_tmp[3]~feeder_combout\);

-- Location: FF_X12_Y15_N5
\b2v_inst|dht_temp_bh_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_bh_tmp[3]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(3));

-- Location: LCCOMB_X12_Y15_N18
\b2v_inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~6_combout\ = (\b2v_inst|dht_temp_bl_tmp\(3) & ((\b2v_inst|dht_temp_bh_tmp\(3) & (\b2v_inst|Add4~5\ & VCC)) # (!\b2v_inst|dht_temp_bh_tmp\(3) & (!\b2v_inst|Add4~5\)))) # (!\b2v_inst|dht_temp_bl_tmp\(3) & ((\b2v_inst|dht_temp_bh_tmp\(3) & 
-- (!\b2v_inst|Add4~5\)) # (!\b2v_inst|dht_temp_bh_tmp\(3) & ((\b2v_inst|Add4~5\) # (GND)))))
-- \b2v_inst|Add4~7\ = CARRY((\b2v_inst|dht_temp_bl_tmp\(3) & (!\b2v_inst|dht_temp_bh_tmp\(3) & !\b2v_inst|Add4~5\)) # (!\b2v_inst|dht_temp_bl_tmp\(3) & ((!\b2v_inst|Add4~5\) # (!\b2v_inst|dht_temp_bh_tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bl_tmp\(3),
	datab => \b2v_inst|dht_temp_bh_tmp\(3),
	datad => VCC,
	cin => \b2v_inst|Add4~5\,
	combout => \b2v_inst|Add4~6_combout\,
	cout => \b2v_inst|Add4~7\);

-- Location: LCCOMB_X14_Y15_N8
\b2v_inst|tmp[27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[27]~17_combout\ = (\b2v_inst|Decoder0~11_combout\ & ((\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~15_combout\ & (\b2v_inst|tmp\(27))))) # (!\b2v_inst|Decoder0~11_combout\ & (((\b2v_inst|tmp\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~11_combout\,
	datab => \b2v_inst|Decoder0~15_combout\,
	datac => \b2v_inst|tmp\(27),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[27]~17_combout\);

-- Location: FF_X14_Y15_N9
\b2v_inst|tmp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[27]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(27));

-- Location: LCCOMB_X10_Y15_N30
\b2v_inst|dht_humi_bl_tmp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bl_tmp[3]~feeder_combout\ = \b2v_inst|tmp\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(27),
	combout => \b2v_inst|dht_humi_bl_tmp[3]~feeder_combout\);

-- Location: FF_X10_Y15_N31
\b2v_inst|dht_humi_bl_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bl_tmp[3]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(3));

-- Location: LCCOMB_X13_Y15_N22
\b2v_inst|tmp[35]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[35]~16_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~9_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~9_combout\ & (\b2v_inst|tmp\(35))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~15_combout\,
	datab => \b2v_inst|Decoder0~9_combout\,
	datac => \b2v_inst|tmp\(35),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[35]~16_combout\);

-- Location: FF_X13_Y15_N23
\b2v_inst|tmp[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[35]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(35));

-- Location: LCCOMB_X10_Y15_N24
\b2v_inst|dht_humi_bh_tmp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_bh_tmp[3]~feeder_combout\ = \b2v_inst|tmp\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(35),
	combout => \b2v_inst|dht_humi_bh_tmp[3]~feeder_combout\);

-- Location: FF_X10_Y15_N25
\b2v_inst|dht_humi_bh_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_bh_tmp[3]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(3));

-- Location: LCCOMB_X10_Y15_N6
\b2v_inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~6_combout\ = (\b2v_inst|dht_humi_bl_tmp\(3) & ((\b2v_inst|dht_humi_bh_tmp\(3) & (\b2v_inst|Add3~5\ & VCC)) # (!\b2v_inst|dht_humi_bh_tmp\(3) & (!\b2v_inst|Add3~5\)))) # (!\b2v_inst|dht_humi_bl_tmp\(3) & ((\b2v_inst|dht_humi_bh_tmp\(3) & 
-- (!\b2v_inst|Add3~5\)) # (!\b2v_inst|dht_humi_bh_tmp\(3) & ((\b2v_inst|Add3~5\) # (GND)))))
-- \b2v_inst|Add3~7\ = CARRY((\b2v_inst|dht_humi_bl_tmp\(3) & (!\b2v_inst|dht_humi_bh_tmp\(3) & !\b2v_inst|Add3~5\)) # (!\b2v_inst|dht_humi_bl_tmp\(3) & ((!\b2v_inst|Add3~5\) # (!\b2v_inst|dht_humi_bh_tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bl_tmp\(3),
	datab => \b2v_inst|dht_humi_bh_tmp\(3),
	datad => VCC,
	cin => \b2v_inst|Add3~5\,
	combout => \b2v_inst|Add3~6_combout\,
	cout => \b2v_inst|Add3~7\);

-- Location: LCCOMB_X11_Y15_N8
\b2v_inst|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~6_combout\ = (\b2v_inst|Add4~6_combout\ & ((\b2v_inst|Add3~6_combout\ & (\b2v_inst|Add5~5\ & VCC)) # (!\b2v_inst|Add3~6_combout\ & (!\b2v_inst|Add5~5\)))) # (!\b2v_inst|Add4~6_combout\ & ((\b2v_inst|Add3~6_combout\ & (!\b2v_inst|Add5~5\)) # 
-- (!\b2v_inst|Add3~6_combout\ & ((\b2v_inst|Add5~5\) # (GND)))))
-- \b2v_inst|Add5~7\ = CARRY((\b2v_inst|Add4~6_combout\ & (!\b2v_inst|Add3~6_combout\ & !\b2v_inst|Add5~5\)) # (!\b2v_inst|Add4~6_combout\ & ((!\b2v_inst|Add5~5\) # (!\b2v_inst|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add4~6_combout\,
	datab => \b2v_inst|Add3~6_combout\,
	datad => VCC,
	cin => \b2v_inst|Add5~5\,
	combout => \b2v_inst|Add5~6_combout\,
	cout => \b2v_inst|Add5~7\);

-- Location: LCCOMB_X11_Y15_N22
\b2v_inst|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal6~1_combout\ = (\b2v_inst|Add5~4_combout\ & (\b2v_inst|check_sum_tmp\(2) & (\b2v_inst|check_sum_tmp\(3) $ (!\b2v_inst|Add5~6_combout\)))) # (!\b2v_inst|Add5~4_combout\ & (!\b2v_inst|check_sum_tmp\(2) & (\b2v_inst|check_sum_tmp\(3) $ 
-- (!\b2v_inst|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add5~4_combout\,
	datab => \b2v_inst|check_sum_tmp\(3),
	datac => \b2v_inst|check_sum_tmp\(2),
	datad => \b2v_inst|Add5~6_combout\,
	combout => \b2v_inst|Equal6~1_combout\);

-- Location: LCCOMB_X13_Y15_N28
\b2v_inst|tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[1]~1_combout\ = (\b2v_inst|Decoder0~4_combout\ & ((\b2v_inst|Decoder0~2_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~2_combout\ & (\b2v_inst|tmp\(1))))) # (!\b2v_inst|Decoder0~4_combout\ & (((\b2v_inst|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~4_combout\,
	datab => \b2v_inst|Decoder0~2_combout\,
	datac => \b2v_inst|tmp\(1),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[1]~1_combout\);

-- Location: FF_X13_Y15_N29
\b2v_inst|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[1]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(1));

-- Location: FF_X11_Y15_N3
\b2v_inst|check_sum_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(1),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(1));

-- Location: LCCOMB_X17_Y15_N28
\b2v_inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~1_combout\ = (\b2v_inst|state.get_data~q\ & (!\b2v_inst|ptr\(4) & \b2v_inst|ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.get_data~q\,
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|ptr\(5),
	combout => \b2v_inst|Decoder0~1_combout\);

-- Location: LCCOMB_X17_Y15_N24
\b2v_inst|tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[0]~0_combout\ = (\b2v_inst|Decoder0~1_combout\ & ((\b2v_inst|Decoder0~0_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~0_combout\ & ((\b2v_inst|tmp\(0)))))) # (!\b2v_inst|Decoder0~1_combout\ & (((\b2v_inst|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~1_combout\,
	datac => \b2v_inst|tmp\(0),
	datad => \b2v_inst|Decoder0~0_combout\,
	combout => \b2v_inst|tmp[0]~0_combout\);

-- Location: FF_X17_Y15_N25
\b2v_inst|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[0]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(0));

-- Location: FF_X11_Y15_N1
\b2v_inst|check_sum_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(0),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(0));

-- Location: LCCOMB_X11_Y15_N0
\b2v_inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal6~0_combout\ = (\b2v_inst|Add5~2_combout\ & (\b2v_inst|check_sum_tmp\(1) & (\b2v_inst|check_sum_tmp\(0) $ (!\b2v_inst|Add5~0_combout\)))) # (!\b2v_inst|Add5~2_combout\ & (!\b2v_inst|check_sum_tmp\(1) & (\b2v_inst|check_sum_tmp\(0) $ 
-- (!\b2v_inst|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add5~2_combout\,
	datab => \b2v_inst|check_sum_tmp\(1),
	datac => \b2v_inst|check_sum_tmp\(0),
	datad => \b2v_inst|Add5~0_combout\,
	combout => \b2v_inst|Equal6~0_combout\);

-- Location: LCCOMB_X14_Y15_N28
\b2v_inst|tmp[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[7]~31_combout\ = (\b2v_inst|Decoder0~4_combout\ & ((\b2v_inst|Equal5~2_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Equal5~2_combout\ & ((\b2v_inst|tmp\(7)))))) # (!\b2v_inst|Decoder0~4_combout\ & (((\b2v_inst|tmp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~4_combout\,
	datac => \b2v_inst|tmp\(7),
	datad => \b2v_inst|Equal5~2_combout\,
	combout => \b2v_inst|tmp[7]~31_combout\);

-- Location: FF_X14_Y15_N29
\b2v_inst|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[7]~31_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(7));

-- Location: LCCOMB_X11_Y15_N26
\b2v_inst|check_sum_tmp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|check_sum_tmp[7]~feeder_combout\ = \b2v_inst|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(7),
	combout => \b2v_inst|check_sum_tmp[7]~feeder_combout\);

-- Location: FF_X11_Y15_N27
\b2v_inst|check_sum_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|check_sum_tmp[7]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(7));

-- Location: LCCOMB_X16_Y15_N20
\b2v_inst|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~20_combout\ = (\b2v_inst|Decoder0~12_combout\ & (\b2v_inst|ptr\(1) & (!\b2v_inst|ptr\(4) & !\b2v_inst|ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~12_combout\,
	datab => \b2v_inst|ptr\(1),
	datac => \b2v_inst|ptr\(4),
	datad => \b2v_inst|ptr\(2),
	combout => \b2v_inst|Decoder0~20_combout\);

-- Location: LCCOMB_X16_Y15_N10
\b2v_inst|tmp[38]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[38]~38_combout\ = (\b2v_inst|Decoder0~20_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~20_combout\ & ((\b2v_inst|tmp\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(38),
	datad => \b2v_inst|Decoder0~20_combout\,
	combout => \b2v_inst|tmp[38]~38_combout\);

-- Location: FF_X16_Y15_N11
\b2v_inst|tmp[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[38]~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(38));

-- Location: FF_X10_Y15_N13
\b2v_inst|dht_humi_bh_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(38),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(6));

-- Location: LCCOMB_X16_Y15_N22
\b2v_inst|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Decoder0~19_combout\ = (!\b2v_inst|ptr\(2) & \b2v_inst|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ptr\(2),
	datad => \b2v_inst|ptr\(1),
	combout => \b2v_inst|Decoder0~19_combout\);

-- Location: LCCOMB_X14_Y15_N18
\b2v_inst|tmp[30]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[30]~39_combout\ = (\b2v_inst|Decoder0~18_combout\ & ((\b2v_inst|Decoder0~19_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|tmp\(30)))))) # (!\b2v_inst|Decoder0~18_combout\ & (((\b2v_inst|tmp\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~18_combout\,
	datac => \b2v_inst|tmp\(30),
	datad => \b2v_inst|Decoder0~19_combout\,
	combout => \b2v_inst|tmp[30]~39_combout\);

-- Location: FF_X14_Y15_N19
\b2v_inst|tmp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[30]~39_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(30));

-- Location: FF_X10_Y15_N11
\b2v_inst|dht_humi_bl_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(30),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(6));

-- Location: LCCOMB_X13_Y15_N14
\b2v_inst|tmp[37]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[37]~26_combout\ = (\b2v_inst|Decoder0~9_combout\ & ((\b2v_inst|Decoder0~19_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|tmp\(37)))))) # (!\b2v_inst|Decoder0~9_combout\ & (((\b2v_inst|tmp\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~9_combout\,
	datac => \b2v_inst|tmp\(37),
	datad => \b2v_inst|Decoder0~19_combout\,
	combout => \b2v_inst|tmp[37]~26_combout\);

-- Location: FF_X13_Y15_N15
\b2v_inst|tmp[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[37]~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(37));

-- Location: FF_X10_Y15_N1
\b2v_inst|dht_humi_bh_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(37),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(5));

-- Location: LCCOMB_X14_Y15_N6
\b2v_inst|tmp[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[29]~27_combout\ = (\b2v_inst|Decoder0~11_combout\ & ((\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~19_combout\ & (\b2v_inst|tmp\(29))))) # (!\b2v_inst|Decoder0~11_combout\ & (((\b2v_inst|tmp\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~11_combout\,
	datab => \b2v_inst|Decoder0~19_combout\,
	datac => \b2v_inst|tmp\(29),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[29]~27_combout\);

-- Location: FF_X14_Y15_N7
\b2v_inst|tmp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[29]~27_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(29));

-- Location: FF_X10_Y15_N3
\b2v_inst|dht_humi_bl_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(29),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(5));

-- Location: LCCOMB_X17_Y15_N2
\b2v_inst|tmp[36]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[36]~28_combout\ = (\b2v_inst|ptr\(1) & (((\b2v_inst|tmp\(36))))) # (!\b2v_inst|ptr\(1) & ((\b2v_inst|Decoder0~17_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~17_combout\ & ((\b2v_inst|tmp\(36))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ptr\(1),
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(36),
	datad => \b2v_inst|Decoder0~17_combout\,
	combout => \b2v_inst|tmp[36]~28_combout\);

-- Location: FF_X17_Y15_N3
\b2v_inst|tmp[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[36]~28_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(36));

-- Location: FF_X10_Y15_N7
\b2v_inst|dht_humi_bh_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(36),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(4));

-- Location: LCCOMB_X14_Y15_N24
\b2v_inst|tmp[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[28]~29_combout\ = (\b2v_inst|Decoder0~18_combout\ & ((\b2v_inst|Decoder0~15_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|tmp\(28)))))) # (!\b2v_inst|Decoder0~18_combout\ & (((\b2v_inst|tmp\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~18_combout\,
	datac => \b2v_inst|tmp\(28),
	datad => \b2v_inst|Decoder0~15_combout\,
	combout => \b2v_inst|tmp[28]~29_combout\);

-- Location: FF_X14_Y15_N25
\b2v_inst|tmp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[28]~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(28));

-- Location: FF_X10_Y15_N5
\b2v_inst|dht_humi_bl_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(28),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(4));

-- Location: LCCOMB_X10_Y15_N8
\b2v_inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~8_combout\ = ((\b2v_inst|dht_humi_bh_tmp\(4) $ (\b2v_inst|dht_humi_bl_tmp\(4) $ (!\b2v_inst|Add3~7\)))) # (GND)
-- \b2v_inst|Add3~9\ = CARRY((\b2v_inst|dht_humi_bh_tmp\(4) & ((\b2v_inst|dht_humi_bl_tmp\(4)) # (!\b2v_inst|Add3~7\))) # (!\b2v_inst|dht_humi_bh_tmp\(4) & (\b2v_inst|dht_humi_bl_tmp\(4) & !\b2v_inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bh_tmp\(4),
	datab => \b2v_inst|dht_humi_bl_tmp\(4),
	datad => VCC,
	cin => \b2v_inst|Add3~7\,
	combout => \b2v_inst|Add3~8_combout\,
	cout => \b2v_inst|Add3~9\);

-- Location: LCCOMB_X10_Y15_N10
\b2v_inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~10_combout\ = (\b2v_inst|dht_humi_bh_tmp\(5) & ((\b2v_inst|dht_humi_bl_tmp\(5) & (\b2v_inst|Add3~9\ & VCC)) # (!\b2v_inst|dht_humi_bl_tmp\(5) & (!\b2v_inst|Add3~9\)))) # (!\b2v_inst|dht_humi_bh_tmp\(5) & ((\b2v_inst|dht_humi_bl_tmp\(5) & 
-- (!\b2v_inst|Add3~9\)) # (!\b2v_inst|dht_humi_bl_tmp\(5) & ((\b2v_inst|Add3~9\) # (GND)))))
-- \b2v_inst|Add3~11\ = CARRY((\b2v_inst|dht_humi_bh_tmp\(5) & (!\b2v_inst|dht_humi_bl_tmp\(5) & !\b2v_inst|Add3~9\)) # (!\b2v_inst|dht_humi_bh_tmp\(5) & ((!\b2v_inst|Add3~9\) # (!\b2v_inst|dht_humi_bl_tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bh_tmp\(5),
	datab => \b2v_inst|dht_humi_bl_tmp\(5),
	datad => VCC,
	cin => \b2v_inst|Add3~9\,
	combout => \b2v_inst|Add3~10_combout\,
	cout => \b2v_inst|Add3~11\);

-- Location: LCCOMB_X10_Y15_N12
\b2v_inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~12_combout\ = ((\b2v_inst|dht_humi_bh_tmp\(6) $ (\b2v_inst|dht_humi_bl_tmp\(6) $ (!\b2v_inst|Add3~11\)))) # (GND)
-- \b2v_inst|Add3~13\ = CARRY((\b2v_inst|dht_humi_bh_tmp\(6) & ((\b2v_inst|dht_humi_bl_tmp\(6)) # (!\b2v_inst|Add3~11\))) # (!\b2v_inst|dht_humi_bh_tmp\(6) & (\b2v_inst|dht_humi_bl_tmp\(6) & !\b2v_inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_bh_tmp\(6),
	datab => \b2v_inst|dht_humi_bl_tmp\(6),
	datad => VCC,
	cin => \b2v_inst|Add3~11\,
	combout => \b2v_inst|Add3~12_combout\,
	cout => \b2v_inst|Add3~13\);

-- Location: LCCOMB_X16_Y15_N4
\b2v_inst|tmp[14]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[14]~35_combout\ = (\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|Decoder0~16_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~16_combout\ & ((\b2v_inst|tmp\(14)))))) # (!\b2v_inst|Decoder0~19_combout\ & (((\b2v_inst|tmp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~19_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(14),
	datad => \b2v_inst|Decoder0~16_combout\,
	combout => \b2v_inst|tmp[14]~35_combout\);

-- Location: FF_X16_Y15_N5
\b2v_inst|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[14]~35_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(14));

-- Location: FF_X12_Y15_N23
\b2v_inst|dht_temp_bl_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(14),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(6));

-- Location: LCCOMB_X16_Y15_N14
\b2v_inst|tmp[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[22]~34_combout\ = (\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|Decoder0~13_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~13_combout\ & ((\b2v_inst|tmp\(22)))))) # (!\b2v_inst|Decoder0~19_combout\ & (((\b2v_inst|tmp\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~19_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(22),
	datad => \b2v_inst|Decoder0~13_combout\,
	combout => \b2v_inst|tmp[22]~34_combout\);

-- Location: FF_X16_Y15_N15
\b2v_inst|tmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[22]~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(22));

-- Location: FF_X12_Y15_N25
\b2v_inst|dht_temp_bh_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(22),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(6));

-- Location: LCCOMB_X13_Y15_N10
\b2v_inst|tmp[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[21]~22_combout\ = (\b2v_inst|Decoder0~6_combout\ & ((\b2v_inst|Decoder0~19_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|tmp\(21)))))) # (!\b2v_inst|Decoder0~6_combout\ & (((\b2v_inst|tmp\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~6_combout\,
	datac => \b2v_inst|tmp\(21),
	datad => \b2v_inst|Decoder0~19_combout\,
	combout => \b2v_inst|tmp[21]~22_combout\);

-- Location: FF_X13_Y15_N11
\b2v_inst|tmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[21]~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(21));

-- Location: FF_X12_Y15_N13
\b2v_inst|dht_temp_bh_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(21),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(5));

-- Location: LCCOMB_X13_Y15_N12
\b2v_inst|tmp[13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[13]~23_combout\ = (\b2v_inst|Decoder0~8_combout\ & ((\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|tmp_data~q\))) # (!\b2v_inst|Decoder0~19_combout\ & (\b2v_inst|tmp\(13))))) # (!\b2v_inst|Decoder0~8_combout\ & (((\b2v_inst|tmp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~8_combout\,
	datab => \b2v_inst|Decoder0~19_combout\,
	datac => \b2v_inst|tmp\(13),
	datad => \b2v_inst|tmp_data~q\,
	combout => \b2v_inst|tmp[13]~23_combout\);

-- Location: FF_X13_Y15_N13
\b2v_inst|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[13]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(13));

-- Location: FF_X12_Y15_N15
\b2v_inst|dht_temp_bl_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(13),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(5));

-- Location: LCCOMB_X16_Y15_N30
\b2v_inst|tmp[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[20]~24_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~13_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~13_combout\ & ((\b2v_inst|tmp\(20)))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~15_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(20),
	datad => \b2v_inst|Decoder0~13_combout\,
	combout => \b2v_inst|tmp[20]~24_combout\);

-- Location: FF_X16_Y15_N31
\b2v_inst|tmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[20]~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(20));

-- Location: FF_X12_Y15_N19
\b2v_inst|dht_temp_bh_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(20),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(4));

-- Location: LCCOMB_X16_Y15_N24
\b2v_inst|tmp[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[12]~25_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~16_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~16_combout\ & ((\b2v_inst|tmp\(12)))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~15_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(12),
	datad => \b2v_inst|Decoder0~16_combout\,
	combout => \b2v_inst|tmp[12]~25_combout\);

-- Location: FF_X16_Y15_N25
\b2v_inst|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[12]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(12));

-- Location: FF_X12_Y15_N17
\b2v_inst|dht_temp_bl_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(12),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(4));

-- Location: LCCOMB_X12_Y15_N20
\b2v_inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~8_combout\ = ((\b2v_inst|dht_temp_bh_tmp\(4) $ (\b2v_inst|dht_temp_bl_tmp\(4) $ (!\b2v_inst|Add4~7\)))) # (GND)
-- \b2v_inst|Add4~9\ = CARRY((\b2v_inst|dht_temp_bh_tmp\(4) & ((\b2v_inst|dht_temp_bl_tmp\(4)) # (!\b2v_inst|Add4~7\))) # (!\b2v_inst|dht_temp_bh_tmp\(4) & (\b2v_inst|dht_temp_bl_tmp\(4) & !\b2v_inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bh_tmp\(4),
	datab => \b2v_inst|dht_temp_bl_tmp\(4),
	datad => VCC,
	cin => \b2v_inst|Add4~7\,
	combout => \b2v_inst|Add4~8_combout\,
	cout => \b2v_inst|Add4~9\);

-- Location: LCCOMB_X12_Y15_N22
\b2v_inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~10_combout\ = (\b2v_inst|dht_temp_bh_tmp\(5) & ((\b2v_inst|dht_temp_bl_tmp\(5) & (\b2v_inst|Add4~9\ & VCC)) # (!\b2v_inst|dht_temp_bl_tmp\(5) & (!\b2v_inst|Add4~9\)))) # (!\b2v_inst|dht_temp_bh_tmp\(5) & ((\b2v_inst|dht_temp_bl_tmp\(5) & 
-- (!\b2v_inst|Add4~9\)) # (!\b2v_inst|dht_temp_bl_tmp\(5) & ((\b2v_inst|Add4~9\) # (GND)))))
-- \b2v_inst|Add4~11\ = CARRY((\b2v_inst|dht_temp_bh_tmp\(5) & (!\b2v_inst|dht_temp_bl_tmp\(5) & !\b2v_inst|Add4~9\)) # (!\b2v_inst|dht_temp_bh_tmp\(5) & ((!\b2v_inst|Add4~9\) # (!\b2v_inst|dht_temp_bl_tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bh_tmp\(5),
	datab => \b2v_inst|dht_temp_bl_tmp\(5),
	datad => VCC,
	cin => \b2v_inst|Add4~9\,
	combout => \b2v_inst|Add4~10_combout\,
	cout => \b2v_inst|Add4~11\);

-- Location: LCCOMB_X12_Y15_N24
\b2v_inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~12_combout\ = ((\b2v_inst|dht_temp_bl_tmp\(6) $ (\b2v_inst|dht_temp_bh_tmp\(6) $ (!\b2v_inst|Add4~11\)))) # (GND)
-- \b2v_inst|Add4~13\ = CARRY((\b2v_inst|dht_temp_bl_tmp\(6) & ((\b2v_inst|dht_temp_bh_tmp\(6)) # (!\b2v_inst|Add4~11\))) # (!\b2v_inst|dht_temp_bl_tmp\(6) & (\b2v_inst|dht_temp_bh_tmp\(6) & !\b2v_inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bl_tmp\(6),
	datab => \b2v_inst|dht_temp_bh_tmp\(6),
	datad => VCC,
	cin => \b2v_inst|Add4~11\,
	combout => \b2v_inst|Add4~12_combout\,
	cout => \b2v_inst|Add4~13\);

-- Location: LCCOMB_X11_Y15_N10
\b2v_inst|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~8_combout\ = ((\b2v_inst|Add3~8_combout\ $ (\b2v_inst|Add4~8_combout\ $ (!\b2v_inst|Add5~7\)))) # (GND)
-- \b2v_inst|Add5~9\ = CARRY((\b2v_inst|Add3~8_combout\ & ((\b2v_inst|Add4~8_combout\) # (!\b2v_inst|Add5~7\))) # (!\b2v_inst|Add3~8_combout\ & (\b2v_inst|Add4~8_combout\ & !\b2v_inst|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~8_combout\,
	datab => \b2v_inst|Add4~8_combout\,
	datad => VCC,
	cin => \b2v_inst|Add5~7\,
	combout => \b2v_inst|Add5~8_combout\,
	cout => \b2v_inst|Add5~9\);

-- Location: LCCOMB_X11_Y15_N12
\b2v_inst|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~10_combout\ = (\b2v_inst|Add3~10_combout\ & ((\b2v_inst|Add4~10_combout\ & (\b2v_inst|Add5~9\ & VCC)) # (!\b2v_inst|Add4~10_combout\ & (!\b2v_inst|Add5~9\)))) # (!\b2v_inst|Add3~10_combout\ & ((\b2v_inst|Add4~10_combout\ & 
-- (!\b2v_inst|Add5~9\)) # (!\b2v_inst|Add4~10_combout\ & ((\b2v_inst|Add5~9\) # (GND)))))
-- \b2v_inst|Add5~11\ = CARRY((\b2v_inst|Add3~10_combout\ & (!\b2v_inst|Add4~10_combout\ & !\b2v_inst|Add5~9\)) # (!\b2v_inst|Add3~10_combout\ & ((!\b2v_inst|Add5~9\) # (!\b2v_inst|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~10_combout\,
	datab => \b2v_inst|Add4~10_combout\,
	datad => VCC,
	cin => \b2v_inst|Add5~9\,
	combout => \b2v_inst|Add5~10_combout\,
	cout => \b2v_inst|Add5~11\);

-- Location: LCCOMB_X11_Y15_N14
\b2v_inst|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~12_combout\ = ((\b2v_inst|Add3~12_combout\ $ (\b2v_inst|Add4~12_combout\ $ (!\b2v_inst|Add5~11\)))) # (GND)
-- \b2v_inst|Add5~13\ = CARRY((\b2v_inst|Add3~12_combout\ & ((\b2v_inst|Add4~12_combout\) # (!\b2v_inst|Add5~11\))) # (!\b2v_inst|Add3~12_combout\ & (\b2v_inst|Add4~12_combout\ & !\b2v_inst|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~12_combout\,
	datab => \b2v_inst|Add4~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add5~11\,
	combout => \b2v_inst|Add5~12_combout\,
	cout => \b2v_inst|Add5~13\);

-- Location: LCCOMB_X14_Y15_N2
\b2v_inst|tmp[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[6]~30_combout\ = (\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|Decoder0~14_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~14_combout\ & ((\b2v_inst|tmp\(6)))))) # (!\b2v_inst|Decoder0~19_combout\ & (((\b2v_inst|tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~19_combout\,
	datac => \b2v_inst|tmp\(6),
	datad => \b2v_inst|Decoder0~14_combout\,
	combout => \b2v_inst|tmp[6]~30_combout\);

-- Location: FF_X14_Y15_N3
\b2v_inst|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[6]~30_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(6));

-- Location: FF_X11_Y15_N29
\b2v_inst|check_sum_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(6),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(6));

-- Location: LCCOMB_X14_Y15_N12
\b2v_inst|tmp[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[31]~37_combout\ = (\b2v_inst|Decoder0~11_combout\ & ((\b2v_inst|Equal5~2_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Equal5~2_combout\ & ((\b2v_inst|tmp\(31)))))) # (!\b2v_inst|Decoder0~11_combout\ & (((\b2v_inst|tmp\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~11_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(31),
	datad => \b2v_inst|Equal5~2_combout\,
	combout => \b2v_inst|tmp[31]~37_combout\);

-- Location: FF_X14_Y15_N13
\b2v_inst|tmp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[31]~37_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(31));

-- Location: FF_X10_Y15_N15
\b2v_inst|dht_humi_bl_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(31),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bl_tmp\(7));

-- Location: LCCOMB_X13_Y15_N26
\b2v_inst|tmp[39]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[39]~36_combout\ = (\b2v_inst|Equal5~2_combout\ & ((\b2v_inst|Decoder0~9_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~9_combout\ & ((\b2v_inst|tmp\(39)))))) # (!\b2v_inst|Equal5~2_combout\ & (((\b2v_inst|tmp\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Equal5~2_combout\,
	datac => \b2v_inst|tmp\(39),
	datad => \b2v_inst|Decoder0~9_combout\,
	combout => \b2v_inst|tmp[39]~36_combout\);

-- Location: FF_X13_Y15_N27
\b2v_inst|tmp[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[39]~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(39));

-- Location: FF_X10_Y15_N9
\b2v_inst|dht_humi_bh_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(39),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_bh_tmp\(7));

-- Location: LCCOMB_X10_Y15_N14
\b2v_inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~14_combout\ = \b2v_inst|dht_humi_bl_tmp\(7) $ (\b2v_inst|Add3~13\ $ (\b2v_inst|dht_humi_bh_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|dht_humi_bl_tmp\(7),
	datad => \b2v_inst|dht_humi_bh_tmp\(7),
	cin => \b2v_inst|Add3~13\,
	combout => \b2v_inst|Add3~14_combout\);

-- Location: LCCOMB_X14_Y15_N22
\b2v_inst|tmp[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[15]~33_combout\ = (\b2v_inst|Equal5~2_combout\ & ((\b2v_inst|Decoder0~8_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~8_combout\ & ((\b2v_inst|tmp\(15)))))) # (!\b2v_inst|Equal5~2_combout\ & (((\b2v_inst|tmp\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Equal5~2_combout\,
	datac => \b2v_inst|tmp\(15),
	datad => \b2v_inst|Decoder0~8_combout\,
	combout => \b2v_inst|tmp[15]~33_combout\);

-- Location: FF_X14_Y15_N23
\b2v_inst|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[15]~33_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(15));

-- Location: FF_X12_Y15_N27
\b2v_inst|dht_temp_bl_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(15),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bl_tmp\(7));

-- Location: LCCOMB_X13_Y15_N0
\b2v_inst|tmp[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[23]~32_combout\ = (\b2v_inst|Equal5~2_combout\ & ((\b2v_inst|Decoder0~6_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~6_combout\ & ((\b2v_inst|tmp\(23)))))) # (!\b2v_inst|Equal5~2_combout\ & (((\b2v_inst|tmp\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Equal5~2_combout\,
	datac => \b2v_inst|tmp\(23),
	datad => \b2v_inst|Decoder0~6_combout\,
	combout => \b2v_inst|tmp[23]~32_combout\);

-- Location: FF_X13_Y15_N1
\b2v_inst|tmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[23]~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(23));

-- Location: FF_X12_Y15_N21
\b2v_inst|dht_temp_bh_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(23),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_bh_tmp\(7));

-- Location: LCCOMB_X12_Y15_N26
\b2v_inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~14_combout\ = \b2v_inst|dht_temp_bl_tmp\(7) $ (\b2v_inst|Add4~13\ $ (\b2v_inst|dht_temp_bh_tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_bl_tmp\(7),
	datad => \b2v_inst|dht_temp_bh_tmp\(7),
	cin => \b2v_inst|Add4~13\,
	combout => \b2v_inst|Add4~14_combout\);

-- Location: LCCOMB_X11_Y15_N16
\b2v_inst|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Add5~14_combout\ = \b2v_inst|Add3~14_combout\ $ (\b2v_inst|Add5~13\ $ (\b2v_inst|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~14_combout\,
	datad => \b2v_inst|Add4~14_combout\,
	cin => \b2v_inst|Add5~13\,
	combout => \b2v_inst|Add5~14_combout\);

-- Location: LCCOMB_X11_Y15_N28
\b2v_inst|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal6~3_combout\ = (\b2v_inst|check_sum_tmp\(7) & (\b2v_inst|Add5~14_combout\ & (\b2v_inst|Add5~12_combout\ $ (!\b2v_inst|check_sum_tmp\(6))))) # (!\b2v_inst|check_sum_tmp\(7) & (!\b2v_inst|Add5~14_combout\ & (\b2v_inst|Add5~12_combout\ $ 
-- (!\b2v_inst|check_sum_tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|check_sum_tmp\(7),
	datab => \b2v_inst|Add5~12_combout\,
	datac => \b2v_inst|check_sum_tmp\(6),
	datad => \b2v_inst|Add5~14_combout\,
	combout => \b2v_inst|Equal6~3_combout\);

-- Location: LCCOMB_X13_Y15_N24
\b2v_inst|tmp[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[5]~21_combout\ = (\b2v_inst|Decoder0~4_combout\ & ((\b2v_inst|Decoder0~19_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~19_combout\ & ((\b2v_inst|tmp\(5)))))) # (!\b2v_inst|Decoder0~4_combout\ & (((\b2v_inst|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Decoder0~4_combout\,
	datab => \b2v_inst|tmp_data~q\,
	datac => \b2v_inst|tmp\(5),
	datad => \b2v_inst|Decoder0~19_combout\,
	combout => \b2v_inst|tmp[5]~21_combout\);

-- Location: FF_X13_Y15_N25
\b2v_inst|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[5]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(5));

-- Location: LCCOMB_X11_Y15_N30
\b2v_inst|check_sum_tmp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|check_sum_tmp[5]~feeder_combout\ = \b2v_inst|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|tmp\(5),
	combout => \b2v_inst|check_sum_tmp[5]~feeder_combout\);

-- Location: FF_X11_Y15_N31
\b2v_inst|check_sum_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|check_sum_tmp[5]~feeder_combout\,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(5));

-- Location: LCCOMB_X14_Y15_N20
\b2v_inst|tmp[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|tmp[4]~20_combout\ = (\b2v_inst|Decoder0~15_combout\ & ((\b2v_inst|Decoder0~14_combout\ & (\b2v_inst|tmp_data~q\)) # (!\b2v_inst|Decoder0~14_combout\ & ((\b2v_inst|tmp\(4)))))) # (!\b2v_inst|Decoder0~15_combout\ & (((\b2v_inst|tmp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|tmp_data~q\,
	datab => \b2v_inst|Decoder0~15_combout\,
	datac => \b2v_inst|tmp\(4),
	datad => \b2v_inst|Decoder0~14_combout\,
	combout => \b2v_inst|tmp[4]~20_combout\);

-- Location: FF_X14_Y15_N21
\b2v_inst|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|tmp[4]~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|tmp\(4));

-- Location: FF_X11_Y15_N21
\b2v_inst|check_sum_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|tmp\(4),
	sload => VCC,
	ena => \b2v_inst|dht_temp_bh_tmp[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_tmp\(4));

-- Location: LCCOMB_X11_Y15_N20
\b2v_inst|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal6~2_combout\ = (\b2v_inst|Add5~8_combout\ & (\b2v_inst|check_sum_tmp\(4) & (\b2v_inst|check_sum_tmp\(5) $ (!\b2v_inst|Add5~10_combout\)))) # (!\b2v_inst|Add5~8_combout\ & (!\b2v_inst|check_sum_tmp\(4) & (\b2v_inst|check_sum_tmp\(5) $ 
-- (!\b2v_inst|Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add5~8_combout\,
	datab => \b2v_inst|check_sum_tmp\(5),
	datac => \b2v_inst|check_sum_tmp\(4),
	datad => \b2v_inst|Add5~10_combout\,
	combout => \b2v_inst|Equal6~2_combout\);

-- Location: LCCOMB_X11_Y15_N24
\b2v_inst|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal6~4_combout\ = (\b2v_inst|Equal6~1_combout\ & (\b2v_inst|Equal6~0_combout\ & (\b2v_inst|Equal6~3_combout\ & \b2v_inst|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal6~1_combout\,
	datab => \b2v_inst|Equal6~0_combout\,
	datac => \b2v_inst|Equal6~3_combout\,
	datad => \b2v_inst|Equal6~2_combout\,
	combout => \b2v_inst|Equal6~4_combout\);

-- Location: LCCOMB_X12_Y17_N20
\b2v_inst|check_sum_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|check_sum_led~0_combout\ = (\b2v_inst|state.check~q\ & ((\reset~input_o\ & (!\b2v_inst|Equal6~4_combout\)) # (!\reset~input_o\ & ((\b2v_inst|check_sum_led~q\))))) # (!\b2v_inst|state.check~q\ & (((\b2v_inst|check_sum_led~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.check~q\,
	datab => \b2v_inst|Equal6~4_combout\,
	datac => \b2v_inst|check_sum_led~q\,
	datad => \reset~input_o\,
	combout => \b2v_inst|check_sum_led~0_combout\);

-- Location: FF_X12_Y17_N21
\b2v_inst|check_sum_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|check_sum_led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|check_sum_led~q\);

-- Location: LCCOMB_X11_Y18_N20
\b2v_inst5|Selector40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~6_combout\ = (\b2v_inst5|lcd_state.lcd_data_l0~q\ & !\b2v_inst5|lcd_state.lcd_data_l1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datab => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	combout => \b2v_inst5|Selector40~6_combout\);

-- Location: LCCOMB_X11_Y17_N16
\b2v_inst5|Selector40~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~10_combout\ = (\b2v_inst5|ptr\(3) & (\b2v_inst5|ptr\(2) & (!\b2v_inst5|ptr\(1) & !\b2v_inst5|ptr\(0)))) # (!\b2v_inst5|ptr\(3) & (!\b2v_inst5|ptr\(2) & (\b2v_inst5|ptr\(1) $ (\b2v_inst5|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector40~10_combout\);

-- Location: LCCOMB_X12_Y17_N26
\b2v_inst|dht_temp_integral[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_integral[7]~0_combout\ = (\b2v_inst|Equal6~4_combout\ & (\b2v_inst|state.check~q\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal6~4_combout\,
	datab => \b2v_inst|state.check~q\,
	datad => \reset~input_o\,
	combout => \b2v_inst|dht_temp_integral[7]~0_combout\);

-- Location: FF_X12_Y17_N27
\b2v_inst|dht_temp_decimal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(0),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(0));

-- Location: LCCOMB_X11_Y17_N22
\b2v_inst5|Selector40~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~7_combout\ = (!\b2v_inst5|ptr\(0) & \b2v_inst|dht_temp_decimal\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(0),
	datad => \b2v_inst|dht_temp_decimal\(0),
	combout => \b2v_inst5|Selector40~7_combout\);

-- Location: FF_X11_Y17_N9
\b2v_inst|dht_temp_integral[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(0),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(0));

-- Location: LCCOMB_X11_Y17_N4
\b2v_inst5|lcd_data_temp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_data_temp[0]~3_combout\ = (\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(1)) # (!\b2v_inst5|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|lcd_data_temp[0]~3_combout\);

-- Location: LCCOMB_X11_Y17_N2
\b2v_inst5|lcd_data_temp[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_data_temp[0]~4_combout\ = (\b2v_inst5|ptr\(3) & (\b2v_inst5|ptr\(1))) # (!\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|lcd_data_temp[0]~4_combout\);

-- Location: FF_X12_Y16_N23
\b2v_inst|dht_temp_integral[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(3),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(3));

-- Location: FF_X12_Y16_N25
\b2v_inst|dht_temp_integral[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(5),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(5));

-- Location: FF_X12_Y16_N31
\b2v_inst|dht_temp_integral[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(4),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(4));

-- Location: FF_X12_Y16_N21
\b2v_inst|dht_temp_integral[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(7),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(7));

-- Location: FF_X11_Y16_N21
\b2v_inst|dht_temp_integral[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(6),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(6));

-- Location: LCCOMB_X12_Y16_N20
\b2v_inst6|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~3_combout\ = (\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(6) $ (((!\b2v_inst|dht_temp_integral\(5) & \b2v_inst|dht_temp_integral\(7)))))) # (!\b2v_inst|dht_temp_integral\(4) & ((\b2v_inst|dht_temp_integral\(5) & 
-- ((\b2v_inst|dht_temp_integral\(7)) # (!\b2v_inst|dht_temp_integral\(6)))) # (!\b2v_inst|dht_temp_integral\(5) & ((\b2v_inst|dht_temp_integral\(6)) # (!\b2v_inst|dht_temp_integral\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(5),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(7),
	datad => \b2v_inst|dht_temp_integral\(6),
	combout => \b2v_inst6|tmp~3_combout\);

-- Location: LCCOMB_X12_Y16_N30
\b2v_inst6|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~2_combout\ = (\b2v_inst|dht_temp_integral\(4) & (!\b2v_inst|dht_temp_integral\(5) & (\b2v_inst|dht_temp_integral\(7) & !\b2v_inst|dht_temp_integral\(6)))) # (!\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(6) & 
-- (\b2v_inst|dht_temp_integral\(5) $ (!\b2v_inst|dht_temp_integral\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(5),
	datab => \b2v_inst|dht_temp_integral\(7),
	datac => \b2v_inst|dht_temp_integral\(4),
	datad => \b2v_inst|dht_temp_integral\(6),
	combout => \b2v_inst6|tmp~2_combout\);

-- Location: LCCOMB_X12_Y16_N24
\b2v_inst6|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~1_combout\ = (\b2v_inst|dht_temp_integral\(7) & (!\b2v_inst|dht_temp_integral\(5) & ((\b2v_inst|dht_temp_integral\(6)) # (!\b2v_inst|dht_temp_integral\(4))))) # (!\b2v_inst|dht_temp_integral\(7) & (\b2v_inst|dht_temp_integral\(5) & 
-- ((\b2v_inst|dht_temp_integral\(4)) # (!\b2v_inst|dht_temp_integral\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(7),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(5),
	datad => \b2v_inst|dht_temp_integral\(6),
	combout => \b2v_inst6|tmp~1_combout\);

-- Location: LCCOMB_X12_Y16_N8
\b2v_inst6|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~7_combout\ = (\b2v_inst|dht_temp_integral\(3) & (((\b2v_inst6|tmp~2_combout\) # (\b2v_inst6|tmp~1_combout\)))) # (!\b2v_inst|dht_temp_integral\(3) & (!\b2v_inst6|tmp~2_combout\ & ((\b2v_inst6|tmp~3_combout\) # 
-- (!\b2v_inst6|tmp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(3),
	datab => \b2v_inst6|tmp~3_combout\,
	datac => \b2v_inst6|tmp~2_combout\,
	datad => \b2v_inst6|tmp~1_combout\,
	combout => \b2v_inst6|tmp~7_combout\);

-- Location: LCCOMB_X12_Y16_N28
\b2v_inst6|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~5_combout\ = (\b2v_inst|dht_temp_integral\(3) & (((!\b2v_inst6|tmp~3_combout\)))) # (!\b2v_inst|dht_temp_integral\(3) & ((\b2v_inst6|tmp~2_combout\ & ((\b2v_inst6|tmp~3_combout\))) # (!\b2v_inst6|tmp~2_combout\ & (!\b2v_inst6|tmp~1_combout\ 
-- & !\b2v_inst6|tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(3),
	datab => \b2v_inst6|tmp~1_combout\,
	datac => \b2v_inst6|tmp~2_combout\,
	datad => \b2v_inst6|tmp~3_combout\,
	combout => \b2v_inst6|tmp~5_combout\);

-- Location: LCCOMB_X12_Y16_N22
\b2v_inst6|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~6_combout\ = (\b2v_inst6|tmp~1_combout\ & (((\b2v_inst6|tmp~3_combout\ & !\b2v_inst|dht_temp_integral\(3))))) # (!\b2v_inst6|tmp~1_combout\ & (\b2v_inst6|tmp~2_combout\ & ((\b2v_inst|dht_temp_integral\(3)) # (!\b2v_inst6|tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~2_combout\,
	datab => \b2v_inst6|tmp~3_combout\,
	datac => \b2v_inst|dht_temp_integral\(3),
	datad => \b2v_inst6|tmp~1_combout\,
	combout => \b2v_inst6|tmp~6_combout\);

-- Location: FF_X12_Y16_N15
\b2v_inst|dht_temp_integral[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(2),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(2));

-- Location: LCCOMB_X12_Y16_N12
\b2v_inst6|tmp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~10_combout\ = (\b2v_inst6|tmp~5_combout\ & ((\b2v_inst|dht_temp_integral\(2)) # ((\b2v_inst6|tmp~7_combout\ & !\b2v_inst6|tmp~6_combout\)))) # (!\b2v_inst6|tmp~5_combout\ & ((\b2v_inst6|tmp~6_combout\ $ (!\b2v_inst|dht_temp_integral\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~7_combout\,
	datab => \b2v_inst6|tmp~5_combout\,
	datac => \b2v_inst6|tmp~6_combout\,
	datad => \b2v_inst|dht_temp_integral\(2),
	combout => \b2v_inst6|tmp~10_combout\);

-- Location: LCCOMB_X12_Y16_N2
\b2v_inst6|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~8_combout\ = (\b2v_inst6|tmp~7_combout\ & (((\b2v_inst6|tmp~6_combout\ & !\b2v_inst|dht_temp_integral\(2))))) # (!\b2v_inst6|tmp~7_combout\ & ((\b2v_inst|dht_temp_integral\(2)) # ((!\b2v_inst6|tmp~5_combout\ & !\b2v_inst6|tmp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~7_combout\,
	datab => \b2v_inst6|tmp~5_combout\,
	datac => \b2v_inst6|tmp~6_combout\,
	datad => \b2v_inst|dht_temp_integral\(2),
	combout => \b2v_inst6|tmp~8_combout\);

-- Location: FF_X12_Y16_N5
\b2v_inst|dht_temp_integral[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bh_tmp\(1),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_integral\(1));

-- Location: LCCOMB_X12_Y16_N18
\b2v_inst6|tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~9_combout\ = (\b2v_inst6|tmp~5_combout\ & (\b2v_inst6|tmp~7_combout\ & ((!\b2v_inst|dht_temp_integral\(2))))) # (!\b2v_inst6|tmp~5_combout\ & (\b2v_inst6|tmp~6_combout\ & ((\b2v_inst|dht_temp_integral\(2)) # (!\b2v_inst6|tmp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~7_combout\,
	datab => \b2v_inst6|tmp~5_combout\,
	datac => \b2v_inst6|tmp~6_combout\,
	datad => \b2v_inst|dht_temp_integral\(2),
	combout => \b2v_inst6|tmp~9_combout\);

-- Location: LCCOMB_X12_Y16_N6
\b2v_inst6|tens[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[0]~10_combout\ = \b2v_inst6|tmp~9_combout\ $ ((((\b2v_inst6|tmp~10_combout\ & !\b2v_inst|dht_temp_integral\(1))) # (!\b2v_inst6|tmp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~10_combout\,
	datab => \b2v_inst6|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_integral\(1),
	datad => \b2v_inst6|tmp~9_combout\,
	combout => \b2v_inst6|tens[0]~10_combout\);

-- Location: LCCOMB_X11_Y16_N10
\b2v_inst6|tmp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~12_combout\ = (\b2v_inst|dht_temp_integral\(6)) # (\b2v_inst|dht_temp_integral\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(6),
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|tmp~12_combout\);

-- Location: LCCOMB_X11_Y16_N20
\b2v_inst6|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~0_combout\ = (\b2v_inst|dht_temp_integral\(7) & ((\b2v_inst|dht_temp_integral\(6) & (\b2v_inst|dht_temp_integral\(4) & \b2v_inst|dht_temp_integral\(5))) # (!\b2v_inst|dht_temp_integral\(6) & ((!\b2v_inst|dht_temp_integral\(5)))))) # 
-- (!\b2v_inst|dht_temp_integral\(7) & (\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(4)) # (\b2v_inst|dht_temp_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(7),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(6),
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|tmp~0_combout\);

-- Location: LCCOMB_X11_Y16_N24
\b2v_inst6|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|LessThan4~0_combout\ = (\b2v_inst|dht_temp_integral\(7) & \b2v_inst|dht_temp_integral\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(7),
	datac => \b2v_inst|dht_temp_integral\(6),
	combout => \b2v_inst6|LessThan4~0_combout\);

-- Location: LCCOMB_X11_Y16_N6
\b2v_inst6|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|LessThan4~1_combout\ = (\b2v_inst6|LessThan4~0_combout\ & ((\b2v_inst|dht_temp_integral\(4)) # ((\b2v_inst|dht_temp_integral\(3)) # (\b2v_inst|dht_temp_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(4),
	datab => \b2v_inst|dht_temp_integral\(3),
	datac => \b2v_inst6|LessThan4~0_combout\,
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|LessThan4~1_combout\);

-- Location: LCCOMB_X12_Y16_N14
\b2v_inst6|tmp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~14_combout\ = \b2v_inst6|tmp~6_combout\ $ ((((\b2v_inst6|tmp~7_combout\ & !\b2v_inst|dht_temp_integral\(2))) # (!\b2v_inst6|tmp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~6_combout\,
	datab => \b2v_inst6|tmp~7_combout\,
	datac => \b2v_inst|dht_temp_integral\(2),
	datad => \b2v_inst6|tmp~5_combout\,
	combout => \b2v_inst6|tmp~14_combout\);

-- Location: LCCOMB_X12_Y16_N10
\b2v_inst6|tmp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~13_combout\ = \b2v_inst6|tmp~2_combout\ $ ((((!\b2v_inst|dht_temp_integral\(3) & \b2v_inst6|tmp~3_combout\)) # (!\b2v_inst6|tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(3),
	datab => \b2v_inst6|tmp~3_combout\,
	datac => \b2v_inst6|tmp~2_combout\,
	datad => \b2v_inst6|tmp~1_combout\,
	combout => \b2v_inst6|tmp~13_combout\);

-- Location: LCCOMB_X11_Y16_N8
\b2v_inst6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add6~0_combout\ = (\b2v_inst6|LessThan4~1_combout\ $ (!\b2v_inst6|tmp~13_combout\)) # (!\b2v_inst6|tmp~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|LessThan4~1_combout\,
	datab => \b2v_inst6|tmp~14_combout\,
	datac => \b2v_inst6|tmp~13_combout\,
	combout => \b2v_inst6|Add6~0_combout\);

-- Location: LCCOMB_X11_Y16_N18
\b2v_inst6|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~4_combout\ = (\b2v_inst|dht_temp_integral\(7) & (\b2v_inst6|tmp~13_combout\ & ((\b2v_inst|dht_temp_integral\(5)) # (\b2v_inst|dht_temp_integral\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(7),
	datab => \b2v_inst|dht_temp_integral\(5),
	datac => \b2v_inst6|tmp~13_combout\,
	datad => \b2v_inst|dht_temp_integral\(6),
	combout => \b2v_inst6|tmp~4_combout\);

-- Location: LCCOMB_X11_Y16_N2
\b2v_inst6|hundreds[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|hundreds[0]~0_combout\ = (\b2v_inst6|tmp~0_combout\ & (((\b2v_inst6|tmp~12_combout\ & \b2v_inst6|tmp~4_combout\)) # (!\b2v_inst6|Add6~0_combout\))) # (!\b2v_inst6|tmp~0_combout\ & (((!\b2v_inst6|tmp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~12_combout\,
	datab => \b2v_inst6|tmp~0_combout\,
	datac => \b2v_inst6|Add6~0_combout\,
	datad => \b2v_inst6|tmp~4_combout\,
	combout => \b2v_inst6|hundreds[0]~0_combout\);

-- Location: LCCOMB_X11_Y17_N12
\b2v_inst5|Selector40~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~8_combout\ = (\b2v_inst5|ptr\(3) & (\b2v_inst5|lcd_data_temp[0]~4_combout\)) # (!\b2v_inst5|ptr\(3) & ((\b2v_inst5|lcd_data_temp[0]~4_combout\ & (!\b2v_inst6|tens[0]~10_combout\)) # (!\b2v_inst5|lcd_data_temp[0]~4_combout\ & 
-- ((!\b2v_inst6|hundreds[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|lcd_data_temp[0]~4_combout\,
	datac => \b2v_inst6|tens[0]~10_combout\,
	datad => \b2v_inst6|hundreds[0]~0_combout\,
	combout => \b2v_inst5|Selector40~8_combout\);

-- Location: LCCOMB_X11_Y17_N18
\b2v_inst5|Selector40~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~9_combout\ = (\b2v_inst5|lcd_data_temp[0]~3_combout\ & ((\b2v_inst5|Selector40~8_combout\ & (\b2v_inst5|Selector40~7_combout\)) # (!\b2v_inst5|Selector40~8_combout\ & ((\b2v_inst|dht_temp_integral\(0)))))) # 
-- (!\b2v_inst5|lcd_data_temp[0]~3_combout\ & (((\b2v_inst5|Selector40~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector40~7_combout\,
	datab => \b2v_inst|dht_temp_integral\(0),
	datac => \b2v_inst5|lcd_data_temp[0]~3_combout\,
	datad => \b2v_inst5|Selector40~8_combout\,
	combout => \b2v_inst5|Selector40~9_combout\);

-- Location: LCCOMB_X11_Y17_N30
\b2v_inst5|Selector40~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~13_combout\ = (\b2v_inst5|Selector40~9_combout\ & ((\b2v_inst5|ptr\(3) & (!\b2v_inst5|ptr\(2))) # (!\b2v_inst5|ptr\(3) & (\b2v_inst5|ptr\(2) & \b2v_inst5|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|Selector40~9_combout\,
	combout => \b2v_inst5|Selector40~13_combout\);

-- Location: LCCOMB_X12_Y18_N10
\b2v_inst5|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~1_combout\ = (\b2v_inst5|lcd_state.lcd_data_l1~q\ & (((!\b2v_inst5|ptr\(3) & \b2v_inst5|ptr\(1))) # (!\b2v_inst5|ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|ptr\(1),
	combout => \b2v_inst5|Selector39~1_combout\);

-- Location: LCCOMB_X9_Y18_N18
\b2v_inst5|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~0_combout\ = (!\b2v_inst5|lcd_state.lcd_data_l1~q\ & (!\b2v_inst5|lcd_state.lcd_add_l0~q\ & (!\b2v_inst5|lcd_state.lcd_data_l0~q\ & !\b2v_inst5|lcd_state.lcd_add_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datab => \b2v_inst5|lcd_state.lcd_add_l0~q\,
	datac => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datad => \b2v_inst5|lcd_state.lcd_add_11~q\,
	combout => \b2v_inst5|Selector39~0_combout\);

-- Location: LCCOMB_X8_Y18_N16
\b2v_inst5|cmd_ptr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|cmd_ptr~0_combout\ = (\b2v_inst5|cmd_ptr\(1) & \b2v_inst5|cmd_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cmd_ptr\(1),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|cmd_ptr~0_combout\);

-- Location: LCCOMB_X11_Y18_N2
\b2v_inst|dht_humi_decimal[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_decimal[0]~feeder_combout\ = \b2v_inst|dht_humi_bl_tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|dht_humi_bl_tmp\(0),
	combout => \b2v_inst|dht_humi_decimal[0]~feeder_combout\);

-- Location: FF_X11_Y18_N3
\b2v_inst|dht_humi_decimal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_decimal[0]~feeder_combout\,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(0));

-- Location: LCCOMB_X12_Y18_N20
\b2v_inst5|lcd_data_temp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_data_temp[0]~2_combout\ = (\b2v_inst5|ptr\(2) & ((\b2v_inst5|ptr\(0)))) # (!\b2v_inst5|ptr\(2) & (\b2v_inst5|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(2),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|lcd_data_temp[0]~2_combout\);

-- Location: LCCOMB_X12_Y18_N22
\b2v_inst5|lcd_data_temp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_data_temp[0]~1_combout\ = (!\b2v_inst5|ptr\(2) & (((\b2v_inst5|ptr\(3) & !\b2v_inst5|ptr\(0))) # (!\b2v_inst5|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|ptr\(3),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|lcd_data_temp[0]~1_combout\);

-- Location: FF_X11_Y18_N21
\b2v_inst|dht_humi_integral[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bh_tmp\(0),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(0));

-- Location: LCCOMB_X12_Y18_N0
\b2v_inst5|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~2_combout\ = (\b2v_inst5|ptr\(3) & (\b2v_inst|dht_humi_integral\(0) & !\b2v_inst5|ptr\(0))) # (!\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|dht_humi_integral\(0),
	datac => \b2v_inst5|ptr\(3),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector40~2_combout\);

-- Location: LCCOMB_X12_Y18_N26
\b2v_inst5|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~3_combout\ = (\b2v_inst5|lcd_data_temp[0]~2_combout\ & ((\b2v_inst|dht_humi_decimal\(0)) # ((!\b2v_inst5|lcd_data_temp[0]~1_combout\)))) # (!\b2v_inst5|lcd_data_temp[0]~2_combout\ & (((\b2v_inst5|lcd_data_temp[0]~1_combout\ & 
-- \b2v_inst5|Selector40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_decimal\(0),
	datab => \b2v_inst5|lcd_data_temp[0]~2_combout\,
	datac => \b2v_inst5|lcd_data_temp[0]~1_combout\,
	datad => \b2v_inst5|Selector40~2_combout\,
	combout => \b2v_inst5|Selector40~3_combout\);

-- Location: FF_X12_Y19_N27
\b2v_inst|dht_humi_integral[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bh_tmp\(4),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(4));

-- Location: FF_X12_Y19_N19
\b2v_inst|dht_humi_integral[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bh_tmp\(6),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(6));

-- Location: FF_X12_Y19_N25
\b2v_inst|dht_humi_integral[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bh_tmp\(7),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(7));

-- Location: FF_X12_Y19_N21
\b2v_inst|dht_humi_integral[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bh_tmp\(5),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(5));

-- Location: LCCOMB_X12_Y19_N4
\b2v_inst7|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~2_combout\ = (\b2v_inst|dht_humi_integral\(7) & (!\b2v_inst|dht_humi_integral\(5) & ((\b2v_inst|dht_humi_integral\(6)) # (!\b2v_inst|dht_humi_integral\(4))))) # (!\b2v_inst|dht_humi_integral\(7) & (\b2v_inst|dht_humi_integral\(5) & 
-- ((\b2v_inst|dht_humi_integral\(4)) # (!\b2v_inst|dht_humi_integral\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(6),
	datac => \b2v_inst|dht_humi_integral\(7),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tmp~2_combout\);

-- Location: LCCOMB_X12_Y19_N28
\b2v_inst7|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~0_combout\ = (\b2v_inst|dht_humi_integral\(4) & (!\b2v_inst|dht_humi_integral\(6) & (\b2v_inst|dht_humi_integral\(7) & !\b2v_inst|dht_humi_integral\(5)))) # (!\b2v_inst|dht_humi_integral\(4) & (\b2v_inst|dht_humi_integral\(6) & 
-- (\b2v_inst|dht_humi_integral\(7) $ (!\b2v_inst|dht_humi_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(6),
	datac => \b2v_inst|dht_humi_integral\(7),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tmp~0_combout\);

-- Location: LCCOMB_X12_Y19_N10
\b2v_inst7|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~1_combout\ = (\b2v_inst|dht_humi_integral\(4) & (\b2v_inst|dht_humi_integral\(6) $ (((\b2v_inst|dht_humi_integral\(7) & !\b2v_inst|dht_humi_integral\(5)))))) # (!\b2v_inst|dht_humi_integral\(4) & ((\b2v_inst|dht_humi_integral\(6) & 
-- ((\b2v_inst|dht_humi_integral\(7)) # (!\b2v_inst|dht_humi_integral\(5)))) # (!\b2v_inst|dht_humi_integral\(6) & ((\b2v_inst|dht_humi_integral\(5)) # (!\b2v_inst|dht_humi_integral\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(6),
	datac => \b2v_inst|dht_humi_integral\(7),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tmp~1_combout\);

-- Location: LCCOMB_X11_Y19_N24
\b2v_inst|dht_humi_integral[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_integral[3]~feeder_combout\ = \b2v_inst|dht_humi_bh_tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|dht_humi_bh_tmp\(3),
	combout => \b2v_inst|dht_humi_integral[3]~feeder_combout\);

-- Location: FF_X11_Y19_N25
\b2v_inst|dht_humi_integral[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_integral[3]~feeder_combout\,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(3));

-- Location: LCCOMB_X11_Y19_N12
\b2v_inst7|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~4_combout\ = (\b2v_inst7|tmp~0_combout\ & ((\b2v_inst7|tmp~1_combout\ $ (\b2v_inst|dht_humi_integral\(3))))) # (!\b2v_inst7|tmp~0_combout\ & (!\b2v_inst7|tmp~1_combout\ & ((\b2v_inst|dht_humi_integral\(3)) # (!\b2v_inst7|tmp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~2_combout\,
	datab => \b2v_inst7|tmp~0_combout\,
	datac => \b2v_inst7|tmp~1_combout\,
	datad => \b2v_inst|dht_humi_integral\(3),
	combout => \b2v_inst7|tmp~4_combout\);

-- Location: LCCOMB_X11_Y19_N20
\b2v_inst7|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~5_combout\ = (\b2v_inst7|tmp~2_combout\ & ((\b2v_inst|dht_humi_integral\(3)) # ((!\b2v_inst7|tmp~0_combout\ & \b2v_inst7|tmp~1_combout\)))) # (!\b2v_inst7|tmp~2_combout\ & (\b2v_inst7|tmp~0_combout\ $ 
-- (((!\b2v_inst|dht_humi_integral\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~2_combout\,
	datab => \b2v_inst7|tmp~0_combout\,
	datac => \b2v_inst7|tmp~1_combout\,
	datad => \b2v_inst|dht_humi_integral\(3),
	combout => \b2v_inst7|tmp~5_combout\);

-- Location: FF_X11_Y19_N23
\b2v_inst|dht_humi_integral[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bh_tmp\(2),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(2));

-- Location: LCCOMB_X11_Y19_N18
\b2v_inst7|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~3_combout\ = (\b2v_inst7|tmp~2_combout\ & (((\b2v_inst7|tmp~1_combout\ & !\b2v_inst|dht_humi_integral\(3))))) # (!\b2v_inst7|tmp~2_combout\ & (\b2v_inst7|tmp~0_combout\ & ((\b2v_inst|dht_humi_integral\(3)) # (!\b2v_inst7|tmp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~2_combout\,
	datab => \b2v_inst7|tmp~0_combout\,
	datac => \b2v_inst7|tmp~1_combout\,
	datad => \b2v_inst|dht_humi_integral\(3),
	combout => \b2v_inst7|tmp~3_combout\);

-- Location: LCCOMB_X11_Y19_N10
\b2v_inst7|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~8_combout\ = (\b2v_inst7|tmp~4_combout\ & ((\b2v_inst|dht_humi_integral\(2)) # ((\b2v_inst7|tmp~5_combout\ & !\b2v_inst7|tmp~3_combout\)))) # (!\b2v_inst7|tmp~4_combout\ & ((\b2v_inst|dht_humi_integral\(2) $ (!\b2v_inst7|tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~4_combout\,
	datab => \b2v_inst7|tmp~5_combout\,
	datac => \b2v_inst|dht_humi_integral\(2),
	datad => \b2v_inst7|tmp~3_combout\,
	combout => \b2v_inst7|tmp~8_combout\);

-- Location: LCCOMB_X11_Y18_N0
\b2v_inst|dht_humi_integral[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_integral[1]~feeder_combout\ = \b2v_inst|dht_humi_bh_tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|dht_humi_bh_tmp\(1),
	combout => \b2v_inst|dht_humi_integral[1]~feeder_combout\);

-- Location: FF_X11_Y18_N1
\b2v_inst|dht_humi_integral[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_integral[1]~feeder_combout\,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_integral\(1));

-- Location: LCCOMB_X11_Y19_N26
\b2v_inst7|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~6_combout\ = (\b2v_inst7|tmp~5_combout\ & (((!\b2v_inst|dht_humi_integral\(2) & \b2v_inst7|tmp~3_combout\)))) # (!\b2v_inst7|tmp~5_combout\ & ((\b2v_inst|dht_humi_integral\(2)) # ((!\b2v_inst7|tmp~4_combout\ & !\b2v_inst7|tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~4_combout\,
	datab => \b2v_inst7|tmp~5_combout\,
	datac => \b2v_inst|dht_humi_integral\(2),
	datad => \b2v_inst7|tmp~3_combout\,
	combout => \b2v_inst7|tmp~6_combout\);

-- Location: LCCOMB_X11_Y19_N16
\b2v_inst7|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~7_combout\ = (\b2v_inst7|tmp~4_combout\ & (\b2v_inst7|tmp~5_combout\ & (!\b2v_inst|dht_humi_integral\(2)))) # (!\b2v_inst7|tmp~4_combout\ & (\b2v_inst7|tmp~3_combout\ & ((\b2v_inst|dht_humi_integral\(2)) # (!\b2v_inst7|tmp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~4_combout\,
	datab => \b2v_inst7|tmp~5_combout\,
	datac => \b2v_inst|dht_humi_integral\(2),
	datad => \b2v_inst7|tmp~3_combout\,
	combout => \b2v_inst7|tmp~7_combout\);

-- Location: LCCOMB_X11_Y19_N28
\b2v_inst7|tens[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[0]~10_combout\ = \b2v_inst7|tmp~7_combout\ $ ((((\b2v_inst7|tmp~8_combout\ & !\b2v_inst|dht_humi_integral\(1))) # (!\b2v_inst7|tmp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~8_combout\,
	datab => \b2v_inst|dht_humi_integral\(1),
	datac => \b2v_inst7|tmp~6_combout\,
	datad => \b2v_inst7|tmp~7_combout\,
	combout => \b2v_inst7|tens[0]~10_combout\);

-- Location: LCCOMB_X12_Y19_N18
\b2v_inst7|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|LessThan4~0_combout\ = (\b2v_inst|dht_humi_integral\(6) & \b2v_inst|dht_humi_integral\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|dht_humi_integral\(6),
	datad => \b2v_inst|dht_humi_integral\(7),
	combout => \b2v_inst7|LessThan4~0_combout\);

-- Location: LCCOMB_X12_Y19_N16
\b2v_inst7|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|LessThan4~1_combout\ = (\b2v_inst7|LessThan4~0_combout\ & ((\b2v_inst|dht_humi_integral\(4)) # ((\b2v_inst|dht_humi_integral\(3)) # (\b2v_inst|dht_humi_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(3),
	datac => \b2v_inst7|LessThan4~0_combout\,
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|LessThan4~1_combout\);

-- Location: LCCOMB_X12_Y19_N20
\b2v_inst7|tmp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~13_combout\ = (\b2v_inst|dht_humi_integral\(5)) # (\b2v_inst|dht_humi_integral\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|dht_humi_integral\(5),
	datad => \b2v_inst|dht_humi_integral\(6),
	combout => \b2v_inst7|tmp~13_combout\);

-- Location: LCCOMB_X12_Y19_N26
\b2v_inst7|tmp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~10_combout\ = (\b2v_inst|dht_humi_integral\(6) & ((\b2v_inst|dht_humi_integral\(7) & (\b2v_inst|dht_humi_integral\(4) & \b2v_inst|dht_humi_integral\(5))) # (!\b2v_inst|dht_humi_integral\(7) & ((\b2v_inst|dht_humi_integral\(4)) # 
-- (\b2v_inst|dht_humi_integral\(5)))))) # (!\b2v_inst|dht_humi_integral\(6) & (\b2v_inst|dht_humi_integral\(7) & ((!\b2v_inst|dht_humi_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(6),
	datab => \b2v_inst|dht_humi_integral\(7),
	datac => \b2v_inst|dht_humi_integral\(4),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tmp~10_combout\);

-- Location: LCCOMB_X12_Y19_N2
\b2v_inst7|tmp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~12_combout\ = \b2v_inst7|tmp~0_combout\ $ ((((\b2v_inst7|tmp~1_combout\ & !\b2v_inst|dht_humi_integral\(3))) # (!\b2v_inst7|tmp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~1_combout\,
	datab => \b2v_inst7|tmp~0_combout\,
	datac => \b2v_inst7|tmp~2_combout\,
	datad => \b2v_inst|dht_humi_integral\(3),
	combout => \b2v_inst7|tmp~12_combout\);

-- Location: LCCOMB_X12_Y19_N22
\b2v_inst7|tmp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~11_combout\ = (\b2v_inst7|tmp~10_combout\ & (((!\b2v_inst|dht_humi_integral\(7)) # (!\b2v_inst7|tmp~12_combout\)) # (!\b2v_inst7|tmp~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~13_combout\,
	datab => \b2v_inst7|tmp~10_combout\,
	datac => \b2v_inst7|tmp~12_combout\,
	datad => \b2v_inst|dht_humi_integral\(7),
	combout => \b2v_inst7|tmp~11_combout\);

-- Location: LCCOMB_X11_Y19_N22
\b2v_inst7|tmp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~14_combout\ = \b2v_inst7|tmp~3_combout\ $ ((((\b2v_inst7|tmp~5_combout\ & !\b2v_inst|dht_humi_integral\(2))) # (!\b2v_inst7|tmp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~4_combout\,
	datab => \b2v_inst7|tmp~5_combout\,
	datac => \b2v_inst|dht_humi_integral\(2),
	datad => \b2v_inst7|tmp~3_combout\,
	combout => \b2v_inst7|tmp~14_combout\);

-- Location: LCCOMB_X13_Y19_N0
\b2v_inst7|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add6~0_combout\ = (\b2v_inst7|tmp~11_combout\ & ((\b2v_inst7|LessThan4~1_combout\ $ (!\b2v_inst7|tmp~12_combout\)) # (!\b2v_inst7|tmp~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|LessThan4~1_combout\,
	datab => \b2v_inst7|tmp~11_combout\,
	datac => \b2v_inst7|tmp~14_combout\,
	datad => \b2v_inst7|tmp~12_combout\,
	combout => \b2v_inst7|Add6~0_combout\);

-- Location: LCCOMB_X12_Y19_N24
\b2v_inst7|tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tmp~9_combout\ = (\b2v_inst7|tmp~12_combout\ & (\b2v_inst|dht_humi_integral\(7) & ((\b2v_inst|dht_humi_integral\(5)) # (\b2v_inst|dht_humi_integral\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~12_combout\,
	datab => \b2v_inst|dht_humi_integral\(5),
	datac => \b2v_inst|dht_humi_integral\(7),
	datad => \b2v_inst|dht_humi_integral\(6),
	combout => \b2v_inst7|tmp~9_combout\);

-- Location: LCCOMB_X13_Y19_N18
\b2v_inst7|hundreds[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|hundreds[0]~0_combout\ = \b2v_inst7|Add6~0_combout\ $ (((\b2v_inst7|tmp~10_combout\) # (!\b2v_inst7|tmp~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|Add6~0_combout\,
	datac => \b2v_inst7|tmp~10_combout\,
	datad => \b2v_inst7|tmp~9_combout\,
	combout => \b2v_inst7|hundreds[0]~0_combout\);

-- Location: LCCOMB_X12_Y18_N16
\b2v_inst5|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~4_combout\ = (\b2v_inst5|Selector40~3_combout\ & (((!\b2v_inst5|ptr\(2))) # (!\b2v_inst7|tens[0]~10_combout\))) # (!\b2v_inst5|Selector40~3_combout\ & (((!\b2v_inst7|hundreds[0]~0_combout\ & \b2v_inst5|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector40~3_combout\,
	datab => \b2v_inst7|tens[0]~10_combout\,
	datac => \b2v_inst7|hundreds[0]~0_combout\,
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Selector40~4_combout\);

-- Location: LCCOMB_X12_Y18_N28
\b2v_inst5|Selector40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~5_combout\ = (\b2v_inst5|Selector39~1_combout\ & ((\b2v_inst5|Selector40~4_combout\) # ((\b2v_inst5|Selector39~0_combout\ & \b2v_inst5|cmd_ptr~0_combout\)))) # (!\b2v_inst5|Selector39~1_combout\ & (\b2v_inst5|Selector39~0_combout\ & 
-- (\b2v_inst5|cmd_ptr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector39~1_combout\,
	datab => \b2v_inst5|Selector39~0_combout\,
	datac => \b2v_inst5|cmd_ptr~0_combout\,
	datad => \b2v_inst5|Selector40~4_combout\,
	combout => \b2v_inst5|Selector40~5_combout\);

-- Location: LCCOMB_X11_Y17_N0
\b2v_inst5|Selector40~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector40~11_combout\ = (\b2v_inst5|Selector40~5_combout\) # ((\b2v_inst5|Selector40~6_combout\ & ((\b2v_inst5|Selector40~10_combout\) # (\b2v_inst5|Selector40~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector40~6_combout\,
	datab => \b2v_inst5|Selector40~10_combout\,
	datac => \b2v_inst5|Selector40~13_combout\,
	datad => \b2v_inst5|Selector40~5_combout\,
	combout => \b2v_inst5|Selector40~11_combout\);

-- Location: FF_X11_Y17_N1
\b2v_inst5|lcd_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector40~11_combout\,
	ena => \b2v_inst5|lcd_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(0));

-- Location: FF_X12_Y17_N7
\b2v_inst|dht_temp_decimal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(5),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(5));

-- Location: FF_X12_Y17_N29
\b2v_inst|dht_temp_decimal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(7),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(7));

-- Location: FF_X12_Y17_N17
\b2v_inst|dht_temp_decimal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(4),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(4));

-- Location: LCCOMB_X12_Y17_N18
\b2v_inst|dht_temp_decimal[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_temp_decimal[6]~feeder_combout\ = \b2v_inst|dht_temp_bl_tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|dht_temp_bl_tmp\(6),
	combout => \b2v_inst|dht_temp_decimal[6]~feeder_combout\);

-- Location: FF_X12_Y17_N19
\b2v_inst|dht_temp_decimal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_temp_decimal[6]~feeder_combout\,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(6));

-- Location: LCCOMB_X12_Y17_N16
\b2v_inst8|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~2_combout\ = (\b2v_inst|dht_temp_decimal\(4) & (\b2v_inst|dht_temp_decimal\(6) $ (((!\b2v_inst|dht_temp_decimal\(5) & \b2v_inst|dht_temp_decimal\(7)))))) # (!\b2v_inst|dht_temp_decimal\(4) & ((\b2v_inst|dht_temp_decimal\(5) & 
-- ((\b2v_inst|dht_temp_decimal\(7)) # (!\b2v_inst|dht_temp_decimal\(6)))) # (!\b2v_inst|dht_temp_decimal\(5) & ((\b2v_inst|dht_temp_decimal\(6)) # (!\b2v_inst|dht_temp_decimal\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_decimal\(5),
	datab => \b2v_inst|dht_temp_decimal\(7),
	datac => \b2v_inst|dht_temp_decimal\(4),
	datad => \b2v_inst|dht_temp_decimal\(6),
	combout => \b2v_inst8|tmp~2_combout\);

-- Location: LCCOMB_X12_Y17_N6
\b2v_inst8|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~0_combout\ = (\b2v_inst|dht_temp_decimal\(7) & (!\b2v_inst|dht_temp_decimal\(5) & ((\b2v_inst|dht_temp_decimal\(6)) # (!\b2v_inst|dht_temp_decimal\(4))))) # (!\b2v_inst|dht_temp_decimal\(7) & (\b2v_inst|dht_temp_decimal\(5) & 
-- ((\b2v_inst|dht_temp_decimal\(4)) # (!\b2v_inst|dht_temp_decimal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_decimal\(6),
	datab => \b2v_inst|dht_temp_decimal\(7),
	datac => \b2v_inst|dht_temp_decimal\(5),
	datad => \b2v_inst|dht_temp_decimal\(4),
	combout => \b2v_inst8|tmp~0_combout\);

-- Location: FF_X12_Y17_N9
\b2v_inst|dht_temp_decimal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(3),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(3));

-- Location: LCCOMB_X12_Y17_N28
\b2v_inst8|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~1_combout\ = (\b2v_inst|dht_temp_decimal\(6) & ((\b2v_inst|dht_temp_decimal\(4)) # (\b2v_inst|dht_temp_decimal\(5) $ (\b2v_inst|dht_temp_decimal\(7))))) # (!\b2v_inst|dht_temp_decimal\(6) & ((\b2v_inst|dht_temp_decimal\(5)) # 
-- ((!\b2v_inst|dht_temp_decimal\(4)) # (!\b2v_inst|dht_temp_decimal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_decimal\(5),
	datab => \b2v_inst|dht_temp_decimal\(6),
	datac => \b2v_inst|dht_temp_decimal\(7),
	datad => \b2v_inst|dht_temp_decimal\(4),
	combout => \b2v_inst8|tmp~1_combout\);

-- Location: LCCOMB_X12_Y17_N8
\b2v_inst8|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~4_combout\ = (\b2v_inst8|tmp~0_combout\ & ((\b2v_inst|dht_temp_decimal\(3)) # ((\b2v_inst8|tmp~2_combout\ & \b2v_inst8|tmp~1_combout\)))) # (!\b2v_inst8|tmp~0_combout\ & ((\b2v_inst|dht_temp_decimal\(3) $ (\b2v_inst8|tmp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~2_combout\,
	datab => \b2v_inst8|tmp~0_combout\,
	datac => \b2v_inst|dht_temp_decimal\(3),
	datad => \b2v_inst8|tmp~1_combout\,
	combout => \b2v_inst8|tmp~4_combout\);

-- Location: LCCOMB_X12_Y17_N14
\b2v_inst8|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~3_combout\ = (\b2v_inst8|tmp~2_combout\ & (!\b2v_inst|dht_temp_decimal\(3) & ((!\b2v_inst8|tmp~1_combout\)))) # (!\b2v_inst8|tmp~2_combout\ & ((\b2v_inst|dht_temp_decimal\(3)) # ((!\b2v_inst8|tmp~0_combout\ & \b2v_inst8|tmp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~2_combout\,
	datab => \b2v_inst|dht_temp_decimal\(3),
	datac => \b2v_inst8|tmp~0_combout\,
	datad => \b2v_inst8|tmp~1_combout\,
	combout => \b2v_inst8|tmp~3_combout\);

-- Location: FF_X12_Y17_N11
\b2v_inst|dht_temp_decimal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(2),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(2));

-- Location: LCCOMB_X12_Y17_N0
\b2v_inst8|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~5_combout\ = (\b2v_inst8|tmp~0_combout\ & (\b2v_inst8|tmp~2_combout\ & (!\b2v_inst|dht_temp_decimal\(3)))) # (!\b2v_inst8|tmp~0_combout\ & (!\b2v_inst8|tmp~1_combout\ & ((\b2v_inst|dht_temp_decimal\(3)) # (!\b2v_inst8|tmp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~2_combout\,
	datab => \b2v_inst|dht_temp_decimal\(3),
	datac => \b2v_inst8|tmp~0_combout\,
	datad => \b2v_inst8|tmp~1_combout\,
	combout => \b2v_inst8|tmp~5_combout\);

-- Location: LCCOMB_X12_Y17_N10
\b2v_inst8|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~7_combout\ = (\b2v_inst8|tmp~4_combout\ & (((!\b2v_inst|dht_temp_decimal\(2) & \b2v_inst8|tmp~5_combout\)))) # (!\b2v_inst8|tmp~4_combout\ & ((\b2v_inst|dht_temp_decimal\(2)) # ((!\b2v_inst8|tmp~3_combout\ & !\b2v_inst8|tmp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~4_combout\,
	datab => \b2v_inst8|tmp~3_combout\,
	datac => \b2v_inst|dht_temp_decimal\(2),
	datad => \b2v_inst8|tmp~5_combout\,
	combout => \b2v_inst8|tmp~7_combout\);

-- Location: LCCOMB_X12_Y17_N24
\b2v_inst8|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~8_combout\ = (\b2v_inst8|tmp~3_combout\ & (!\b2v_inst|dht_temp_decimal\(2) & ((\b2v_inst8|tmp~4_combout\)))) # (!\b2v_inst8|tmp~3_combout\ & (\b2v_inst8|tmp~5_combout\ & ((\b2v_inst|dht_temp_decimal\(2)) # (!\b2v_inst8|tmp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_decimal\(2),
	datab => \b2v_inst8|tmp~5_combout\,
	datac => \b2v_inst8|tmp~3_combout\,
	datad => \b2v_inst8|tmp~4_combout\,
	combout => \b2v_inst8|tmp~8_combout\);

-- Location: FF_X12_Y17_N5
\b2v_inst|dht_temp_decimal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_temp_bl_tmp\(1),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_temp_decimal\(1));

-- Location: LCCOMB_X12_Y17_N2
\b2v_inst8|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|tmp~6_combout\ = (\b2v_inst|dht_temp_decimal\(2) & ((\b2v_inst8|tmp~5_combout\) # ((\b2v_inst8|tmp~3_combout\)))) # (!\b2v_inst|dht_temp_decimal\(2) & (!\b2v_inst8|tmp~5_combout\ & ((\b2v_inst8|tmp~4_combout\) # (!\b2v_inst8|tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_decimal\(2),
	datab => \b2v_inst8|tmp~5_combout\,
	datac => \b2v_inst8|tmp~3_combout\,
	datad => \b2v_inst8|tmp~4_combout\,
	combout => \b2v_inst8|tmp~6_combout\);

-- Location: LCCOMB_X12_Y17_N30
\b2v_inst8|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LessThan5~0_combout\ = (!\b2v_inst8|tmp~8_combout\ & (((!\b2v_inst|dht_temp_decimal\(1) & \b2v_inst8|tmp~6_combout\)) # (!\b2v_inst8|tmp~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~7_combout\,
	datab => \b2v_inst8|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_decimal\(1),
	datad => \b2v_inst8|tmp~6_combout\,
	combout => \b2v_inst8|LessThan5~0_combout\);

-- Location: LCCOMB_X11_Y17_N10
\b2v_inst5|Selector39~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~8_combout\ = (\b2v_inst5|ptr\(0)) # (\b2v_inst8|LessThan5~0_combout\ $ (\b2v_inst|dht_temp_decimal\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LessThan5~0_combout\,
	datab => \b2v_inst|dht_temp_decimal\(1),
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector39~8_combout\);

-- Location: LCCOMB_X12_Y16_N0
\b2v_inst6|unit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit[1]~0_combout\ = (\b2v_inst6|tmp~8_combout\ & ((\b2v_inst|dht_temp_integral\(1)) # ((\b2v_inst6|tmp~10_combout\ & !\b2v_inst6|tmp~9_combout\)))) # (!\b2v_inst6|tmp~8_combout\ & ((\b2v_inst|dht_temp_integral\(1) $ 
-- (!\b2v_inst6|tmp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~10_combout\,
	datab => \b2v_inst6|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_integral\(1),
	datad => \b2v_inst6|tmp~9_combout\,
	combout => \b2v_inst6|unit[1]~0_combout\);

-- Location: LCCOMB_X11_Y17_N26
\b2v_inst6|tens[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[1]~11_combout\ = \b2v_inst6|tmp~14_combout\ $ (\b2v_inst6|hundreds[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~14_combout\,
	datad => \b2v_inst6|hundreds[0]~0_combout\,
	combout => \b2v_inst6|tens[1]~11_combout\);

-- Location: LCCOMB_X11_Y17_N28
\b2v_inst5|Selector39~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~9_combout\ = (\b2v_inst5|lcd_data_temp[0]~4_combout\ & (((\b2v_inst6|tens[1]~11_combout\ & !\b2v_inst5|ptr\(3))))) # (!\b2v_inst5|lcd_data_temp[0]~4_combout\ & ((\b2v_inst6|LessThan4~1_combout\) # ((\b2v_inst5|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|LessThan4~1_combout\,
	datab => \b2v_inst5|lcd_data_temp[0]~4_combout\,
	datac => \b2v_inst6|tens[1]~11_combout\,
	datad => \b2v_inst5|ptr\(3),
	combout => \b2v_inst5|Selector39~9_combout\);

-- Location: LCCOMB_X11_Y17_N6
\b2v_inst5|Selector39~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~10_combout\ = (\b2v_inst5|lcd_data_temp[0]~3_combout\ & ((\b2v_inst5|Selector39~9_combout\ & ((!\b2v_inst6|unit[1]~0_combout\))) # (!\b2v_inst5|Selector39~9_combout\ & (!\b2v_inst5|Selector39~8_combout\)))) # 
-- (!\b2v_inst5|lcd_data_temp[0]~3_combout\ & (((\b2v_inst5|Selector39~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector39~8_combout\,
	datab => \b2v_inst5|lcd_data_temp[0]~3_combout\,
	datac => \b2v_inst6|unit[1]~0_combout\,
	datad => \b2v_inst5|Selector39~9_combout\,
	combout => \b2v_inst5|Selector39~10_combout\);

-- Location: LCCOMB_X11_Y17_N24
\b2v_inst5|Selector39~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~11_combout\ = (\b2v_inst5|Selector39~10_combout\ & ((\b2v_inst5|ptr\(3) & (!\b2v_inst5|ptr\(2))) # (!\b2v_inst5|ptr\(3) & (\b2v_inst5|ptr\(2) & \b2v_inst5|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|Selector39~10_combout\,
	combout => \b2v_inst5|Selector39~11_combout\);

-- Location: LCCOMB_X11_Y18_N26
\b2v_inst5|Selector39~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~6_combout\ = (!\b2v_inst5|ptr\(1) & ((\b2v_inst5|lcd_state.lcd_data_l1~q\ & (!\b2v_inst5|ptr\(3))) # (!\b2v_inst5|lcd_state.lcd_data_l1~q\ & ((\b2v_inst5|lcd_state.lcd_data_l0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datac => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datad => \b2v_inst5|ptr\(1),
	combout => \b2v_inst5|Selector39~6_combout\);

-- Location: LCCOMB_X11_Y18_N8
\b2v_inst5|Selector39~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~7_combout\ = (\b2v_inst5|ptr\(2) & (\b2v_inst5|Selector39~6_combout\ & !\b2v_inst5|ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|Selector39~6_combout\,
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector39~7_combout\);

-- Location: FF_X11_Y17_N3
\b2v_inst|dht_humi_decimal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bl_tmp\(6),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(6));

-- Location: LCCOMB_X10_Y17_N0
\b2v_inst|dht_humi_decimal[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_decimal[7]~feeder_combout\ = \b2v_inst|dht_humi_bl_tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|dht_humi_bl_tmp\(7),
	combout => \b2v_inst|dht_humi_decimal[7]~feeder_combout\);

-- Location: FF_X10_Y17_N1
\b2v_inst|dht_humi_decimal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_decimal[7]~feeder_combout\,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(7));

-- Location: LCCOMB_X11_Y17_N20
\b2v_inst|dht_humi_decimal[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|dht_humi_decimal[4]~feeder_combout\ = \b2v_inst|dht_humi_bl_tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|dht_humi_bl_tmp\(4),
	combout => \b2v_inst|dht_humi_decimal[4]~feeder_combout\);

-- Location: FF_X11_Y17_N21
\b2v_inst|dht_humi_decimal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst|dht_humi_decimal[4]~feeder_combout\,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(4));

-- Location: FF_X11_Y17_N5
\b2v_inst|dht_humi_decimal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bl_tmp\(5),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(5));

-- Location: LCCOMB_X10_Y17_N22
\b2v_inst9|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~0_combout\ = (\b2v_inst|dht_humi_decimal\(6) & ((\b2v_inst|dht_humi_decimal\(7) & ((\b2v_inst|dht_humi_decimal\(5)) # (!\b2v_inst|dht_humi_decimal\(4)))) # (!\b2v_inst|dht_humi_decimal\(7) & ((\b2v_inst|dht_humi_decimal\(4)) # 
-- (!\b2v_inst|dht_humi_decimal\(5)))))) # (!\b2v_inst|dht_humi_decimal\(6) & (\b2v_inst|dht_humi_decimal\(4) $ (((\b2v_inst|dht_humi_decimal\(5)) # (!\b2v_inst|dht_humi_decimal\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_decimal\(6),
	datab => \b2v_inst|dht_humi_decimal\(7),
	datac => \b2v_inst|dht_humi_decimal\(4),
	datad => \b2v_inst|dht_humi_decimal\(5),
	combout => \b2v_inst9|tmp~0_combout\);

-- Location: LCCOMB_X10_Y17_N2
\b2v_inst9|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~2_combout\ = (\b2v_inst|dht_humi_decimal\(6) & ((\b2v_inst|dht_humi_decimal\(4)) # (\b2v_inst|dht_humi_decimal\(7) $ (\b2v_inst|dht_humi_decimal\(5))))) # (!\b2v_inst|dht_humi_decimal\(6) & (((\b2v_inst|dht_humi_decimal\(5)) # 
-- (!\b2v_inst|dht_humi_decimal\(4))) # (!\b2v_inst|dht_humi_decimal\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_decimal\(6),
	datab => \b2v_inst|dht_humi_decimal\(7),
	datac => \b2v_inst|dht_humi_decimal\(4),
	datad => \b2v_inst|dht_humi_decimal\(5),
	combout => \b2v_inst9|tmp~2_combout\);

-- Location: FF_X11_Y17_N11
\b2v_inst|dht_humi_decimal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bl_tmp\(3),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(3));

-- Location: LCCOMB_X10_Y17_N12
\b2v_inst9|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~1_combout\ = (\b2v_inst|dht_humi_decimal\(7) & (!\b2v_inst|dht_humi_decimal\(5) & ((\b2v_inst|dht_humi_decimal\(6)) # (!\b2v_inst|dht_humi_decimal\(4))))) # (!\b2v_inst|dht_humi_decimal\(7) & (\b2v_inst|dht_humi_decimal\(5) & 
-- ((\b2v_inst|dht_humi_decimal\(4)) # (!\b2v_inst|dht_humi_decimal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_decimal\(6),
	datab => \b2v_inst|dht_humi_decimal\(7),
	datac => \b2v_inst|dht_humi_decimal\(4),
	datad => \b2v_inst|dht_humi_decimal\(5),
	combout => \b2v_inst9|tmp~1_combout\);

-- Location: LCCOMB_X10_Y17_N30
\b2v_inst9|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~4_combout\ = (\b2v_inst9|tmp~0_combout\ & (!\b2v_inst9|tmp~2_combout\ & (!\b2v_inst|dht_humi_decimal\(3)))) # (!\b2v_inst9|tmp~0_combout\ & ((\b2v_inst|dht_humi_decimal\(3)) # ((\b2v_inst9|tmp~2_combout\ & !\b2v_inst9|tmp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~0_combout\,
	datab => \b2v_inst9|tmp~2_combout\,
	datac => \b2v_inst|dht_humi_decimal\(3),
	datad => \b2v_inst9|tmp~1_combout\,
	combout => \b2v_inst9|tmp~4_combout\);

-- Location: FF_X11_Y17_N23
\b2v_inst|dht_humi_decimal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bl_tmp\(2),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(2));

-- Location: LCCOMB_X10_Y17_N8
\b2v_inst9|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~3_combout\ = (\b2v_inst9|tmp~1_combout\ & (\b2v_inst9|tmp~0_combout\ & ((!\b2v_inst|dht_humi_decimal\(3))))) # (!\b2v_inst9|tmp~1_combout\ & (!\b2v_inst9|tmp~2_combout\ & ((\b2v_inst|dht_humi_decimal\(3)) # (!\b2v_inst9|tmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~0_combout\,
	datab => \b2v_inst9|tmp~2_combout\,
	datac => \b2v_inst|dht_humi_decimal\(3),
	datad => \b2v_inst9|tmp~1_combout\,
	combout => \b2v_inst9|tmp~3_combout\);

-- Location: LCCOMB_X10_Y17_N16
\b2v_inst9|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~5_combout\ = (\b2v_inst9|tmp~2_combout\ & ((\b2v_inst|dht_humi_decimal\(3) & ((\b2v_inst9|tmp~1_combout\))) # (!\b2v_inst|dht_humi_decimal\(3) & ((\b2v_inst9|tmp~0_combout\) # (!\b2v_inst9|tmp~1_combout\))))) # (!\b2v_inst9|tmp~2_combout\ & 
-- (((\b2v_inst|dht_humi_decimal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~0_combout\,
	datab => \b2v_inst9|tmp~2_combout\,
	datac => \b2v_inst|dht_humi_decimal\(3),
	datad => \b2v_inst9|tmp~1_combout\,
	combout => \b2v_inst9|tmp~5_combout\);

-- Location: LCCOMB_X10_Y17_N26
\b2v_inst9|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~6_combout\ = (\b2v_inst|dht_humi_decimal\(2) & (((!\b2v_inst9|tmp~5_combout\)))) # (!\b2v_inst|dht_humi_decimal\(2) & ((\b2v_inst9|tmp~3_combout\ & ((\b2v_inst9|tmp~5_combout\))) # (!\b2v_inst9|tmp~3_combout\ & (!\b2v_inst9|tmp~4_combout\ & 
-- !\b2v_inst9|tmp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~4_combout\,
	datab => \b2v_inst|dht_humi_decimal\(2),
	datac => \b2v_inst9|tmp~3_combout\,
	datad => \b2v_inst9|tmp~5_combout\,
	combout => \b2v_inst9|tmp~6_combout\);

-- Location: FF_X11_Y17_N27
\b2v_inst|dht_humi_decimal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|dht_humi_bl_tmp\(1),
	sload => VCC,
	ena => \b2v_inst|dht_temp_integral[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dht_humi_decimal\(1));

-- Location: LCCOMB_X10_Y17_N14
\b2v_inst9|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~8_combout\ = (\b2v_inst9|tmp~4_combout\ & (!\b2v_inst|dht_humi_decimal\(2) & ((\b2v_inst9|tmp~5_combout\)))) # (!\b2v_inst9|tmp~4_combout\ & (\b2v_inst9|tmp~3_combout\ & ((\b2v_inst|dht_humi_decimal\(2)) # (!\b2v_inst9|tmp~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~4_combout\,
	datab => \b2v_inst|dht_humi_decimal\(2),
	datac => \b2v_inst9|tmp~3_combout\,
	datad => \b2v_inst9|tmp~5_combout\,
	combout => \b2v_inst9|tmp~8_combout\);

-- Location: LCCOMB_X10_Y17_N28
\b2v_inst9|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|tmp~7_combout\ = (\b2v_inst9|tmp~4_combout\ & ((\b2v_inst|dht_humi_decimal\(2)) # ((!\b2v_inst9|tmp~3_combout\ & \b2v_inst9|tmp~5_combout\)))) # (!\b2v_inst9|tmp~4_combout\ & (\b2v_inst|dht_humi_decimal\(2) $ ((!\b2v_inst9|tmp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~4_combout\,
	datab => \b2v_inst|dht_humi_decimal\(2),
	datac => \b2v_inst9|tmp~3_combout\,
	datad => \b2v_inst9|tmp~5_combout\,
	combout => \b2v_inst9|tmp~7_combout\);

-- Location: LCCOMB_X10_Y17_N20
\b2v_inst9|unit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|unit[1]~0_combout\ = (\b2v_inst9|tmp~6_combout\ & ((\b2v_inst|dht_humi_decimal\(1)) # ((!\b2v_inst9|tmp~8_combout\ & \b2v_inst9|tmp~7_combout\)))) # (!\b2v_inst9|tmp~6_combout\ & (\b2v_inst|dht_humi_decimal\(1) $ 
-- ((!\b2v_inst9|tmp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~6_combout\,
	datab => \b2v_inst|dht_humi_decimal\(1),
	datac => \b2v_inst9|tmp~8_combout\,
	datad => \b2v_inst9|tmp~7_combout\,
	combout => \b2v_inst9|unit[1]~0_combout\);

-- Location: LCCOMB_X11_Y19_N14
\b2v_inst7|tens[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[0]~12_combout\ = (!\b2v_inst7|tmp~7_combout\ & (((\b2v_inst7|tmp~8_combout\ & !\b2v_inst|dht_humi_integral\(1))) # (!\b2v_inst7|tmp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~8_combout\,
	datab => \b2v_inst|dht_humi_integral\(1),
	datac => \b2v_inst7|tmp~6_combout\,
	datad => \b2v_inst7|tmp~7_combout\,
	combout => \b2v_inst7|tens[0]~12_combout\);

-- Location: LCCOMB_X12_Y18_N6
\b2v_inst5|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~2_combout\ = (\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(0)) # (\b2v_inst|dht_humi_integral\(1) $ (!\b2v_inst7|tens[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(1),
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst5|ptr\(3),
	datad => \b2v_inst7|tens[0]~12_combout\,
	combout => \b2v_inst5|Selector39~2_combout\);

-- Location: LCCOMB_X12_Y18_N4
\b2v_inst5|Selector39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~3_combout\ = (\b2v_inst5|lcd_data_temp[0]~1_combout\ & ((\b2v_inst5|lcd_data_temp[0]~2_combout\ & (!\b2v_inst9|unit[1]~0_combout\)) # (!\b2v_inst5|lcd_data_temp[0]~2_combout\ & ((\b2v_inst5|Selector39~2_combout\))))) # 
-- (!\b2v_inst5|lcd_data_temp[0]~1_combout\ & (!\b2v_inst5|lcd_data_temp[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_data_temp[0]~1_combout\,
	datab => \b2v_inst5|lcd_data_temp[0]~2_combout\,
	datac => \b2v_inst9|unit[1]~0_combout\,
	datad => \b2v_inst5|Selector39~2_combout\,
	combout => \b2v_inst5|Selector39~3_combout\);

-- Location: LCCOMB_X13_Y19_N28
\b2v_inst7|tens[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[1]~11_combout\ = \b2v_inst7|tmp~14_combout\ $ (((!\b2v_inst7|Add6~0_combout\ & ((\b2v_inst7|tmp~10_combout\) # (!\b2v_inst7|tmp~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~14_combout\,
	datab => \b2v_inst7|Add6~0_combout\,
	datac => \b2v_inst7|tmp~10_combout\,
	datad => \b2v_inst7|tmp~9_combout\,
	combout => \b2v_inst7|tens[1]~11_combout\);

-- Location: LCCOMB_X12_Y18_N2
\b2v_inst5|Selector39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~4_combout\ = (\b2v_inst5|ptr\(2) & ((\b2v_inst5|Selector39~3_combout\ & (\b2v_inst7|LessThan4~1_combout\)) # (!\b2v_inst5|Selector39~3_combout\ & ((\b2v_inst7|tens[1]~11_combout\))))) # (!\b2v_inst5|ptr\(2) & 
-- (((\b2v_inst5|Selector39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|LessThan4~1_combout\,
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|Selector39~3_combout\,
	datad => \b2v_inst7|tens[1]~11_combout\,
	combout => \b2v_inst5|Selector39~4_combout\);

-- Location: LCCOMB_X12_Y18_N8
\b2v_inst5|Selector39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~5_combout\ = (\b2v_inst5|Selector39~1_combout\ & ((\b2v_inst5|Selector39~4_combout\) # ((\b2v_inst5|Selector39~0_combout\ & \b2v_inst5|cmd_ptr\(2))))) # (!\b2v_inst5|Selector39~1_combout\ & (\b2v_inst5|Selector39~0_combout\ & 
-- (\b2v_inst5|cmd_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector39~1_combout\,
	datab => \b2v_inst5|Selector39~0_combout\,
	datac => \b2v_inst5|cmd_ptr\(2),
	datad => \b2v_inst5|Selector39~4_combout\,
	combout => \b2v_inst5|Selector39~5_combout\);

-- Location: LCCOMB_X11_Y17_N14
\b2v_inst5|Selector39~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector39~12_combout\ = (\b2v_inst5|Selector39~7_combout\) # ((\b2v_inst5|Selector39~5_combout\) # ((\b2v_inst5|Selector40~6_combout\ & \b2v_inst5|Selector39~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector40~6_combout\,
	datab => \b2v_inst5|Selector39~11_combout\,
	datac => \b2v_inst5|Selector39~7_combout\,
	datad => \b2v_inst5|Selector39~5_combout\,
	combout => \b2v_inst5|Selector39~12_combout\);

-- Location: FF_X11_Y17_N15
\b2v_inst5|lcd_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector39~12_combout\,
	ena => \b2v_inst5|lcd_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(1));

-- Location: LCCOMB_X11_Y18_N12
\b2v_inst5|Selector38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~5_combout\ = (\b2v_inst5|lcd_state.lcd_data_l1~q\ & (!\b2v_inst5|ptr\(2) & ((\b2v_inst5|ptr\(3)) # (!\b2v_inst5|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datac => \b2v_inst5|ptr\(3),
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Selector38~5_combout\);

-- Location: LCCOMB_X8_Y18_N20
\b2v_inst5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux2~0_combout\ = \b2v_inst5|cmd_ptr\(1) $ (\b2v_inst5|cmd_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|cmd_ptr\(1),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|Mux2~0_combout\);

-- Location: LCCOMB_X8_Y18_N10
\b2v_inst5|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~4_combout\ = (\b2v_inst5|lcd_data_temp\(2) & ((\b2v_inst5|lcd_state.lcd_delay~q\) # ((!\b2v_inst5|lcd_state.initial~q\ & \b2v_inst5|Mux2~0_combout\)))) # (!\b2v_inst5|lcd_data_temp\(2) & (((!\b2v_inst5|lcd_state.initial~q\ & 
-- \b2v_inst5|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_data_temp\(2),
	datab => \b2v_inst5|lcd_state.lcd_delay~q\,
	datac => \b2v_inst5|lcd_state.initial~q\,
	datad => \b2v_inst5|Mux2~0_combout\,
	combout => \b2v_inst5|Selector38~4_combout\);

-- Location: LCCOMB_X11_Y19_N8
\b2v_inst7|unit[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|unit[2]~0_combout\ = (\b2v_inst7|tmp~8_combout\ & (!\b2v_inst|dht_humi_integral\(1) & ((\b2v_inst7|tmp~7_combout\)))) # (!\b2v_inst7|tmp~8_combout\ & ((\b2v_inst|dht_humi_integral\(1)) # ((!\b2v_inst7|tmp~6_combout\ & 
-- !\b2v_inst7|tmp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~8_combout\,
	datab => \b2v_inst|dht_humi_integral\(1),
	datac => \b2v_inst7|tmp~6_combout\,
	datad => \b2v_inst7|tmp~7_combout\,
	combout => \b2v_inst7|unit[2]~0_combout\);

-- Location: LCCOMB_X10_Y17_N10
\b2v_inst9|unit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|unit[2]~1_combout\ = (\b2v_inst9|tmp~7_combout\ & (((\b2v_inst9|tmp~8_combout\ & !\b2v_inst|dht_humi_decimal\(1))))) # (!\b2v_inst9|tmp~7_combout\ & ((\b2v_inst|dht_humi_decimal\(1)) # ((!\b2v_inst9|tmp~6_combout\ & 
-- !\b2v_inst9|tmp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~6_combout\,
	datab => \b2v_inst9|tmp~7_combout\,
	datac => \b2v_inst9|tmp~8_combout\,
	datad => \b2v_inst|dht_humi_decimal\(1),
	combout => \b2v_inst9|unit[2]~1_combout\);

-- Location: LCCOMB_X11_Y18_N18
\b2v_inst5|Selector38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~6_combout\ = (\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(1) & ((\b2v_inst9|unit[2]~1_combout\))) # (!\b2v_inst5|ptr\(1) & (\b2v_inst7|unit[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(3),
	datac => \b2v_inst7|unit[2]~0_combout\,
	datad => \b2v_inst9|unit[2]~1_combout\,
	combout => \b2v_inst5|Selector38~6_combout\);

-- Location: LCCOMB_X11_Y18_N4
\b2v_inst5|Selector38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~7_combout\ = (\b2v_inst5|Selector38~4_combout\) # ((\b2v_inst5|Selector38~5_combout\ & ((\b2v_inst5|ptr\(0)) # (\b2v_inst5|Selector38~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector38~5_combout\,
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst5|Selector38~4_combout\,
	datad => \b2v_inst5|Selector38~6_combout\,
	combout => \b2v_inst5|Selector38~7_combout\);

-- Location: LCCOMB_X12_Y19_N6
\b2v_inst7|tens[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[2]~7_combout\ = (\b2v_inst|dht_humi_integral\(7) & (\b2v_inst|dht_humi_integral\(6) $ (((!\b2v_inst|dht_humi_integral\(5)) # (!\b2v_inst|dht_humi_integral\(4)))))) # (!\b2v_inst|dht_humi_integral\(7) & ((\b2v_inst|dht_humi_integral\(6) & 
-- (!\b2v_inst|dht_humi_integral\(4) & !\b2v_inst|dht_humi_integral\(5))) # (!\b2v_inst|dht_humi_integral\(6) & ((\b2v_inst|dht_humi_integral\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(7),
	datac => \b2v_inst|dht_humi_integral\(6),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tens[2]~7_combout\);

-- Location: LCCOMB_X12_Y19_N12
\b2v_inst7|tens[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[2]~3_combout\ = (\b2v_inst|dht_humi_integral\(4) & ((\b2v_inst|dht_humi_integral\(7) & ((\b2v_inst|dht_humi_integral\(5)) # (!\b2v_inst|dht_humi_integral\(6)))) # (!\b2v_inst|dht_humi_integral\(7) & (!\b2v_inst|dht_humi_integral\(6) & 
-- \b2v_inst|dht_humi_integral\(5))))) # (!\b2v_inst|dht_humi_integral\(4) & ((\b2v_inst|dht_humi_integral\(7) & (!\b2v_inst|dht_humi_integral\(6) & \b2v_inst|dht_humi_integral\(5))) # (!\b2v_inst|dht_humi_integral\(7) & (\b2v_inst|dht_humi_integral\(6) & 
-- !\b2v_inst|dht_humi_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(7),
	datac => \b2v_inst|dht_humi_integral\(6),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tens[2]~3_combout\);

-- Location: LCCOMB_X12_Y19_N30
\b2v_inst7|tens[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[2]~4_combout\ = (\b2v_inst|dht_humi_integral\(6) & ((\b2v_inst|dht_humi_integral\(4) & (\b2v_inst|dht_humi_integral\(7) & \b2v_inst|dht_humi_integral\(5))) # (!\b2v_inst|dht_humi_integral\(4) & (!\b2v_inst|dht_humi_integral\(7) & 
-- !\b2v_inst|dht_humi_integral\(5))))) # (!\b2v_inst|dht_humi_integral\(6) & (\b2v_inst|dht_humi_integral\(5) $ (((\b2v_inst|dht_humi_integral\(4) & \b2v_inst|dht_humi_integral\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(7),
	datac => \b2v_inst|dht_humi_integral\(6),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tens[2]~4_combout\);

-- Location: LCCOMB_X12_Y19_N8
\b2v_inst7|tens[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[2]~8_combout\ = (\b2v_inst|dht_humi_integral\(2) & (((\b2v_inst|dht_humi_integral\(3))))) # (!\b2v_inst|dht_humi_integral\(2) & ((\b2v_inst|dht_humi_integral\(3) & ((\b2v_inst7|tens[2]~4_combout\))) # (!\b2v_inst|dht_humi_integral\(3) & 
-- (\b2v_inst7|tens[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tens[2]~3_combout\,
	datab => \b2v_inst|dht_humi_integral\(2),
	datac => \b2v_inst7|tens[2]~4_combout\,
	datad => \b2v_inst|dht_humi_integral\(3),
	combout => \b2v_inst7|tens[2]~8_combout\);

-- Location: LCCOMB_X12_Y19_N0
\b2v_inst7|tens[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[2]~6_combout\ = (\b2v_inst|dht_humi_integral\(4) & ((\b2v_inst|dht_humi_integral\(7) & (\b2v_inst|dht_humi_integral\(6) $ (!\b2v_inst|dht_humi_integral\(5)))) # (!\b2v_inst|dht_humi_integral\(7) & (!\b2v_inst|dht_humi_integral\(6) & 
-- \b2v_inst|dht_humi_integral\(5))))) # (!\b2v_inst|dht_humi_integral\(4) & ((\b2v_inst|dht_humi_integral\(7) & (!\b2v_inst|dht_humi_integral\(6) & \b2v_inst|dht_humi_integral\(5))) # (!\b2v_inst|dht_humi_integral\(7) & (\b2v_inst|dht_humi_integral\(6) & 
-- !\b2v_inst|dht_humi_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_integral\(4),
	datab => \b2v_inst|dht_humi_integral\(7),
	datac => \b2v_inst|dht_humi_integral\(6),
	datad => \b2v_inst|dht_humi_integral\(5),
	combout => \b2v_inst7|tens[2]~6_combout\);

-- Location: LCCOMB_X12_Y19_N14
\b2v_inst7|tens[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[2]~9_combout\ = (\b2v_inst|dht_humi_integral\(2) & ((\b2v_inst7|tens[2]~8_combout\ & (\b2v_inst7|tens[2]~7_combout\)) # (!\b2v_inst7|tens[2]~8_combout\ & ((\b2v_inst7|tens[2]~6_combout\))))) # (!\b2v_inst|dht_humi_integral\(2) & 
-- (((\b2v_inst7|tens[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tens[2]~7_combout\,
	datab => \b2v_inst|dht_humi_integral\(2),
	datac => \b2v_inst7|tens[2]~8_combout\,
	datad => \b2v_inst7|tens[2]~6_combout\,
	combout => \b2v_inst7|tens[2]~9_combout\);

-- Location: LCCOMB_X10_Y18_N8
\b2v_inst5|Selector38~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~8_combout\ = (\b2v_inst5|ptr\(0) & (\b2v_inst5|ptr\(2) & \b2v_inst7|tens[2]~9_combout\)) # (!\b2v_inst5|ptr\(0) & (!\b2v_inst5|ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(0),
	datab => \b2v_inst5|ptr\(2),
	datad => \b2v_inst7|tens[2]~9_combout\,
	combout => \b2v_inst5|Selector38~8_combout\);

-- Location: LCCOMB_X10_Y18_N26
\b2v_inst5|Selector38~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~9_combout\ = (!\b2v_inst5|ptr\(3) & (\b2v_inst5|lcd_state.lcd_data_l1~q\ & \b2v_inst5|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(3),
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|ptr\(1),
	combout => \b2v_inst5|Selector38~9_combout\);

-- Location: LCCOMB_X10_Y18_N20
\b2v_inst5|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector33~0_combout\ = (\b2v_inst5|ptr\(1) & (\b2v_inst5|lcd_state.lcd_data_l0~q\ & \b2v_inst5|ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector33~0_combout\);

-- Location: LCCOMB_X11_Y16_N22
\b2v_inst6|tens[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[2]~4_combout\ = (\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(7) & \b2v_inst|dht_temp_integral\(5))) # (!\b2v_inst|dht_temp_integral\(4) & (!\b2v_inst|dht_temp_integral\(7) & 
-- !\b2v_inst|dht_temp_integral\(5))))) # (!\b2v_inst|dht_temp_integral\(6) & (\b2v_inst|dht_temp_integral\(5) $ (((\b2v_inst|dht_temp_integral\(4) & \b2v_inst|dht_temp_integral\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(6),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(7),
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|tens[2]~4_combout\);

-- Location: LCCOMB_X11_Y16_N28
\b2v_inst6|tens[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[2]~3_combout\ = (\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(7) & \b2v_inst|dht_temp_integral\(5))) # (!\b2v_inst|dht_temp_integral\(4) & (!\b2v_inst|dht_temp_integral\(7) & 
-- !\b2v_inst|dht_temp_integral\(5))))) # (!\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(4) & ((\b2v_inst|dht_temp_integral\(7)) # (\b2v_inst|dht_temp_integral\(5)))) # (!\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(7) 
-- & \b2v_inst|dht_temp_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(6),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(7),
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|tens[2]~3_combout\);

-- Location: LCCOMB_X11_Y16_N16
\b2v_inst6|tens[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[2]~8_combout\ = (\b2v_inst|dht_temp_integral\(2) & (\b2v_inst|dht_temp_integral\(3))) # (!\b2v_inst|dht_temp_integral\(2) & ((\b2v_inst|dht_temp_integral\(3) & (\b2v_inst6|tens[2]~4_combout\)) # (!\b2v_inst|dht_temp_integral\(3) & 
-- ((\b2v_inst6|tens[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(2),
	datab => \b2v_inst|dht_temp_integral\(3),
	datac => \b2v_inst6|tens[2]~4_combout\,
	datad => \b2v_inst6|tens[2]~3_combout\,
	combout => \b2v_inst6|tens[2]~8_combout\);

-- Location: LCCOMB_X11_Y16_N14
\b2v_inst6|tens[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[2]~7_combout\ = (\b2v_inst|dht_temp_integral\(7) & (\b2v_inst|dht_temp_integral\(6) $ (((!\b2v_inst|dht_temp_integral\(5)) # (!\b2v_inst|dht_temp_integral\(4)))))) # (!\b2v_inst|dht_temp_integral\(7) & ((\b2v_inst|dht_temp_integral\(6) & 
-- (!\b2v_inst|dht_temp_integral\(4) & !\b2v_inst|dht_temp_integral\(5))) # (!\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(6),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(7),
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|tens[2]~7_combout\);

-- Location: LCCOMB_X11_Y16_N12
\b2v_inst6|tens[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[2]~6_combout\ = (\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(7) & \b2v_inst|dht_temp_integral\(5))) # (!\b2v_inst|dht_temp_integral\(4) & (!\b2v_inst|dht_temp_integral\(7) & 
-- !\b2v_inst|dht_temp_integral\(5))))) # (!\b2v_inst|dht_temp_integral\(6) & ((\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(7) $ (\b2v_inst|dht_temp_integral\(5)))) # (!\b2v_inst|dht_temp_integral\(4) & (\b2v_inst|dht_temp_integral\(7) & 
-- \b2v_inst|dht_temp_integral\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(6),
	datab => \b2v_inst|dht_temp_integral\(4),
	datac => \b2v_inst|dht_temp_integral\(7),
	datad => \b2v_inst|dht_temp_integral\(5),
	combout => \b2v_inst6|tens[2]~6_combout\);

-- Location: LCCOMB_X11_Y16_N26
\b2v_inst6|tens[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tens[2]~9_combout\ = (\b2v_inst|dht_temp_integral\(2) & ((\b2v_inst6|tens[2]~8_combout\ & (\b2v_inst6|tens[2]~7_combout\)) # (!\b2v_inst6|tens[2]~8_combout\ & ((\b2v_inst6|tens[2]~6_combout\))))) # (!\b2v_inst|dht_temp_integral\(2) & 
-- (\b2v_inst6|tens[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(2),
	datab => \b2v_inst6|tens[2]~8_combout\,
	datac => \b2v_inst6|tens[2]~7_combout\,
	datad => \b2v_inst6|tens[2]~6_combout\,
	combout => \b2v_inst6|tens[2]~9_combout\);

-- Location: LCCOMB_X10_Y18_N22
\b2v_inst5|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~0_combout\ = (\b2v_inst5|Selector33~0_combout\ & (\b2v_inst5|ptr\(2) & (\b2v_inst6|tens[2]~9_combout\ & !\b2v_inst5|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector33~0_combout\,
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst6|tens[2]~9_combout\,
	datad => \b2v_inst5|ptr\(3),
	combout => \b2v_inst5|Selector38~0_combout\);

-- Location: LCCOMB_X12_Y16_N26
\b2v_inst6|unit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|unit[2]~1_combout\ = (\b2v_inst6|tmp~10_combout\ & (((!\b2v_inst|dht_temp_integral\(1) & \b2v_inst6|tmp~9_combout\)))) # (!\b2v_inst6|tmp~10_combout\ & ((\b2v_inst|dht_temp_integral\(1)) # ((!\b2v_inst6|tmp~8_combout\ & 
-- !\b2v_inst6|tmp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~10_combout\,
	datab => \b2v_inst6|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_integral\(1),
	datad => \b2v_inst6|tmp~9_combout\,
	combout => \b2v_inst6|unit[2]~1_combout\);

-- Location: LCCOMB_X12_Y17_N12
\b2v_inst8|unit[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|unit[2]~0_combout\ = (\b2v_inst8|tmp~8_combout\ & ((\b2v_inst|dht_temp_decimal\(1) $ (\b2v_inst8|tmp~6_combout\)))) # (!\b2v_inst8|tmp~8_combout\ & (!\b2v_inst8|tmp~6_combout\ & ((\b2v_inst|dht_temp_decimal\(1)) # 
-- (!\b2v_inst8|tmp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~7_combout\,
	datab => \b2v_inst8|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_decimal\(1),
	datad => \b2v_inst8|tmp~6_combout\,
	combout => \b2v_inst8|unit[2]~0_combout\);

-- Location: LCCOMB_X11_Y18_N6
\b2v_inst5|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~1_combout\ = (!\b2v_inst5|ptr\(0) & ((\b2v_inst5|ptr\(1) & ((\b2v_inst8|unit[2]~0_combout\))) # (!\b2v_inst5|ptr\(1) & (\b2v_inst6|unit[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst6|unit[2]~1_combout\,
	datac => \b2v_inst8|unit[2]~0_combout\,
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector38~1_combout\);

-- Location: LCCOMB_X10_Y18_N24
\b2v_inst5|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~2_combout\ = (\b2v_inst5|Selector38~1_combout\) # ((\b2v_inst5|ptr\(0) & ((!\b2v_inst5|ptr\(1)))) # (!\b2v_inst5|ptr\(0) & (!\b2v_inst5|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(0),
	datab => \b2v_inst5|ptr\(3),
	datac => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|Selector38~1_combout\,
	combout => \b2v_inst5|Selector38~2_combout\);

-- Location: LCCOMB_X10_Y18_N2
\b2v_inst5|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~3_combout\ = (\b2v_inst5|Selector38~0_combout\) # ((\b2v_inst5|lcd_state.lcd_data_l0~q\ & (!\b2v_inst5|ptr\(2) & \b2v_inst5|Selector38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|Selector38~0_combout\,
	datad => \b2v_inst5|Selector38~2_combout\,
	combout => \b2v_inst5|Selector38~3_combout\);

-- Location: LCCOMB_X10_Y18_N4
\b2v_inst5|Selector38~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~10_combout\ = (\b2v_inst5|Selector38~7_combout\) # ((\b2v_inst5|Selector38~3_combout\) # ((\b2v_inst5|Selector38~8_combout\ & \b2v_inst5|Selector38~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector38~7_combout\,
	datab => \b2v_inst5|Selector38~8_combout\,
	datac => \b2v_inst5|Selector38~9_combout\,
	datad => \b2v_inst5|Selector38~3_combout\,
	combout => \b2v_inst5|Selector38~10_combout\);

-- Location: FF_X10_Y18_N5
\b2v_inst5|lcd_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector38~10_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(2));

-- Location: LCCOMB_X11_Y19_N30
\b2v_inst7|unit[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|unit[3]~1_combout\ = (\b2v_inst7|tmp~6_combout\ & (\b2v_inst7|tmp~8_combout\ & (!\b2v_inst|dht_humi_integral\(1)))) # (!\b2v_inst7|tmp~6_combout\ & (\b2v_inst7|tmp~7_combout\ & ((\b2v_inst|dht_humi_integral\(1)) # 
-- (!\b2v_inst7|tmp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~8_combout\,
	datab => \b2v_inst|dht_humi_integral\(1),
	datac => \b2v_inst7|tmp~6_combout\,
	datad => \b2v_inst7|tmp~7_combout\,
	combout => \b2v_inst7|unit[3]~1_combout\);

-- Location: LCCOMB_X10_Y17_N24
\b2v_inst9|unit[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|unit[3]~2_combout\ = (\b2v_inst9|tmp~6_combout\ & (\b2v_inst9|tmp~7_combout\ & ((!\b2v_inst|dht_humi_decimal\(1))))) # (!\b2v_inst9|tmp~6_combout\ & (\b2v_inst9|tmp~8_combout\ & ((\b2v_inst|dht_humi_decimal\(1)) # 
-- (!\b2v_inst9|tmp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|tmp~6_combout\,
	datab => \b2v_inst9|tmp~7_combout\,
	datac => \b2v_inst9|tmp~8_combout\,
	datad => \b2v_inst|dht_humi_decimal\(1),
	combout => \b2v_inst9|unit[3]~2_combout\);

-- Location: LCCOMB_X11_Y18_N10
\b2v_inst5|Selector37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~5_combout\ = (\b2v_inst5|ptr\(1) & (!\b2v_inst5|ptr\(0) & ((\b2v_inst9|unit[3]~2_combout\)))) # (!\b2v_inst5|ptr\(1) & ((\b2v_inst5|ptr\(0)) # ((\b2v_inst7|unit[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst7|unit[3]~1_combout\,
	datad => \b2v_inst9|unit[3]~2_combout\,
	combout => \b2v_inst5|Selector37~5_combout\);

-- Location: LCCOMB_X10_Y18_N6
\b2v_inst5|Selector37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~6_combout\ = (\b2v_inst5|ptr\(3) & (((\b2v_inst5|Selector37~5_combout\)))) # (!\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(1)) # ((!\b2v_inst5|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(3),
	datac => \b2v_inst5|Selector37~5_combout\,
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector37~6_combout\);

-- Location: LCCOMB_X10_Y18_N16
\b2v_inst5|Selector38~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector38~11_combout\ = (\b2v_inst5|lcd_state.lcd_data_l1~q\ & !\b2v_inst5|ptr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Selector38~11_combout\);

-- Location: LCCOMB_X10_Y18_N12
\b2v_inst5|Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~3_combout\ = (\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|lcd_data_temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_delay~q\,
	datad => \b2v_inst5|lcd_data_temp\(3),
	combout => \b2v_inst5|Selector37~3_combout\);

-- Location: LCCOMB_X8_Y18_N28
\b2v_inst5|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~2_combout\ = (!\b2v_inst5|lcd_state.initial~q\ & (!\b2v_inst5|cmd_ptr\(2) & (\b2v_inst5|cmd_ptr\(1) $ (\b2v_inst5|cmd_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|cmd_ptr\(1),
	datac => \b2v_inst5|cmd_ptr\(2),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|Selector37~2_combout\);

-- Location: LCCOMB_X11_Y18_N22
\b2v_inst5|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux8~0_combout\ = (\b2v_inst5|ptr\(1) & ((\b2v_inst5|ptr\(2)))) # (!\b2v_inst5|ptr\(1) & (\b2v_inst5|ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datac => \b2v_inst5|ptr\(3),
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Mux8~0_combout\);

-- Location: LCCOMB_X11_Y17_N8
\b2v_inst5|lcd_data_temp[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|lcd_data_temp[0]~5_combout\ = (\b2v_inst5|ptr\(1) & !\b2v_inst5|ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|ptr\(3),
	combout => \b2v_inst5|lcd_data_temp[0]~5_combout\);

-- Location: LCCOMB_X11_Y16_N4
\b2v_inst6|tmp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|tmp~11_combout\ = (\b2v_inst6|tmp~0_combout\ & (((!\b2v_inst6|tmp~12_combout\) # (!\b2v_inst6|tmp~13_combout\)) # (!\b2v_inst|dht_temp_integral\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_temp_integral\(7),
	datab => \b2v_inst6|tmp~0_combout\,
	datac => \b2v_inst6|tmp~13_combout\,
	datad => \b2v_inst6|tmp~12_combout\,
	combout => \b2v_inst6|tmp~11_combout\);

-- Location: LCCOMB_X11_Y16_N30
\b2v_inst5|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux8~3_combout\ = (\b2v_inst5|lcd_data_temp[0]~5_combout\ & (\b2v_inst6|tmp~11_combout\ $ (((\b2v_inst6|Add6~0_combout\ & !\b2v_inst6|hundreds[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_data_temp[0]~5_combout\,
	datab => \b2v_inst6|Add6~0_combout\,
	datac => \b2v_inst6|tmp~11_combout\,
	datad => \b2v_inst6|hundreds[0]~0_combout\,
	combout => \b2v_inst5|Mux8~3_combout\);

-- Location: LCCOMB_X12_Y17_N4
\b2v_inst8|unit[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|unit[3]~1_combout\ = (\b2v_inst8|tmp~7_combout\ & (((!\b2v_inst|dht_temp_decimal\(1) & \b2v_inst8|tmp~6_combout\)))) # (!\b2v_inst8|tmp~7_combout\ & (\b2v_inst8|tmp~8_combout\ & ((\b2v_inst|dht_temp_decimal\(1)) # 
-- (!\b2v_inst8|tmp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~7_combout\,
	datab => \b2v_inst8|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_decimal\(1),
	datad => \b2v_inst8|tmp~6_combout\,
	combout => \b2v_inst8|unit[3]~1_combout\);

-- Location: LCCOMB_X12_Y16_N4
\b2v_inst5|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux8~1_combout\ = (\b2v_inst6|tmp~8_combout\ & (\b2v_inst6|tmp~10_combout\ & (!\b2v_inst|dht_temp_integral\(1)))) # (!\b2v_inst6|tmp~8_combout\ & (\b2v_inst6|tmp~9_combout\ & ((\b2v_inst|dht_temp_integral\(1)) # (!\b2v_inst6|tmp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~10_combout\,
	datab => \b2v_inst6|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_integral\(1),
	datad => \b2v_inst6|tmp~9_combout\,
	combout => \b2v_inst5|Mux8~1_combout\);

-- Location: LCCOMB_X11_Y18_N28
\b2v_inst5|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux8~2_combout\ = (\b2v_inst5|ptr\(1) & ((\b2v_inst8|unit[3]~1_combout\) # ((!\b2v_inst5|ptr\(3))))) # (!\b2v_inst5|ptr\(1) & (((\b2v_inst5|ptr\(3) & \b2v_inst5|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst8|unit[3]~1_combout\,
	datac => \b2v_inst5|ptr\(3),
	datad => \b2v_inst5|Mux8~1_combout\,
	combout => \b2v_inst5|Mux8~2_combout\);

-- Location: LCCOMB_X11_Y18_N30
\b2v_inst5|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux8~4_combout\ = (\b2v_inst5|ptr\(0) & (\b2v_inst5|Mux8~3_combout\)) # (!\b2v_inst5|ptr\(0) & ((\b2v_inst5|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst5|Mux8~3_combout\,
	datad => \b2v_inst5|Mux8~2_combout\,
	combout => \b2v_inst5|Mux8~4_combout\);

-- Location: LCCOMB_X11_Y18_N24
\b2v_inst5|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux8~5_combout\ = (\b2v_inst5|ptr\(0) & ((\b2v_inst5|ptr\(2) & ((\b2v_inst5|Mux8~4_combout\))) # (!\b2v_inst5|ptr\(2) & (\b2v_inst5|Mux8~0_combout\)))) # (!\b2v_inst5|ptr\(0) & ((\b2v_inst5|ptr\(2) & (!\b2v_inst5|Mux8~0_combout\)) # 
-- (!\b2v_inst5|ptr\(2) & ((\b2v_inst5|Mux8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Mux8~0_combout\,
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst5|Mux8~4_combout\,
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Mux8~5_combout\);

-- Location: LCCOMB_X10_Y18_N14
\b2v_inst5|Selector37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~4_combout\ = (\b2v_inst5|Selector37~3_combout\) # ((\b2v_inst5|Selector37~2_combout\) # ((\b2v_inst5|lcd_state.lcd_data_l0~q\ & \b2v_inst5|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector37~3_combout\,
	datab => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datac => \b2v_inst5|Selector37~2_combout\,
	datad => \b2v_inst5|Mux8~5_combout\,
	combout => \b2v_inst5|Selector37~4_combout\);

-- Location: LCCOMB_X13_Y19_N2
\b2v_inst7|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|Add6~1_combout\ = (\b2v_inst7|LessThan4~1_combout\ $ (!\b2v_inst7|tmp~12_combout\)) # (!\b2v_inst7|tmp~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|LessThan4~1_combout\,
	datac => \b2v_inst7|tmp~14_combout\,
	datad => \b2v_inst7|tmp~12_combout\,
	combout => \b2v_inst7|Add6~1_combout\);

-- Location: LCCOMB_X13_Y19_N24
\b2v_inst7|tens[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|tens[3]~13_combout\ = (\b2v_inst7|tmp~11_combout\ & (((!\b2v_inst7|Add6~1_combout\)))) # (!\b2v_inst7|tmp~11_combout\ & (\b2v_inst7|tmp~9_combout\ & (!\b2v_inst7|tmp~10_combout\ & \b2v_inst7|Add6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|tmp~11_combout\,
	datab => \b2v_inst7|tmp~9_combout\,
	datac => \b2v_inst7|tmp~10_combout\,
	datad => \b2v_inst7|Add6~1_combout\,
	combout => \b2v_inst7|tens[3]~13_combout\);

-- Location: LCCOMB_X10_Y18_N0
\b2v_inst5|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~0_combout\ = (!\b2v_inst5|ptr\(3) & (\b2v_inst5|lcd_state.lcd_data_l1~q\ & (\b2v_inst5|ptr\(1) $ (!\b2v_inst5|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(3),
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector37~0_combout\);

-- Location: LCCOMB_X10_Y18_N18
\b2v_inst5|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~1_combout\ = (\b2v_inst5|ptr\(2) & (\b2v_inst5|Selector37~0_combout\ & ((\b2v_inst7|tens[3]~13_combout\) # (!\b2v_inst5|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst7|tens[3]~13_combout\,
	datad => \b2v_inst5|Selector37~0_combout\,
	combout => \b2v_inst5|Selector37~1_combout\);

-- Location: LCCOMB_X10_Y18_N10
\b2v_inst5|Selector37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector37~7_combout\ = (\b2v_inst5|Selector37~4_combout\) # ((\b2v_inst5|Selector37~1_combout\) # ((\b2v_inst5|Selector37~6_combout\ & \b2v_inst5|Selector38~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector37~6_combout\,
	datab => \b2v_inst5|Selector38~11_combout\,
	datac => \b2v_inst5|Selector37~4_combout\,
	datad => \b2v_inst5|Selector37~1_combout\,
	combout => \b2v_inst5|Selector37~7_combout\);

-- Location: FF_X10_Y18_N11
\b2v_inst5|lcd_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector37~7_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(3));

-- Location: LCCOMB_X12_Y18_N30
\b2v_inst5|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~1_combout\ = (!\b2v_inst5|ptr\(3) & (\b2v_inst5|ptr\(2) & (\b2v_inst5|lcd_state.lcd_data_l1~q\ & !\b2v_inst5|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|ptr\(0),
	combout => \b2v_inst5|Selector36~1_combout\);

-- Location: LCCOMB_X12_Y18_N24
\b2v_inst5|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~2_combout\ = (\b2v_inst5|Selector36~1_combout\ & ((\b2v_inst7|LessThan4~1_combout\) # ((!\b2v_inst5|ptr\(1)) # (!\b2v_inst7|hundreds[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|LessThan4~1_combout\,
	datab => \b2v_inst7|hundreds[0]~0_combout\,
	datac => \b2v_inst5|Selector36~1_combout\,
	datad => \b2v_inst5|ptr\(1),
	combout => \b2v_inst5|Selector36~2_combout\);

-- Location: LCCOMB_X10_Y18_N28
\b2v_inst5|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~0_combout\ = (\b2v_inst5|ptr\(1) & (\b2v_inst5|ptr\(2) & ((\b2v_inst6|LessThan4~1_combout\) # (!\b2v_inst6|hundreds[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(1),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst6|hundreds[0]~0_combout\,
	datad => \b2v_inst6|LessThan4~1_combout\,
	combout => \b2v_inst5|Selector36~0_combout\);

-- Location: LCCOMB_X9_Y18_N26
\b2v_inst5|Selector36~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~8_combout\ = (\b2v_inst5|lcd_state.lcd_data_l0~q\ & ((\b2v_inst5|Selector36~0_combout\) # (\b2v_inst5|ptr\(0) $ (!\b2v_inst5|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|Selector36~0_combout\,
	combout => \b2v_inst5|Selector36~8_combout\);

-- Location: LCCOMB_X8_Y18_N14
\b2v_inst5|Selector36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~6_combout\ = (!\b2v_inst5|lcd_state.initial~q\ & (!\b2v_inst5|cmd_ptr\(1) & (!\b2v_inst5|cmd_ptr\(2) & \b2v_inst5|cmd_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.initial~q\,
	datab => \b2v_inst5|cmd_ptr\(1),
	datac => \b2v_inst5|cmd_ptr\(2),
	datad => \b2v_inst5|cmd_ptr\(0),
	combout => \b2v_inst5|Selector36~6_combout\);

-- Location: LCCOMB_X9_Y18_N8
\b2v_inst5|Selector36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~4_combout\ = (\b2v_inst5|lcd_state.lcd_data_l0~q\ & (((\b2v_inst5|ptr\(1))) # (!\b2v_inst5|ptr\(0)))) # (!\b2v_inst5|lcd_state.lcd_data_l0~q\ & (!\b2v_inst5|ptr\(0) & ((\b2v_inst5|lcd_state.lcd_data_l1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datab => \b2v_inst5|ptr\(0),
	datac => \b2v_inst5|ptr\(1),
	datad => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	combout => \b2v_inst5|Selector36~4_combout\);

-- Location: LCCOMB_X9_Y18_N0
\b2v_inst5|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector34~0_combout\ = (!\b2v_inst5|ptr\(3) & \b2v_inst5|lcd_state.lcd_data_l1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datad => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	combout => \b2v_inst5|Selector34~0_combout\);

-- Location: LCCOMB_X9_Y18_N10
\b2v_inst5|Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~3_combout\ = (\b2v_inst5|Selector34~0_combout\ & (\b2v_inst5|ptr\(0) & (\b2v_inst5|ptr\(1) $ (!\b2v_inst5|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector34~0_combout\,
	datab => \b2v_inst5|ptr\(1),
	datac => \b2v_inst5|ptr\(0),
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Selector36~3_combout\);

-- Location: LCCOMB_X9_Y18_N14
\b2v_inst5|Selector36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~5_combout\ = (\b2v_inst5|Selector36~3_combout\) # ((\b2v_inst5|ptr\(3) & (!\b2v_inst5|ptr\(2) & \b2v_inst5|Selector36~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|Selector36~4_combout\,
	datad => \b2v_inst5|Selector36~3_combout\,
	combout => \b2v_inst5|Selector36~5_combout\);

-- Location: LCCOMB_X9_Y18_N20
\b2v_inst5|Selector36~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~7_combout\ = (\b2v_inst5|Selector36~6_combout\) # ((\b2v_inst5|Selector36~5_combout\) # ((\b2v_inst5|lcd_data_temp\(4) & \b2v_inst5|lcd_state.lcd_delay~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector36~6_combout\,
	datab => \b2v_inst5|Selector36~5_combout\,
	datac => \b2v_inst5|lcd_data_temp\(4),
	datad => \b2v_inst5|lcd_state.lcd_delay~q\,
	combout => \b2v_inst5|Selector36~7_combout\);

-- Location: LCCOMB_X9_Y18_N6
\b2v_inst5|Selector36~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector36~9_combout\ = (\b2v_inst5|Selector36~2_combout\) # ((\b2v_inst5|Selector36~7_combout\) # ((!\b2v_inst5|ptr\(3) & \b2v_inst5|Selector36~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|Selector36~2_combout\,
	datac => \b2v_inst5|Selector36~8_combout\,
	datad => \b2v_inst5|Selector36~7_combout\,
	combout => \b2v_inst5|Selector36~9_combout\);

-- Location: FF_X9_Y18_N7
\b2v_inst5|lcd_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector36~9_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(4));

-- Location: LCCOMB_X9_Y18_N22
\b2v_inst5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Mux6~0_combout\ = (\b2v_inst5|ptr\(3) & ((\b2v_inst5|ptr\(1)) # ((\b2v_inst5|ptr\(0)) # (!\b2v_inst5|ptr\(2))))) # (!\b2v_inst5|ptr\(3) & (((\b2v_inst5|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(1),
	datac => \b2v_inst5|ptr\(0),
	datad => \b2v_inst5|ptr\(2),
	combout => \b2v_inst5|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y18_N16
\b2v_inst5|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector35~0_combout\ = (\b2v_inst5|Mux6~0_combout\ & ((\b2v_inst5|lcd_state.lcd_data_l0~q\) # ((\b2v_inst5|lcd_data_temp\(5) & \b2v_inst5|lcd_state.lcd_delay~q\)))) # (!\b2v_inst5|Mux6~0_combout\ & (\b2v_inst5|lcd_data_temp\(5) & 
-- ((\b2v_inst5|lcd_state.lcd_delay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Mux6~0_combout\,
	datab => \b2v_inst5|lcd_data_temp\(5),
	datac => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datad => \b2v_inst5|lcd_state.lcd_delay~q\,
	combout => \b2v_inst5|Selector35~0_combout\);

-- Location: LCCOMB_X9_Y18_N24
\b2v_inst5|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector35~1_combout\ = (\b2v_inst5|Selector36~6_combout\) # ((\b2v_inst5|Selector35~0_combout\) # ((\b2v_inst5|lcd_state.lcd_data_l1~q\ & !\b2v_inst5|Selector40~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Selector36~6_combout\,
	datab => \b2v_inst5|Selector35~0_combout\,
	datac => \b2v_inst5|lcd_state.lcd_data_l1~q\,
	datad => \b2v_inst5|Selector40~12_combout\,
	combout => \b2v_inst5|Selector35~1_combout\);

-- Location: FF_X9_Y18_N25
\b2v_inst5|lcd_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector35~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(5));

-- Location: LCCOMB_X9_Y18_N30
\b2v_inst5|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector34~1_combout\ = (\b2v_inst5|Mux6~0_combout\ & (\b2v_inst5|lcd_data_temp\(6) & ((\b2v_inst5|lcd_state.lcd_delay~q\)))) # (!\b2v_inst5|Mux6~0_combout\ & ((\b2v_inst5|lcd_state.lcd_data_l0~q\) # ((\b2v_inst5|lcd_data_temp\(6) & 
-- \b2v_inst5|lcd_state.lcd_delay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|Mux6~0_combout\,
	datab => \b2v_inst5|lcd_data_temp\(6),
	datac => \b2v_inst5|lcd_state.lcd_data_l0~q\,
	datad => \b2v_inst5|lcd_state.lcd_delay~q\,
	combout => \b2v_inst5|Selector34~1_combout\);

-- Location: LCCOMB_X9_Y18_N2
\b2v_inst5|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector34~2_combout\ = (\b2v_inst5|Selector34~1_combout\) # ((\b2v_inst5|lcd_state.lcd_add_11~q\) # ((!\b2v_inst5|ptr\(2) & \b2v_inst5|Selector34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(2),
	datab => \b2v_inst5|Selector34~0_combout\,
	datac => \b2v_inst5|Selector34~1_combout\,
	datad => \b2v_inst5|lcd_state.lcd_add_11~q\,
	combout => \b2v_inst5|Selector34~2_combout\);

-- Location: FF_X9_Y18_N3
\b2v_inst5|lcd_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector34~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(6));

-- Location: LCCOMB_X9_Y18_N12
\b2v_inst5|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector33~1_combout\ = (\b2v_inst5|lcd_state.lcd_add_l0~q\) # ((\b2v_inst5|lcd_state.lcd_add_11~q\) # ((\b2v_inst5|lcd_state.lcd_delay~q\ & \b2v_inst5|lcd_data_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|lcd_state.lcd_delay~q\,
	datab => \b2v_inst5|lcd_state.lcd_add_l0~q\,
	datac => \b2v_inst5|lcd_data_temp\(7),
	datad => \b2v_inst5|lcd_state.lcd_add_11~q\,
	combout => \b2v_inst5|Selector33~1_combout\);

-- Location: LCCOMB_X9_Y18_N4
\b2v_inst5|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|Selector33~2_combout\ = (\b2v_inst5|Selector33~1_combout\) # ((\b2v_inst5|ptr\(3) & (!\b2v_inst5|ptr\(2) & \b2v_inst5|Selector33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|ptr\(3),
	datab => \b2v_inst5|ptr\(2),
	datac => \b2v_inst5|Selector33~0_combout\,
	datad => \b2v_inst5|Selector33~1_combout\,
	combout => \b2v_inst5|Selector33~2_combout\);

-- Location: FF_X9_Y18_N5
\b2v_inst5|lcd_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst5|Selector33~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|lcd_data_temp\(7));

-- Location: LCCOMB_X16_Y19_N12
\b2v_inst13|rd_ptr[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|rd_ptr[2]~feeder_combout\ = \b2v_inst13|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst13|Add0~0_combout\,
	combout => \b2v_inst13|rd_ptr[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y19_N28
\b2v_inst13|wr_ptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|wr_ptr[0]~1_combout\ = !\b2v_inst13|wr_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|wr_ptr[0]~1_combout\);

-- Location: LCCOMB_X17_Y19_N18
\b2v_inst13|wr_ptr[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|wr_ptr[3]~0_combout\ = (\b2v_inst11|uart_tx_ena~q\ & (((\b2v_inst14|Selector3~1_combout\ & \b2v_inst14|state_r.stop~q\)) # (!\b2v_inst13|full_tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~1_combout\,
	datab => \b2v_inst13|full_tmp~q\,
	datac => \b2v_inst11|uart_tx_ena~q\,
	datad => \b2v_inst14|state_r.stop~q\,
	combout => \b2v_inst13|wr_ptr[3]~0_combout\);

-- Location: FF_X16_Y19_N29
\b2v_inst13|wr_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|wr_ptr[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|wr_ptr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|wr_ptr\(0));

-- Location: LCCOMB_X16_Y19_N14
\b2v_inst13|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Add1~2_combout\ = \b2v_inst13|wr_ptr\(1) $ (\b2v_inst13|wr_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(1),
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Add1~2_combout\);

-- Location: FF_X16_Y19_N15
\b2v_inst13|wr_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|Add1~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|wr_ptr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|wr_ptr\(1));

-- Location: LCCOMB_X16_Y19_N4
\b2v_inst13|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Add1~0_combout\ = \b2v_inst13|wr_ptr\(2) $ (((\b2v_inst13|wr_ptr\(1) & \b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_ptr\(2),
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Add1~0_combout\);

-- Location: FF_X16_Y19_N5
\b2v_inst13|wr_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|Add1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|wr_ptr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|wr_ptr\(2));

-- Location: FF_X16_Y19_N19
\b2v_inst13|wr_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|Add1~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|wr_ptr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|wr_ptr\(3));

-- Location: LCCOMB_X16_Y19_N18
\b2v_inst13|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Add1~1_combout\ = \b2v_inst13|wr_ptr\(3) $ (((\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_ptr\(2) & \b2v_inst13|wr_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(1),
	datab => \b2v_inst13|wr_ptr\(2),
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Add1~1_combout\);

-- Location: LCCOMB_X16_Y19_N30
\b2v_inst13|rd_ptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|rd_ptr[0]~1_combout\ = !\b2v_inst13|rd_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst13|rd_ptr[0]~1_combout\);

-- Location: FF_X16_Y19_N31
\b2v_inst13|rd_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|rd_ptr[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|rd_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|rd_ptr\(0));

-- Location: LCCOMB_X16_Y19_N8
\b2v_inst13|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Add0~2_combout\ = \b2v_inst13|rd_ptr\(0) $ (\b2v_inst13|rd_ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst13|rd_ptr\(1),
	combout => \b2v_inst13|Add0~2_combout\);

-- Location: FF_X16_Y19_N9
\b2v_inst13|rd_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|rd_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|rd_ptr\(1));

-- Location: LCCOMB_X16_Y19_N6
\b2v_inst13|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux12~0_combout\ = (\b2v_inst13|rd_ptr\(0) & (!\b2v_inst13|wr_ptr\(0) & (\b2v_inst13|rd_ptr\(1) $ (!\b2v_inst13|wr_ptr\(1))))) # (!\b2v_inst13|rd_ptr\(0) & (\b2v_inst13|wr_ptr\(0) & (\b2v_inst13|rd_ptr\(1) $ (\b2v_inst13|wr_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|wr_ptr\(1),
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Mux12~0_combout\);

-- Location: LCCOMB_X16_Y19_N24
\b2v_inst13|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux12~1_combout\ = (\b2v_inst13|Mux12~0_combout\ & (\b2v_inst13|rd_ptr\(2) $ (!\b2v_inst13|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|Add1~0_combout\,
	datad => \b2v_inst13|Mux12~0_combout\,
	combout => \b2v_inst13|Mux12~1_combout\);

-- Location: LCCOMB_X16_Y19_N10
\b2v_inst13|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Add0~1_combout\ = \b2v_inst13|rd_ptr\(3) $ (((\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|rd_ptr\(1) & \b2v_inst13|rd_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|rd_ptr\(0),
	datad => \b2v_inst13|rd_ptr\(3),
	combout => \b2v_inst13|Add0~1_combout\);

-- Location: LCCOMB_X16_Y19_N2
\b2v_inst13|rd_ptr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|rd_ptr[3]~feeder_combout\ = \b2v_inst13|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst13|Add0~1_combout\,
	combout => \b2v_inst13|rd_ptr[3]~feeder_combout\);

-- Location: FF_X16_Y19_N3
\b2v_inst13|rd_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|rd_ptr[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|rd_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|rd_ptr\(3));

-- Location: LCCOMB_X16_Y19_N22
\b2v_inst13|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux12~2_combout\ = (\b2v_inst13|Mux12~1_combout\ & (\b2v_inst11|uart_tx_ena~q\ & (\b2v_inst13|Add1~1_combout\ $ (!\b2v_inst13|rd_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|Add1~1_combout\,
	datab => \b2v_inst13|Mux12~1_combout\,
	datac => \b2v_inst11|uart_tx_ena~q\,
	datad => \b2v_inst13|rd_ptr\(3),
	combout => \b2v_inst13|Mux12~2_combout\);

-- Location: LCCOMB_X17_Y19_N24
\b2v_inst13|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux12~3_combout\ = (\b2v_inst13|Mux12~2_combout\) # ((\b2v_inst13|full_tmp~q\ & ((\b2v_inst11|uart_tx_ena~q\) # (!\b2v_inst13|empty_tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|empty_tmp~q\,
	datab => \b2v_inst11|uart_tx_ena~q\,
	datac => \b2v_inst13|full_tmp~q\,
	datad => \b2v_inst13|Mux12~2_combout\,
	combout => \b2v_inst13|Mux12~3_combout\);

-- Location: LCCOMB_X17_Y19_N8
\b2v_inst13|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux13~5_combout\ = \b2v_inst11|uart_tx_ena~q\ $ (((\b2v_inst14|Selector3~1_combout\ & \b2v_inst14|state_r.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~1_combout\,
	datac => \b2v_inst11|uart_tx_ena~q\,
	datad => \b2v_inst14|state_r.stop~q\,
	combout => \b2v_inst13|Mux13~5_combout\);

-- Location: FF_X17_Y19_N25
\b2v_inst13|full_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|Mux12~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Mux13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|full_tmp~q\);

-- Location: LCCOMB_X13_Y14_N0
\b2v_inst12|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~0_combout\ = \b2v_inst12|reg_cnt_out\(0) $ (GND)
-- \b2v_inst12|Add0~1\ = CARRY(!\b2v_inst12|reg_cnt_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(0),
	datad => VCC,
	combout => \b2v_inst12|Add0~0_combout\,
	cout => \b2v_inst12|Add0~1\);

-- Location: LCCOMB_X14_Y14_N6
\b2v_inst12|reg_cnt_in[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[0]~13_combout\ = (!\b2v_inst12|Equal0~11_combout\ & !\b2v_inst12|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Equal0~11_combout\,
	datac => \b2v_inst12|Add0~0_combout\,
	combout => \b2v_inst12|reg_cnt_in[0]~13_combout\);

-- Location: FF_X14_Y14_N7
\b2v_inst12|reg_cnt_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(0));

-- Location: LCCOMB_X13_Y14_N2
\b2v_inst12|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~2_combout\ = (\b2v_inst12|reg_cnt_out\(1) & (!\b2v_inst12|Add0~1\)) # (!\b2v_inst12|reg_cnt_out\(1) & ((\b2v_inst12|Add0~1\) # (GND)))
-- \b2v_inst12|Add0~3\ = CARRY((!\b2v_inst12|Add0~1\) # (!\b2v_inst12|reg_cnt_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(1),
	datad => VCC,
	cin => \b2v_inst12|Add0~1\,
	combout => \b2v_inst12|Add0~2_combout\,
	cout => \b2v_inst12|Add0~3\);

-- Location: LCCOMB_X14_Y14_N20
\b2v_inst12|reg_cnt_in[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[1]~14_combout\ = (!\b2v_inst12|Equal0~11_combout\ & \b2v_inst12|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|Equal0~11_combout\,
	datad => \b2v_inst12|Add0~2_combout\,
	combout => \b2v_inst12|reg_cnt_in[1]~14_combout\);

-- Location: FF_X14_Y14_N21
\b2v_inst12|reg_cnt_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(1));

-- Location: LCCOMB_X13_Y14_N4
\b2v_inst12|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~4_combout\ = (\b2v_inst12|reg_cnt_out\(2) & (\b2v_inst12|Add0~3\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(2) & (!\b2v_inst12|Add0~3\ & VCC))
-- \b2v_inst12|Add0~5\ = CARRY((\b2v_inst12|reg_cnt_out\(2) & !\b2v_inst12|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(2),
	datad => VCC,
	cin => \b2v_inst12|Add0~3\,
	combout => \b2v_inst12|Add0~4_combout\,
	cout => \b2v_inst12|Add0~5\);

-- Location: FF_X13_Y14_N5
\b2v_inst12|reg_cnt_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(2));

-- Location: LCCOMB_X13_Y14_N6
\b2v_inst12|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~6_combout\ = (\b2v_inst12|reg_cnt_out\(3) & (!\b2v_inst12|Add0~5\)) # (!\b2v_inst12|reg_cnt_out\(3) & ((\b2v_inst12|Add0~5\) # (GND)))
-- \b2v_inst12|Add0~7\ = CARRY((!\b2v_inst12|Add0~5\) # (!\b2v_inst12|reg_cnt_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(3),
	datad => VCC,
	cin => \b2v_inst12|Add0~5\,
	combout => \b2v_inst12|Add0~6_combout\,
	cout => \b2v_inst12|Add0~7\);

-- Location: LCCOMB_X14_Y14_N10
\b2v_inst12|reg_cnt_in[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[3]~15_combout\ = (!\b2v_inst12|Equal0~11_combout\ & \b2v_inst12|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Equal0~11_combout\,
	datac => \b2v_inst12|Add0~6_combout\,
	combout => \b2v_inst12|reg_cnt_in[3]~15_combout\);

-- Location: FF_X14_Y14_N11
\b2v_inst12|reg_cnt_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(3));

-- Location: LCCOMB_X13_Y14_N8
\b2v_inst12|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~8_combout\ = (\b2v_inst12|reg_cnt_out\(4) & (\b2v_inst12|Add0~7\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(4) & (!\b2v_inst12|Add0~7\ & VCC))
-- \b2v_inst12|Add0~9\ = CARRY((\b2v_inst12|reg_cnt_out\(4) & !\b2v_inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(4),
	datad => VCC,
	cin => \b2v_inst12|Add0~7\,
	combout => \b2v_inst12|Add0~8_combout\,
	cout => \b2v_inst12|Add0~9\);

-- Location: FF_X13_Y14_N9
\b2v_inst12|reg_cnt_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(4));

-- Location: LCCOMB_X13_Y14_N10
\b2v_inst12|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~10_combout\ = (\b2v_inst12|reg_cnt_out\(5) & (!\b2v_inst12|Add0~9\)) # (!\b2v_inst12|reg_cnt_out\(5) & ((\b2v_inst12|Add0~9\) # (GND)))
-- \b2v_inst12|Add0~11\ = CARRY((!\b2v_inst12|Add0~9\) # (!\b2v_inst12|reg_cnt_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(5),
	datad => VCC,
	cin => \b2v_inst12|Add0~9\,
	combout => \b2v_inst12|Add0~10_combout\,
	cout => \b2v_inst12|Add0~11\);

-- Location: FF_X13_Y14_N11
\b2v_inst12|reg_cnt_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(5));

-- Location: LCCOMB_X13_Y14_N12
\b2v_inst12|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~12_combout\ = (\b2v_inst12|reg_cnt_out\(6) & (\b2v_inst12|Add0~11\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(6) & (!\b2v_inst12|Add0~11\ & VCC))
-- \b2v_inst12|Add0~13\ = CARRY((\b2v_inst12|reg_cnt_out\(6) & !\b2v_inst12|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(6),
	datad => VCC,
	cin => \b2v_inst12|Add0~11\,
	combout => \b2v_inst12|Add0~12_combout\,
	cout => \b2v_inst12|Add0~13\);

-- Location: FF_X13_Y14_N13
\b2v_inst12|reg_cnt_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(6));

-- Location: LCCOMB_X14_Y14_N30
\b2v_inst12|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~7_combout\ = (!\b2v_inst12|reg_cnt_out\(5) & (!\b2v_inst12|reg_cnt_out\(6) & !\b2v_inst12|reg_cnt_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(5),
	datac => \b2v_inst12|reg_cnt_out\(6),
	datad => \b2v_inst12|reg_cnt_out\(4),
	combout => \b2v_inst12|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y14_N2
\b2v_inst12|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~6_combout\ = (!\b2v_inst12|reg_cnt_out\(10) & !\b2v_inst12|reg_cnt_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|reg_cnt_out\(10),
	datad => \b2v_inst12|reg_cnt_out\(11),
	combout => \b2v_inst12|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y14_N28
\b2v_inst12|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~28_combout\ = (\b2v_inst12|reg_cnt_out\(14) & (\b2v_inst12|Add0~27\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(14) & (!\b2v_inst12|Add0~27\ & VCC))
-- \b2v_inst12|Add0~29\ = CARRY((\b2v_inst12|reg_cnt_out\(14) & !\b2v_inst12|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(14),
	datad => VCC,
	cin => \b2v_inst12|Add0~27\,
	combout => \b2v_inst12|Add0~28_combout\,
	cout => \b2v_inst12|Add0~29\);

-- Location: LCCOMB_X13_Y14_N30
\b2v_inst12|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~30_combout\ = (\b2v_inst12|reg_cnt_out\(15) & (!\b2v_inst12|Add0~29\)) # (!\b2v_inst12|reg_cnt_out\(15) & ((\b2v_inst12|Add0~29\) # (GND)))
-- \b2v_inst12|Add0~31\ = CARRY((!\b2v_inst12|Add0~29\) # (!\b2v_inst12|reg_cnt_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(15),
	datad => VCC,
	cin => \b2v_inst12|Add0~29\,
	combout => \b2v_inst12|Add0~30_combout\,
	cout => \b2v_inst12|Add0~31\);

-- Location: LCCOMB_X12_Y14_N16
\b2v_inst12|reg_cnt_in[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[15]~9_combout\ = (\b2v_inst12|Add0~30_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|Add0~30_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[15]~9_combout\);

-- Location: FF_X12_Y14_N17
\b2v_inst12|reg_cnt_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(15));

-- Location: LCCOMB_X14_Y13_N18
\b2v_inst12|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~5_combout\ = (\b2v_inst12|reg_cnt_out\(12) & \b2v_inst12|reg_cnt_out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|reg_cnt_out\(12),
	datad => \b2v_inst12|reg_cnt_out\(13),
	combout => \b2v_inst12|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y14_N12
\b2v_inst12|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~8_combout\ = (\b2v_inst12|Equal0~7_combout\ & (\b2v_inst12|Equal0~6_combout\ & (\b2v_inst12|reg_cnt_out\(15) & \b2v_inst12|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Equal0~7_combout\,
	datab => \b2v_inst12|Equal0~6_combout\,
	datac => \b2v_inst12|reg_cnt_out\(15),
	datad => \b2v_inst12|Equal0~5_combout\,
	combout => \b2v_inst12|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y13_N0
\b2v_inst12|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~32_combout\ = (\b2v_inst12|reg_cnt_out\(16) & (\b2v_inst12|Add0~31\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(16) & (!\b2v_inst12|Add0~31\ & VCC))
-- \b2v_inst12|Add0~33\ = CARRY((\b2v_inst12|reg_cnt_out\(16) & !\b2v_inst12|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(16),
	datad => VCC,
	cin => \b2v_inst12|Add0~31\,
	combout => \b2v_inst12|Add0~32_combout\,
	cout => \b2v_inst12|Add0~33\);

-- Location: FF_X13_Y13_N1
\b2v_inst12|reg_cnt_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(16));

-- Location: LCCOMB_X13_Y13_N2
\b2v_inst12|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~34_combout\ = (\b2v_inst12|reg_cnt_out\(17) & (!\b2v_inst12|Add0~33\)) # (!\b2v_inst12|reg_cnt_out\(17) & ((\b2v_inst12|Add0~33\) # (GND)))
-- \b2v_inst12|Add0~35\ = CARRY((!\b2v_inst12|Add0~33\) # (!\b2v_inst12|reg_cnt_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(17),
	datad => VCC,
	cin => \b2v_inst12|Add0~33\,
	combout => \b2v_inst12|Add0~34_combout\,
	cout => \b2v_inst12|Add0~35\);

-- Location: LCCOMB_X14_Y13_N4
\b2v_inst12|reg_cnt_in[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[17]~0_combout\ = (\b2v_inst12|Add0~34_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Add0~34_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[17]~0_combout\);

-- Location: FF_X14_Y13_N5
\b2v_inst12|reg_cnt_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(17));

-- Location: LCCOMB_X13_Y13_N4
\b2v_inst12|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~36_combout\ = (\b2v_inst12|reg_cnt_out\(18) & (\b2v_inst12|Add0~35\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(18) & (!\b2v_inst12|Add0~35\ & VCC))
-- \b2v_inst12|Add0~37\ = CARRY((\b2v_inst12|reg_cnt_out\(18) & !\b2v_inst12|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(18),
	datad => VCC,
	cin => \b2v_inst12|Add0~35\,
	combout => \b2v_inst12|Add0~36_combout\,
	cout => \b2v_inst12|Add0~37\);

-- Location: LCCOMB_X14_Y13_N6
\b2v_inst12|reg_cnt_in[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[18]~1_combout\ = (\b2v_inst12|Add0~36_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|Add0~36_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[18]~1_combout\);

-- Location: FF_X14_Y13_N7
\b2v_inst12|reg_cnt_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(18));

-- Location: LCCOMB_X13_Y13_N6
\b2v_inst12|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~38_combout\ = (\b2v_inst12|reg_cnt_out\(19) & (!\b2v_inst12|Add0~37\)) # (!\b2v_inst12|reg_cnt_out\(19) & ((\b2v_inst12|Add0~37\) # (GND)))
-- \b2v_inst12|Add0~39\ = CARRY((!\b2v_inst12|Add0~37\) # (!\b2v_inst12|reg_cnt_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(19),
	datad => VCC,
	cin => \b2v_inst12|Add0~37\,
	combout => \b2v_inst12|Add0~38_combout\,
	cout => \b2v_inst12|Add0~39\);

-- Location: FF_X13_Y13_N7
\b2v_inst12|reg_cnt_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(19));

-- Location: LCCOMB_X13_Y13_N8
\b2v_inst12|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~40_combout\ = (\b2v_inst12|reg_cnt_out\(20) & (\b2v_inst12|Add0~39\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(20) & (!\b2v_inst12|Add0~39\ & VCC))
-- \b2v_inst12|Add0~41\ = CARRY((\b2v_inst12|reg_cnt_out\(20) & !\b2v_inst12|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(20),
	datad => VCC,
	cin => \b2v_inst12|Add0~39\,
	combout => \b2v_inst12|Add0~40_combout\,
	cout => \b2v_inst12|Add0~41\);

-- Location: FF_X13_Y13_N9
\b2v_inst12|reg_cnt_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(20));

-- Location: LCCOMB_X13_Y13_N10
\b2v_inst12|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~42_combout\ = (\b2v_inst12|reg_cnt_out\(21) & (!\b2v_inst12|Add0~41\)) # (!\b2v_inst12|reg_cnt_out\(21) & ((\b2v_inst12|Add0~41\) # (GND)))
-- \b2v_inst12|Add0~43\ = CARRY((!\b2v_inst12|Add0~41\) # (!\b2v_inst12|reg_cnt_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(21),
	datad => VCC,
	cin => \b2v_inst12|Add0~41\,
	combout => \b2v_inst12|Add0~42_combout\,
	cout => \b2v_inst12|Add0~43\);

-- Location: LCCOMB_X14_Y13_N14
\b2v_inst12|reg_cnt_in[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[21]~2_combout\ = (\b2v_inst12|Add0~42_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Add0~42_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[21]~2_combout\);

-- Location: FF_X14_Y13_N15
\b2v_inst12|reg_cnt_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(21));

-- Location: LCCOMB_X13_Y13_N12
\b2v_inst12|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~44_combout\ = (\b2v_inst12|reg_cnt_out\(22) & (\b2v_inst12|Add0~43\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(22) & (!\b2v_inst12|Add0~43\ & VCC))
-- \b2v_inst12|Add0~45\ = CARRY((\b2v_inst12|reg_cnt_out\(22) & !\b2v_inst12|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(22),
	datad => VCC,
	cin => \b2v_inst12|Add0~43\,
	combout => \b2v_inst12|Add0~44_combout\,
	cout => \b2v_inst12|Add0~45\);

-- Location: LCCOMB_X14_Y13_N16
\b2v_inst12|reg_cnt_in[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[22]~3_combout\ = (\b2v_inst12|Add0~44_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Add0~44_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[22]~3_combout\);

-- Location: FF_X14_Y13_N17
\b2v_inst12|reg_cnt_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(22));

-- Location: LCCOMB_X13_Y13_N14
\b2v_inst12|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~46_combout\ = (\b2v_inst12|reg_cnt_out\(23) & (!\b2v_inst12|Add0~45\)) # (!\b2v_inst12|reg_cnt_out\(23) & ((\b2v_inst12|Add0~45\) # (GND)))
-- \b2v_inst12|Add0~47\ = CARRY((!\b2v_inst12|Add0~45\) # (!\b2v_inst12|reg_cnt_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(23),
	datad => VCC,
	cin => \b2v_inst12|Add0~45\,
	combout => \b2v_inst12|Add0~46_combout\,
	cout => \b2v_inst12|Add0~47\);

-- Location: LCCOMB_X14_Y13_N26
\b2v_inst12|reg_cnt_in[23]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[23]~4_combout\ = (\b2v_inst12|Add0~46_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Add0~46_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[23]~4_combout\);

-- Location: FF_X14_Y13_N27
\b2v_inst12|reg_cnt_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(23));

-- Location: LCCOMB_X14_Y13_N12
\b2v_inst12|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~1_combout\ = (!\b2v_inst12|reg_cnt_out\(20) & (\b2v_inst12|reg_cnt_out\(21) & (\b2v_inst12|reg_cnt_out\(23) & \b2v_inst12|reg_cnt_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(20),
	datab => \b2v_inst12|reg_cnt_out\(21),
	datac => \b2v_inst12|reg_cnt_out\(23),
	datad => \b2v_inst12|reg_cnt_out\(22),
	combout => \b2v_inst12|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y13_N16
\b2v_inst12|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~48_combout\ = (\b2v_inst12|reg_cnt_out\(24) & (\b2v_inst12|Add0~47\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(24) & (!\b2v_inst12|Add0~47\ & VCC))
-- \b2v_inst12|Add0~49\ = CARRY((\b2v_inst12|reg_cnt_out\(24) & !\b2v_inst12|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(24),
	datad => VCC,
	cin => \b2v_inst12|Add0~47\,
	combout => \b2v_inst12|Add0~48_combout\,
	cout => \b2v_inst12|Add0~49\);

-- Location: FF_X13_Y13_N17
\b2v_inst12|reg_cnt_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(24));

-- Location: LCCOMB_X13_Y13_N18
\b2v_inst12|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~50_combout\ = (\b2v_inst12|reg_cnt_out\(25) & (!\b2v_inst12|Add0~49\)) # (!\b2v_inst12|reg_cnt_out\(25) & ((\b2v_inst12|Add0~49\) # (GND)))
-- \b2v_inst12|Add0~51\ = CARRY((!\b2v_inst12|Add0~49\) # (!\b2v_inst12|reg_cnt_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(25),
	datad => VCC,
	cin => \b2v_inst12|Add0~49\,
	combout => \b2v_inst12|Add0~50_combout\,
	cout => \b2v_inst12|Add0~51\);

-- Location: LCCOMB_X14_Y13_N30
\b2v_inst12|reg_cnt_in[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[25]~5_combout\ = (\b2v_inst12|Add0~50_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|Add0~50_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[25]~5_combout\);

-- Location: FF_X14_Y13_N31
\b2v_inst12|reg_cnt_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[25]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(25));

-- Location: LCCOMB_X13_Y13_N20
\b2v_inst12|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~52_combout\ = (\b2v_inst12|reg_cnt_out\(26) & (\b2v_inst12|Add0~51\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(26) & (!\b2v_inst12|Add0~51\ & VCC))
-- \b2v_inst12|Add0~53\ = CARRY((\b2v_inst12|reg_cnt_out\(26) & !\b2v_inst12|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(26),
	datad => VCC,
	cin => \b2v_inst12|Add0~51\,
	combout => \b2v_inst12|Add0~52_combout\,
	cout => \b2v_inst12|Add0~53\);

-- Location: LCCOMB_X14_Y13_N28
\b2v_inst12|reg_cnt_in[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[26]~6_combout\ = (\b2v_inst12|Add0~52_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|Add0~52_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[26]~6_combout\);

-- Location: FF_X14_Y13_N29
\b2v_inst12|reg_cnt_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(26));

-- Location: LCCOMB_X13_Y13_N22
\b2v_inst12|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~54_combout\ = (\b2v_inst12|reg_cnt_out\(27) & (!\b2v_inst12|Add0~53\)) # (!\b2v_inst12|reg_cnt_out\(27) & ((\b2v_inst12|Add0~53\) # (GND)))
-- \b2v_inst12|Add0~55\ = CARRY((!\b2v_inst12|Add0~53\) # (!\b2v_inst12|reg_cnt_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(27),
	datad => VCC,
	cin => \b2v_inst12|Add0~53\,
	combout => \b2v_inst12|Add0~54_combout\,
	cout => \b2v_inst12|Add0~55\);

-- Location: LCCOMB_X14_Y13_N10
\b2v_inst12|reg_cnt_in[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[27]~7_combout\ = (\b2v_inst12|Add0~54_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|Add0~54_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[27]~7_combout\);

-- Location: FF_X14_Y13_N11
\b2v_inst12|reg_cnt_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[27]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(27));

-- Location: LCCOMB_X14_Y13_N24
\b2v_inst12|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~2_combout\ = (!\b2v_inst12|reg_cnt_out\(24) & (\b2v_inst12|reg_cnt_out\(27) & (\b2v_inst12|reg_cnt_out\(25) & \b2v_inst12|reg_cnt_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(24),
	datab => \b2v_inst12|reg_cnt_out\(27),
	datac => \b2v_inst12|reg_cnt_out\(25),
	datad => \b2v_inst12|reg_cnt_out\(26),
	combout => \b2v_inst12|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y13_N24
\b2v_inst12|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~56_combout\ = (\b2v_inst12|reg_cnt_out\(28) & (\b2v_inst12|Add0~55\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(28) & (!\b2v_inst12|Add0~55\ & VCC))
-- \b2v_inst12|Add0~57\ = CARRY((\b2v_inst12|reg_cnt_out\(28) & !\b2v_inst12|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(28),
	datad => VCC,
	cin => \b2v_inst12|Add0~55\,
	combout => \b2v_inst12|Add0~56_combout\,
	cout => \b2v_inst12|Add0~57\);

-- Location: FF_X13_Y13_N25
\b2v_inst12|reg_cnt_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(28));

-- Location: LCCOMB_X13_Y13_N26
\b2v_inst12|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~58_combout\ = (\b2v_inst12|reg_cnt_out\(29) & (!\b2v_inst12|Add0~57\)) # (!\b2v_inst12|reg_cnt_out\(29) & ((\b2v_inst12|Add0~57\) # (GND)))
-- \b2v_inst12|Add0~59\ = CARRY((!\b2v_inst12|Add0~57\) # (!\b2v_inst12|reg_cnt_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(29),
	datad => VCC,
	cin => \b2v_inst12|Add0~57\,
	combout => \b2v_inst12|Add0~58_combout\,
	cout => \b2v_inst12|Add0~59\);

-- Location: FF_X13_Y13_N27
\b2v_inst12|reg_cnt_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(29));

-- Location: LCCOMB_X13_Y13_N28
\b2v_inst12|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~60_combout\ = (\b2v_inst12|reg_cnt_out\(30) & (\b2v_inst12|Add0~59\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(30) & (!\b2v_inst12|Add0~59\ & VCC))
-- \b2v_inst12|Add0~61\ = CARRY((\b2v_inst12|reg_cnt_out\(30) & !\b2v_inst12|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(30),
	datad => VCC,
	cin => \b2v_inst12|Add0~59\,
	combout => \b2v_inst12|Add0~60_combout\,
	cout => \b2v_inst12|Add0~61\);

-- Location: FF_X13_Y13_N29
\b2v_inst12|reg_cnt_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(30));

-- Location: LCCOMB_X13_Y13_N30
\b2v_inst12|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~62_combout\ = \b2v_inst12|reg_cnt_out\(31) $ (\b2v_inst12|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(31),
	cin => \b2v_inst12|Add0~61\,
	combout => \b2v_inst12|Add0~62_combout\);

-- Location: FF_X13_Y13_N31
\b2v_inst12|reg_cnt_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(31));

-- Location: LCCOMB_X14_Y13_N22
\b2v_inst12|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~3_combout\ = (!\b2v_inst12|reg_cnt_out\(31) & (!\b2v_inst12|reg_cnt_out\(28) & (!\b2v_inst12|reg_cnt_out\(29) & !\b2v_inst12|reg_cnt_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(31),
	datab => \b2v_inst12|reg_cnt_out\(28),
	datac => \b2v_inst12|reg_cnt_out\(29),
	datad => \b2v_inst12|reg_cnt_out\(30),
	combout => \b2v_inst12|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y13_N20
\b2v_inst12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~0_combout\ = (!\b2v_inst12|reg_cnt_out\(16) & (\b2v_inst12|reg_cnt_out\(17) & (!\b2v_inst12|reg_cnt_out\(19) & \b2v_inst12|reg_cnt_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(16),
	datab => \b2v_inst12|reg_cnt_out\(17),
	datac => \b2v_inst12|reg_cnt_out\(19),
	datad => \b2v_inst12|reg_cnt_out\(18),
	combout => \b2v_inst12|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y13_N0
\b2v_inst12|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~4_combout\ = (\b2v_inst12|Equal0~1_combout\ & (\b2v_inst12|Equal0~2_combout\ & (\b2v_inst12|Equal0~3_combout\ & \b2v_inst12|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Equal0~1_combout\,
	datab => \b2v_inst12|Equal0~2_combout\,
	datac => \b2v_inst12|Equal0~3_combout\,
	datad => \b2v_inst12|Equal0~0_combout\,
	combout => \b2v_inst12|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y14_N14
\b2v_inst12|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~9_combout\ = (!\b2v_inst12|reg_cnt_out\(14) & (\b2v_inst12|reg_cnt_out\(9) & (!\b2v_inst12|reg_cnt_out\(2) & !\b2v_inst12|reg_cnt_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(14),
	datab => \b2v_inst12|reg_cnt_out\(9),
	datac => \b2v_inst12|reg_cnt_out\(2),
	datad => \b2v_inst12|reg_cnt_out\(1),
	combout => \b2v_inst12|Equal0~9_combout\);

-- Location: LCCOMB_X13_Y14_N14
\b2v_inst12|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~14_combout\ = (\b2v_inst12|reg_cnt_out\(7) & (!\b2v_inst12|Add0~13\)) # (!\b2v_inst12|reg_cnt_out\(7) & ((\b2v_inst12|Add0~13\) # (GND)))
-- \b2v_inst12|Add0~15\ = CARRY((!\b2v_inst12|Add0~13\) # (!\b2v_inst12|reg_cnt_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(7),
	datad => VCC,
	cin => \b2v_inst12|Add0~13\,
	combout => \b2v_inst12|Add0~14_combout\,
	cout => \b2v_inst12|Add0~15\);

-- Location: LCCOMB_X14_Y14_N4
\b2v_inst12|reg_cnt_in[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[7]~8_combout\ = (!\b2v_inst12|Equal0~11_combout\ & \b2v_inst12|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|Equal0~11_combout\,
	datad => \b2v_inst12|Add0~14_combout\,
	combout => \b2v_inst12|reg_cnt_in[7]~8_combout\);

-- Location: FF_X14_Y14_N5
\b2v_inst12|reg_cnt_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(7));

-- Location: LCCOMB_X13_Y14_N16
\b2v_inst12|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~16_combout\ = (\b2v_inst12|reg_cnt_out\(8) & (\b2v_inst12|Add0~15\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(8) & (!\b2v_inst12|Add0~15\ & VCC))
-- \b2v_inst12|Add0~17\ = CARRY((\b2v_inst12|reg_cnt_out\(8) & !\b2v_inst12|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(8),
	datad => VCC,
	cin => \b2v_inst12|Add0~15\,
	combout => \b2v_inst12|Add0~16_combout\,
	cout => \b2v_inst12|Add0~17\);

-- Location: FF_X13_Y14_N17
\b2v_inst12|reg_cnt_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(8));

-- Location: LCCOMB_X14_Y14_N0
\b2v_inst12|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~10_combout\ = (\b2v_inst12|reg_cnt_out\(3) & (\b2v_inst12|reg_cnt_out\(7) & (!\b2v_inst12|reg_cnt_out\(8) & !\b2v_inst12|reg_cnt_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(3),
	datab => \b2v_inst12|reg_cnt_out\(7),
	datac => \b2v_inst12|reg_cnt_out\(8),
	datad => \b2v_inst12|reg_cnt_out\(0),
	combout => \b2v_inst12|Equal0~10_combout\);

-- Location: LCCOMB_X14_Y14_N22
\b2v_inst12|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~11_combout\ = (\b2v_inst12|Equal0~8_combout\ & (\b2v_inst12|Equal0~4_combout\ & (\b2v_inst12|Equal0~9_combout\ & \b2v_inst12|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Equal0~8_combout\,
	datab => \b2v_inst12|Equal0~4_combout\,
	datac => \b2v_inst12|Equal0~9_combout\,
	datad => \b2v_inst12|Equal0~10_combout\,
	combout => \b2v_inst12|Equal0~11_combout\);

-- Location: LCCOMB_X13_Y14_N18
\b2v_inst12|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~18_combout\ = (\b2v_inst12|reg_cnt_out\(9) & (!\b2v_inst12|Add0~17\)) # (!\b2v_inst12|reg_cnt_out\(9) & ((\b2v_inst12|Add0~17\) # (GND)))
-- \b2v_inst12|Add0~19\ = CARRY((!\b2v_inst12|Add0~17\) # (!\b2v_inst12|reg_cnt_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(9),
	datad => VCC,
	cin => \b2v_inst12|Add0~17\,
	combout => \b2v_inst12|Add0~18_combout\,
	cout => \b2v_inst12|Add0~19\);

-- Location: LCCOMB_X14_Y14_N2
\b2v_inst12|reg_cnt_in[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[9]~10_combout\ = (!\b2v_inst12|Equal0~11_combout\ & \b2v_inst12|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|Equal0~11_combout\,
	datad => \b2v_inst12|Add0~18_combout\,
	combout => \b2v_inst12|reg_cnt_in[9]~10_combout\);

-- Location: FF_X14_Y14_N3
\b2v_inst12|reg_cnt_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(9));

-- Location: LCCOMB_X13_Y14_N20
\b2v_inst12|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~20_combout\ = (\b2v_inst12|reg_cnt_out\(10) & (\b2v_inst12|Add0~19\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(10) & (!\b2v_inst12|Add0~19\ & VCC))
-- \b2v_inst12|Add0~21\ = CARRY((\b2v_inst12|reg_cnt_out\(10) & !\b2v_inst12|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(10),
	datad => VCC,
	cin => \b2v_inst12|Add0~19\,
	combout => \b2v_inst12|Add0~20_combout\,
	cout => \b2v_inst12|Add0~21\);

-- Location: FF_X13_Y14_N21
\b2v_inst12|reg_cnt_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(10));

-- Location: LCCOMB_X13_Y14_N22
\b2v_inst12|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~22_combout\ = (\b2v_inst12|reg_cnt_out\(11) & (!\b2v_inst12|Add0~21\)) # (!\b2v_inst12|reg_cnt_out\(11) & ((\b2v_inst12|Add0~21\) # (GND)))
-- \b2v_inst12|Add0~23\ = CARRY((!\b2v_inst12|Add0~21\) # (!\b2v_inst12|reg_cnt_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(11),
	datad => VCC,
	cin => \b2v_inst12|Add0~21\,
	combout => \b2v_inst12|Add0~22_combout\,
	cout => \b2v_inst12|Add0~23\);

-- Location: FF_X13_Y14_N23
\b2v_inst12|reg_cnt_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(11));

-- Location: LCCOMB_X13_Y14_N24
\b2v_inst12|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~24_combout\ = (\b2v_inst12|reg_cnt_out\(12) & (\b2v_inst12|Add0~23\ $ (GND))) # (!\b2v_inst12|reg_cnt_out\(12) & (!\b2v_inst12|Add0~23\ & VCC))
-- \b2v_inst12|Add0~25\ = CARRY((\b2v_inst12|reg_cnt_out\(12) & !\b2v_inst12|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(12),
	datad => VCC,
	cin => \b2v_inst12|Add0~23\,
	combout => \b2v_inst12|Add0~24_combout\,
	cout => \b2v_inst12|Add0~25\);

-- Location: LCCOMB_X14_Y13_N8
\b2v_inst12|reg_cnt_in[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[12]~12_combout\ = (\b2v_inst12|Add0~24_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|Add0~24_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[12]~12_combout\);

-- Location: FF_X14_Y13_N9
\b2v_inst12|reg_cnt_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(12));

-- Location: LCCOMB_X13_Y14_N26
\b2v_inst12|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Add0~26_combout\ = (\b2v_inst12|reg_cnt_out\(13) & (!\b2v_inst12|Add0~25\)) # (!\b2v_inst12|reg_cnt_out\(13) & ((\b2v_inst12|Add0~25\) # (GND)))
-- \b2v_inst12|Add0~27\ = CARRY((!\b2v_inst12|Add0~25\) # (!\b2v_inst12|reg_cnt_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(13),
	datad => VCC,
	cin => \b2v_inst12|Add0~25\,
	combout => \b2v_inst12|Add0~26_combout\,
	cout => \b2v_inst12|Add0~27\);

-- Location: LCCOMB_X14_Y13_N2
\b2v_inst12|reg_cnt_in[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|reg_cnt_in[13]~11_combout\ = (\b2v_inst12|Add0~26_combout\ & !\b2v_inst12|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|Add0~26_combout\,
	datad => \b2v_inst12|Equal0~11_combout\,
	combout => \b2v_inst12|reg_cnt_in[13]~11_combout\);

-- Location: FF_X14_Y13_N3
\b2v_inst12|reg_cnt_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|reg_cnt_in[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(13));

-- Location: FF_X13_Y14_N29
\b2v_inst12|reg_cnt_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst12|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|reg_cnt_out\(14));

-- Location: LCCOMB_X14_Y14_N16
\b2v_inst12|dividedFrq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|dividedFrq~0_combout\ = (\b2v_inst12|reg_cnt_out\(15) & ((\b2v_inst12|reg_cnt_out\(16)) # ((\b2v_inst12|reg_cnt_out\(7) & \b2v_inst12|reg_cnt_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(16),
	datab => \b2v_inst12|reg_cnt_out\(7),
	datac => \b2v_inst12|reg_cnt_out\(15),
	datad => \b2v_inst12|reg_cnt_out\(9),
	combout => \b2v_inst12|dividedFrq~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\b2v_inst12|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|LessThan1~0_combout\ = ((\b2v_inst12|reg_cnt_out\(0) & (!\b2v_inst12|reg_cnt_out\(1) & !\b2v_inst12|reg_cnt_out\(2)))) # (!\b2v_inst12|reg_cnt_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(0),
	datab => \b2v_inst12|reg_cnt_out\(1),
	datac => \b2v_inst12|reg_cnt_out\(2),
	datad => \b2v_inst12|reg_cnt_out\(3),
	combout => \b2v_inst12|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\b2v_inst12|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|LessThan1~1_combout\ = ((\b2v_inst12|Equal0~7_combout\ & \b2v_inst12|LessThan1~0_combout\)) # (!\b2v_inst12|reg_cnt_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|reg_cnt_out\(7),
	datac => \b2v_inst12|Equal0~7_combout\,
	datad => \b2v_inst12|LessThan1~0_combout\,
	combout => \b2v_inst12|LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y14_N26
\b2v_inst12|dividedFrq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|dividedFrq~1_combout\ = (\b2v_inst12|Equal0~6_combout\ & (((!\b2v_inst12|reg_cnt_out\(8) & \b2v_inst12|LessThan1~1_combout\)) # (!\b2v_inst12|reg_cnt_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(8),
	datab => \b2v_inst12|reg_cnt_out\(9),
	datac => \b2v_inst12|Equal0~6_combout\,
	datad => \b2v_inst12|LessThan1~1_combout\,
	combout => \b2v_inst12|dividedFrq~1_combout\);

-- Location: LCCOMB_X14_Y14_N8
\b2v_inst12|dividedFrq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|dividedFrq~2_combout\ = (\b2v_inst12|Equal0~5_combout\ & ((\b2v_inst12|dividedFrq~0_combout\ & (\b2v_inst12|dividedFrq~1_combout\)) # (!\b2v_inst12|dividedFrq~0_combout\ & ((\b2v_inst12|reg_cnt_out\(16)))))) # (!\b2v_inst12|Equal0~5_combout\ & 
-- (((\b2v_inst12|reg_cnt_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|dividedFrq~1_combout\,
	datab => \b2v_inst12|Equal0~5_combout\,
	datac => \b2v_inst12|reg_cnt_out\(16),
	datad => \b2v_inst12|dividedFrq~0_combout\,
	combout => \b2v_inst12|dividedFrq~2_combout\);

-- Location: LCCOMB_X14_Y14_N18
\b2v_inst12|dividedFrq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|dividedFrq~3_combout\ = (((\b2v_inst12|reg_cnt_out\(14) & \b2v_inst12|dividedFrq~0_combout\)) # (!\b2v_inst12|Equal0~4_combout\)) # (!\b2v_inst12|dividedFrq~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|reg_cnt_out\(14),
	datab => \b2v_inst12|dividedFrq~0_combout\,
	datac => \b2v_inst12|dividedFrq~2_combout\,
	datad => \b2v_inst12|Equal0~4_combout\,
	combout => \b2v_inst12|dividedFrq~3_combout\);

-- Location: LCCOMB_X14_Y17_N8
\b2v_inst11|uart_tx_data[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~6_combout\ = (!\b2v_inst13|full_tmp~q\ & !\b2v_inst12|dividedFrq~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|full_tmp~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|uart_tx_data[0]~6_combout\);

-- Location: FF_X14_Y17_N9
\b2v_inst11|uart_tx_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|uart_tx_data[0]~6_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_ena~q\);

-- Location: LCCOMB_X17_Y19_N6
\b2v_inst13|rd_ptr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|rd_ptr[1]~0_combout\ = (\b2v_inst14|Selector3~1_combout\ & (\b2v_inst14|state_r.stop~q\ & ((\b2v_inst11|uart_tx_ena~q\) # (\b2v_inst13|empty_tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~1_combout\,
	datab => \b2v_inst11|uart_tx_ena~q\,
	datac => \b2v_inst13|empty_tmp~q\,
	datad => \b2v_inst14|state_r.stop~q\,
	combout => \b2v_inst13|rd_ptr[1]~0_combout\);

-- Location: FF_X16_Y19_N13
\b2v_inst13|rd_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|rd_ptr[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|rd_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|rd_ptr\(2));

-- Location: LCCOMB_X16_Y19_N20
\b2v_inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Add0~0_combout\ = \b2v_inst13|rd_ptr\(2) $ (((\b2v_inst13|rd_ptr\(1) & \b2v_inst13|rd_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst13|Add0~0_combout\);

-- Location: LCCOMB_X16_Y19_N0
\b2v_inst13|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux13~2_combout\ = (\b2v_inst13|rd_ptr\(0) & (!\b2v_inst13|wr_ptr\(0) & (\b2v_inst13|rd_ptr\(1) $ (\b2v_inst13|wr_ptr\(1))))) # (!\b2v_inst13|rd_ptr\(0) & (\b2v_inst13|wr_ptr\(0) & (\b2v_inst13|rd_ptr\(1) $ (!\b2v_inst13|wr_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|wr_ptr\(1),
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Mux13~2_combout\);

-- Location: LCCOMB_X16_Y19_N26
\b2v_inst13|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux13~3_combout\ = (\b2v_inst13|Mux13~2_combout\ & (\b2v_inst13|Add0~0_combout\ $ (!\b2v_inst13|wr_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst13|Add0~0_combout\,
	datac => \b2v_inst13|wr_ptr\(2),
	datad => \b2v_inst13|Mux13~2_combout\,
	combout => \b2v_inst13|Mux13~3_combout\);

-- Location: LCCOMB_X16_Y19_N16
\b2v_inst13|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux13~4_combout\ = (\b2v_inst13|Mux13~3_combout\ & (!\b2v_inst11|uart_tx_ena~q\ & (\b2v_inst13|wr_ptr\(3) $ (!\b2v_inst13|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|Mux13~3_combout\,
	datab => \b2v_inst13|wr_ptr\(3),
	datac => \b2v_inst11|uart_tx_ena~q\,
	datad => \b2v_inst13|Add0~1_combout\,
	combout => \b2v_inst13|Mux13~4_combout\);

-- Location: LCCOMB_X17_Y19_N30
\b2v_inst13|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Mux13~6_combout\ = (!\b2v_inst13|Mux13~4_combout\ & ((\b2v_inst13|empty_tmp~q\) # ((\b2v_inst11|uart_tx_ena~q\ & !\b2v_inst13|full_tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|Mux13~4_combout\,
	datab => \b2v_inst11|uart_tx_ena~q\,
	datac => \b2v_inst13|empty_tmp~q\,
	datad => \b2v_inst13|full_tmp~q\,
	combout => \b2v_inst13|Mux13~6_combout\);

-- Location: FF_X17_Y19_N31
\b2v_inst13|empty_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|Mux13~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Mux13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|empty_tmp~q\);

-- Location: LCCOMB_X19_Y19_N6
\b2v_inst14|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector2~2_combout\ = (\b2v_inst14|Selector3~1_combout\ & (((!\b2v_inst14|state_r.idle~q\ & \b2v_inst13|empty_tmp~q\)))) # (!\b2v_inst14|Selector3~1_combout\ & ((\b2v_inst14|state_r.start~q\) # ((!\b2v_inst14|state_r.idle~q\ & 
-- \b2v_inst13|empty_tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~1_combout\,
	datab => \b2v_inst14|state_r.start~q\,
	datac => \b2v_inst14|state_r.idle~q\,
	datad => \b2v_inst13|empty_tmp~q\,
	combout => \b2v_inst14|Selector2~2_combout\);

-- Location: LCCOMB_X19_Y19_N28
\b2v_inst14|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~4_combout\ = (!\b2v_inst14|state_r.start~q\ & !\b2v_inst14|state_r.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|state_r.start~q\,
	datad => \b2v_inst14|state_r.stop~q\,
	combout => \b2v_inst14|Selector3~4_combout\);

-- Location: LCCOMB_X19_Y19_N0
\b2v_inst14|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~6_combout\ = ((\b2v_inst14|Selector3~4_combout\ & ((!\b2v_inst14|state_r.data~q\) # (!\b2v_inst14|Selector3~5_combout\)))) # (!\b2v_inst14|Selector3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~5_combout\,
	datab => \b2v_inst14|Selector3~4_combout\,
	datac => \b2v_inst14|Selector3~1_combout\,
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|Selector3~6_combout\);

-- Location: LCCOMB_X19_Y19_N10
\b2v_inst14|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~7_combout\ = (\b2v_inst14|Selector3~6_combout\ & ((\b2v_inst14|state_r.idle~q\) # (!\b2v_inst14|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|state_r.idle~q\,
	datac => \b2v_inst14|Selector3~5_combout\,
	datad => \b2v_inst14|Selector3~6_combout\,
	combout => \b2v_inst14|Selector3~7_combout\);

-- Location: LCCOMB_X19_Y19_N14
\b2v_inst14|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~3_combout\ = (\b2v_inst14|Selector3~1_combout\ & \b2v_inst14|state_r.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst14|Selector3~1_combout\,
	datad => \b2v_inst14|state_r.start~q\,
	combout => \b2v_inst14|Selector3~3_combout\);

-- Location: LCCOMB_X19_Y19_N2
\b2v_inst14|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~2_combout\ = (!\b2v_inst14|state_r.stop~q\) # (!\b2v_inst14|Selector3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst14|Selector3~1_combout\,
	datad => \b2v_inst14|state_r.stop~q\,
	combout => \b2v_inst14|Selector3~2_combout\);

-- Location: LCCOMB_X19_Y19_N18
\b2v_inst14|Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~8_combout\ = (\b2v_inst14|Selector3~7_combout\ & (((\b2v_inst14|state_r.data~q\)))) # (!\b2v_inst14|Selector3~7_combout\ & (\b2v_inst14|Selector3~3_combout\ & ((\b2v_inst14|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~7_combout\,
	datab => \b2v_inst14|Selector3~3_combout\,
	datac => \b2v_inst14|state_r.data~q\,
	datad => \b2v_inst14|Selector3~2_combout\,
	combout => \b2v_inst14|Selector3~8_combout\);

-- Location: FF_X19_Y19_N19
\b2v_inst14|state_r.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|Selector3~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|state_r.data~q\);

-- Location: LCCOMB_X19_Y19_N24
\b2v_inst14|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector2~3_combout\ = (\b2v_inst14|Selector2~2_combout\ & (((!\b2v_inst14|Selector3~0_combout\) # (!\b2v_inst14|Selector3~1_combout\)) # (!\b2v_inst14|state_r.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector2~2_combout\,
	datab => \b2v_inst14|state_r.data~q\,
	datac => \b2v_inst14|Selector3~1_combout\,
	datad => \b2v_inst14|Selector3~0_combout\,
	combout => \b2v_inst14|Selector2~3_combout\);

-- Location: FF_X19_Y19_N25
\b2v_inst14|state_r.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|Selector2~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|state_r.start~q\);

-- Location: LCCOMB_X19_Y19_N4
\b2v_inst14|n_r[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|n_r[2]~0_combout\ = ((!\b2v_inst14|state_r.start~q\ & ((\b2v_inst14|Selector3~0_combout\) # (!\b2v_inst14|state_r.data~q\)))) # (!\b2v_inst14|Selector3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~0_combout\,
	datab => \b2v_inst14|state_r.start~q\,
	datac => \b2v_inst14|Selector3~1_combout\,
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|n_r[2]~0_combout\);

-- Location: LCCOMB_X19_Y19_N30
\b2v_inst14|n_r[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|n_r[0]~3_combout\ = (\b2v_inst14|n_r[2]~0_combout\ & (\b2v_inst14|n_r\(0))) # (!\b2v_inst14|n_r[2]~0_combout\ & (!\b2v_inst14|n_r\(0) & \b2v_inst14|state_r.data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|n_r[2]~0_combout\,
	datac => \b2v_inst14|n_r\(0),
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|n_r[0]~3_combout\);

-- Location: FF_X19_Y19_N31
\b2v_inst14|n_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|n_r[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|n_r\(0));

-- Location: LCCOMB_X18_Y19_N28
\b2v_inst14|n_r[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|n_r[1]~2_combout\ = (\b2v_inst14|n_r[2]~0_combout\ & (((\b2v_inst14|n_r\(1))))) # (!\b2v_inst14|n_r[2]~0_combout\ & (\b2v_inst14|state_r.data~q\ & (\b2v_inst14|n_r\(0) $ (\b2v_inst14|n_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|n_r\(0),
	datab => \b2v_inst14|state_r.data~q\,
	datac => \b2v_inst14|n_r\(1),
	datad => \b2v_inst14|n_r[2]~0_combout\,
	combout => \b2v_inst14|n_r[1]~2_combout\);

-- Location: FF_X18_Y19_N29
\b2v_inst14|n_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|n_r[1]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|n_r\(1));

-- Location: LCCOMB_X18_Y19_N24
\b2v_inst14|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Add1~0_combout\ = \b2v_inst14|n_r\(2) $ (((\b2v_inst14|n_r\(1) & \b2v_inst14|n_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|n_r\(1),
	datac => \b2v_inst14|n_r\(0),
	datad => \b2v_inst14|n_r\(2),
	combout => \b2v_inst14|Add1~0_combout\);

-- Location: LCCOMB_X18_Y19_N18
\b2v_inst14|n_r[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|n_r[2]~1_combout\ = (\b2v_inst14|n_r[2]~0_combout\ & (((\b2v_inst14|n_r\(2))))) # (!\b2v_inst14|n_r[2]~0_combout\ & (\b2v_inst14|Add1~0_combout\ & ((\b2v_inst14|state_r.data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|n_r[2]~0_combout\,
	datab => \b2v_inst14|Add1~0_combout\,
	datac => \b2v_inst14|n_r\(2),
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|n_r[2]~1_combout\);

-- Location: FF_X18_Y19_N19
\b2v_inst14|n_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|n_r[2]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|n_r\(2));

-- Location: LCCOMB_X18_Y19_N14
\b2v_inst14|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~0_combout\ = (\b2v_inst14|n_r\(1) & (\b2v_inst14|n_r\(0) & \b2v_inst14|n_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|n_r\(1),
	datac => \b2v_inst14|n_r\(0),
	datad => \b2v_inst14|n_r\(2),
	combout => \b2v_inst14|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y19_N26
\b2v_inst14|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~5_combout\ = (\b2v_inst14|state_r.data~q\ & (\b2v_inst14|Selector3~0_combout\)) # (!\b2v_inst14|state_r.data~q\ & ((\b2v_inst13|empty_tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~0_combout\,
	datab => \b2v_inst13|empty_tmp~q\,
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|Selector3~5_combout\);

-- Location: LCCOMB_X19_Y19_N20
\b2v_inst14|state_r.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|state_r.idle~0_combout\ = (\b2v_inst14|Selector3~6_combout\ & ((\b2v_inst14|state_r.idle~q\) # ((\b2v_inst14|Selector3~5_combout\ & \b2v_inst14|Selector3~2_combout\)))) # (!\b2v_inst14|Selector3~6_combout\ & 
-- (((\b2v_inst14|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~5_combout\,
	datab => \b2v_inst14|Selector3~6_combout\,
	datac => \b2v_inst14|state_r.idle~q\,
	datad => \b2v_inst14|Selector3~2_combout\,
	combout => \b2v_inst14|state_r.idle~0_combout\);

-- Location: FF_X19_Y19_N21
\b2v_inst14|state_r.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|state_r.idle~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|state_r.idle~q\);

-- Location: LCCOMB_X18_Y19_N20
\b2v_inst14|s_r[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[1]~0_combout\ = (!\b2v_inst14|state_r.start~q\ & !\b2v_inst14|state_r.data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|state_r.start~q\,
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|s_r[1]~0_combout\);

-- Location: LCCOMB_X17_Y19_N14
\b2v_inst14|s_r[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[1]~1_combout\ = (\b2v_inst14|state_r.idle~q\ & (!\b2v_inst14|Equal1~0_combout\ & ((\b2v_inst14|state_r.stop~q\)))) # (!\b2v_inst14|state_r.idle~q\ & (((!\b2v_inst14|Equal1~0_combout\ & \b2v_inst14|state_r.stop~q\)) # 
-- (!\b2v_inst13|empty_tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|state_r.idle~q\,
	datab => \b2v_inst14|Equal1~0_combout\,
	datac => \b2v_inst13|empty_tmp~q\,
	datad => \b2v_inst14|state_r.stop~q\,
	combout => \b2v_inst14|s_r[1]~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\b2v_inst10|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal0~1_combout\ = (!\b2v_inst10|r_r\(3) & (!\b2v_inst10|r_r\(4) & (!\b2v_inst10|r_r\(2) & \b2v_inst10|r_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|r_r\(3),
	datab => \b2v_inst10|r_r\(4),
	datac => \b2v_inst10|r_r\(2),
	datad => \b2v_inst10|r_r\(1),
	combout => \b2v_inst10|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y20_N0
\b2v_inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~0_combout\ = \b2v_inst10|r_r\(0) $ (VCC)
-- \b2v_inst10|Add0~1\ = CARRY(\b2v_inst10|r_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|r_r\(0),
	datad => VCC,
	combout => \b2v_inst10|Add0~0_combout\,
	cout => \b2v_inst10|Add0~1\);

-- Location: LCCOMB_X16_Y20_N24
\b2v_inst10|r_n[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|r_n[0]~3_combout\ = (\b2v_inst10|Add0~0_combout\ & (((\b2v_inst10|r_r\(0)) # (!\b2v_inst10|Equal0~1_combout\)) # (!\b2v_inst10|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Equal0~0_combout\,
	datab => \b2v_inst10|Add0~0_combout\,
	datac => \b2v_inst10|r_r\(0),
	datad => \b2v_inst10|Equal0~1_combout\,
	combout => \b2v_inst10|r_n[0]~3_combout\);

-- Location: FF_X16_Y20_N25
\b2v_inst10|r_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|r_n[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(0));

-- Location: LCCOMB_X16_Y20_N2
\b2v_inst10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~2_combout\ = (\b2v_inst10|r_r\(1) & (!\b2v_inst10|Add0~1\)) # (!\b2v_inst10|r_r\(1) & ((\b2v_inst10|Add0~1\) # (GND)))
-- \b2v_inst10|Add0~3\ = CARRY((!\b2v_inst10|Add0~1\) # (!\b2v_inst10|r_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|r_r\(1),
	datad => VCC,
	cin => \b2v_inst10|Add0~1\,
	combout => \b2v_inst10|Add0~2_combout\,
	cout => \b2v_inst10|Add0~3\);

-- Location: LCCOMB_X16_Y20_N28
\b2v_inst10|r_n[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|r_n[1]~2_combout\ = (\b2v_inst10|Add0~2_combout\ & (((\b2v_inst10|r_r\(0)) # (!\b2v_inst10|Equal0~0_combout\)) # (!\b2v_inst10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Equal0~1_combout\,
	datab => \b2v_inst10|Add0~2_combout\,
	datac => \b2v_inst10|Equal0~0_combout\,
	datad => \b2v_inst10|r_r\(0),
	combout => \b2v_inst10|r_n[1]~2_combout\);

-- Location: FF_X16_Y20_N29
\b2v_inst10|r_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|r_n[1]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(1));

-- Location: LCCOMB_X16_Y20_N4
\b2v_inst10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~4_combout\ = (\b2v_inst10|r_r\(2) & (\b2v_inst10|Add0~3\ $ (GND))) # (!\b2v_inst10|r_r\(2) & (!\b2v_inst10|Add0~3\ & VCC))
-- \b2v_inst10|Add0~5\ = CARRY((\b2v_inst10|r_r\(2) & !\b2v_inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|r_r\(2),
	datad => VCC,
	cin => \b2v_inst10|Add0~3\,
	combout => \b2v_inst10|Add0~4_combout\,
	cout => \b2v_inst10|Add0~5\);

-- Location: FF_X16_Y20_N5
\b2v_inst10|r_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Add0~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(2));

-- Location: LCCOMB_X16_Y20_N6
\b2v_inst10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~6_combout\ = (\b2v_inst10|r_r\(3) & (!\b2v_inst10|Add0~5\)) # (!\b2v_inst10|r_r\(3) & ((\b2v_inst10|Add0~5\) # (GND)))
-- \b2v_inst10|Add0~7\ = CARRY((!\b2v_inst10|Add0~5\) # (!\b2v_inst10|r_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|r_r\(3),
	datad => VCC,
	cin => \b2v_inst10|Add0~5\,
	combout => \b2v_inst10|Add0~6_combout\,
	cout => \b2v_inst10|Add0~7\);

-- Location: FF_X16_Y20_N7
\b2v_inst10|r_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(3));

-- Location: LCCOMB_X16_Y20_N8
\b2v_inst10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~8_combout\ = (\b2v_inst10|r_r\(4) & (\b2v_inst10|Add0~7\ $ (GND))) # (!\b2v_inst10|r_r\(4) & (!\b2v_inst10|Add0~7\ & VCC))
-- \b2v_inst10|Add0~9\ = CARRY((\b2v_inst10|r_r\(4) & !\b2v_inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|r_r\(4),
	datad => VCC,
	cin => \b2v_inst10|Add0~7\,
	combout => \b2v_inst10|Add0~8_combout\,
	cout => \b2v_inst10|Add0~9\);

-- Location: FF_X16_Y20_N9
\b2v_inst10|r_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(4));

-- Location: LCCOMB_X16_Y20_N10
\b2v_inst10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~10_combout\ = (\b2v_inst10|r_r\(5) & (!\b2v_inst10|Add0~9\)) # (!\b2v_inst10|r_r\(5) & ((\b2v_inst10|Add0~9\) # (GND)))
-- \b2v_inst10|Add0~11\ = CARRY((!\b2v_inst10|Add0~9\) # (!\b2v_inst10|r_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|r_r\(5),
	datad => VCC,
	cin => \b2v_inst10|Add0~9\,
	combout => \b2v_inst10|Add0~10_combout\,
	cout => \b2v_inst10|Add0~11\);

-- Location: LCCOMB_X16_Y20_N20
\b2v_inst10|r_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|r_n[5]~1_combout\ = (\b2v_inst10|Add0~10_combout\ & (((\b2v_inst10|r_r\(0)) # (!\b2v_inst10|Equal0~0_combout\)) # (!\b2v_inst10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Add0~10_combout\,
	datab => \b2v_inst10|Equal0~1_combout\,
	datac => \b2v_inst10|Equal0~0_combout\,
	datad => \b2v_inst10|r_r\(0),
	combout => \b2v_inst10|r_n[5]~1_combout\);

-- Location: FF_X16_Y20_N21
\b2v_inst10|r_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|r_n[5]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(5));

-- Location: LCCOMB_X16_Y20_N12
\b2v_inst10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~12_combout\ = (\b2v_inst10|r_r\(6) & (\b2v_inst10|Add0~11\ $ (GND))) # (!\b2v_inst10|r_r\(6) & (!\b2v_inst10|Add0~11\ & VCC))
-- \b2v_inst10|Add0~13\ = CARRY((\b2v_inst10|r_r\(6) & !\b2v_inst10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|r_r\(6),
	datad => VCC,
	cin => \b2v_inst10|Add0~11\,
	combout => \b2v_inst10|Add0~12_combout\,
	cout => \b2v_inst10|Add0~13\);

-- Location: FF_X16_Y20_N13
\b2v_inst10|r_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Add0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(6));

-- Location: LCCOMB_X16_Y20_N14
\b2v_inst10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~14_combout\ = (\b2v_inst10|r_r\(7) & (!\b2v_inst10|Add0~13\)) # (!\b2v_inst10|r_r\(7) & ((\b2v_inst10|Add0~13\) # (GND)))
-- \b2v_inst10|Add0~15\ = CARRY((!\b2v_inst10|Add0~13\) # (!\b2v_inst10|r_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|r_r\(7),
	datad => VCC,
	cin => \b2v_inst10|Add0~13\,
	combout => \b2v_inst10|Add0~14_combout\,
	cout => \b2v_inst10|Add0~15\);

-- Location: LCCOMB_X16_Y20_N30
\b2v_inst10|r_n[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|r_n[7]~0_combout\ = (\b2v_inst10|Add0~14_combout\ & (((\b2v_inst10|r_r\(0)) # (!\b2v_inst10|Equal0~0_combout\)) # (!\b2v_inst10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Equal0~1_combout\,
	datab => \b2v_inst10|Add0~14_combout\,
	datac => \b2v_inst10|Equal0~0_combout\,
	datad => \b2v_inst10|r_r\(0),
	combout => \b2v_inst10|r_n[7]~0_combout\);

-- Location: FF_X16_Y20_N31
\b2v_inst10|r_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|r_n[7]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(7));

-- Location: LCCOMB_X16_Y20_N16
\b2v_inst10|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~16_combout\ = \b2v_inst10|Add0~15\ $ (!\b2v_inst10|r_r\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|r_r\(8),
	cin => \b2v_inst10|Add0~15\,
	combout => \b2v_inst10|Add0~16_combout\);

-- Location: FF_X16_Y20_N17
\b2v_inst10|r_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Add0~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|r_r\(8));

-- Location: LCCOMB_X16_Y20_N22
\b2v_inst10|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal0~0_combout\ = (!\b2v_inst10|r_r\(6) & (!\b2v_inst10|r_r\(8) & (\b2v_inst10|r_r\(7) & \b2v_inst10|r_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|r_r\(6),
	datab => \b2v_inst10|r_r\(8),
	datac => \b2v_inst10|r_r\(7),
	datad => \b2v_inst10|r_r\(5),
	combout => \b2v_inst10|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y20_N30
\b2v_inst10|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal0~2_combout\ = (\b2v_inst10|Equal0~0_combout\ & (\b2v_inst10|Equal0~1_combout\ & !\b2v_inst10|r_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|Equal0~0_combout\,
	datac => \b2v_inst10|Equal0~1_combout\,
	datad => \b2v_inst10|r_r\(0),
	combout => \b2v_inst10|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y19_N16
\b2v_inst14|s_r[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[1]~2_combout\ = (\b2v_inst14|s_r[1]~1_combout\) # ((!\b2v_inst10|Equal0~2_combout\ & ((\b2v_inst14|state_r.data~q\) # (!\b2v_inst14|Selector3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|s_r[1]~1_combout\,
	datab => \b2v_inst14|Selector3~4_combout\,
	datac => \b2v_inst10|Equal0~2_combout\,
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|s_r[1]~2_combout\);

-- Location: LCCOMB_X17_Y19_N20
\b2v_inst14|s_r[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[0]~3_combout\ = (\b2v_inst14|state_r.idle~q\ & (!\b2v_inst14|s_r[1]~2_combout\ & ((\b2v_inst14|Equal1~0_combout\) # (\b2v_inst14|s_r[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|state_r.idle~q\,
	datab => \b2v_inst14|Equal1~0_combout\,
	datac => \b2v_inst14|s_r[1]~0_combout\,
	datad => \b2v_inst14|s_r[1]~2_combout\,
	combout => \b2v_inst14|s_r[0]~3_combout\);

-- Location: LCCOMB_X17_Y19_N10
\b2v_inst14|s_r[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[0]~7_combout\ = (\b2v_inst14|s_r\(0) & ((\b2v_inst14|s_r[1]~2_combout\))) # (!\b2v_inst14|s_r\(0) & (\b2v_inst14|s_r[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|s_r[0]~3_combout\,
	datac => \b2v_inst14|s_r\(0),
	datad => \b2v_inst14|s_r[1]~2_combout\,
	combout => \b2v_inst14|s_r[0]~7_combout\);

-- Location: FF_X17_Y19_N11
\b2v_inst14|s_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|s_r[0]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|s_r\(0));

-- Location: LCCOMB_X17_Y19_N28
\b2v_inst14|s_r[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[1]~6_combout\ = (\b2v_inst14|s_r\(1) & ((\b2v_inst14|s_r[1]~2_combout\) # ((!\b2v_inst14|s_r\(0) & \b2v_inst14|s_r[0]~3_combout\)))) # (!\b2v_inst14|s_r\(1) & (\b2v_inst14|s_r\(0) & (\b2v_inst14|s_r[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|s_r\(0),
	datab => \b2v_inst14|s_r[0]~3_combout\,
	datac => \b2v_inst14|s_r\(1),
	datad => \b2v_inst14|s_r[1]~2_combout\,
	combout => \b2v_inst14|s_r[1]~6_combout\);

-- Location: FF_X17_Y19_N29
\b2v_inst14|s_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|s_r[1]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|s_r\(1));

-- Location: LCCOMB_X17_Y19_N22
\b2v_inst14|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Add0~1_combout\ = \b2v_inst14|s_r\(2) $ (((\b2v_inst14|s_r\(0) & \b2v_inst14|s_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|s_r\(0),
	datac => \b2v_inst14|s_r\(2),
	datad => \b2v_inst14|s_r\(1),
	combout => \b2v_inst14|Add0~1_combout\);

-- Location: LCCOMB_X17_Y19_N26
\b2v_inst14|s_r[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[2]~5_combout\ = (\b2v_inst14|Add0~1_combout\ & ((\b2v_inst14|s_r[0]~3_combout\) # ((\b2v_inst14|s_r\(2) & \b2v_inst14|s_r[1]~2_combout\)))) # (!\b2v_inst14|Add0~1_combout\ & (((\b2v_inst14|s_r\(2) & \b2v_inst14|s_r[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Add0~1_combout\,
	datab => \b2v_inst14|s_r[0]~3_combout\,
	datac => \b2v_inst14|s_r\(2),
	datad => \b2v_inst14|s_r[1]~2_combout\,
	combout => \b2v_inst14|s_r[2]~5_combout\);

-- Location: FF_X17_Y19_N27
\b2v_inst14|s_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|s_r[2]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|s_r\(2));

-- Location: LCCOMB_X17_Y19_N4
\b2v_inst14|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Add0~0_combout\ = \b2v_inst14|s_r\(3) $ (((\b2v_inst14|s_r\(0) & (\b2v_inst14|s_r\(1) & \b2v_inst14|s_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|s_r\(0),
	datab => \b2v_inst14|s_r\(1),
	datac => \b2v_inst14|s_r\(2),
	datad => \b2v_inst14|s_r\(3),
	combout => \b2v_inst14|Add0~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\b2v_inst14|s_r[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|s_r[3]~4_combout\ = (\b2v_inst14|Add0~0_combout\ & ((\b2v_inst14|s_r[0]~3_combout\) # ((\b2v_inst14|s_r\(3) & \b2v_inst14|s_r[1]~2_combout\)))) # (!\b2v_inst14|Add0~0_combout\ & (((\b2v_inst14|s_r\(3) & \b2v_inst14|s_r[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Add0~0_combout\,
	datab => \b2v_inst14|s_r[0]~3_combout\,
	datac => \b2v_inst14|s_r\(3),
	datad => \b2v_inst14|s_r[1]~2_combout\,
	combout => \b2v_inst14|s_r[3]~4_combout\);

-- Location: FF_X17_Y19_N13
\b2v_inst14|s_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|s_r[3]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|s_r\(3));

-- Location: LCCOMB_X17_Y19_N0
\b2v_inst14|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Equal1~0_combout\ = (((!\b2v_inst14|s_r\(3)) # (!\b2v_inst14|s_r\(2))) # (!\b2v_inst14|s_r\(1))) # (!\b2v_inst14|s_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|s_r\(0),
	datab => \b2v_inst14|s_r\(1),
	datac => \b2v_inst14|s_r\(2),
	datad => \b2v_inst14|s_r\(3),
	combout => \b2v_inst14|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\b2v_inst14|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector3~1_combout\ = (!\b2v_inst14|Equal1~0_combout\ & (!\b2v_inst10|r_r\(0) & (\b2v_inst10|Equal0~1_combout\ & \b2v_inst10|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Equal1~0_combout\,
	datab => \b2v_inst10|r_r\(0),
	datac => \b2v_inst10|Equal0~1_combout\,
	datad => \b2v_inst10|Equal0~0_combout\,
	combout => \b2v_inst14|Selector3~1_combout\);

-- Location: LCCOMB_X19_Y19_N12
\b2v_inst14|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector4~1_combout\ = (\b2v_inst14|Selector3~1_combout\ & (\b2v_inst14|state_r.data~q\ & ((\b2v_inst14|Selector3~0_combout\)))) # (!\b2v_inst14|Selector3~1_combout\ & (((\b2v_inst14|state_r.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~1_combout\,
	datab => \b2v_inst14|state_r.data~q\,
	datac => \b2v_inst14|state_r.stop~q\,
	datad => \b2v_inst14|Selector3~0_combout\,
	combout => \b2v_inst14|Selector4~1_combout\);

-- Location: FF_X19_Y19_N13
\b2v_inst14|state_r.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|Selector4~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|state_r.stop~q\);

-- Location: LCCOMB_X14_Y17_N10
\b2v_inst11|uart_tx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~0_combout\ = (!\b2v_inst13|full_tmp~q\ & (\reset~input_o\ & !\b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|full_tmp~q\,
	datac => \reset~input_o\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|uart_tx_data[0]~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\b2v_inst11|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector15~0_combout\ = (\b2v_inst11|state.digit7~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit7~q\ & (\b2v_inst11|state.digit8~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|state.digit7~q\,
	datac => \b2v_inst11|state.digit8~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector15~0_combout\);

-- Location: FF_X14_Y17_N5
\b2v_inst11|state.digit8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector15~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit8~q\);

-- Location: LCCOMB_X14_Y17_N30
\b2v_inst11|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector16~0_combout\ = (\b2v_inst11|state.digit8~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit8~q\ & (\b2v_inst11|state.digit9~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|state.digit8~q\,
	datac => \b2v_inst11|state.digit9~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector16~0_combout\);

-- Location: FF_X14_Y17_N31
\b2v_inst11|state.digit9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector16~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit9~q\);

-- Location: LCCOMB_X14_Y17_N2
\b2v_inst11|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector8~0_combout\ = (\b2v_inst11|state.digit9~q\ & ((\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit9~q\ & ((\b2v_inst11|state.digit1~q\) # (!\b2v_inst12|dividedFrq~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit9~q\,
	datac => \b2v_inst11|state.digit1~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector8~0_combout\);

-- Location: FF_X14_Y17_N3
\b2v_inst11|state.digit1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit1~q\);

-- Location: LCCOMB_X14_Y17_N26
\b2v_inst11|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector9~0_combout\ = (\b2v_inst11|state.digit1~q\ & (\b2v_inst11|state.digit2~q\ & \b2v_inst12|dividedFrq~3_combout\)) # (!\b2v_inst11|state.digit1~q\ & ((!\b2v_inst12|dividedFrq~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|state.digit1~q\,
	datac => \b2v_inst11|state.digit2~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector9~0_combout\);

-- Location: FF_X14_Y17_N27
\b2v_inst11|state.digit2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit2~q\);

-- Location: LCCOMB_X14_Y17_N22
\b2v_inst11|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector10~0_combout\ = (\b2v_inst11|state.digit2~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit2~q\ & (\b2v_inst11|state.digit3~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit2~q\,
	datac => \b2v_inst11|state.digit3~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector10~0_combout\);

-- Location: FF_X14_Y17_N23
\b2v_inst11|state.digit3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit3~q\);

-- Location: LCCOMB_X14_Y17_N20
\b2v_inst11|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector11~0_combout\ = (\b2v_inst11|state.digit3~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit3~q\ & (\b2v_inst11|state.digit4~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit3~q\,
	datac => \b2v_inst11|state.digit4~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector11~0_combout\);

-- Location: FF_X14_Y17_N21
\b2v_inst11|state.digit4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector11~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit4~q\);

-- Location: LCCOMB_X14_Y17_N12
\b2v_inst11|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector12~0_combout\ = (\b2v_inst11|state.digit4~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit4~q\ & (\b2v_inst11|state.digit5~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|state.digit4~q\,
	datac => \b2v_inst11|state.digit5~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector12~0_combout\);

-- Location: FF_X14_Y17_N13
\b2v_inst11|state.digit5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit5~q\);

-- Location: LCCOMB_X14_Y17_N24
\b2v_inst11|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector13~0_combout\ = (\b2v_inst11|state.digit5~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit5~q\ & (\b2v_inst11|state.digit6~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit5~q\,
	datac => \b2v_inst11|state.digit6~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector13~0_combout\);

-- Location: FF_X14_Y17_N25
\b2v_inst11|state.digit6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector13~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit6~q\);

-- Location: LCCOMB_X14_Y17_N0
\b2v_inst11|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector14~0_combout\ = (\b2v_inst11|state.digit6~q\ & ((!\b2v_inst12|dividedFrq~3_combout\))) # (!\b2v_inst11|state.digit6~q\ & (\b2v_inst11|state.digit7~q\ & \b2v_inst12|dividedFrq~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit6~q\,
	datac => \b2v_inst11|state.digit7~q\,
	datad => \b2v_inst12|dividedFrq~3_combout\,
	combout => \b2v_inst11|Selector14~0_combout\);

-- Location: FF_X14_Y17_N1
\b2v_inst11|state.digit7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector14~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|ALT_INV_full_tmp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|state.digit7~q\);

-- Location: LCCOMB_X12_Y18_N14
\b2v_inst11|uart_tx_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~1_combout\ = (\b2v_inst|dht_humi_decimal\(0) & ((\b2v_inst11|state.digit9~q\) # ((\b2v_inst|dht_humi_integral\(0) & \b2v_inst11|state.digit7~q\)))) # (!\b2v_inst|dht_humi_decimal\(0) & (\b2v_inst|dht_humi_integral\(0) & 
-- (\b2v_inst11|state.digit7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dht_humi_decimal\(0),
	datab => \b2v_inst|dht_humi_integral\(0),
	datac => \b2v_inst11|state.digit7~q\,
	datad => \b2v_inst11|state.digit9~q\,
	combout => \b2v_inst11|uart_tx_data[0]~1_combout\);

-- Location: LCCOMB_X13_Y17_N14
\b2v_inst11|uart_tx_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~2_combout\ = (\b2v_inst11|state.digit4~q\ & ((\b2v_inst|dht_temp_decimal\(0)) # ((\b2v_inst|dht_temp_integral\(0) & \b2v_inst11|state.digit2~q\)))) # (!\b2v_inst11|state.digit4~q\ & (\b2v_inst|dht_temp_integral\(0) & 
-- ((\b2v_inst11|state.digit2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit4~q\,
	datab => \b2v_inst|dht_temp_integral\(0),
	datac => \b2v_inst|dht_temp_decimal\(0),
	datad => \b2v_inst11|state.digit2~q\,
	combout => \b2v_inst11|uart_tx_data[0]~2_combout\);

-- Location: LCCOMB_X13_Y17_N24
\b2v_inst11|uart_tx_data[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~3_combout\ = (\b2v_inst11|state.digit1~q\ & (((\b2v_inst11|state.digit6~q\ & !\b2v_inst7|tens[0]~10_combout\)))) # (!\b2v_inst11|state.digit1~q\ & (((\b2v_inst11|state.digit6~q\ & !\b2v_inst7|tens[0]~10_combout\)) # 
-- (!\b2v_inst6|tens[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit1~q\,
	datab => \b2v_inst6|tens[0]~10_combout\,
	datac => \b2v_inst11|state.digit6~q\,
	datad => \b2v_inst7|tens[0]~10_combout\,
	combout => \b2v_inst11|uart_tx_data[0]~3_combout\);

-- Location: LCCOMB_X13_Y17_N2
\b2v_inst11|uart_tx_data[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~4_combout\ = (\b2v_inst11|uart_tx_data[0]~0_combout\ & ((\b2v_inst11|uart_tx_data[0]~1_combout\) # ((\b2v_inst11|uart_tx_data[0]~2_combout\) # (\b2v_inst11|uart_tx_data[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|uart_tx_data[0]~1_combout\,
	datab => \b2v_inst11|uart_tx_data[0]~2_combout\,
	datac => \b2v_inst11|uart_tx_data[0]~0_combout\,
	datad => \b2v_inst11|uart_tx_data[0]~3_combout\,
	combout => \b2v_inst11|uart_tx_data[0]~4_combout\);

-- Location: LCCOMB_X13_Y17_N8
\b2v_inst11|uart_tx_data[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[0]~5_combout\ = (\b2v_inst11|uart_tx_data[0]~4_combout\) # ((!\b2v_inst11|uart_tx_data[0]~0_combout\ & \b2v_inst11|uart_tx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|uart_tx_data[0]~0_combout\,
	datac => \b2v_inst11|uart_tx_data\(0),
	datad => \b2v_inst11|uart_tx_data[0]~4_combout\,
	combout => \b2v_inst11|uart_tx_data[0]~5_combout\);

-- Location: FF_X13_Y17_N9
\b2v_inst11|uart_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|uart_tx_data[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(0));

-- Location: LCCOMB_X14_Y18_N26
\b2v_inst13|array_r[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[14][0]~feeder_combout\ = \b2v_inst11|uart_tx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(0),
	combout => \b2v_inst13|array_r[14][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N8
\b2v_inst13|wr_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|wr_en~combout\ = (\b2v_inst11|uart_tx_ena~q\ & !\b2v_inst13|full_tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_ena~q\,
	datad => \b2v_inst13|full_tmp~q\,
	combout => \b2v_inst13|wr_en~combout\);

-- Location: LCCOMB_X16_Y17_N10
\b2v_inst13|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~0_combout\ = (\b2v_inst13|wr_ptr\(2) & (\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & !\b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~0_combout\);

-- Location: LCCOMB_X14_Y18_N2
\b2v_inst13|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~5_combout\ = (\b2v_inst13|Decoder0~0_combout\ & \b2v_inst13|wr_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|Decoder0~0_combout\,
	datad => \b2v_inst13|wr_ptr\(3),
	combout => \b2v_inst13|Decoder0~5_combout\);

-- Location: FF_X14_Y18_N27
\b2v_inst13|array_r[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[14][0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][0]~q\);

-- Location: LCCOMB_X16_Y17_N16
\b2v_inst13|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~2_combout\ = (!\b2v_inst13|wr_ptr\(2) & (\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & !\b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~2_combout\);

-- Location: LCCOMB_X16_Y18_N28
\b2v_inst13|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~3_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~2_combout\,
	combout => \b2v_inst13|Decoder0~3_combout\);

-- Location: FF_X13_Y18_N17
\b2v_inst13|array_r[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][0]~q\);

-- Location: LCCOMB_X16_Y18_N30
\b2v_inst13|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~4_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~2_combout\,
	combout => \b2v_inst13|Decoder0~4_combout\);

-- Location: FF_X16_Y18_N9
\b2v_inst13|array_r[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][0]~q\);

-- Location: LCCOMB_X16_Y18_N8
\b2v_inst14|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~0_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|array_r[10][0]~q\) # ((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|array_r[2][0]~q\ & !\b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[10][0]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[2][0]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector16~0_combout\);

-- Location: LCCOMB_X14_Y18_N4
\b2v_inst13|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~1_combout\ = (\b2v_inst13|Decoder0~0_combout\ & !\b2v_inst13|wr_ptr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|Decoder0~0_combout\,
	datad => \b2v_inst13|wr_ptr\(3),
	combout => \b2v_inst13|Decoder0~1_combout\);

-- Location: FF_X14_Y18_N1
\b2v_inst13|array_r[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][0]~q\);

-- Location: LCCOMB_X14_Y18_N0
\b2v_inst14|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~1_combout\ = (\b2v_inst14|Selector16~0_combout\ & ((\b2v_inst13|array_r[14][0]~q\) # ((!\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst14|Selector16~0_combout\ & (((\b2v_inst13|array_r[6][0]~q\ & \b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[14][0]~q\,
	datab => \b2v_inst14|Selector16~0_combout\,
	datac => \b2v_inst13|array_r[6][0]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector16~1_combout\);

-- Location: LCCOMB_X16_Y17_N6
\b2v_inst13|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~18_combout\ = (\b2v_inst13|wr_ptr\(2) & (\b2v_inst13|wr_ptr\(0) & (\b2v_inst13|wr_en~combout\ & \b2v_inst13|wr_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(0),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(1),
	combout => \b2v_inst13|Decoder0~18_combout\);

-- Location: LCCOMB_X16_Y17_N28
\b2v_inst13|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~19_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~18_combout\,
	combout => \b2v_inst13|Decoder0~19_combout\);

-- Location: FF_X16_Y17_N21
\b2v_inst13|array_r[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][0]~q\);

-- Location: LCCOMB_X16_Y17_N24
\b2v_inst13|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~23_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~18_combout\,
	combout => \b2v_inst13|Decoder0~23_combout\);

-- Location: FF_X16_Y17_N3
\b2v_inst13|array_r[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][0]~q\);

-- Location: LCCOMB_X16_Y17_N22
\b2v_inst13|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~20_combout\ = (!\b2v_inst13|wr_ptr\(2) & (\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & \b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~20_combout\);

-- Location: LCCOMB_X14_Y18_N20
\b2v_inst13|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~21_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~20_combout\,
	combout => \b2v_inst13|Decoder0~21_combout\);

-- Location: FF_X13_Y18_N3
\b2v_inst13|array_r[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][0]~q\);

-- Location: LCCOMB_X17_Y18_N24
\b2v_inst13|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~22_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~20_combout\,
	combout => \b2v_inst13|Decoder0~22_combout\);

-- Location: FF_X17_Y18_N15
\b2v_inst13|array_r[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][0]~q\);

-- Location: LCCOMB_X17_Y18_N14
\b2v_inst14|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~7_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|array_r[11][0]~q\) # ((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|array_r[3][0]~q\ & !\b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|array_r[11][0]~q\,
	datac => \b2v_inst13|array_r[3][0]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector16~7_combout\);

-- Location: LCCOMB_X16_Y17_N2
\b2v_inst14|Selector16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~8_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst14|Selector16~7_combout\ & ((\b2v_inst13|array_r[15][0]~q\))) # (!\b2v_inst14|Selector16~7_combout\ & (\b2v_inst13|array_r[7][0]~q\)))) # (!\b2v_inst13|rd_ptr\(2) & 
-- (((\b2v_inst14|Selector16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|array_r[7][0]~q\,
	datac => \b2v_inst13|array_r[15][0]~q\,
	datad => \b2v_inst14|Selector16~7_combout\,
	combout => \b2v_inst14|Selector16~8_combout\);

-- Location: LCCOMB_X17_Y17_N16
\b2v_inst13|array_r[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[8][0]~feeder_combout\ = \b2v_inst11|uart_tx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(0),
	combout => \b2v_inst13|array_r[8][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N14
\b2v_inst13|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~12_combout\ = (!\b2v_inst13|wr_ptr\(2) & (!\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & !\b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~12_combout\);

-- Location: LCCOMB_X17_Y17_N8
\b2v_inst13|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~13_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~12_combout\,
	combout => \b2v_inst13|Decoder0~13_combout\);

-- Location: FF_X17_Y17_N17
\b2v_inst13|array_r[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[8][0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][0]~q\);

-- Location: LCCOMB_X16_Y17_N4
\b2v_inst13|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~14_combout\ = (\b2v_inst13|wr_ptr\(2) & (!\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & !\b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~14_combout\);

-- Location: LCCOMB_X18_Y17_N26
\b2v_inst13|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~17_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~14_combout\,
	combout => \b2v_inst13|Decoder0~17_combout\);

-- Location: FF_X18_Y17_N31
\b2v_inst13|array_r[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][0]~q\);

-- Location: LCCOMB_X17_Y17_N2
\b2v_inst13|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~16_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~12_combout\,
	combout => \b2v_inst13|Decoder0~16_combout\);

-- Location: FF_X17_Y17_N15
\b2v_inst13|array_r[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][0]~q\);

-- Location: LCCOMB_X18_Y17_N28
\b2v_inst13|array_r[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[4][0]~feeder_combout\ = \b2v_inst11|uart_tx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(0),
	combout => \b2v_inst13|array_r[4][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N8
\b2v_inst13|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~15_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~14_combout\,
	combout => \b2v_inst13|Decoder0~15_combout\);

-- Location: FF_X18_Y17_N29
\b2v_inst13|array_r[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[4][0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][0]~q\);

-- Location: LCCOMB_X17_Y17_N14
\b2v_inst14|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~4_combout\ = (\b2v_inst13|rd_ptr\(3) & (\b2v_inst13|rd_ptr\(2))) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[4][0]~q\))) # (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[0][0]~q\,
	datad => \b2v_inst13|array_r[4][0]~q\,
	combout => \b2v_inst14|Selector16~4_combout\);

-- Location: LCCOMB_X18_Y17_N30
\b2v_inst14|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~5_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector16~4_combout\ & ((\b2v_inst13|array_r[12][0]~q\))) # (!\b2v_inst14|Selector16~4_combout\ & (\b2v_inst13|array_r[8][0]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[8][0]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[12][0]~q\,
	datad => \b2v_inst14|Selector16~4_combout\,
	combout => \b2v_inst14|Selector16~5_combout\);

-- Location: LCCOMB_X16_Y18_N2
\b2v_inst13|array_r[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[9][0]~feeder_combout\ = \b2v_inst11|uart_tx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(0),
	combout => \b2v_inst13|array_r[9][0]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N30
\b2v_inst13|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~6_combout\ = (!\b2v_inst13|wr_ptr\(2) & (!\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & \b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~6_combout\);

-- Location: LCCOMB_X17_Y18_N28
\b2v_inst13|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~7_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~6_combout\,
	combout => \b2v_inst13|Decoder0~7_combout\);

-- Location: FF_X16_Y18_N3
\b2v_inst13|array_r[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[9][0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][0]~q\);

-- Location: LCCOMB_X16_Y17_N0
\b2v_inst13|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~8_combout\ = (\b2v_inst13|wr_ptr\(2) & (!\b2v_inst13|wr_ptr\(1) & (\b2v_inst13|wr_en~combout\ & \b2v_inst13|wr_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(2),
	datab => \b2v_inst13|wr_ptr\(1),
	datac => \b2v_inst13|wr_en~combout\,
	datad => \b2v_inst13|wr_ptr\(0),
	combout => \b2v_inst13|Decoder0~8_combout\);

-- Location: LCCOMB_X19_Y18_N18
\b2v_inst13|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~11_combout\ = (\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~8_combout\,
	combout => \b2v_inst13|Decoder0~11_combout\);

-- Location: FF_X19_Y18_N15
\b2v_inst13|array_r[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][0]~q\);

-- Location: LCCOMB_X17_Y18_N30
\b2v_inst13|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~10_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~6_combout\,
	combout => \b2v_inst13|Decoder0~10_combout\);

-- Location: FF_X17_Y18_N21
\b2v_inst13|array_r[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][0]~q\);

-- Location: LCCOMB_X19_Y18_N28
\b2v_inst13|array_r[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[5][0]~feeder_combout\ = \b2v_inst11|uart_tx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(0),
	combout => \b2v_inst13|array_r[5][0]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N24
\b2v_inst13|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Decoder0~9_combout\ = (!\b2v_inst13|wr_ptr\(3) & \b2v_inst13|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|wr_ptr\(3),
	datad => \b2v_inst13|Decoder0~8_combout\,
	combout => \b2v_inst13|Decoder0~9_combout\);

-- Location: FF_X19_Y18_N29
\b2v_inst13|array_r[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[5][0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][0]~q\);

-- Location: LCCOMB_X17_Y18_N20
\b2v_inst14|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~2_combout\ = (\b2v_inst13|rd_ptr\(3) & (\b2v_inst13|rd_ptr\(2))) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[5][0]~q\))) # (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[1][0]~q\,
	datad => \b2v_inst13|array_r[5][0]~q\,
	combout => \b2v_inst14|Selector16~2_combout\);

-- Location: LCCOMB_X19_Y18_N14
\b2v_inst14|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~3_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector16~2_combout\ & ((\b2v_inst13|array_r[13][0]~q\))) # (!\b2v_inst14|Selector16~2_combout\ & (\b2v_inst13|array_r[9][0]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|array_r[9][0]~q\,
	datac => \b2v_inst13|array_r[13][0]~q\,
	datad => \b2v_inst14|Selector16~2_combout\,
	combout => \b2v_inst14|Selector16~3_combout\);

-- Location: LCCOMB_X18_Y19_N12
\b2v_inst14|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~6_combout\ = (\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|rd_ptr\(0) & ((\b2v_inst14|Selector16~3_combout\))) # (!\b2v_inst13|rd_ptr\(0) & (\b2v_inst14|Selector16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst14|Selector16~5_combout\,
	datac => \b2v_inst13|rd_ptr\(0),
	datad => \b2v_inst14|Selector16~3_combout\,
	combout => \b2v_inst14|Selector16~6_combout\);

-- Location: LCCOMB_X18_Y19_N6
\b2v_inst14|Selector16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector16~9_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector16~6_combout\ & ((\b2v_inst14|Selector16~8_combout\))) # (!\b2v_inst14|Selector16~6_combout\ & (\b2v_inst14|Selector16~1_combout\)))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst14|Selector16~1_combout\,
	datac => \b2v_inst14|Selector16~8_combout\,
	datad => \b2v_inst14|Selector16~6_combout\,
	combout => \b2v_inst14|Selector16~9_combout\);

-- Location: LCCOMB_X18_Y19_N0
\b2v_inst14|b_r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[0]~feeder_combout\ = \b2v_inst14|Selector16~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|Selector16~9_combout\,
	combout => \b2v_inst14|b_r[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y17_N6
\b2v_inst11|uart_tx_data[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[4]~7_combout\ = (!\b2v_inst11|state.digit8~q\ & !\b2v_inst11|state.digit3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|state.digit8~q\,
	datac => \b2v_inst11|state.digit3~q\,
	combout => \b2v_inst11|uart_tx_data[4]~7_combout\);

-- Location: LCCOMB_X12_Y18_N12
\b2v_inst11|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector6~0_combout\ = (\b2v_inst11|state.digit7~q\ & (\b2v_inst|dht_humi_integral\(1) $ (!\b2v_inst7|tens[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit7~q\,
	datac => \b2v_inst|dht_humi_integral\(1),
	datad => \b2v_inst7|tens[0]~12_combout\,
	combout => \b2v_inst11|Selector6~0_combout\);

-- Location: LCCOMB_X12_Y18_N18
\b2v_inst11|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector6~1_combout\ = (\b2v_inst11|Selector6~0_combout\) # ((\b2v_inst11|state.digit9~q\ & !\b2v_inst9|unit[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit9~q\,
	datac => \b2v_inst9|unit[1]~0_combout\,
	datad => \b2v_inst11|Selector6~0_combout\,
	combout => \b2v_inst11|Selector6~1_combout\);

-- Location: LCCOMB_X12_Y17_N22
\b2v_inst8|unit[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|unit[1]~2_combout\ = (\b2v_inst8|tmp~7_combout\ & ((\b2v_inst|dht_temp_decimal\(1)) # ((!\b2v_inst8|tmp~8_combout\ & \b2v_inst8|tmp~6_combout\)))) # (!\b2v_inst8|tmp~7_combout\ & (\b2v_inst8|tmp~8_combout\ $ 
-- ((!\b2v_inst|dht_temp_decimal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|tmp~7_combout\,
	datab => \b2v_inst8|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_decimal\(1),
	datad => \b2v_inst8|tmp~6_combout\,
	combout => \b2v_inst8|unit[1]~2_combout\);

-- Location: LCCOMB_X13_Y17_N30
\b2v_inst11|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector6~2_combout\ = (\b2v_inst11|state.digit4~q\ & (((\b2v_inst7|tens[1]~11_combout\ & \b2v_inst11|state.digit6~q\)) # (!\b2v_inst8|unit[1]~2_combout\))) # (!\b2v_inst11|state.digit4~q\ & (\b2v_inst7|tens[1]~11_combout\ & 
-- (\b2v_inst11|state.digit6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit4~q\,
	datab => \b2v_inst7|tens[1]~11_combout\,
	datac => \b2v_inst11|state.digit6~q\,
	datad => \b2v_inst8|unit[1]~2_combout\,
	combout => \b2v_inst11|Selector6~2_combout\);

-- Location: LCCOMB_X13_Y17_N16
\b2v_inst11|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector6~3_combout\ = (\b2v_inst11|state.digit1~q\ & (\b2v_inst11|state.digit2~q\ & (!\b2v_inst6|unit[1]~0_combout\))) # (!\b2v_inst11|state.digit1~q\ & ((\b2v_inst6|tens[1]~11_combout\) # ((\b2v_inst11|state.digit2~q\ & 
-- !\b2v_inst6|unit[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit1~q\,
	datab => \b2v_inst11|state.digit2~q\,
	datac => \b2v_inst6|unit[1]~0_combout\,
	datad => \b2v_inst6|tens[1]~11_combout\,
	combout => \b2v_inst11|Selector6~3_combout\);

-- Location: LCCOMB_X13_Y17_N12
\b2v_inst11|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector6~4_combout\ = ((\b2v_inst11|Selector6~1_combout\) # ((\b2v_inst11|Selector6~2_combout\) # (\b2v_inst11|Selector6~3_combout\))) # (!\b2v_inst11|uart_tx_data[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|uart_tx_data[4]~7_combout\,
	datab => \b2v_inst11|Selector6~1_combout\,
	datac => \b2v_inst11|Selector6~2_combout\,
	datad => \b2v_inst11|Selector6~3_combout\,
	combout => \b2v_inst11|Selector6~4_combout\);

-- Location: FF_X13_Y17_N13
\b2v_inst11|uart_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector6~4_combout\,
	ena => \b2v_inst11|uart_tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(1));

-- Location: LCCOMB_X14_Y18_N6
\b2v_inst13|array_r[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[6][1]~feeder_combout\ = \b2v_inst11|uart_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(1),
	combout => \b2v_inst13|array_r[6][1]~feeder_combout\);

-- Location: FF_X14_Y18_N7
\b2v_inst13|array_r[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[6][1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][1]~q\);

-- Location: FF_X18_Y18_N5
\b2v_inst13|array_r[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][1]~q\);

-- Location: FF_X18_Y17_N17
\b2v_inst13|array_r[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][1]~q\);

-- Location: LCCOMB_X19_Y18_N20
\b2v_inst13|array_r[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[5][1]~feeder_combout\ = \b2v_inst11|uart_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(1),
	combout => \b2v_inst13|array_r[5][1]~feeder_combout\);

-- Location: FF_X19_Y18_N21
\b2v_inst13|array_r[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[5][1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][1]~q\);

-- Location: LCCOMB_X18_Y17_N16
\b2v_inst14|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~2_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|rd_ptr\(1)) # ((\b2v_inst13|array_r[5][1]~q\)))) # (!\b2v_inst13|rd_ptr\(0) & (!\b2v_inst13|rd_ptr\(1) & (\b2v_inst13|array_r[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|array_r[4][1]~q\,
	datad => \b2v_inst13|array_r[5][1]~q\,
	combout => \b2v_inst14|Selector15~2_combout\);

-- Location: LCCOMB_X18_Y18_N4
\b2v_inst14|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~3_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector15~2_combout\ & ((\b2v_inst13|array_r[7][1]~q\))) # (!\b2v_inst14|Selector15~2_combout\ & (\b2v_inst13|array_r[6][1]~q\)))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[6][1]~q\,
	datac => \b2v_inst13|array_r[7][1]~q\,
	datad => \b2v_inst14|Selector15~2_combout\,
	combout => \b2v_inst14|Selector15~3_combout\);

-- Location: LCCOMB_X16_Y18_N14
\b2v_inst13|array_r[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[2][1]~feeder_combout\ = \b2v_inst11|uart_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(1),
	combout => \b2v_inst13|array_r[2][1]~feeder_combout\);

-- Location: FF_X16_Y18_N15
\b2v_inst13|array_r[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[2][1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][1]~q\);

-- Location: FF_X17_Y18_N13
\b2v_inst13|array_r[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][1]~q\);

-- Location: FF_X17_Y18_N7
\b2v_inst13|array_r[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][1]~q\);

-- Location: LCCOMB_X17_Y17_N6
\b2v_inst13|array_r[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[0][1]~feeder_combout\ = \b2v_inst11|uart_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(1),
	combout => \b2v_inst13|array_r[0][1]~feeder_combout\);

-- Location: FF_X17_Y17_N7
\b2v_inst13|array_r[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[0][1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][1]~q\);

-- Location: LCCOMB_X17_Y18_N6
\b2v_inst14|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~4_combout\ = (\b2v_inst13|rd_ptr\(1) & (\b2v_inst13|rd_ptr\(0))) # (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|rd_ptr\(0) & (\b2v_inst13|array_r[1][1]~q\)) # (!\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|array_r[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst13|array_r[1][1]~q\,
	datad => \b2v_inst13|array_r[0][1]~q\,
	combout => \b2v_inst14|Selector15~4_combout\);

-- Location: LCCOMB_X17_Y18_N12
\b2v_inst14|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~5_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector15~4_combout\ & ((\b2v_inst13|array_r[3][1]~q\))) # (!\b2v_inst14|Selector15~4_combout\ & (\b2v_inst13|array_r[2][1]~q\)))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[2][1]~q\,
	datac => \b2v_inst13|array_r[3][1]~q\,
	datad => \b2v_inst14|Selector15~4_combout\,
	combout => \b2v_inst14|Selector15~5_combout\);

-- Location: LCCOMB_X18_Y18_N6
\b2v_inst14|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~6_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|rd_ptr\(3)) # ((\b2v_inst14|Selector15~3_combout\)))) # (!\b2v_inst13|rd_ptr\(2) & (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst14|Selector15~3_combout\,
	datad => \b2v_inst14|Selector15~5_combout\,
	combout => \b2v_inst14|Selector15~6_combout\);

-- Location: FF_X13_Y18_N5
\b2v_inst13|array_r[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][1]~q\);

-- Location: FF_X17_Y17_N5
\b2v_inst13|array_r[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][1]~q\);

-- Location: LCCOMB_X17_Y17_N4
\b2v_inst14|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~0_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|array_r[10][1]~q\) # ((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|array_r[8][1]~q\ & !\b2v_inst13|rd_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[10][1]~q\,
	datac => \b2v_inst13|array_r[8][1]~q\,
	datad => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst14|Selector15~0_combout\);

-- Location: FF_X16_Y18_N5
\b2v_inst13|array_r[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][1]~q\);

-- Location: FF_X13_Y18_N23
\b2v_inst13|array_r[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][1]~q\);

-- Location: LCCOMB_X16_Y18_N4
\b2v_inst14|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~1_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst14|Selector15~0_combout\ & ((\b2v_inst13|array_r[11][1]~q\))) # (!\b2v_inst14|Selector15~0_combout\ & (\b2v_inst13|array_r[9][1]~q\)))) # (!\b2v_inst13|rd_ptr\(0) & 
-- (\b2v_inst14|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst14|Selector15~0_combout\,
	datac => \b2v_inst13|array_r[9][1]~q\,
	datad => \b2v_inst13|array_r[11][1]~q\,
	combout => \b2v_inst14|Selector15~1_combout\);

-- Location: LCCOMB_X14_Y18_N28
\b2v_inst13|array_r[14][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[14][1]~feeder_combout\ = \b2v_inst11|uart_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(1),
	combout => \b2v_inst13|array_r[14][1]~feeder_combout\);

-- Location: FF_X14_Y18_N29
\b2v_inst13|array_r[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[14][1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][1]~q\);

-- Location: FF_X18_Y17_N23
\b2v_inst13|array_r[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][1]~q\);

-- Location: LCCOMB_X18_Y17_N22
\b2v_inst14|Selector15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~7_combout\ = (\b2v_inst13|rd_ptr\(0) & (((\b2v_inst13|rd_ptr\(1))))) # (!\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|rd_ptr\(1) & (\b2v_inst13|array_r[14][1]~q\)) # (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|array_r[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|array_r[14][1]~q\,
	datac => \b2v_inst13|array_r[12][1]~q\,
	datad => \b2v_inst13|rd_ptr\(1),
	combout => \b2v_inst14|Selector15~7_combout\);

-- Location: FF_X18_Y18_N1
\b2v_inst13|array_r[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][1]~q\);

-- Location: LCCOMB_X19_Y18_N6
\b2v_inst13|array_r[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[13][1]~feeder_combout\ = \b2v_inst11|uart_tx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(1),
	combout => \b2v_inst13|array_r[13][1]~feeder_combout\);

-- Location: FF_X19_Y18_N7
\b2v_inst13|array_r[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[13][1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][1]~q\);

-- Location: LCCOMB_X18_Y18_N0
\b2v_inst14|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~8_combout\ = (\b2v_inst14|Selector15~7_combout\ & (((\b2v_inst13|array_r[15][1]~q\)) # (!\b2v_inst13|rd_ptr\(0)))) # (!\b2v_inst14|Selector15~7_combout\ & (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|array_r[13][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector15~7_combout\,
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst13|array_r[15][1]~q\,
	datad => \b2v_inst13|array_r[13][1]~q\,
	combout => \b2v_inst14|Selector15~8_combout\);

-- Location: LCCOMB_X18_Y18_N10
\b2v_inst14|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector15~9_combout\ = (\b2v_inst14|Selector15~6_combout\ & (((\b2v_inst14|Selector15~8_combout\)) # (!\b2v_inst13|rd_ptr\(3)))) # (!\b2v_inst14|Selector15~6_combout\ & (\b2v_inst13|rd_ptr\(3) & (\b2v_inst14|Selector15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector15~6_combout\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst14|Selector15~1_combout\,
	datad => \b2v_inst14|Selector15~8_combout\,
	combout => \b2v_inst14|Selector15~9_combout\);

-- Location: LCCOMB_X18_Y19_N26
\b2v_inst14|b_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[1]~feeder_combout\ = \b2v_inst14|Selector15~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|Selector15~9_combout\,
	combout => \b2v_inst14|b_r[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y17_N20
\b2v_inst11|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector5~2_combout\ = (\b2v_inst8|unit[2]~0_combout\ & ((\b2v_inst11|state.digit4~q\) # ((\b2v_inst11|state.digit2~q\ & \b2v_inst6|unit[2]~1_combout\)))) # (!\b2v_inst8|unit[2]~0_combout\ & (\b2v_inst11|state.digit2~q\ & 
-- ((\b2v_inst6|unit[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|unit[2]~0_combout\,
	datab => \b2v_inst11|state.digit2~q\,
	datac => \b2v_inst11|state.digit4~q\,
	datad => \b2v_inst6|unit[2]~1_combout\,
	combout => \b2v_inst11|Selector5~2_combout\);

-- Location: LCCOMB_X11_Y18_N16
\b2v_inst11|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector5~1_combout\ = (\b2v_inst11|state.digit9~q\ & ((\b2v_inst9|unit[2]~1_combout\) # ((\b2v_inst11|state.digit7~q\ & \b2v_inst7|unit[2]~0_combout\)))) # (!\b2v_inst11|state.digit9~q\ & (\b2v_inst11|state.digit7~q\ & 
-- (\b2v_inst7|unit[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit9~q\,
	datab => \b2v_inst11|state.digit7~q\,
	datac => \b2v_inst7|unit[2]~0_combout\,
	datad => \b2v_inst9|unit[2]~1_combout\,
	combout => \b2v_inst11|Selector5~1_combout\);

-- Location: LCCOMB_X14_Y17_N28
\b2v_inst11|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector5~0_combout\ = (\b2v_inst11|state.digit6~q\ & ((\b2v_inst7|tens[2]~9_combout\) # ((\b2v_inst6|tens[2]~9_combout\ & !\b2v_inst11|state.digit1~q\)))) # (!\b2v_inst11|state.digit6~q\ & (\b2v_inst6|tens[2]~9_combout\ & 
-- ((!\b2v_inst11|state.digit1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit6~q\,
	datab => \b2v_inst6|tens[2]~9_combout\,
	datac => \b2v_inst7|tens[2]~9_combout\,
	datad => \b2v_inst11|state.digit1~q\,
	combout => \b2v_inst11|Selector5~0_combout\);

-- Location: LCCOMB_X13_Y17_N22
\b2v_inst11|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector5~3_combout\ = ((\b2v_inst11|Selector5~2_combout\) # ((\b2v_inst11|Selector5~1_combout\) # (\b2v_inst11|Selector5~0_combout\))) # (!\b2v_inst11|uart_tx_data[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|uart_tx_data[4]~7_combout\,
	datab => \b2v_inst11|Selector5~2_combout\,
	datac => \b2v_inst11|Selector5~1_combout\,
	datad => \b2v_inst11|Selector5~0_combout\,
	combout => \b2v_inst11|Selector5~3_combout\);

-- Location: FF_X13_Y17_N23
\b2v_inst11|uart_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector5~3_combout\,
	ena => \b2v_inst11|uart_tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(2));

-- Location: LCCOMB_X18_Y18_N28
\b2v_inst13|array_r[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[7][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[7][2]~feeder_combout\);

-- Location: FF_X18_Y18_N29
\b2v_inst13|array_r[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[7][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][2]~q\);

-- Location: FF_X17_Y18_N9
\b2v_inst13|array_r[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][2]~q\);

-- Location: LCCOMB_X17_Y18_N8
\b2v_inst14|Selector14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~7_combout\ = (\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[7][2]~q\)) # (!\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[3][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|array_r[7][2]~q\,
	datac => \b2v_inst13|array_r[3][2]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector14~7_combout\);

-- Location: FF_X18_Y18_N3
\b2v_inst13|array_r[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][2]~q\);

-- Location: LCCOMB_X13_Y18_N30
\b2v_inst13|array_r[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[11][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[11][2]~feeder_combout\);

-- Location: FF_X13_Y18_N31
\b2v_inst13|array_r[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[11][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][2]~q\);

-- Location: LCCOMB_X18_Y18_N2
\b2v_inst14|Selector14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~8_combout\ = (\b2v_inst14|Selector14~7_combout\ & (((\b2v_inst13|array_r[15][2]~q\)) # (!\b2v_inst13|rd_ptr\(3)))) # (!\b2v_inst14|Selector14~7_combout\ & (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|array_r[11][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector14~7_combout\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[15][2]~q\,
	datad => \b2v_inst13|array_r[11][2]~q\,
	combout => \b2v_inst14|Selector14~8_combout\);

-- Location: LCCOMB_X14_Y18_N12
\b2v_inst13|array_r[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[14][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[14][2]~feeder_combout\);

-- Location: FF_X14_Y18_N13
\b2v_inst13|array_r[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[14][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][2]~q\);

-- Location: LCCOMB_X14_Y18_N22
\b2v_inst13|array_r[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[6][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[6][2]~feeder_combout\);

-- Location: FF_X14_Y18_N23
\b2v_inst13|array_r[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[6][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][2]~q\);

-- Location: FF_X16_Y18_N25
\b2v_inst13|array_r[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][2]~q\);

-- Location: LCCOMB_X16_Y18_N24
\b2v_inst14|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~0_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[6][2]~q\) # ((\b2v_inst13|rd_ptr\(3))))) # (!\b2v_inst13|rd_ptr\(2) & (((\b2v_inst13|array_r[2][2]~q\ & !\b2v_inst13|rd_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[6][2]~q\,
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[2][2]~q\,
	datad => \b2v_inst13|rd_ptr\(3),
	combout => \b2v_inst14|Selector14~0_combout\);

-- Location: FF_X13_Y18_N25
\b2v_inst13|array_r[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][2]~q\);

-- Location: LCCOMB_X13_Y18_N24
\b2v_inst14|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~1_combout\ = (\b2v_inst14|Selector14~0_combout\ & ((\b2v_inst13|array_r[14][2]~q\) # ((!\b2v_inst13|rd_ptr\(3))))) # (!\b2v_inst14|Selector14~0_combout\ & (((\b2v_inst13|array_r[10][2]~q\ & \b2v_inst13|rd_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[14][2]~q\,
	datab => \b2v_inst14|Selector14~0_combout\,
	datac => \b2v_inst13|array_r[10][2]~q\,
	datad => \b2v_inst13|rd_ptr\(3),
	combout => \b2v_inst14|Selector14~1_combout\);

-- Location: FF_X18_Y17_N25
\b2v_inst13|array_r[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][2]~q\);

-- Location: FF_X18_Y17_N11
\b2v_inst13|array_r[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][2]~q\);

-- Location: FF_X17_Y17_N19
\b2v_inst13|array_r[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][2]~q\);

-- Location: LCCOMB_X17_Y17_N24
\b2v_inst13|array_r[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[8][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[8][2]~feeder_combout\);

-- Location: FF_X17_Y17_N25
\b2v_inst13|array_r[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[8][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][2]~q\);

-- Location: LCCOMB_X17_Y17_N18
\b2v_inst14|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~4_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2)) # ((\b2v_inst13|array_r[8][2]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[0][2]~q\,
	datad => \b2v_inst13|array_r[8][2]~q\,
	combout => \b2v_inst14|Selector14~4_combout\);

-- Location: LCCOMB_X18_Y17_N10
\b2v_inst14|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~5_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst14|Selector14~4_combout\ & ((\b2v_inst13|array_r[12][2]~q\))) # (!\b2v_inst14|Selector14~4_combout\ & (\b2v_inst13|array_r[4][2]~q\)))) # (!\b2v_inst13|rd_ptr\(2) & 
-- (((\b2v_inst14|Selector14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|array_r[4][2]~q\,
	datac => \b2v_inst13|array_r[12][2]~q\,
	datad => \b2v_inst14|Selector14~4_combout\,
	combout => \b2v_inst14|Selector14~5_combout\);

-- Location: FF_X17_Y18_N23
\b2v_inst13|array_r[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][2]~q\);

-- Location: LCCOMB_X16_Y18_N10
\b2v_inst13|array_r[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[9][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[9][2]~feeder_combout\);

-- Location: FF_X16_Y18_N11
\b2v_inst13|array_r[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[9][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][2]~q\);

-- Location: LCCOMB_X17_Y18_N22
\b2v_inst14|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~2_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2)) # ((\b2v_inst13|array_r[9][2]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[1][2]~q\,
	datad => \b2v_inst13|array_r[9][2]~q\,
	combout => \b2v_inst14|Selector14~2_combout\);

-- Location: FF_X19_Y18_N11
\b2v_inst13|array_r[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][2]~q\);

-- Location: LCCOMB_X19_Y18_N16
\b2v_inst13|array_r[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[5][2]~feeder_combout\ = \b2v_inst11|uart_tx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(2),
	combout => \b2v_inst13|array_r[5][2]~feeder_combout\);

-- Location: FF_X19_Y18_N17
\b2v_inst13|array_r[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[5][2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][2]~q\);

-- Location: LCCOMB_X19_Y18_N10
\b2v_inst14|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~3_combout\ = (\b2v_inst14|Selector14~2_combout\ & (((\b2v_inst13|array_r[13][2]~q\)) # (!\b2v_inst13|rd_ptr\(2)))) # (!\b2v_inst14|Selector14~2_combout\ & (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[5][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector14~2_combout\,
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[13][2]~q\,
	datad => \b2v_inst13|array_r[5][2]~q\,
	combout => \b2v_inst14|Selector14~3_combout\);

-- Location: LCCOMB_X18_Y19_N10
\b2v_inst14|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~6_combout\ = (\b2v_inst13|rd_ptr\(0) & (((\b2v_inst14|Selector14~3_combout\) # (\b2v_inst13|rd_ptr\(1))))) # (!\b2v_inst13|rd_ptr\(0) & (\b2v_inst14|Selector14~5_combout\ & ((!\b2v_inst13|rd_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst14|Selector14~5_combout\,
	datac => \b2v_inst14|Selector14~3_combout\,
	datad => \b2v_inst13|rd_ptr\(1),
	combout => \b2v_inst14|Selector14~6_combout\);

-- Location: LCCOMB_X18_Y19_N2
\b2v_inst14|Selector14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector14~9_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector14~6_combout\ & (\b2v_inst14|Selector14~8_combout\)) # (!\b2v_inst14|Selector14~6_combout\ & ((\b2v_inst14|Selector14~1_combout\))))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst14|Selector14~8_combout\,
	datac => \b2v_inst14|Selector14~1_combout\,
	datad => \b2v_inst14|Selector14~6_combout\,
	combout => \b2v_inst14|Selector14~9_combout\);

-- Location: LCCOMB_X18_Y19_N4
\b2v_inst14|b_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[2]~feeder_combout\ = \b2v_inst14|Selector14~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|Selector14~9_combout\,
	combout => \b2v_inst14|b_r[2]~feeder_combout\);

-- Location: LCCOMB_X12_Y16_N16
\b2v_inst11|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~2_combout\ = (\b2v_inst6|tmp~8_combout\ & (\b2v_inst6|tmp~10_combout\ & (!\b2v_inst|dht_temp_integral\(1)))) # (!\b2v_inst6|tmp~8_combout\ & (\b2v_inst6|tmp~9_combout\ & ((\b2v_inst|dht_temp_integral\(1)) # 
-- (!\b2v_inst6|tmp~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|tmp~10_combout\,
	datab => \b2v_inst6|tmp~8_combout\,
	datac => \b2v_inst|dht_temp_integral\(1),
	datad => \b2v_inst6|tmp~9_combout\,
	combout => \b2v_inst11|Selector4~2_combout\);

-- Location: LCCOMB_X11_Y16_N0
\b2v_inst11|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~3_combout\ = (\b2v_inst6|Add6~0_combout\ & (\b2v_inst6|tmp~4_combout\ & (!\b2v_inst6|tmp~11_combout\ & !\b2v_inst6|tmp~0_combout\))) # (!\b2v_inst6|Add6~0_combout\ & (((\b2v_inst6|tmp~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|Add6~0_combout\,
	datab => \b2v_inst6|tmp~4_combout\,
	datac => \b2v_inst6|tmp~11_combout\,
	datad => \b2v_inst6|tmp~0_combout\,
	combout => \b2v_inst11|Selector4~3_combout\);

-- Location: LCCOMB_X13_Y17_N10
\b2v_inst11|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~4_combout\ = (\b2v_inst11|state.digit1~q\ & (\b2v_inst11|Selector4~2_combout\ & ((\b2v_inst11|state.digit2~q\)))) # (!\b2v_inst11|state.digit1~q\ & ((\b2v_inst11|Selector4~3_combout\) # ((\b2v_inst11|Selector4~2_combout\ & 
-- \b2v_inst11|state.digit2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit1~q\,
	datab => \b2v_inst11|Selector4~2_combout\,
	datac => \b2v_inst11|Selector4~3_combout\,
	datad => \b2v_inst11|state.digit2~q\,
	combout => \b2v_inst11|Selector4~4_combout\);

-- Location: LCCOMB_X11_Y18_N14
\b2v_inst11|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~0_combout\ = (\b2v_inst11|state.digit9~q\ & ((\b2v_inst9|unit[3]~2_combout\) # ((\b2v_inst7|unit[3]~1_combout\ & \b2v_inst11|state.digit7~q\)))) # (!\b2v_inst11|state.digit9~q\ & (((\b2v_inst7|unit[3]~1_combout\ & 
-- \b2v_inst11|state.digit7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit9~q\,
	datab => \b2v_inst9|unit[3]~2_combout\,
	datac => \b2v_inst7|unit[3]~1_combout\,
	datad => \b2v_inst11|state.digit7~q\,
	combout => \b2v_inst11|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y17_N4
\b2v_inst11|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~1_combout\ = (\b2v_inst11|state.digit6~q\ & ((\b2v_inst7|tens[3]~13_combout\) # ((\b2v_inst8|unit[3]~1_combout\ & \b2v_inst11|state.digit4~q\)))) # (!\b2v_inst11|state.digit6~q\ & (\b2v_inst8|unit[3]~1_combout\ & 
-- (\b2v_inst11|state.digit4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit6~q\,
	datab => \b2v_inst8|unit[3]~1_combout\,
	datac => \b2v_inst11|state.digit4~q\,
	datad => \b2v_inst7|tens[3]~13_combout\,
	combout => \b2v_inst11|Selector4~1_combout\);

-- Location: LCCOMB_X13_Y17_N18
\b2v_inst11|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~5_combout\ = (\b2v_inst11|Selector4~4_combout\) # ((\b2v_inst11|Selector4~0_combout\) # ((\b2v_inst11|Selector4~1_combout\) # (!\b2v_inst11|uart_tx_data[4]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|Selector4~4_combout\,
	datab => \b2v_inst11|Selector4~0_combout\,
	datac => \b2v_inst11|Selector4~1_combout\,
	datad => \b2v_inst11|uart_tx_data[4]~7_combout\,
	combout => \b2v_inst11|Selector4~5_combout\);

-- Location: FF_X13_Y17_N19
\b2v_inst11|uart_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector4~5_combout\,
	ena => \b2v_inst11|uart_tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(3));

-- Location: FF_X18_Y17_N7
\b2v_inst13|array_r[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][3]~q\);

-- Location: LCCOMB_X19_Y18_N26
\b2v_inst13|array_r[13][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[13][3]~feeder_combout\ = \b2v_inst11|uart_tx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(3),
	combout => \b2v_inst13|array_r[13][3]~feeder_combout\);

-- Location: FF_X19_Y18_N27
\b2v_inst13|array_r[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[13][3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][3]~q\);

-- Location: LCCOMB_X18_Y17_N6
\b2v_inst14|Selector13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~7_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|rd_ptr\(1)) # ((\b2v_inst13|array_r[13][3]~q\)))) # (!\b2v_inst13|rd_ptr\(0) & (!\b2v_inst13|rd_ptr\(1) & (\b2v_inst13|array_r[12][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|array_r[12][3]~q\,
	datad => \b2v_inst13|array_r[13][3]~q\,
	combout => \b2v_inst14|Selector13~7_combout\);

-- Location: FF_X18_Y18_N13
\b2v_inst13|array_r[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][3]~q\);

-- Location: LCCOMB_X14_Y18_N24
\b2v_inst13|array_r[14][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[14][3]~feeder_combout\ = \b2v_inst11|uart_tx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(3),
	combout => \b2v_inst13|array_r[14][3]~feeder_combout\);

-- Location: FF_X14_Y18_N25
\b2v_inst13|array_r[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[14][3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][3]~q\);

-- Location: LCCOMB_X18_Y18_N12
\b2v_inst14|Selector13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~8_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector13~7_combout\ & (\b2v_inst13|array_r[15][3]~q\)) # (!\b2v_inst14|Selector13~7_combout\ & ((\b2v_inst13|array_r[14][3]~q\))))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (\b2v_inst14|Selector13~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst14|Selector13~7_combout\,
	datac => \b2v_inst13|array_r[15][3]~q\,
	datad => \b2v_inst13|array_r[14][3]~q\,
	combout => \b2v_inst14|Selector13~8_combout\);

-- Location: LCCOMB_X16_Y18_N12
\b2v_inst13|array_r[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[9][3]~feeder_combout\ = \b2v_inst11|uart_tx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(3),
	combout => \b2v_inst13|array_r[9][3]~feeder_combout\);

-- Location: FF_X16_Y18_N13
\b2v_inst13|array_r[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[9][3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][3]~q\);

-- Location: FF_X17_Y17_N21
\b2v_inst13|array_r[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][3]~q\);

-- Location: LCCOMB_X17_Y17_N20
\b2v_inst14|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~2_combout\ = (\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|rd_ptr\(0) & (\b2v_inst13|array_r[9][3]~q\)) # (!\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|array_r[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[9][3]~q\,
	datac => \b2v_inst13|array_r[8][3]~q\,
	datad => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst14|Selector13~2_combout\);

-- Location: FF_X13_Y18_N1
\b2v_inst13|array_r[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][3]~q\);

-- Location: FF_X13_Y18_N15
\b2v_inst13|array_r[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][3]~q\);

-- Location: LCCOMB_X13_Y18_N14
\b2v_inst14|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~3_combout\ = (\b2v_inst14|Selector13~2_combout\ & (((\b2v_inst13|array_r[11][3]~q\) # (!\b2v_inst13|rd_ptr\(1))))) # (!\b2v_inst14|Selector13~2_combout\ & (\b2v_inst13|array_r[10][3]~q\ & ((\b2v_inst13|rd_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector13~2_combout\,
	datab => \b2v_inst13|array_r[10][3]~q\,
	datac => \b2v_inst13|array_r[11][3]~q\,
	datad => \b2v_inst13|rd_ptr\(1),
	combout => \b2v_inst14|Selector13~3_combout\);

-- Location: LCCOMB_X16_Y18_N6
\b2v_inst13|array_r[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[2][3]~feeder_combout\ = \b2v_inst11|uart_tx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(3),
	combout => \b2v_inst13|array_r[2][3]~feeder_combout\);

-- Location: FF_X16_Y18_N7
\b2v_inst13|array_r[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[2][3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][3]~q\);

-- Location: FF_X17_Y17_N11
\b2v_inst13|array_r[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][3]~q\);

-- Location: LCCOMB_X17_Y17_N10
\b2v_inst14|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~4_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|array_r[2][3]~q\) # ((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|array_r[0][3]~q\ & !\b2v_inst13|rd_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[2][3]~q\,
	datac => \b2v_inst13|array_r[0][3]~q\,
	datad => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst14|Selector13~4_combout\);

-- Location: FF_X17_Y18_N11
\b2v_inst13|array_r[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][3]~q\);

-- Location: FF_X17_Y18_N29
\b2v_inst13|array_r[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][3]~q\);

-- Location: LCCOMB_X17_Y18_N10
\b2v_inst14|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~5_combout\ = (\b2v_inst14|Selector13~4_combout\ & (((\b2v_inst13|array_r[3][3]~q\)) # (!\b2v_inst13|rd_ptr\(0)))) # (!\b2v_inst14|Selector13~4_combout\ & (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|array_r[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector13~4_combout\,
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst13|array_r[3][3]~q\,
	datad => \b2v_inst13|array_r[1][3]~q\,
	combout => \b2v_inst14|Selector13~5_combout\);

-- Location: LCCOMB_X18_Y18_N18
\b2v_inst14|Selector13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~6_combout\ = (\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|rd_ptr\(3))) # (!\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|rd_ptr\(3) & (\b2v_inst14|Selector13~3_combout\)) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst14|Selector13~3_combout\,
	datad => \b2v_inst14|Selector13~5_combout\,
	combout => \b2v_inst14|Selector13~6_combout\);

-- Location: LCCOMB_X14_Y18_N30
\b2v_inst13|array_r[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[6][3]~feeder_combout\ = \b2v_inst11|uart_tx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(3),
	combout => \b2v_inst13|array_r[6][3]~feeder_combout\);

-- Location: FF_X14_Y18_N31
\b2v_inst13|array_r[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[6][3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][3]~q\);

-- Location: FF_X18_Y17_N5
\b2v_inst13|array_r[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][3]~q\);

-- Location: LCCOMB_X18_Y17_N4
\b2v_inst14|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~0_combout\ = (\b2v_inst13|rd_ptr\(0) & (((\b2v_inst13|rd_ptr\(1))))) # (!\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|rd_ptr\(1) & (\b2v_inst13|array_r[6][3]~q\)) # (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|array_r[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|array_r[6][3]~q\,
	datac => \b2v_inst13|array_r[4][3]~q\,
	datad => \b2v_inst13|rd_ptr\(1),
	combout => \b2v_inst14|Selector13~0_combout\);

-- Location: FF_X19_Y18_N5
\b2v_inst13|array_r[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][3]~q\);

-- Location: LCCOMB_X18_Y18_N24
\b2v_inst13|array_r[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[7][3]~feeder_combout\ = \b2v_inst11|uart_tx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(3),
	combout => \b2v_inst13|array_r[7][3]~feeder_combout\);

-- Location: FF_X18_Y18_N25
\b2v_inst13|array_r[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[7][3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][3]~q\);

-- Location: LCCOMB_X19_Y18_N4
\b2v_inst14|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~1_combout\ = (\b2v_inst14|Selector13~0_combout\ & (((\b2v_inst13|array_r[7][3]~q\)) # (!\b2v_inst13|rd_ptr\(0)))) # (!\b2v_inst14|Selector13~0_combout\ & (\b2v_inst13|rd_ptr\(0) & (\b2v_inst13|array_r[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector13~0_combout\,
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst13|array_r[5][3]~q\,
	datad => \b2v_inst13|array_r[7][3]~q\,
	combout => \b2v_inst14|Selector13~1_combout\);

-- Location: LCCOMB_X18_Y18_N26
\b2v_inst14|Selector13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector13~9_combout\ = (\b2v_inst14|Selector13~6_combout\ & ((\b2v_inst14|Selector13~8_combout\) # ((!\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst14|Selector13~6_combout\ & (((\b2v_inst13|rd_ptr\(2) & \b2v_inst14|Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector13~8_combout\,
	datab => \b2v_inst14|Selector13~6_combout\,
	datac => \b2v_inst13|rd_ptr\(2),
	datad => \b2v_inst14|Selector13~1_combout\,
	combout => \b2v_inst14|Selector13~9_combout\);

-- Location: LCCOMB_X18_Y19_N22
\b2v_inst14|b_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[3]~feeder_combout\ = \b2v_inst14|Selector13~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector13~9_combout\,
	combout => \b2v_inst14|b_r[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y17_N28
\b2v_inst11|uart_tx_data[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[4]~8_combout\ = (\b2v_inst11|uart_tx_data[0]~0_combout\ & (!\b2v_inst11|state.digit5~q\ & ((\b2v_inst11|uart_tx_data[4]~7_combout\)))) # (!\b2v_inst11|uart_tx_data[0]~0_combout\ & (((\b2v_inst11|uart_tx_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|state.digit5~q\,
	datab => \b2v_inst11|uart_tx_data[0]~0_combout\,
	datac => \b2v_inst11|uart_tx_data\(4),
	datad => \b2v_inst11|uart_tx_data[4]~7_combout\,
	combout => \b2v_inst11|uart_tx_data[4]~8_combout\);

-- Location: FF_X13_Y17_N29
\b2v_inst11|uart_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|uart_tx_data[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(4));

-- Location: FF_X16_Y17_N27
\b2v_inst13|array_r[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][4]~q\);

-- Location: FF_X16_Y17_N13
\b2v_inst13|array_r[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][4]~q\);

-- Location: LCCOMB_X13_Y18_N6
\b2v_inst13|array_r[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[11][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[11][4]~feeder_combout\);

-- Location: FF_X13_Y18_N7
\b2v_inst13|array_r[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[11][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][4]~q\);

-- Location: FF_X17_Y18_N27
\b2v_inst13|array_r[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][4]~q\);

-- Location: LCCOMB_X17_Y18_N26
\b2v_inst14|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~7_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|array_r[11][4]~q\) # ((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|array_r[3][4]~q\ & !\b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|array_r[11][4]~q\,
	datac => \b2v_inst13|array_r[3][4]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector12~7_combout\);

-- Location: LCCOMB_X16_Y17_N12
\b2v_inst14|Selector12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~8_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst14|Selector12~7_combout\ & ((\b2v_inst13|array_r[15][4]~q\))) # (!\b2v_inst14|Selector12~7_combout\ & (\b2v_inst13|array_r[7][4]~q\)))) # (!\b2v_inst13|rd_ptr\(2) & 
-- (((\b2v_inst14|Selector12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[7][4]~q\,
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[15][4]~q\,
	datad => \b2v_inst14|Selector12~7_combout\,
	combout => \b2v_inst14|Selector12~8_combout\);

-- Location: LCCOMB_X19_Y18_N22
\b2v_inst13|array_r[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[13][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[13][4]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\b2v_inst13|array_r[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[13][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][4]~q\);

-- Location: FF_X16_Y18_N1
\b2v_inst13|array_r[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][4]~q\);

-- Location: FF_X17_Y18_N5
\b2v_inst13|array_r[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][4]~q\);

-- Location: LCCOMB_X19_Y18_N0
\b2v_inst13|array_r[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[5][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[5][4]~feeder_combout\);

-- Location: FF_X19_Y18_N1
\b2v_inst13|array_r[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[5][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][4]~q\);

-- Location: LCCOMB_X17_Y18_N4
\b2v_inst14|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~0_combout\ = (\b2v_inst13|rd_ptr\(3) & (\b2v_inst13|rd_ptr\(2))) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[5][4]~q\))) # (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[1][4]~q\,
	datad => \b2v_inst13|array_r[5][4]~q\,
	combout => \b2v_inst14|Selector12~0_combout\);

-- Location: LCCOMB_X16_Y18_N0
\b2v_inst14|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~1_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector12~0_combout\ & (\b2v_inst13|array_r[13][4]~q\)) # (!\b2v_inst14|Selector12~0_combout\ & ((\b2v_inst13|array_r[9][4]~q\))))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[13][4]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[9][4]~q\,
	datad => \b2v_inst14|Selector12~0_combout\,
	combout => \b2v_inst14|Selector12~1_combout\);

-- Location: LCCOMB_X13_Y18_N28
\b2v_inst13|array_r[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[10][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[10][4]~feeder_combout\);

-- Location: FF_X13_Y18_N29
\b2v_inst13|array_r[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[10][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][4]~q\);

-- Location: FF_X16_Y18_N23
\b2v_inst13|array_r[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][4]~q\);

-- Location: LCCOMB_X16_Y18_N22
\b2v_inst14|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~2_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|array_r[10][4]~q\) # ((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|array_r[2][4]~q\ & !\b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[10][4]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[2][4]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector12~2_combout\);

-- Location: LCCOMB_X14_Y18_N14
\b2v_inst13|array_r[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[6][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[6][4]~feeder_combout\);

-- Location: FF_X14_Y18_N15
\b2v_inst13|array_r[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[6][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][4]~q\);

-- Location: FF_X14_Y18_N17
\b2v_inst13|array_r[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][4]~q\);

-- Location: LCCOMB_X14_Y18_N16
\b2v_inst14|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~3_combout\ = (\b2v_inst14|Selector12~2_combout\ & (((\b2v_inst13|array_r[14][4]~q\) # (!\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst14|Selector12~2_combout\ & (\b2v_inst13|array_r[6][4]~q\ & ((\b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector12~2_combout\,
	datab => \b2v_inst13|array_r[6][4]~q\,
	datac => \b2v_inst13|array_r[14][4]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector12~3_combout\);

-- Location: LCCOMB_X17_Y17_N12
\b2v_inst13|array_r[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[8][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[8][4]~feeder_combout\);

-- Location: FF_X17_Y17_N13
\b2v_inst13|array_r[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[8][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][4]~q\);

-- Location: FF_X18_Y17_N19
\b2v_inst13|array_r[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][4]~q\);

-- Location: LCCOMB_X18_Y17_N12
\b2v_inst13|array_r[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[4][4]~feeder_combout\ = \b2v_inst11|uart_tx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(4),
	combout => \b2v_inst13|array_r[4][4]~feeder_combout\);

-- Location: FF_X18_Y17_N13
\b2v_inst13|array_r[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[4][4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][4]~q\);

-- Location: FF_X17_Y17_N23
\b2v_inst13|array_r[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][4]~q\);

-- Location: LCCOMB_X17_Y17_N22
\b2v_inst14|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~4_combout\ = (\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[4][4]~q\)) # (!\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|array_r[4][4]~q\,
	datac => \b2v_inst13|array_r[0][4]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector12~4_combout\);

-- Location: LCCOMB_X18_Y17_N18
\b2v_inst14|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~5_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector12~4_combout\ & ((\b2v_inst13|array_r[12][4]~q\))) # (!\b2v_inst14|Selector12~4_combout\ & (\b2v_inst13|array_r[8][4]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[8][4]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[12][4]~q\,
	datad => \b2v_inst14|Selector12~4_combout\,
	combout => \b2v_inst14|Selector12~5_combout\);

-- Location: LCCOMB_X17_Y19_N16
\b2v_inst14|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~6_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|rd_ptr\(0)) # ((\b2v_inst14|Selector12~3_combout\)))) # (!\b2v_inst13|rd_ptr\(1) & (!\b2v_inst13|rd_ptr\(0) & ((\b2v_inst14|Selector12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst14|Selector12~3_combout\,
	datad => \b2v_inst14|Selector12~5_combout\,
	combout => \b2v_inst14|Selector12~6_combout\);

-- Location: LCCOMB_X17_Y19_N2
\b2v_inst14|Selector12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector12~9_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst14|Selector12~6_combout\ & (\b2v_inst14|Selector12~8_combout\)) # (!\b2v_inst14|Selector12~6_combout\ & ((\b2v_inst14|Selector12~1_combout\))))) # (!\b2v_inst13|rd_ptr\(0) & 
-- (((\b2v_inst14|Selector12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector12~8_combout\,
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst14|Selector12~1_combout\,
	datad => \b2v_inst14|Selector12~6_combout\,
	combout => \b2v_inst14|Selector12~9_combout\);

-- Location: LCCOMB_X18_Y19_N8
\b2v_inst14|b_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[4]~feeder_combout\ = \b2v_inst14|Selector12~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|Selector12~9_combout\,
	combout => \b2v_inst14|b_r[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y17_N6
\b2v_inst11|uart_tx_data[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|uart_tx_data[5]~9_combout\ = !\b2v_inst11|state.digit5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|state.digit5~q\,
	combout => \b2v_inst11|uart_tx_data[5]~9_combout\);

-- Location: FF_X13_Y17_N7
\b2v_inst11|uart_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst11|uart_tx_data[5]~9_combout\,
	ena => \b2v_inst11|uart_tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(5));

-- Location: LCCOMB_X13_Y18_N18
\b2v_inst13|array_r[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[11][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[11][5]~feeder_combout\);

-- Location: FF_X13_Y18_N19
\b2v_inst13|array_r[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[11][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][5]~q\);

-- Location: LCCOMB_X16_Y18_N20
\b2v_inst13|array_r[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[9][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[9][5]~feeder_combout\);

-- Location: FF_X16_Y18_N21
\b2v_inst13|array_r[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[9][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][5]~q\);

-- Location: FF_X13_Y18_N13
\b2v_inst13|array_r[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][5]~q\);

-- Location: FF_X17_Y17_N1
\b2v_inst13|array_r[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][5]~q\);

-- Location: LCCOMB_X17_Y17_N0
\b2v_inst14|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~0_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|array_r[10][5]~q\) # ((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|array_r[8][5]~q\ & !\b2v_inst13|rd_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[10][5]~q\,
	datac => \b2v_inst13|array_r[8][5]~q\,
	datad => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst14|Selector11~0_combout\);

-- Location: LCCOMB_X17_Y18_N0
\b2v_inst14|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~1_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst14|Selector11~0_combout\ & (\b2v_inst13|array_r[11][5]~q\)) # (!\b2v_inst14|Selector11~0_combout\ & ((\b2v_inst13|array_r[9][5]~q\))))) # (!\b2v_inst13|rd_ptr\(0) & 
-- (((\b2v_inst14|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[11][5]~q\,
	datab => \b2v_inst13|array_r[9][5]~q\,
	datac => \b2v_inst13|rd_ptr\(0),
	datad => \b2v_inst14|Selector11~0_combout\,
	combout => \b2v_inst14|Selector11~1_combout\);

-- Location: LCCOMB_X16_Y18_N26
\b2v_inst13|array_r[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[2][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[2][5]~feeder_combout\);

-- Location: FF_X16_Y18_N27
\b2v_inst13|array_r[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[2][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][5]~q\);

-- Location: FF_X17_Y18_N19
\b2v_inst13|array_r[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][5]~q\);

-- Location: FF_X17_Y18_N31
\b2v_inst13|array_r[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][5]~q\);

-- Location: FF_X17_Y17_N27
\b2v_inst13|array_r[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][5]~q\);

-- Location: LCCOMB_X17_Y17_N26
\b2v_inst14|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~4_combout\ = (\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|rd_ptr\(0) & (\b2v_inst13|array_r[1][5]~q\)) # (!\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|array_r[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[1][5]~q\,
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|array_r[0][5]~q\,
	datad => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst14|Selector11~4_combout\);

-- Location: LCCOMB_X17_Y18_N18
\b2v_inst14|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~5_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector11~4_combout\ & ((\b2v_inst13|array_r[3][5]~q\))) # (!\b2v_inst14|Selector11~4_combout\ & (\b2v_inst13|array_r[2][5]~q\)))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[2][5]~q\,
	datac => \b2v_inst13|array_r[3][5]~q\,
	datad => \b2v_inst14|Selector11~4_combout\,
	combout => \b2v_inst14|Selector11~5_combout\);

-- Location: LCCOMB_X14_Y18_N10
\b2v_inst13|array_r[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[6][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[6][5]~feeder_combout\);

-- Location: FF_X14_Y18_N11
\b2v_inst13|array_r[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[6][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][5]~q\);

-- Location: FF_X18_Y18_N9
\b2v_inst13|array_r[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][5]~q\);

-- Location: FF_X18_Y17_N1
\b2v_inst13|array_r[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][5]~q\);

-- Location: LCCOMB_X19_Y18_N8
\b2v_inst13|array_r[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[5][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[5][5]~feeder_combout\);

-- Location: FF_X19_Y18_N9
\b2v_inst13|array_r[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[5][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][5]~q\);

-- Location: LCCOMB_X18_Y17_N0
\b2v_inst14|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~2_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|rd_ptr\(1)) # ((\b2v_inst13|array_r[5][5]~q\)))) # (!\b2v_inst13|rd_ptr\(0) & (!\b2v_inst13|rd_ptr\(1) & (\b2v_inst13|array_r[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|array_r[4][5]~q\,
	datad => \b2v_inst13|array_r[5][5]~q\,
	combout => \b2v_inst14|Selector11~2_combout\);

-- Location: LCCOMB_X18_Y18_N8
\b2v_inst14|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~3_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector11~2_combout\ & ((\b2v_inst13|array_r[7][5]~q\))) # (!\b2v_inst14|Selector11~2_combout\ & (\b2v_inst13|array_r[6][5]~q\)))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(1),
	datab => \b2v_inst13|array_r[6][5]~q\,
	datac => \b2v_inst13|array_r[7][5]~q\,
	datad => \b2v_inst14|Selector11~2_combout\,
	combout => \b2v_inst14|Selector11~3_combout\);

-- Location: LCCOMB_X18_Y18_N14
\b2v_inst14|Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~6_combout\ = (\b2v_inst13|rd_ptr\(2) & (((\b2v_inst14|Selector11~3_combout\) # (\b2v_inst13|rd_ptr\(3))))) # (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst14|Selector11~5_combout\ & ((!\b2v_inst13|rd_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst14|Selector11~5_combout\,
	datac => \b2v_inst14|Selector11~3_combout\,
	datad => \b2v_inst13|rd_ptr\(3),
	combout => \b2v_inst14|Selector11~6_combout\);

-- Location: LCCOMB_X19_Y18_N2
\b2v_inst13|array_r[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[13][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[13][5]~feeder_combout\);

-- Location: FF_X19_Y18_N3
\b2v_inst13|array_r[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[13][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][5]~q\);

-- Location: FF_X18_Y18_N21
\b2v_inst13|array_r[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][5]~q\);

-- Location: LCCOMB_X14_Y18_N8
\b2v_inst13|array_r[14][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[14][5]~feeder_combout\ = \b2v_inst11|uart_tx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(5),
	combout => \b2v_inst13|array_r[14][5]~feeder_combout\);

-- Location: FF_X14_Y18_N9
\b2v_inst13|array_r[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[14][5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][5]~q\);

-- Location: FF_X18_Y17_N3
\b2v_inst13|array_r[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][5]~q\);

-- Location: LCCOMB_X18_Y17_N2
\b2v_inst14|Selector11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~7_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst13|array_r[14][5]~q\) # ((\b2v_inst13|rd_ptr\(0))))) # (!\b2v_inst13|rd_ptr\(1) & (((\b2v_inst13|array_r[12][5]~q\ & !\b2v_inst13|rd_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[14][5]~q\,
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst13|array_r[12][5]~q\,
	datad => \b2v_inst13|rd_ptr\(0),
	combout => \b2v_inst14|Selector11~7_combout\);

-- Location: LCCOMB_X18_Y18_N20
\b2v_inst14|Selector11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~8_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst14|Selector11~7_combout\ & ((\b2v_inst13|array_r[15][5]~q\))) # (!\b2v_inst14|Selector11~7_combout\ & (\b2v_inst13|array_r[13][5]~q\)))) # (!\b2v_inst13|rd_ptr\(0) & 
-- (((\b2v_inst14|Selector11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[13][5]~q\,
	datab => \b2v_inst13|rd_ptr\(0),
	datac => \b2v_inst13|array_r[15][5]~q\,
	datad => \b2v_inst14|Selector11~7_combout\,
	combout => \b2v_inst14|Selector11~8_combout\);

-- Location: LCCOMB_X18_Y18_N22
\b2v_inst14|Selector11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector11~9_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector11~6_combout\ & ((\b2v_inst14|Selector11~8_combout\))) # (!\b2v_inst14|Selector11~6_combout\ & (\b2v_inst14|Selector11~1_combout\)))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector11~1_combout\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst14|Selector11~6_combout\,
	datad => \b2v_inst14|Selector11~8_combout\,
	combout => \b2v_inst14|Selector11~9_combout\);

-- Location: LCCOMB_X18_Y19_N30
\b2v_inst14|b_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[5]~feeder_combout\ = \b2v_inst14|Selector11~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst14|Selector11~9_combout\,
	combout => \b2v_inst14|b_r[5]~feeder_combout\);

-- Location: FF_X13_Y17_N1
\b2v_inst11|uart_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|state.digit5~q\,
	sload => VCC,
	ena => \b2v_inst11|uart_tx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|uart_tx_data\(6));

-- Location: FF_X14_Y18_N21
\b2v_inst13|array_r[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[14][6]~q\);

-- Location: FF_X13_Y18_N21
\b2v_inst13|array_r[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[10][6]~q\);

-- Location: FF_X14_Y18_N19
\b2v_inst13|array_r[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[6][6]~q\);

-- Location: FF_X16_Y18_N17
\b2v_inst13|array_r[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[2][6]~q\);

-- Location: LCCOMB_X16_Y18_N16
\b2v_inst14|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~0_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[6][6]~q\) # ((\b2v_inst13|rd_ptr\(3))))) # (!\b2v_inst13|rd_ptr\(2) & (((\b2v_inst13|array_r[2][6]~q\ & !\b2v_inst13|rd_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[6][6]~q\,
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[2][6]~q\,
	datad => \b2v_inst13|rd_ptr\(3),
	combout => \b2v_inst14|Selector10~0_combout\);

-- Location: LCCOMB_X13_Y18_N20
\b2v_inst14|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~1_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector10~0_combout\ & (\b2v_inst13|array_r[14][6]~q\)) # (!\b2v_inst14|Selector10~0_combout\ & ((\b2v_inst13|array_r[10][6]~q\))))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[14][6]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[10][6]~q\,
	datad => \b2v_inst14|Selector10~0_combout\,
	combout => \b2v_inst14|Selector10~1_combout\);

-- Location: FF_X13_Y18_N11
\b2v_inst13|array_r[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[11][6]~q\);

-- Location: FF_X18_Y18_N31
\b2v_inst13|array_r[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[15][6]~q\);

-- Location: FF_X17_Y18_N3
\b2v_inst13|array_r[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[3][6]~q\);

-- Location: LCCOMB_X18_Y18_N16
\b2v_inst13|array_r[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[7][6]~feeder_combout\ = \b2v_inst11|uart_tx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(6),
	combout => \b2v_inst13|array_r[7][6]~feeder_combout\);

-- Location: FF_X18_Y18_N17
\b2v_inst13|array_r[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[7][6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[7][6]~q\);

-- Location: LCCOMB_X17_Y18_N2
\b2v_inst14|Selector10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~7_combout\ = (\b2v_inst13|rd_ptr\(3) & (\b2v_inst13|rd_ptr\(2))) # (!\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2) & ((\b2v_inst13|array_r[7][6]~q\))) # (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[3][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[3][6]~q\,
	datad => \b2v_inst13|array_r[7][6]~q\,
	combout => \b2v_inst14|Selector10~7_combout\);

-- Location: LCCOMB_X18_Y18_N30
\b2v_inst14|Selector10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~8_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst14|Selector10~7_combout\ & ((\b2v_inst13|array_r[15][6]~q\))) # (!\b2v_inst14|Selector10~7_combout\ & (\b2v_inst13|array_r[11][6]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & 
-- (((\b2v_inst14|Selector10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[11][6]~q\,
	datab => \b2v_inst13|rd_ptr\(3),
	datac => \b2v_inst13|array_r[15][6]~q\,
	datad => \b2v_inst14|Selector10~7_combout\,
	combout => \b2v_inst14|Selector10~8_combout\);

-- Location: LCCOMB_X19_Y18_N12
\b2v_inst13|array_r[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[5][6]~feeder_combout\ = \b2v_inst11|uart_tx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(6),
	combout => \b2v_inst13|array_r[5][6]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\b2v_inst13|array_r[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[5][6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[5][6]~q\);

-- Location: FF_X19_Y18_N31
\b2v_inst13|array_r[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[13][6]~q\);

-- Location: FF_X17_Y18_N17
\b2v_inst13|array_r[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[1][6]~q\);

-- Location: LCCOMB_X16_Y18_N18
\b2v_inst13|array_r[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[9][6]~feeder_combout\ = \b2v_inst11|uart_tx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(6),
	combout => \b2v_inst13|array_r[9][6]~feeder_combout\);

-- Location: FF_X16_Y18_N19
\b2v_inst13|array_r[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[9][6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[9][6]~q\);

-- Location: LCCOMB_X17_Y18_N16
\b2v_inst14|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~2_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|rd_ptr\(2)) # ((\b2v_inst13|array_r[9][6]~q\)))) # (!\b2v_inst13|rd_ptr\(3) & (!\b2v_inst13|rd_ptr\(2) & (\b2v_inst13|array_r[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[1][6]~q\,
	datad => \b2v_inst13|array_r[9][6]~q\,
	combout => \b2v_inst14|Selector10~2_combout\);

-- Location: LCCOMB_X19_Y18_N30
\b2v_inst14|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~3_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst14|Selector10~2_combout\ & ((\b2v_inst13|array_r[13][6]~q\))) # (!\b2v_inst14|Selector10~2_combout\ & (\b2v_inst13|array_r[5][6]~q\)))) # (!\b2v_inst13|rd_ptr\(2) & 
-- (((\b2v_inst14|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|array_r[5][6]~q\,
	datab => \b2v_inst13|rd_ptr\(2),
	datac => \b2v_inst13|array_r[13][6]~q\,
	datad => \b2v_inst14|Selector10~2_combout\,
	combout => \b2v_inst14|Selector10~3_combout\);

-- Location: FF_X18_Y17_N21
\b2v_inst13|array_r[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[4][6]~q\);

-- Location: FF_X18_Y17_N15
\b2v_inst13|array_r[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[12][6]~q\);

-- Location: LCCOMB_X17_Y17_N28
\b2v_inst13|array_r[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|array_r[8][6]~feeder_combout\ = \b2v_inst11|uart_tx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|uart_tx_data\(6),
	combout => \b2v_inst13|array_r[8][6]~feeder_combout\);

-- Location: FF_X17_Y17_N29
\b2v_inst13|array_r[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst13|array_r[8][6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b2v_inst13|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[8][6]~q\);

-- Location: FF_X17_Y17_N31
\b2v_inst13|array_r[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|uart_tx_data\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b2v_inst13|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|array_r[0][6]~q\);

-- Location: LCCOMB_X17_Y17_N30
\b2v_inst14|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~4_combout\ = (\b2v_inst13|rd_ptr\(3) & ((\b2v_inst13|array_r[8][6]~q\) # ((\b2v_inst13|rd_ptr\(2))))) # (!\b2v_inst13|rd_ptr\(3) & (((\b2v_inst13|array_r[0][6]~q\ & !\b2v_inst13|rd_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(3),
	datab => \b2v_inst13|array_r[8][6]~q\,
	datac => \b2v_inst13|array_r[0][6]~q\,
	datad => \b2v_inst13|rd_ptr\(2),
	combout => \b2v_inst14|Selector10~4_combout\);

-- Location: LCCOMB_X18_Y17_N14
\b2v_inst14|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~5_combout\ = (\b2v_inst13|rd_ptr\(2) & ((\b2v_inst14|Selector10~4_combout\ & ((\b2v_inst13|array_r[12][6]~q\))) # (!\b2v_inst14|Selector10~4_combout\ & (\b2v_inst13|array_r[4][6]~q\)))) # (!\b2v_inst13|rd_ptr\(2) & 
-- (((\b2v_inst14|Selector10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(2),
	datab => \b2v_inst13|array_r[4][6]~q\,
	datac => \b2v_inst13|array_r[12][6]~q\,
	datad => \b2v_inst14|Selector10~4_combout\,
	combout => \b2v_inst14|Selector10~5_combout\);

-- Location: LCCOMB_X19_Y17_N0
\b2v_inst14|Selector10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~6_combout\ = (\b2v_inst13|rd_ptr\(0) & ((\b2v_inst13|rd_ptr\(1)) # ((\b2v_inst14|Selector10~3_combout\)))) # (!\b2v_inst13|rd_ptr\(0) & (!\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|rd_ptr\(0),
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst14|Selector10~3_combout\,
	datad => \b2v_inst14|Selector10~5_combout\,
	combout => \b2v_inst14|Selector10~6_combout\);

-- Location: LCCOMB_X19_Y17_N18
\b2v_inst14|Selector10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector10~9_combout\ = (\b2v_inst13|rd_ptr\(1) & ((\b2v_inst14|Selector10~6_combout\ & ((\b2v_inst14|Selector10~8_combout\))) # (!\b2v_inst14|Selector10~6_combout\ & (\b2v_inst14|Selector10~1_combout\)))) # (!\b2v_inst13|rd_ptr\(1) & 
-- (((\b2v_inst14|Selector10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector10~1_combout\,
	datab => \b2v_inst13|rd_ptr\(1),
	datac => \b2v_inst14|Selector10~8_combout\,
	datad => \b2v_inst14|Selector10~6_combout\,
	combout => \b2v_inst14|Selector10~9_combout\);

-- Location: LCCOMB_X19_Y19_N16
\b2v_inst14|b_r[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|b_r[5]~0_combout\ = (\b2v_inst14|Selector3~1_combout\ & ((\b2v_inst14|state_r.data~q\) # ((\b2v_inst13|empty_tmp~q\ & !\b2v_inst14|state_r.idle~q\)))) # (!\b2v_inst14|Selector3~1_combout\ & (\b2v_inst13|empty_tmp~q\ & 
-- (!\b2v_inst14|state_r.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Selector3~1_combout\,
	datab => \b2v_inst13|empty_tmp~q\,
	datac => \b2v_inst14|state_r.idle~q\,
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|b_r[5]~0_combout\);

-- Location: FF_X19_Y19_N9
\b2v_inst14|b_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \b2v_inst14|Selector10~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \b2v_inst14|state_r.data~q\,
	sload => VCC,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(6));

-- Location: FF_X18_Y19_N31
\b2v_inst14|b_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|b_r[5]~feeder_combout\,
	asdata => \b2v_inst14|b_r\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \b2v_inst14|state_r.data~q\,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(5));

-- Location: FF_X18_Y19_N9
\b2v_inst14|b_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|b_r[4]~feeder_combout\,
	asdata => \b2v_inst14|b_r\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \b2v_inst14|state_r.data~q\,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(4));

-- Location: FF_X18_Y19_N23
\b2v_inst14|b_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|b_r[3]~feeder_combout\,
	asdata => \b2v_inst14|b_r\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \b2v_inst14|state_r.data~q\,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(3));

-- Location: FF_X18_Y19_N5
\b2v_inst14|b_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|b_r[2]~feeder_combout\,
	asdata => \b2v_inst14|b_r\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \b2v_inst14|state_r.data~q\,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(2));

-- Location: FF_X18_Y19_N27
\b2v_inst14|b_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|b_r[1]~feeder_combout\,
	asdata => \b2v_inst14|b_r\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \b2v_inst14|state_r.data~q\,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(1));

-- Location: FF_X18_Y19_N1
\b2v_inst14|b_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|b_r[0]~feeder_combout\,
	asdata => \b2v_inst14|b_r\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \b2v_inst14|state_r.data~q\,
	ena => \b2v_inst14|b_r[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|b_r\(0));

-- Location: LCCOMB_X19_Y19_N22
\b2v_inst14|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Selector0~0_combout\ = (!\b2v_inst14|state_r.stop~q\ & (\b2v_inst14|state_r.idle~q\ & ((!\b2v_inst14|state_r.data~q\) # (!\b2v_inst14|b_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|state_r.stop~q\,
	datab => \b2v_inst14|state_r.idle~q\,
	datac => \b2v_inst14|b_r\(0),
	datad => \b2v_inst14|state_r.data~q\,
	combout => \b2v_inst14|Selector0~0_combout\);

-- Location: FF_X19_Y19_N23
\b2v_inst14|tx_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \b2v_inst14|Selector0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|tx_r~q\);

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_erro <= \erro~output_o\;

ww_led2 <= \led2~output_o\;

ww_data_to_lcd(0) <= \data_to_lcd[0]~output_o\;

ww_data_to_lcd(1) <= \data_to_lcd[1]~output_o\;

ww_data_to_lcd(2) <= \data_to_lcd[2]~output_o\;

ww_data_to_lcd(3) <= \data_to_lcd[3]~output_o\;

ww_data_to_lcd(4) <= \data_to_lcd[4]~output_o\;

ww_data_to_lcd(5) <= \data_to_lcd[5]~output_o\;

ww_data_to_lcd(6) <= \data_to_lcd[6]~output_o\;

ww_data_to_lcd(7) <= \data_to_lcd[7]~output_o\;

ww_tx <= \tx~output_o\;

ww_dht_bus <= \dht_bus~output_o\;
END structure;


