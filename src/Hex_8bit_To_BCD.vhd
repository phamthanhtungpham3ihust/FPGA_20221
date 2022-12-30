library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hex_8bit_To_BCD is
	port
		(
			hex_data 		: in std_logic_vector (7 downto 0);
			hundreds 		: out std_logic_vector (3 downto 0);
			tens 				: out std_logic_vector (3 downto 0);
			unit 				: out std_logic_vector (3 downto 0)
		);
end entity;

architecture arch of Hex_8bit_To_BCD is
--signal tmp : std_logic_vector(7 downto 0);
constant repair	: std_logic_vector(3 downto 0) := "0011";
begin
	process(hex_data)
		variable i : integer range 0 to 7;
		variable tmp : std_logic_vector(19 downto 0);
	begin
		tmp 	:= "000000000000" & hex_data;
		i 		:= 7;
		while i > 0
		loop
			tmp 	:= tmp(18 downto 0) & '0';
			i 		:= i-1;
			if tmp(11 downto 8) >= "0101" then
				tmp(11 downto 8) := std_logic_vector(unsigned(tmp(11 downto 8)) + unsigned(repair));
			end if;
			if tmp(15 downto 12) >= "0101" then
				tmp(15 downto 12) := std_logic_vector(unsigned(tmp(15 downto 12)) + unsigned(repair));
			end if;
		end loop;
			tmp 		:= tmp(18 downto 0) & '0';
		
			hundreds <= tmp(19 downto 16);
		
			tens <= tmp(15 downto 12);
		
			unit <= tmp(11 downto 8);
		
	end process;
end architecture; 

