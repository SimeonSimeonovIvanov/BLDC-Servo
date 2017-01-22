#include <math.h>
#include <string.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

#include "fixedptc.h"
#include "sin_table.h"

volatile int32_t pos;
volatile uint32_t temp;
volatile uint8_t byte[4];
volatile uint16_t arrADC[7];

void InitSPI( void );
uint8_t ReadByteSPI( uint8_t addr );
uint8_t WriteByteSPI( uint8_t tx_byte );

void spiInitEncoder( void );
int32_t spiReadEncoderPos( void );
int32_t manualReadEncoder( void );

void spiWriteDac( int16_t DAC0, int16_t DAC1, int16_t DAC2 );

uint8_t ucArrMapUVW[ 2 ][ 8 ] = {
  {
	0b00000000,
	0b11111000,
	0b11101000,
	0b11101100,
	0b10101100,
	0b10111100,
	0b10111000,
	0b00000000
  },

  {
	0b00000000,
	0b10101100,
	0b10111100,
	0b10111000,
	0b11111000,
	0b11101000,
	0b11101100,
	0b00000000

  }

  /*{
	0b00000000,
	0b11111000,
	0b11101000,
	0b11101100,
	0b10101100,
	0b10111100,
	0b10111000,
	0b00000000
  },

  {
	0b00000000,
	0b11100000,
	0b11001000,
	0b00111000,
	0b10110000,
	0b10001100,
	0b00101100,
	0b00000000

  }*/
};

int main( void )
{
	//volatile int16_t Ia;
	volatile int32_t dwPos;
	volatile int16_t old_angle, angle = 0;
	volatile int16_t dac0, dac1, dac2;
	volatile int16_t DAC0, DAC1, DAC2;
	volatile int32_t dwIa, dwDac, dwTemp;

	volatile int16_t offset = 0;

	InitSPI();
	spiInitEncoder();

	DDRA |= 1<<PA7 | 1<<PA6 | 1<<PA5 | 1<<PA4 | 1<<PA3 | 1<<PA2;
	DDRB |= 1<<PB2 | 1<<PB1;
	DDRD |= 1<<PD6 | 1<<PD5;

	ADCSRA = 1<<ADEN | 1<<ADSC | 1<<ADIE |  7;

	//////////////////////////////////////////
	TCCR1A = 1<<COM1A1 | 1<<WGM11;
	TCCR1B = 1<<CS10 | 1<<WGM13;

	ICR1 = 500;
	OCR1A  = 495;
	//////////////////////////////////////////

	DDRC &= ~( 1<<PC6 | 1<<PC7 );

	old_angle = 0;

	PORTB |= ( 1<<PB2 );
	volatile int32_t dwSpPos = 0;
	volatile uint8_t dir = 0;
	PORTB &= ~( 1<<PB2 );

	sei();
	while( 1 ) {
		static volatile int32_t old_pos, counter = 0;
		volatile int32_t error, sum = 0;

		dwPos = spiReadEncoderPos();

		if( ++counter > 20 ) {
			dwSpPos += 100;
			counter = 0;
		}

		error = dwSpPos - dwPos;
		
		sum += error;
		if( sum > 1023 ) {
			sum = 1023;
		}
		if( sum < -1023 ) {
			sum = -1023;
		}

		///////////////////
		//dwIa = 512;
		cli();
		//Ia = arrADC[1];
		sei();
		//dwIa = Ia;

		dwIa = error + sum;

		dir = 1;
		if( dwIa < 0 ) {
			dwIa = -dwIa;
			dir = 0;
		}

		if( dwIa > 1023 ) {
			dwIa = 1023;
		}

		angle = ( PIND>>2 );
		angle = angle & 0x07;		

		switch( angle ) {
		case 5:
			angle = 0;
		 break;
		case 1:
			angle = 60;
		 break;
		case 3:
			angle = 120;
		 break;
		case 2:
			angle = 180;
		 break;
		case 6:
			angle = 240;
		 break;
		case 4:
			angle = 300;
		 break;

		default: continue;
		}

		if( old_angle != angle ) {
		//	PORTB |= ( 1<<PB2 );
			old_angle = angle;
			old_pos = dwPos;
		//	PORTB &= ~( 1<<PB2 );
		}//else

		offset = -(dwPos - old_pos / 11);

		if( offset > 59 ) {
			offset = 59;
		}

		if( offset < -59 ) {
			offset = -59;
		}

		angle += 30;
		//angle += offset;

		if( angle < 0 ) {
		//	angle = 360 + offset;
		}
		if( angle > 360 ) {
		//	angle = angle - 360;
		}

		uint8_t index;
		if( angle <= 60 ) {
			index = 1;
		} else
		if( angle <= 120 ) {
			index = 2;
		} else
		if( angle <= 180 ) {
			index = 3;
		} else
		if( angle <= 240 ) {
			index = 4;
		} else
		if( angle <= 300 ) {
			index = 5;
		} else {
			index = 6;
		}

		if( ( PINC & 1<<PC6 ) ) {
			PORTD |= ( 1<<PD6 );
			OCR1A  = 400;
		} else {
			PORTD &= ~( 1<<PD6 );
			OCR1A  = 0;
			index = 0;
		}

		if( angle < 0 ) {
			angle = 0;
		}

		if( angle > 360 ) {
			angle = 360;
		}

		PORTA = ucArrMapUVW[ dir/*( PINC & 1<<PC7 ) ? 0:1*/ ][ index ];

		/*
		dac = (int)( (float)Ia * dac / 1023.0f );
		dac0 = pgm_read_word_near( &sin_table[ angle ] );
		dwDac = dac0;
		*/

		dwDac = (int16_t)pgm_read_word_near( &sin_table[ angle ] );
		dwTemp = dwIa * dwDac * 977;
		dwDac = dwTemp / 1000000;
		dac0 = dwDac;

		dwDac = (int16_t)pgm_read_word_near( &sin_table[ angle + 120 ] );
		dwTemp = dwIa * dwDac * 977;
		dwDac = dwTemp / 1000000;
		dac1 = dwDac;

		dwDac = (int16_t)pgm_read_word_near( &sin_table[ angle + 240 ] );
		dwTemp = dwIa * dwDac * 977;
		dwDac = dwTemp / 1000000;
		dac2 = dwDac;

	//#define mode
	#ifdef mode
		dac0 = dac0 + Ia;
		dac0 = dac0 / 2;

		dac1 = dac1 + Ia;
		dac1 = dac1 / 2;

		dac2 = dac2 + Ia;
		dac2 = dac2 / 2;
	#else
		if( dac0 < 0 ) {
			dac0 = -dac0;
		}
		if( dac1 < 0 ) {
			dac1 = -dac1;
		}
		if( dac2 < 0 ) {
			dac2 = -dac2;
		}

		dac0 >>= 1;
		dac1 >>= 1;
		dac2 >>= 1;
	#endif

		DAC0 = dac0;
		DAC1 = dac1;
		DAC2 = dac2;

		spiWriteDac( DAC0, DAC1, DAC2 );
	}

	return 0;
}
///////////////////////////////////////////////////////////////////////////////
int32_t spiReadEncoderPos( void )
{
	int32_t pos, temp = 0;

	PORTB &= ~( 1<<PB0 );
	WriteByteSPI( 0b11100111 );
	byte[3] = ReadByteSPI( 0 );
	byte[2] = ReadByteSPI( 0 );
	byte[1] = ReadByteSPI( 0 );
	byte[0] = ReadByteSPI( 0 );
	PORTB |= ( 1<<PB0 );

	temp  = (uint32_t)( byte[3] )<<24;	//offset3;
	temp |= (uint32_t)( byte[2] )<<16;	//offset2;
	temp |= (uint32_t)( byte[1] )<<8;	//offset1;
	temp |= (uint32_t)( byte[0] )<<0;	//offset0;

	if( !( byte[3] & 0x80 ) ) {
		pos = (int32_t)temp;
	} else {
		pos = 0xffffffff - temp;
		pos = -pos;
	}

	return pos;
}

void spiInitEncoder( void )
{
	DDRB |= ( 1<<PB0 );
	PORTB |= ( 1<<PB0 );
	_delay_ms( 1 );
	PORTB &= ~( 1<<PB0 );
}
///////////////////////////////////////////////////////////////////////////////
int32_t manualReadEncoder( void )
{
	int32_t pos = 0;
	uint8_t i, buffer[40];
	
	memset( buffer, 0, sizeof( buffer ) );

	buffer[0] = 1;
	buffer[1] = 1;
	buffer[2] = 1;
	buffer[3] = 0;
	buffer[4] = 0;
	buffer[5] = 1;
	buffer[6] = 1;
	buffer[7] = 1;

	PORTB &= ~( 1<<PB0 );

	for( i = 0; i < 40; i++ ) {
		if( i < 8 ) {
			if( buffer[i] ) {
				PORTB |= (1<<PB5);
			} else {
				PORTB &= ~(1<<PB5);
			}
		} else {
			if( PINB & (1<<PB6) ) {
				buffer[ i ] = 1;
			} else {
				buffer[ i ] = 0;
			}
		}

		_delay_us( 5 );
		PORTB |= (1<<PB7);
		_delay_us( 5 );
		PORTB &= ~(1<<PB7);
	}

	_delay_us( 5 );
	PORTB |= ( 1<<PB0 );

	for( i = 0; i < 32; i++ ) {
		pos |= (int32_t)buffer[ 8 + i ]<<i;
	}

	return pos;
}
///////////////////////////////////////////////////////////////////////////////
void spiWriteDac( int16_t DAC0, int16_t DAC1, int16_t DAC2 )
{
	PORTB &= ~( 1<<PB0 );
	WriteByteSPI( 0b11010011 );

	WriteByteSPI( DAC0 );
	WriteByteSPI( DAC0>>8 );

	WriteByteSPI( DAC1 );
	WriteByteSPI( DAC1>>8 );

	WriteByteSPI( DAC2 );
	WriteByteSPI( DAC2>>8 );

	// Latch Enable:
	PORTB |= ( 1<<PB1 );
	PORTB &= ~( 1<<PB1 );

	PORTB |= ( 1<<PB0 );
}
///////////////////////////////////////////////////////////////////////////////
uint8_t WriteByteSPI( uint8_t tx_byte )
{
	SPDR = tx_byte;					//Load byte to Data register
	while( !(SPSR & (1<<SPIF)) );	// Wait for transmission complete
	return SPDR;
}

uint8_t ReadByteSPI( uint8_t addr )
{
	SPDR = addr;					//Load byte to Data register
	while( !(SPSR & (1<<SPIF)) );	// Wait for transmission complete 
	addr = SPDR;
	return addr;
}

void InitSPI( void )
{
	DDRB =
	(
		( 1<<PB4 ) |
		( 1<<PB0 ) | // User SS ( PB4 - System SS )
		( 1<<PB5 ) | // MOSI
		( 1<<PB7 )	 // SCK
	);

	PORTB |= 1<<PB0;

	// Enable SPI, Master, set clock rate fck/128
	SPCR = (
		( 0<<DORD )	|
		( 1<<SPE )	|
		( 1<<MSTR )//	|
		//( 1<<SPR1 )	| ( 1<<SPR0 )
	);
}
///////////////////////////////////////////////////////////////////////////////
ISR(ADC_vect)
{
	volatile static unsigned char ucMuxAddress = 0;

	arrADC[ ucMuxAddress ] = ((unsigned int)ADCL) | ((unsigned int)ADCH<<8);


	if( ++ucMuxAddress > 1 ) {
		ucMuxAddress = 0;
	}
	ADMUX = ucMuxAddress;

	ADCSRA |= 1<<ADSC;
}
///////////////////////////////////////////////////////////////////////////////
