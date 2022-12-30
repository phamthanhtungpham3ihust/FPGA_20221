-- Module buffer FIFO_TX
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FIFO_TX is
	generic
		(
			b: natural := 8;
			w: natural := 2
		);
	port 
		(
			clk		: in std_logic;
			rst		: in std_logic;
			rd			: in std_logic;
			wr			: in std_logic;
			wr_data	: in std_logic_vector(b-1 downto 0);
			
			empty		: out std_logic;
			full		: out std_logic;
			rd_data	: out std_logic_vector(b-1 downto 0)
		);
end entity;

architecture rtl of FIFO_TX is

type reg_file_type is array (2**w-1 downto 0) of std_logic_vector(b-1 downto 0);
signal array_r	: reg_file_type;

--signal wr_ptr_r	: std_logic_vector(w-1 downto 0);
--signal wr_ptr_n	: std_logic_vector(w-1 downto 0);
--signal wr_ptr	: std_logic_vector(w-1 downto 0);
signal wr_ptr_tmp	: std_logic_vector(w-1 downto 0);


--signal rd_ptr_r	: std_logic_vector(w-1 downto 0);
--signal rd_ptr_n	: std_logic_vector(w-1 downto 0);
--signal rd_ptr	: std_logic_vector(w-1 downto 0);
signal rd_ptr_tmp	: std_logic_vector(w-1 downto 0);


--signal full_r	: std_logic;
--signal full_n	: std_logic;
signal full_tmp	: std_logic := '0';

--signal empty_r	: std_logic;
--signal empty_n	: std_logic;
signal empty_tmp	: std_logic := '1';

signal wr_op	: std_logic_vector(1 downto 0);
signal wr_en	: std_logic;

--signal data : std_logic_vector(7 downto 0) := "00110000"; 

begin
-- Module Register file
	process(clk,rst)
	begin
		if rst = '0' then
			array_r <= (others => (others => '0'));
			--data <= "00110000";
		
		elsif falling_edge(clk) then
			if wr_en = '1' then
				array_r(conv_integer(unsigned(wr_ptr_tmp))) <= wr_data;	
			end if;
		end if;
	end process;

	rd_data 	<= array_r(conv_integer(unsigned(rd_ptr_tmp)));
	wr_en 	<= wr and (not full_tmp);
	full 		<= full_tmp;
	empty 	<= empty_tmp;
	wr_op 	<= wr & rd;

-- Module FIFO Controller
	process(clk, rst)
	variable rd_ptr, wr_ptr : std_logic_vector(w-1 downto 0);
	begin
		if rst = '0' then
			wr_ptr 		:= (others => '0');
			rd_ptr	 	:= (others => '0');
			full_tmp 	<= '0';
			empty_tmp 	<= '1';
		elsif falling_edge(clk) then
		case wr_op is
			when "00" =>
			
			when "01" =>
				if empty_tmp = '0' then
					rd_ptr := rd_ptr + 1;
					full_tmp <= '0';
					if rd_ptr = wr_ptr then
						empty_tmp <= '1';
					end if;
				end if;
		
			when "10" =>
				if full_tmp = '0' then
					wr_ptr := wr_ptr + 1;
					empty_tmp 	<= '0';
					if wr_ptr = rd_ptr then
						full_tmp <= '1';
					end if;
				end if;
				
			when others =>
				wr_ptr := wr_ptr + 1;
				rd_ptr := rd_ptr + 1;			
		end case;
		end if;
		rd_ptr_tmp <= rd_ptr;
		wr_ptr_tmp <= wr_ptr;
	end process;
	
end architecture;