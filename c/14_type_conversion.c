#include <stdio.h>

int main(){

	// ==== type conversion ====
	int x = 3;
	int y = 4;
	int result = x + y;

	printf("result: %d\n", result); // outputs 2 ( int not float )

	// automatic conversion 
	float myFloat = 8 ;
	int myInteger = 3.4;

	printf("%f\n", myFloat);
	printf("%d\n", myInteger);

	// Explicit conversion 
	float sum = (float) 4/3;
	printf("%f\n", sum);
	printf("%.1f\n", sum);

  int maxScore = 5000;
	int userScore = 420;
	/* Calculate the percantage of the user's score
	 * in relation to the maximum available score.
	 * Convert userScore to float to make sure that 
	 * the division is accurate */

	float percentage = (float) maxScore * userScore;
	printf("the percentage result is; %.3f\n",percentage);
 	return 0;
}
