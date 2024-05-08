#include <stdio.h>

int main(){
	char myChar = 'd';
	printf("%c \n", myChar);

	/* alternaively, if you are familiar with  ASCII 
	 * values to dsiplay certain character. Note that these values 
	 * are not surrounded by quotes (''), as 
	 * they are numbers;
	 */

	char a = 34, b = 66, c = 33;
	printf("%c \n", a);
	printf("%c \n", b);
	printf("%c \n", c);

	printf("%c, %c, %c\n", a, b, c); 

	// produce an error char myText = 'text'; 
	// To store multiples character use string 
 	char myText[] = "mytext hello";
	printf("%s\n", myText);
	return 0;
}
