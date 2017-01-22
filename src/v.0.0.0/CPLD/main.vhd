library ieee;
use ieee.std_logic_1164.all;

entity main is
	port
	(
		sys_clk0				: in std_logic;
		led1					: out std_logic;

		spi_slave_ss		: in std_logic;
		spi_slave_sck		: in std_logic;
		spi_slave_mosi		: in std_logic;
		spi_slave_miso		: out std_logic;

		encoder1_a			: in std_logic;
		encoder1_b			: in std_logic;
		encoder1_z			: in std_logic;

		encoder1_u_in		: in std_logic;
		encoder1_v_in		: in std_logic;
		encoder1_w_in		: in std_logic;
		encoder1_u_out		: out std_logic;
		encoder1_v_out		: out std_logic;
		encoder1_w_out		: out std_logic;

		encoder1_reset_in	: in std_logic;

		load_dacs			: in std_logic;
		dac0					: out std_ulogic_vector( 9 downto 0 );
		dac1					: out std_ulogic_vector( 9 downto 0 );
		dac2					: out std_ulogic_vector( 9 downto 0 )
	);
end main;

architecture behv of main is
	
	-- Encoder
	component wheeldecoder is
		generic
		(
			CLK_FREQ		: in	integer := 50_000_000
		);
		port
		(
			clk			: in	std_logic;
			reset			: in	std_logic;
			sensorA		: in	std_logic;
			sensorB		: in	std_logic;
			countOut		: out std_logic_vector( 31 downto 0 )
		);
	end component;
	
	-- SPI Slave
	component spi_slave is
		generic
		(
			cpol				: std_logic := '0';
			cpha				: std_logic := '0'
		);
		port
		(
			sys_clk0			: in std_logic;
			ss					: in std_logic;
			clk				: in std_logic;
			mosi				: in std_logic;
			miso				: out std_logic;
			led1				: out std_logic;
			reg_encoder1	: in std_ulogic_vector( 31 downto 0 );
			reg_dacs			: inout std_ulogic_vector( 47 downto 0 )
		);
	end component;

	signal encoder1_reset	: std_logic := '0';
	signal encoder1_conter	: std_logic_vector( 31 downto 0 ) := ( others => '0' );
	signal reg_dacs			: std_ulogic_vector( 47 downto 0 ) := ( others => '0' );
	
	signal temp					: std_logic := '0';
	
	
	signal hall_old			: std_ulogic_vector( 2 downto 0 ) := ( others => '0' );
	signal hall_new			: std_ulogic_vector( 2 downto 0 ) := ( others => '0' );
begin
	encoder1_u_out <= not encoder1_u_in;
	encoder1_v_out <= not encoder1_v_in;
	encoder1_w_out <= not encoder1_w_in;
	
	hall_new <= ( encoder1_u_in & encoder1_v_in & encoder1_w_in );
	
	-- ???
--	encoder1_reset <= '1' when hall_new <> hall_old else '0'; ???????????????????????????????????
	
	--hall_new <= hall_new when hall_new <> hall_old else hall_old;
	
	IC1 : wheeldecoder
	port map
	(
		clk		=> sys_clk0,
		--reset		=> encoder1_reset,
		reset		=> encoder1_reset_in,
		sensorA	=> encoder1_a,
		sensorB	=> encoder1_b,
		countOut	=> encoder1_conter
	);

	IC2 : spi_slave
	port map
	(
		sys_clk0			=> sys_clk0,
		ss					=> spi_slave_ss,
		clk				=> spi_slave_sck,
		mosi				=> spi_slave_mosi,
		miso				=> spi_slave_miso,
		led1				=> temp,
		reg_encoder1	=> To_StdULogicVector( encoder1_conter ),
		reg_dacs			=> reg_dacs
	);

	process ( load_dacs )
	begin
		if( rising_edge( load_dacs ) ) then
			dac0 <= (
				reg_dacs( 14 ) &
				reg_dacs( 15 ) &
				reg_dacs( 0 ) &
				reg_dacs( 1 ) &
				reg_dacs( 2 ) &
				reg_dacs( 3 ) &
				reg_dacs( 4 ) &
				reg_dacs( 5 ) &
				reg_dacs( 6 ) &
				reg_dacs( 7 )
			);

			dac1 <= (
				reg_dacs( 6 + 24 ) &
				reg_dacs( 7 + 24 ) &
				reg_dacs( 0 + 16) &
				reg_dacs( 1 + 16 ) &
				reg_dacs( 2 + 16 ) &
				reg_dacs( 3 + 16 ) &
				reg_dacs( 4 + 16 ) &
				reg_dacs( 5 + 16 ) &
				reg_dacs( 6 + 16 ) &
				reg_dacs( 7 + 16 )
			);

			dac2 <= (
				reg_dacs( 6 + 40 ) &
				reg_dacs( 7 + 40 ) &
				reg_dacs( 0 + 32 ) &
				reg_dacs( 1 + 32 ) &
				reg_dacs( 2 + 32 ) &
				reg_dacs( 3 + 32 ) &
				reg_dacs( 4 + 32 ) &
				reg_dacs( 5 + 32 ) &
				reg_dacs( 6 + 32 ) &
				reg_dacs( 7 + 32 )
			);
		end if;
	end process;

end behv;