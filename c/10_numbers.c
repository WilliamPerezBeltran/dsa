#include <stdio.h>

int main(){
	/* Numeric data types
	 *     Data      size            precision
	 *     int        2 or 4  bytes      ---
	 *     float      2 bytes            6 or 7
	 *     double     4 bytes            15 
	 *
	 *     precesion: The precision of a floating point value
	 *     indicats how many digits the value can have after the 
	 *     decimal point.
	 */

	float f1 = 25e3;
	double d1 = 12E4;

	printf("%f\n", f1);
	printf("%fl\n", d1);

	return 0;
}
