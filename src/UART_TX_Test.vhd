-- Module truyền dữ liệu UART
-- input: tx_data : nhận dữ liệu từ buffer FIFO_TX
-- input: tx_fifo_empty : kiểm tra FIFO có rỗng không
-- output: tx_done_tick : báo truyền xong 1 byte dữ liệu

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity UART_TX_Test is
	generic
	(
		data_bit	 : integer :=	8;
		stop_tick : integer := 16
	);
	
	port
	(
		clk				: in std_logic;
		rst				: in std_logic;
		tick				: in std_logic;
		tx_data			: in std_logic_vector(7 downto 0);
		tx_fifo_empty	: in std_logic;
		
		tx_done_tick	: out std_logic;
		tx					: out std_logic
	);
end entity;

architecture rtl of UART_TX_Test is
type state_type is (idle, start, data, stop);
signal state_r, state_n : state_type;

signal s_r, s_n	: unsigned(3 downto 0);
signal n_r, n_n 	: unsigned(2 downto 0);

signal b_r, b_n	: std_logic_vector(7 downto 0);
signal tx_r, tx_n	: std_logic;

begin


	process(clk, rst)
	begin
		if rst = '0' then 
			state_r 	<= idle;
			s_r 		<= (others => '0');
			n_r		<= (others => '0');
			b_r		<= (others => '0');
			tx_r		<= '1';
			
		
		elsif falling_edge(clk) then
			state_r	<= state_n;
			s_r		<= s_n;
			n_r		<= n_n;
			b_r		<= b_n;
			tx_r		<= tx_n;
		end if;	
	end process;
	
	process(state_r, s_r, n_r, tick, tx_r, b_r, tx_fifo_empty, tx_data)
	begin
		state_n <= state_r;
		s_n	  			<= s_r;
		n_n	  			<= n_r;
		b_n	  			<= b_r;
		tx_n	  			<= tx_r;
		tx_done_tick	<= '0';
		
		case state_r is
			when idle =>
				tx_n <= '1';
				if tx_fifo_empty = '0' then
					state_n <= start;
					s_n <= (others => '0');
					b_n <= tx_data;
				end if;
				
			when start =>
				tx_n <= '0';
				if tick = '1' then	
					if s_r = 15 then
						state_n <= data;
						s_n 	  <= (others => '0');
						n_n	  <= (others => '0');
					else 
						s_n	  <= s_r + 1;
					end if;
				end if;
			
			when data =>
				tx_n <= b_r(0);
				if tick = '1' then
					if s_r = 15 then
						s_n <= (others => '0');
						b_n <= '0' & b_r(7 downto 1);
						if n_r = data_bit - 1 then
							state_n <= stop;
						else
							n_n 	<= n_r + 1;
						end if;
					else 
						s_n <= s_r + 1;
					end if;
				end if;
	
			when stop =>
				tx_n <= '1';
				if tick = '1' then
					if s_r = stop_tick - 1 then
						state_n <= idle;
						tx_done_tick <= '1';
					else
						s_n <= s_r + 1;
					end if;
				end if;
				
		end case;
		
	end process;
	
	tx <= tx_r;
	
end architecture;