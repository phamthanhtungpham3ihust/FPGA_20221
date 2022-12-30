library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity BaudRateGenerator is
	generic
		( 
			n : integer:= 9 ;
			m : integer:= 163
		);
		
	port
		( 
			clk 	: in std_logic;
			rst	: in std_logic;
			tick	: out std_logic
		);

end entity;

architecture rtl of BaudRateGenerator is
	signal r_r	:	unsigned(n-1 downto 0);
	signal r_n	:	unsigned(n-1 downto 0); 

begin
	process(clk, rst)
	begin
		if rst = '0' then
			r_r <= (others => '0');
		elsif falling_edge(clk) then 
			r_r <= r_n;
		end if;
	end process;
	
	r_n <= (others => '0') when r_r = (m-1) else
			r_r + 1;
			
	tick <= '1' when r_r = (m-1) else '0';

end architecture;