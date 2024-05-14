#include <stdio.h>
#include <stdbool.h>

int main(){

	// An array storing different ages
	int ages[] = {20, 22, 18, 35, 48, 26, 87, 70};
	float average, sum = 0.0; 
	int arraySize,i;

	arraySize = sizeof(ages)/sizeof(ages[0]);

	for(i=0;i<arraySize;i++){
		sum += ages[i];	
	};
	
	average = sum/arraySize;
	printf("result: %.2f\n",average );
	

	return 0;
}
