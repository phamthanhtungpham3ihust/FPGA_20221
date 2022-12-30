library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity LCD_Conv is
	port
		(
			temp_hundreds 		: in std_logic_vector (3 downto 0);
			temp_tens 			: in std_logic_vector (3 downto 0);
			temp_unit 			: in std_logic_vector (3 downto 0);
			temp_decimal		: in std_logic_vector (3 downto 0);
			humi_hundreds 		: in std_logic_vector (3 downto 0);
			humi_tens 			: in std_logic_vector (3 downto 0);
			humi_unit 			: in std_logic_vector (3 downto 0);
			humi_decimal		: in std_logic_vector (3 downto 0);
			lcd_l0 				: out std_logic_vector(127 downto 0);
			lcd_l1 				: out std_logic_vector(127 downto 0);
			data_temp_tens		: out std_logic_vector(7 downto 0);
			data_temp_unit		: out std_logic_vector(7 downto 0);
			data_temp_decimal	: out std_logic_vector(7 downto 0);
			data_humi_tens		: out std_logic_vector(7 downto 0);
			data_humi_unit		: out std_logic_vector(7 downto 0);
			data_humi_decimal	: out std_logic_vector(7 downto 0)
		);

end entity;

architecture arch of LCD_Conv is
begin
		lcd_l0 (7 downto 0) 		<= conv_std_logic_vector(character'pos('T'),8);
		lcd_l0 (15 downto 8) 	<= conv_std_logic_vector(character'pos('E'),8);
		lcd_l0 (23 downto 16) 	<= conv_std_logic_vector(character'pos('M'),8);	
		lcd_l0 (31 downto 24) 	<= conv_std_logic_vector(character'pos('P'),8);
		lcd_l0 (39 downto 32) 	<= conv_std_logic_vector(character'pos(':'),8);
		lcd_l0 (47 downto 40) 	<= conv_std_logic_vector(character'pos(' '),8);
		lcd_l0 (55 downto 48) 	<= x"20" when temp_hundreds = "0000" else x"3"&temp_hundreds;
		lcd_l0 (63 downto 56) 	<= x"3"&temp_tens;
		lcd_l0 (71 downto 64) 	<= x"3"&temp_unit;
		lcd_l0 (79 downto 72) 	<= conv_std_logic_vector(character'pos('.'),8);
		lcd_l0 (87 downto 80) 	<= x"3"&temp_decimal;
		lcd_l0 (95 downto 88) 	<= "10110000";
		lcd_l0 (103 downto 96) 	<= x"43";
		lcd_l0 (111 downto 104) <= conv_std_logic_vector(character'pos(' '),8);
		lcd_l0 (119 downto 112) <= conv_std_logic_vector(character'pos(' '),8);
		lcd_l0 (127 downto 120) <= conv_std_logic_vector(character'pos(' '),8);
		
		
		lcd_l1 (7 downto 0) 		<= conv_std_logic_vector(character'pos('H'),8);
		lcd_l1 (15 downto 8) 	<= conv_std_logic_vector(character'pos('U'),8);
		lcd_l1 (23 downto 16) 	<= conv_std_logic_vector(character'pos('M'),8);
		lcd_l1 (31 downto 24) 	<= conv_std_logic_vector(character'pos('I'),8);
		lcd_l1 (39 downto 32) 	<= conv_std_logic_vector(character'pos(':'),8);
		lcd_l1 (47 downto 40) 	<= conv_std_logic_vector(character'pos(' '),8);
		lcd_l1 (55 downto 48) 	<= x"20" when humi_hundreds = "0000" else x"3"&humi_hundreds;
		lcd_l1 (63 downto 56) 	<= x"3"&humi_tens;
		lcd_l1 (71 downto 64) 	<= x"3"&humi_unit;
		lcd_l1 (79 downto 72) 	<= conv_std_logic_vector(character'pos('.'),8);
		lcd_l1 (87 downto 80) 	<= x"3"&humi_decimal;
		lcd_l1 (95 downto 88) 	<= x"25";
		lcd_l1 (103 downto 96) 	<= conv_std_logic_vector(character'pos(' '),8);
		lcd_l1 (111 downto 104) <= conv_std_logic_vector(character'pos(' '),8);
		lcd_l1 (119 downto 112) <= conv_std_logic_vector(character'pos(' '),8);
		lcd_l1 (127 downto 120) <= conv_std_logic_vector(character'pos(' '),8);
		
		data_temp_tens			<= x"3"&temp_tens;
		data_temp_unit			<= x"3"&temp_unit;
		data_temp_decimal		<= x"3"&temp_decimal;
		data_humi_tens			<= x"3"&humi_tens;
		data_humi_unit			<= x"3"&humi_unit;
		data_humi_decimal		<= x"3"&humi_decimal;

end architecture;