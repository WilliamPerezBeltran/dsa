#include <stdio.h>
#include <string.h>

	void myFunction(){
		printf("bla abl\n");
	}

int sum(int x, int y){
	return x+y;
}

void fun(char name[], int age){
	printf("name:%s , age:%d \n",name, age);
}
//pass an array to function
void funArr(int arr[5]){
	int x;
	for(x=0;x<5;x++){
		printf("%d\n",arr[x]);	
	};
}

float farenToCel(float faren){
	return (faren-32)/(9.0/5.0);
}

int main(){
	int s;
	myFunction();
	myFunction();
	myFunction();
	myFunction();
	s=sum(3,4);
	printf("%d\n",s);
	printf("%d\n",sum(1,2));
	fun("william perez", 23);
	int arr[5] = {1,2,3,4,5};
	funArr(arr);
	printf("====");
	float f_faren = 98.8;
	printf("%f\t-",farenToCel(f_faren));
	
	return 0;
}
