library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_slave is
	generic
	(
		cpol				: std_logic;
		cpha				: std_logic
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
end spi_slave;

architecture behv of spi_slave is
	signal rx_buf							: std_logic_vector( 63 downto 0 );
	signal rx_bit_counter				: integer range 0 to 63;
	signal rx_bit_counter_up_value	: integer range 0 to 63;

	signal rd_encoder						: std_logic := '0';
	signal wr_encoder						: std_logic := '0';
	signal wr_dacs							: std_logic := '0';
begin
	process( ss, clk )
	begin
		if( ss = '1' ) then
			rx_buf <= ( others => '0' );

			rx_bit_counter_up_value <= 8;
			rx_bit_counter <= 0;

			rd_encoder	<= '0';
			wr_encoder	<= '0';
			wr_dacs		<= '0';
		else

			if( rising_edge( clk ) ) then
				rx_buf <= rx_buf( rx_buf'length - 2 downto 0 ) & mosi;
				
				if( wr_dacs = '1' ) then
					reg_dacs( rx_bit_counter - 8 ) <= mosi;
				end if;
				
				if( rx_bit_counter < rx_bit_counter_up_value ) then
					rx_bit_counter <= rx_bit_counter + 1;
				end if;
			end if;

			if( rx_bit_counter = rx_bit_counter_up_value ) then
				if( rx_buf( 7 downto 0 ) = "11100111" ) then
					rx_bit_counter_up_value <= 39;
					rd_encoder <= '1';
				end if;
				
				if( rx_buf( 7 downto 0 ) = "11010011" ) then
					rx_bit_counter_up_value <= 55;
					wr_dacs <= '1';
				end if;
			end if;

		end if;
	end process;

	process( ss, clk, rd_encoder, wr_dacs )
	begin
		if( ss = '1' ) then
			miso <= 'Z';
		else
			if( rx_bit_counter < rx_bit_counter_up_value + 1 ) then
				if( rd_encoder = '1' ) then
					miso <= reg_encoder1( 39 - rx_bit_counter );
				end if;
			
				if( wr_dacs = '1' ) then
					--reg_dacs( rx_bit_counter - 8 ) <= mosi;
					--miso <= mosi;
				end if;
			end if;
		end if;
	end process;

end;