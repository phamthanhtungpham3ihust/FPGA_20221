library ieee;
use ieee.std_logic_1164.all;

entity LCD16x2_Display is
	port
		(
			lcd_l0 		: in std_logic_vector (127 downto 0);
			lcd_l1 		: in std_logic_vector (127 downto 0);
			clk 			: in std_logic;
			rst_lcd 		: in std_logic;
			lcd_data 	: out std_logic_vector (7 downto 0);
			rw, rs, e 	: out std_logic
			
		);
end entity;


architecture arch of LCD16x2_Display is

type state is (initial, lcd_add_l0, lcd_data_l0, lcd_add_11, lcd_data_l1, lcd_delay);
type lcd_cmd_tb is array (integer range 0 to 5) of std_logic_vector (7 downto 0); 
type data0 is array (0 to 15) of std_logic_vector(7 downto 0); 
type data1 is array (0 to 15) of std_logic_vector(7 downto 0);

constant lcd_cmd : lcd_cmd_tb := (0 => x"00", 
											 1 => x"38", 
											 2 => x"0C", 
											 3 => x"01", 
											 4 => x"02", 
											 5 => x"06" );
											 
signal lcd_state 		: state := initial;
signal cmd_ptr			: integer range 0 to 5 := 0;

signal ptr 				: integer := 0;
signal data_l0			: data0 ;
signal data_l1			: data1;
signal rw_temp			: std_logic;
signal rs_temp			: std_logic;
signal e_temp 			: std_logic;



signal lcd_data_temp :  std_logic_vector (7 downto 0);


begin
	gen: for i in 0 to 15 generate
			data_l0(i) <= lcd_l0((i*8+7) downto i*8);
			data_l1(i) <= lcd_l1((i*8+7) downto i*8);
	end generate;


	process(clk, rst_lcd)
	variable cnt : integer := 0;
	begin
		if (rst_lcd = '0') then
			lcd_state <= initial;

			cmd_ptr <= 0;
			cnt 	  := 0;
			
		elsif falling_edge(clk) then
			case lcd_state is
				when initial =>	cnt 	  := cnt + 1;
										rs_temp <= '0';
										rw_temp <= '0';
										lcd_data_temp <= lcd_cmd(cmd_ptr);
										if cnt = 10 then
											e_temp <= '1';
										elsif cnt = 40 then
											e_temp <= '0';
										elsif cnt = 164000 then
											cnt := 0;
											if cmd_ptr = 5 then
												cmd_ptr 		<= 0;
												lcd_state 	<= lcd_add_l0;
											else 
												cmd_ptr 		<= cmd_ptr + 1;
											end if;
										end if;
								
				when lcd_add_l0 =>	cnt := cnt + 1;
											rs_temp 			<= '0';
											rw_temp 			<= '0';
											lcd_data_temp 	<= x"80";
											if cnt = 10 then
												e_temp 		<= '1';
											elsif cnt = 40 then
												e_temp 		<= '0';
											elsif cnt = 2300 then 
												cnt 			:= 0;
												ptr 			<= 0;
												lcd_state <= lcd_data_l0;
											end if;
										
				when lcd_data_l0 =>	cnt 		:= cnt + 1;
											rs_temp 	<= '1'; 
											rw_temp 	<= '0';
											lcd_data_temp <= data_l0(ptr);
											if cnt = 10 then
												e_temp <= '1';
											elsif cnt = 40 then
												e_temp <= '0';
											elsif cnt = 2300 then
												if ptr = 15 then
													cnt := 0;
													lcd_state <= lcd_add_11;
													ptr <= 0;
												else 
													ptr <= ptr + 1;
													cnt := 0;
												end if;
											end if;
											
				when lcd_add_11 =>	cnt 				:= cnt + 1;
											rs_temp 			<= '0';
											rw_temp 			<= '0';
											lcd_data_temp <= x"C0";
											if cnt = 10 then
												e_temp 		<= '1';
											elsif cnt = 40 then
												e_temp 		<= '0';
											elsif cnt = 2300 then
												cnt 			:= 0;
												ptr 			<= 0;
												lcd_state 	<= lcd_data_l1;
											end if;
				
				when lcd_data_l1 =>	cnt := cnt + 1;
											rs_temp <= '1'; 
											rw_temp <= '0';
											lcd_data_temp <= data_l1(ptr);
											if cnt = 10 then
												e_temp <= '1';
											elsif cnt = 40 then
												e_temp <= '0';
											elsif cnt = 2300 then
												if ptr = 15 then
													cnt := 0;
													ptr <= 0;
													lcd_state <= lcd_delay;
												else 
													ptr <= ptr + 1;
													cnt := 0;
													
												end if;
											end if;
				
				when lcd_delay => cnt := cnt + 1;
										if cnt > 5000000 then
										lcd_state <= lcd_add_l0; 
										cnt := 0;
										
										end if;
				when others => lcd_state <= initial;
			end case;
		end if;
	end process;
	e <= e_temp;
	rs <= rs_temp;
	rw <= rw_temp;
	lcd_data <= lcd_data_temp;
end architecture;