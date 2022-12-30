library ieee;
library ieee.std_logic_1164.all;

entity Final_Project is
port
(
	dht_bus : inout std_logic_vector(39 downto 0);
	clock: in std_logic;
	reset: in std_logic;
	data_to_lcd: out std_logic_vector(7 downto 0);
	lcd_e: out std_logic;
	lcd_rs: out std_logic;
	lcd_rw: out std_logic;
	dht_err: out std_logic
)

end entity;

architecture arch of Final_Project is

signal temp_hundreds : std_logic_vector (3 downto 0);
signal temp_tens : std_logic_vector (3 downto 0);
signal temp_unit : std_logic_vector (3 downto 0);
signal humi_hundreds : std_logic_vector (3 downto 0);
signal humi_tens : std_logic_vector (3 downto 0);
signal humi_unit : std_logic_vector (3 downto 0);
signal dht_data : std_logic_vector(39 downto 0);


component DHT11_Data is
port
(
	dht : inout std_logic,
	rst : in std_logic,
	clk : in std_logic,
	dht_data : out std_logic_vector(39 downto 0),
	err : out std_logic
)
end component;

component Hex_8bit_To_BCD is
port
(
	hex_data : in std_logic_vector (39 downto 0),
	temp_hundreds : out std_logic_vector (3 downto 0),
	temp_tens : out std_logic_vector (3 downto 0),
	temp_unit : out std_logic_vector (3 downto 0),
	humi_hundreds : out std_logic_vector (3 downto 0),
	humi_tens : out std_logic_vector (3 downto 0),
	humi_unit : out std_logic_vector (3 downto 0)
)

end component;

component LCD_Conv is
port
(
	temp_hundreds : in std_logic_vector (3 downto 0),
	temp_tens : in std_logic_vector (3 downto 0),
	temp_unit : in std_logic_vector (3 downto 0),
	humi_hundreds : in std_logic_vector (3 downto 0),
	humi_tens : in std_logic_vector (3 downto 0),
	humi_unit : in std_logic_vector (3 downto 0),
	lcd_l0 : out std_logic_vector(127 downto 0),
	lcd_l1 : out std_logic_vector(127 downto 0)
)

end component;

component LCD16x2_Display is
port
(
	lcd_l0 : in std_logic_vector (127 downto 0),
	lcd_l1 : in std_logic_vector (127 downto 0),
	clk : in std_logic,
	rst_lcd : in std_logic,
	lcd_data : out std_logic_vector (7 downto 0),
	rw, rs, e : out std_logic
)
end component;




begin



end architecture;