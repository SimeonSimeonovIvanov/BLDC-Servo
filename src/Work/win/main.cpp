// main.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <math.h>

#define PI		3.14
#define M_PI	3.14159265358979323846

float degress_to_radians( float a )
{
	return a * ( PI / 180.0f );
}

int main(int argc, char* argv[])
{
	int i;
	int Q1, Q2, Q3, Q4, Q5, Q6;

	float Is = 5.0f;
	float Qe = 0.0f;
	float Kt = 1.0f;

	float Ia, Ib, Ic;
	float Ta, Tb, Tc;
	float Iac, Ibc, Icc;

	Tc = 5.0;

	FILE *fp = fopen( "test.txt", "wr" );

	fprintf( fp, "prog_int16_t sin_table[ %d ] = {\n", 360 + 1 * 240 + 1 );
	for( int a = 0; a <= ( 360 + 240 ); a++ ) {
		float Qm = 1023.0f * sin( (float)a * ( M_PI / 180.0f ) );

		fprintf(fp, "\t%d,\t// Qm: %d\n", (int)Qm, a );
	}
	fprintf( fp, "}\n" );
	fclose(fp);
	return 0;

	for( int n = 0; n < 2; n++ )
	for( i = 0; i < 360; i++ ) {
		Ia = Is * sinf( Qe );
		Ib = Is * sinf( Qe - 120 );
		Ic = Is * sinf( Qe - 240 );
		//printf("deg: %d\tIa: %f\tIb: %f\tIc: %f\n", i, Ia, Ib, Ic );

		Ta = Ia * Kt * sinf( Qe );
		Tb = Ib * Kt * sinf( Qe - 120 );
		//Tc = Ic * Kt * sinf( Qe - 240 );

		Iac = ( Tc / Kt ) * sinf( degress_to_radians( Qe ) );
		Ibc = ( Tc / Kt ) * sinf( degress_to_radians( Qe + 120 ) );
		Icc = ( Tc / Kt ) * sinf( degress_to_radians( Qe + 240 ) );
		//printf("deg: %d\tIac: %f\tIbc: %f\tIcc: %f\n", i, Iac, Ibc, Icc );

		if( Iac < 0.001f && Iac > -0.001f ) {
			Q1 = 0;
			Q2 = 0;
		} else {
			if( Iac > 0.0f ) {
				Q1 = 1;
				Q2 = 0;
			} else {
				Q1 = 0;
				Q2 = 1;
			}
		}

		if( Ibc < 0.001f && Ibc > -0.001f ) {
			Q3 = 0;
			Q4 = 0;
		} else {
			if( Ibc > 0.0f ) {
				Q3 = 1;
				Q4 = 0;
			} else {
				Q3 = 0;
				Q4 = 1;
			}
		}

		if( Icc < 0.001f && Icc > -0.001f ) {
			Q5 = 0;
			Q6 = 0;
		} else {
			if( Icc > 0.0f ) {
				Q5 = 1;
				Q6 = 0;
			} else {
				Q5 = 0;
				Q6 = 1;
			}
		}

		if( ( Q1 && Q3 && Q5 || !Q1 && !Q3 && !Q5 ) ||
			( Q2 && Q4 && Q6 || !Q2 && !Q4 && !Q6 ) 
		) {
			// .....
		} else {
			printf( "Qe: %d\n", i );
			printf( "%d\t%d\t%d\n%d\t%d\t%d\n", Q1, Q3, Q5, Q2, Q4, Q6 );
			printf( "Iac %f\tIbc %f\tIcc %f\n\n", Iac, Ibc, Icc );

			if( NULL != fp ) {
				//fprintf( fp, "Qe: %d\n", i );
				//fprintf( fp, "%d\t%d\t%d\n%d\t%d\t%d\n", Q1, Q3, Q5, Q2, Q4, Q6 );
				//fprintf( fp, "Iac %f\tIbc %f\tIcc %f\n\n", Iac, Ibc, Icc );
				fprintf( fp, "%f\t%f\t%f\n", Iac, Ibc, Icc );
			}
		}
		
		if(
			60	== i ||
			120	== i ||
			180 == i ||
			240	== i ||
			300	== i ||
			360 == i
		) {
			if( NULL != fp ) {
			//	fprintf( fp, "\n====================================================================\n", i );
			}
			//getchar();
		}

		Qe += 1.0;
	}

	if( fp != NULL ) {
		fclose( fp );
	}

	return 0;
}

