#include <stdio.h>
#include <string.h>
#include <math.h>


struct MathFunction{
		char function[10];	
		char description[200];	
	};

int main(){
	

	struct MathFunction object[13];
	strcpy(object[0].function, "sqrt()");
	strcpy(object[0].description, "square root of a number, use the sqrt()");

	strcpy(object[1].function, "ceil");
	strcpy(object[1].description, "a number upwards to its nearest integer\n");

	strcpy(object[2].function, "floor()");
	strcpy(object[2].description, " method rounds a number downwards to its nearest integer\n");

	strcpy(object[3].function, "pow");
	strcpy(object[3].description, "Return result of the power of x to y \n");

	strcpy(object[4].function, "abs(x)");
	strcpy(object[4].description, "Return the absolute value of x\n\n");

	strcpy(object[5].function, "acos(x)");
	strcpy(object[5].description, "Return the arccosine of x\n\n");

	strcpy(object[6].function, "asinc(x)");
	strcpy(object[6].description, "Return the arcsine of x\n\n");

	strcpy(object[7].function, "atan(x)");
	strcpy(object[7].description, "Return the arctangent of x\n\n");

	strcpy(object[8].function, "tan(x)");
	strcpy(object[8].description, "Return the tangente of x\n\n");

	strcpy(object[9].function, "sin(x)");
	strcpy(object[9].description, "Return the sine of x\n\n");

	strcpy(object[10].function, "cos(x)");
	strcpy(object[10].description, "Return the cosine of x\n\n");

	strcpy(object[11].function, "exp(x)");
	strcpy(object[11].description, "Return Ex of x\n\n");

	strcpy(object[12].function, "cbrt(x)");
	strcpy(object[12].description, "Return x^3");

	printf("\n ");
	int x;
		printf("function	Description\n");
	for(x=0;x<12;x++){
		printf("%s\t %s\t\n",object[x].function,object[x].description);
	};	
	return 0;
}

