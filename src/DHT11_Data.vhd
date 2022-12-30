library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity DHT11_Data is
	port 
	(
		dht 						: inout std_logic;
		rst 						:	in std_logic;
		clk 						: in std_logic;
		check_sum_led			: out std_logic;
		dht_temp_decimal 		: out std_logic_vector(7 downto 0);
		dht_humi_decimal 		: out std_logic_vector(7 downto 0);
		dht_temp_integral 	: out std_logic_vector(7 downto 0);
		dht_humi_integral 	: out std_logic_vector(7 downto 0);
		err 						: out std_logic
	);
end entity;

architecture arch of DHT11_Data is
type state_type is (init, get_data, read_data, delay, check);
constant delay_1s				: integer := 50000000;
signal dht_in 					: std_logic;
signal dht_out					: std_logic;
signal dht_en					: std_logic;
signal tmp_data				: std_logic;
signal rd_stp					: integer range 0 to 3;
signal init_stp				: integer range 0 to 7 := 0;
signal cnt						: integer;
signal state					: state_type;
signal ptr						: integer range 0 to 40 := 0;
signal tmp						: std_logic_vector(39 downto 0);

signal check_sum_tmp			: std_logic_vector(7 downto 0);
signal dht_temp_bh_tmp 		: std_logic_vector(7 downto 0);
signal dht_humi_bh_tmp 		: std_logic_vector(7 downto 0);
signal dht_temp_bl_tmp 		: std_logic_vector(7 downto 0);
signal dht_humi_bl_tmp 		: std_logic_vector(7 downto 0);

begin
	dht <= dht_out when dht_en = '1' else 'Z';
	
	dht_in <= dht;
	
	process(clk, rst)
	--variable ptr: integer range 0 to 40 := 0;
	--variable cnt: integer;
	begin

		if rst = '0' then
			state 	<= init;
			rd_stp 	<= 0;
			init_stp <= 0;
			cnt 		<= 0;
			ptr 		<= 0;
			tmp 		<= (others => '0');
			
		elsif falling_edge(clk) then
			case state is
				when init =>
					case init_stp is
						when 0 => dht_en <= '0';
									 if cnt = 3000 then	
										cnt 		<= 0;
										init_stp <= 1;
									 else
										cnt <= cnt + 1;
									 end if;
						
						when 1 => dht_out <= '0';
									 dht_en <= '1';
									 if cnt = 1250000 then
										cnt 		<= 0;
										init_stp <= 2;
									 else
										cnt <= cnt + 1;
									 end if;
							
						when 2 =>	dht_en <= '0';
										if cnt = 2000 then
											init_stp <= 3;
											cnt 		<= 0;
										else
											cnt <= cnt + 1;
										end if;	
										
						when 3 =>	dht_en <= '0';
										--dht_in <= dht;
										if cnt = 4000 then
											cnt 		<= 0;
											init_stp <= 7;
										else 
											cnt <= cnt + 1;
											if dht_in = '0' then
												cnt 		<= 0;
												init_stp <= 4;
											end if;
										end if;
						
						when 4 =>	dht_en <= '0';
										--dht_in <= dht;
										if cnt = 4000 then
											cnt 		<= 0;
											init_stp <= 7;
										else
											cnt <= cnt + 1;
											if dht_in = '1' then	
												cnt 		 <= 0;
												init_stp <= 5;
									
											end if;
										end if;
										
						when 5 =>	dht_en <= '0';
										--dht_in <= dht;
										if dht_in = '0' then
											init_stp <= 6;
											cnt 		<= 0;
										end if;
										
						when 6 =>	init_stp <= 0;
										state <= get_data;
										err 	<= '0'; -- khong co loi giao tiep
						when 7 =>	init_stp <= 0;
										err 	<= '1'; -- co loi giao tiep	
										state <= init;
						when others =>		init_stp <= 0; 
					end case;
					
				when get_data =>	case ptr is
											when 0 =>	state <= read_data;
															ptr <= ptr + 1;
						
											when 1 to 40 =>	state <= read_data;
																	--dht_data(40-ptr) <= tmp_data;
																	tmp(40-ptr) <= tmp_data;
																
																	ptr <= ptr + 1;
																	if ptr = 40 then
																		
																		dht_temp_bl_tmp 	<= tmp(15 downto 8);
																		dht_humi_bl_tmp 	<= tmp(31 downto 24);
																		dht_temp_bh_tmp 	<= tmp(23 downto 16);
																		dht_humi_bh_tmp 	<= tmp(39 downto 32);					
																		check_sum_tmp		<= tmp(7 downto 0);
																
																		state <= check;
																		ptr <= 0;
																		cnt <= 0;
																	end if;	
												
												
										end case;
					
				when read_data =>	case rd_stp is
											when 0 =>	dht_en <= '0';
															--dht_in <= dht;
															if dht_in = '0' then	
																rd_stp <= 1;
																cnt <= 0;
															
															end if;
						
											when 1 =>	dht_en <= '0';
															--dht_in <= dht;
															if dht_in = '1' then
																rd_stp <= 2;
																cnt <= 0;
															end if;
				
											when 2 =>	dht_en <= '0';
															--dht_in <= dht;
															if dht_in = '1' then
																cnt <= cnt + 1;
															else 
																if cnt > 2000 then
																	tmp_data <= '1';
																	cnt <= 0;
																	rd_stp <= 3;
																else
																	tmp_data <= '0';
																	rd_stp <= 3;
																	cnt <= 0;
																end if;
															end if;
					
											when 3 =>	state <= get_data;
															cnt <= 0;
															rd_stp <= 0;
											
											when others =>  rd_stp <= 0;
														
										end case;
				when check => if(check_sum_tmp = dht_humi_bl_tmp + dht_humi_bh_tmp + dht_temp_bl_tmp + dht_temp_bh_tmp) then
										check_sum_led <= '0';
										dht_humi_integral 	<= dht_humi_bh_tmp;
										dht_temp_integral 	<= dht_temp_bh_tmp;
										dht_humi_decimal 		<= dht_humi_bl_tmp;
										dht_temp_decimal		<= dht_temp_bl_tmp;
									else
										check_sum_led <= '1';
									end if;
									state <= delay;
										
				when delay =>	if cnt = 2*delay_1s then
										state <= init;
										cnt <= 0;
									else
										cnt <= cnt + 1;
									end if;
				when others => cnt <= 0;
									state <= init;
			end case;
		end if;
	end process;
				
end architecture;