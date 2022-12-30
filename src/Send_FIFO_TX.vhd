library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Send_FIFO_TX is
port
	(
		ena						: in std_logic;
		rst						: in std_logic;
		data_temp_tens			: in std_logic_vector(7 downto 0);
		data_temp_unit			: in std_logic_vector(7 downto 0);
		data_temp_decimal		: in std_logic_vector(7 downto 0);
		
		data_humi_tens			: in std_logic_vector(7 downto 0);
		data_humi_unit			: in std_logic_vector(7 downto 0);
		data_humi_decimal		: in std_logic_vector(7 downto 0);
		
		uart_tx_full			: in std_logic;
		clk 						: in std_logic;
		
		uart_tx_data			: out std_logic_vector(7 downto 0);
		uart_tx_ena				: out std_logic
	);


end entity;

architecture rtl of Send_FIFO_TX is

type data_t is array(1 to 9) of std_logic_vector(7 downto 0);
type SM_Digit is (digit1, digit2, digit3, digit4, digit5, digit6, digit7, digit8, digit9);

signal tmp 		: std_logic_vector(7 downto 0);
signal state	: SM_Digit; 
signal data 	: data_t;

begin
	data(1) <= data_temp_tens;
	data(2) <= data_temp_unit;
	data(3) <= conv_std_logic_vector(character'pos('.'),8);
	data(4) <= data_temp_decimal;
	data(5) <= conv_std_logic_vector(character'pos('@'),8);
	data(6) <= data_humi_tens;
	data(7) <= data_humi_unit;
	data(8) <= conv_std_logic_vector(character'pos('.'),8);
	data(9) <= data_humi_decimal;

	process(rst, clk)
	--variable idx	: integer range 1 to 6 := 1;
	begin
		if rst = '0' then
			state <= digit1;
		elsif falling_edge(clk) then
				if  uart_tx_full = '0' then
					uart_tx_ena <= ena;
					case state is
						when digit1 => if ena = '1' then
											uart_tx_data <= data(1);
											state <= digit2;
											end if;
											--uart_tx_ena <= '0';
						
						when digit2 => if ena = '1' then
											uart_tx_data <= data(2);
											state <= digit3;
											end if;
											
											--uart_tx_ena <= '0';
											
											
						when digit3 => if ena = '1' then
											uart_tx_data <= data(3);
											state <= digit4;
											end if;
											--uart_tx_ena <= '0';
						
						when digit4 => if ena = '1' then
											uart_tx_data <= data(4);
											state <= digit5;
											end if;
											--uart_tx_ena <= '0';
						
						when digit5 => if ena = '1' then
											uart_tx_data <= data(5);
											state <= digit6;
											end if;
											--uart_tx_ena <= '0';
						
						when digit6 => if ena = '1' then
											uart_tx_data <= data(6);
											state <= digit7;
											end if;
						when digit7 => if ena = '1' then
											uart_tx_data <= data(7);
											state <= digit8;
											end if;
						when digit8 => if ena = '1' then
											uart_tx_data <= data(8);
											state <= digit9;
											end if;
						when digit9 => if ena = '1' then
											uart_tx_data <= data(9);
											state <= digit1;
											end if;
					end case;
				else	
					uart_tx_ena <= '0';
				end if;
		end if;
	end process;
end architecture;