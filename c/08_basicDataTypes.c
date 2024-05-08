#include <stdio.h>

int main(){

	/* BASIC DATA 
	 *
	 * int -> 2 or 4 bytes | e.i -> 23
	 * float -> 4 bytes    | e.i -> 34.34 (sufficient to storing 6-7 decimal digits 
	 * double -> 8 bytes   | e.i -> 34.24234234 ( sufficient to storing 15 decimal digits)
 	 * char-> 1 bytes      | e.i -> character, letter
	 */

	/*
	 *
	 * data types    format specifier 
	 *    int             %d or %i
	 *    float           %f or %F
	 *    char            %c  
	 *    double          %fl 
	 *    string          %s
	 *
	 *
	 * */

	char a = 65, b = 66, c = 67;
	printf("%c", a);
	printf("%c", b);
	printf("%c", c);
	return 0;
}

