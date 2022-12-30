-- Module chia tần số
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity DividedFrequency is
	port
		( 
			inputFrq		: in std_logic;
			dividedFrq	: out std_logic
		);
end entity;

architecture rtl of DividedFrequency is
constant n 				: integer := 5*50000000;
signal reg_cnt_out 	: integer := 1;
signal reg_cnt_in  	: integer := 1;

begin
-- register 
	process(inputFrq)
		begin
			if falling_edge(inputFrq) then
				reg_cnt_out <= reg_cnt_in;
			end if;
	end process;
-- next stage logic
	reg_cnt_in <=  1 when reg_cnt_out = n + 9 else
					  reg_cnt_out + 1; 
-- output
	dividedFrq <= '1' when (reg_cnt_out >= n) and (reg_cnt_out < n + 9) else
					  '0' ;
end architecture;