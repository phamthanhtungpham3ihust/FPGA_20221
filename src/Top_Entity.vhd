
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Top_Entity IS 
	PORT
	(
		reset 			:  IN  STD_LOGIC;
		clock 			:  IN  STD_LOGIC;
		dht_bus 			:  INOUT  STD_LOGIC;
		lcd_rw 			:  OUT  STD_LOGIC;
		lcd_rs 			:  OUT  STD_LOGIC;
		lcd_e 			:  OUT  STD_LOGIC;
		erro 				:  OUT  STD_LOGIC;
		led2 				:  OUT  STD_LOGIC;
		data_to_lcd 	:  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		tx 				:  OUT  STD_LOGIC
	);
END Top_Entity;

ARCHITECTURE bdf_type OF Top_Entity IS 

COMPONENT dht11_data
	PORT(	rst 						: IN STD_LOGIC;
			clk 						: IN STD_LOGIC;
			dht 						: INOUT STD_LOGIC;
			err 						: OUT STD_LOGIC;
			check_sum_led			: out std_logic;
			dht_temp_decimal 		: out std_logic_vector(7 downto 0);
			dht_humi_decimal 		: out std_logic_vector(7 downto 0);
			dht_temp_integral 	: out std_logic_vector(7 downto 0);
			dht_humi_integral 	: out std_logic_vector(7 downto 0)
		  );
END COMPONENT;

COMPONENT lcd_conv
	PORT(	humi_hundreds 		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			humi_tens 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			humi_unit 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			temp_hundreds 		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			temp_tens 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			temp_unit 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			temp_decimal		: in std_logic_vector(3 downto 0);
			humi_decimal		: in std_logic_vector(3 downto 0);
			lcd_l0 				: OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
			lcd_l1 				: OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
			data_temp_tens		: out std_logic_vector(7 downto 0);
			data_temp_unit		: out std_logic_vector(7 downto 0);
			data_temp_decimal	: out std_logic_vector(7 downto 0);
			data_humi_tens		: out std_logic_vector(7 downto 0);
			data_humi_unit		: out std_logic_vector(7 downto 0);
			data_humi_decimal	: out std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT lcd16x2_display
	PORT(	 clk : IN STD_LOGIC;
			 rst_lcd : IN STD_LOGIC;
			 lcd_l0 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
			 lcd_l1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
			 rw : OUT STD_LOGIC;
			 rs : OUT STD_LOGIC;
			 e : OUT STD_LOGIC;
			 lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END COMPONENT;

COMPONENT hex_8bit_to_bcd
	PORT(	 hex_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			 hundreds : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 tens : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 unit : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
END COMPONENT;




COMPONENT FIFO_TX
	GENERIC
		(	
			b: natural;
			w: natural
		);
	PORT( clk		: in std_logic;
			rst		: in std_logic;
			rd			: in std_logic;
			wr			: in std_logic;
			wr_data	: in std_logic_vector(b-1 downto 0);
			
			empty		: out std_logic;
			full		: out std_logic;
			rd_data	: out std_logic_vector(b-1 downto 0)
		 );
END COMPONENT;

COMPONENT UART_TX_Test
	GENERIC
		(
			data_bit	 : integer;
			stop_tick : integer
		);
	PORT
		(
			clk				: in std_logic;
			rst				: in std_logic;
			tick				: in std_logic;
			tx_data			: in std_logic_vector(7 downto 0);
			tx_fifo_empty	: in std_logic;
			
			tx_done_tick	: out std_logic;
			tx					: out std_logic
		);
END COMPONENT;

COMPONENT DividedFrequency
	PORT
		(
			inputFrq		: in std_logic;
			dividedFrq	: out std_logic
		);
END COMPONENT;

COMPONENT BaudrateGenerator 
	GENERIC
		(
			n : integer;
			m : integer
		);
	PORT
		(
			clk 	: in std_logic;
			rst	: in std_logic;
			tick	: out std_logic
		);
END COMPONENT;

COMPONENT Send_FIFO_TX 
	PORT
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
END COMPONENT;
		
		
SIGNAL	SYNTHESIZED_WIRE_0 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 		:  STD_LOGIC_VECTOR(127 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 		:  STD_LOGIC_VECTOR(127 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 		:  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 		:  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	dht_temp_decimal_wire 	:  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	dht_humi_decimal_wire 	:  STD_LOGIC_VECTOR(7 DOWNTO 0);	
SIGNAL	temp_decimal_wire 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	humi_decimal_wire 		:  STD_LOGIC_VECTOR(3 DOWNTO 0);	
SIGNAL	uart_tx_data_wire			: 	std_logic_vector(7 downto 0);			 
SIGNAL	uart_tx_ena_wire			: 	std_logic;
SIGNAL	ena_wire						: 	std_logic;
SIGNAL	tick_wire					: 	std_logic;
SIGNAL	full_wire					: 	std_logic;
SIGNAL	tx_done_tick_wire			: 	std_logic;
SIGNAL	empty_wire					: 	std_logic;
SIGNAL	data_temp_tens_wire		:	std_logic_vector(7 downto 0);
SIGNAL	data_temp_unit_wire		: 	std_logic_vector(7 downto 0);
SIGNAL	data_temp_decimal_wire	: 	std_logic_vector(7 downto 0);
SIGNAL	data_humi_tens_wire		: 	std_logic_vector(7 downto 0);
SIGNAL	data_humi_unit_wire		: 	std_logic_vector(7 downto 0);
SIGNAL	data_humi_decimal_wire	: 	std_logic_vector(7 downto 0);
SIGNAL	rd_data_wire				: 	std_logic_vector(7 downto 0);

BEGIN 



b2v_inst : dht11_data
PORT MAP( rst 						=> reset,
			 clk 						=> clock,
			 dht 						=> dht_bus,
			 err 						=> erro,
			 check_sum_led 		=> led2,
			 dht_humi_integral 	=> SYNTHESIZED_WIRE_9,
			 dht_temp_integral 	=> SYNTHESIZED_WIRE_8,
			 dht_temp_decimal 	=> dht_temp_decimal_wire,
			 dht_humi_decimal 	=> dht_humi_decimal_wire);

b2v_inst4 : lcd_conv
PORT MAP( humi_hundreds 		=> SYNTHESIZED_WIRE_0,
			 humi_tens 				=> SYNTHESIZED_WIRE_1,
			 humi_unit 				=> SYNTHESIZED_WIRE_2,
			 temp_hundreds 		=> SYNTHESIZED_WIRE_3,
			 temp_tens 				=> SYNTHESIZED_WIRE_4,
			 temp_unit 				=> SYNTHESIZED_WIRE_5,
			 lcd_l0 					=> SYNTHESIZED_WIRE_6,
			 lcd_l1 					=> SYNTHESIZED_WIRE_7,
			 temp_decimal			=> temp_decimal_wire,
			 humi_decimal			=> humi_decimal_wire,
			 data_temp_tens		=> data_temp_tens_wire,
			 data_temp_unit		=> data_temp_unit_wire,
			 data_temp_decimal	=> data_temp_decimal_wire,
			 data_humi_tens		=> data_humi_tens_wire,
			 data_humi_unit		=> data_humi_unit_wire,
			 data_humi_decimal	=> data_humi_decimal_wire);


b2v_inst5 : lcd16x2_display
PORT MAP( clk 					=> clock,
			 rst_lcd 			=> reset,
			 lcd_l0 				=> SYNTHESIZED_WIRE_6,
			 lcd_l1 				=> SYNTHESIZED_WIRE_7,
			 rw 					=> lcd_rw,
			 rs 					=> lcd_rs,
			 e 					=> lcd_e,
			 lcd_data 			=> data_to_lcd);


b2v_inst6 : hex_8bit_to_bcd

PORT MAP( hex_data 			=> SYNTHESIZED_WIRE_8,
			 hundreds 			=> SYNTHESIZED_WIRE_3,
			 tens 				=> SYNTHESIZED_WIRE_4,
			 unit 				=> SYNTHESIZED_WIRE_5);

b2v_inst7 : hex_8bit_to_bcd
PORT MAP( hex_data 			=> SYNTHESIZED_WIRE_9,
			 hundreds 			=> SYNTHESIZED_WIRE_0,
			 tens 				=> SYNTHESIZED_WIRE_1, 
			 unit 				=> SYNTHESIZED_WIRE_2);
			 
b2v_inst8 : hex_8bit_to_bcd
PORT MAP( hex_data 			=> dht_temp_decimal_wire,
			 unit		 			=> temp_decimal_wire);
			 
b2v_inst9 : hex_8bit_to_bcd
PORT MAP( hex_data 			=> dht_humi_decimal_wire,
			 unit 				=> humi_decimal_wire);
			 
			 
b2v_inst10 : baudrategenerator
GENERIC MAP(	m => 163,
					n => 9
				)

PORT MAP( clk 	=> clock,
			 rst 	=> reset,
			 tick => tick_wire);

b2v_inst11 : Send_FIFO_TX
PORT MAP(	ena 					=> ena_wire,
				rst 					=> reset,
				uart_tx_full 		=> full_wire,
				clk 					=> clock,
				data_humi_decimal => data_humi_decimal_wire,
				data_humi_tens 	=> data_humi_tens_wire,
				data_humi_unit 	=> data_humi_unit_wire,
				data_temp_decimal => data_temp_decimal_wire,
				data_temp_tens 	=> data_temp_tens_wire,
				data_temp_unit 	=> data_temp_unit_wire,
				uart_tx_ena 		=> uart_tx_ena_wire,
				uart_tx_data 		=> uart_tx_data_wire);

b2v_inst12 : DividedFrequency
PORT MAP(	inputFrq => clock,
				dividedFrq => ena_wire);

b2v_inst13 : FIFO_TX
GENERIC MAP(	b => 8,
					w => 4
				)

PORT MAP(	 clk 		=> clock,
				 rst 		=> reset,
				 rd 		=> tx_done_tick_wire,
				 wr 		=> uart_tx_ena_wire,
				 wr_data => uart_tx_data_wire,
				 empty 	=> empty_wire,
				 full 	=> full_wire,
				 rd_data => rd_data_wire);

b2v_inst14 : uart_tx_test
GENERIC MAP(	data_bit 	=> 8,
					stop_tick 	=> 16
				)

PORT MAP(	clk 				=> clock,
				rst 				=> reset,
				tick 				=> tick_wire,
				tx_fifo_empty 	=> empty_wire,
				tx_data 			=> rd_data_wire,
				tx_done_tick 	=> tx_done_tick_wire,
				tx 				=> tx);
				
END bdf_type;