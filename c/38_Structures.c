
#include <string.h>



int main(){

	struct myStructure{
		int myNum;
		char myChar;
	};
	
	struct myStructure s1;
	s1.myNum = 1;
	s1.myChar ='A' ;
	printf("s1.myNum=%d\t s1.myChar=%c\t \n",s1.myNum, s1.myChar);


	printf("============= \n");
	
	
	struct myStructure s2;
	struct myStructure s3;
	struct myStructure s4;

	s2.myNum = 12;
	s3.myNum = 10;
	s4.myNum = 45;

	printf("s2.myNum= %d\n",s2.myNum);
	printf("s3.myNum= %d\n",s3.myNum);
	printf("s4.myNum= %d\n",s4.myNum);

	printf("====Structs with strings========= \n");

struct myStructure1{
	int x;
	char y;
	char w[30];
};
	struct myStructure1 s5;
  s5.x = 23;
  s5.y = 'd';
  strcpy(s5.w,"my strings");	

	printf("s5.x = %d ==> int \n", s5.x);
	printf("s5.y = %c ==> char \n", s5.y);
	printf("s5.w = %s ==> string \n", s5.w);


	printf("======Simpler Syntax======= \n");
	struct myStructure6 {
  	int num;
  	char letter;
  	char myString[30];
	};
	struct myStructure6 stru ={234,'d', "mystring for real"};
	printf("stru num = %d ==> int \n", stru.num);
	printf("stru letter= %c ==> char \n", stru.letter);
	printf("stry myString= %s ==> string \n", stru.myString);


	printf("=====Copy Structures======== \n");

	struct clock {
		int time;
		float second;
		char name[100];
	};
	struct clock reloj = {12,12.23,"bla blab abla"};
	struct clock reloj2;
	reloj2 = reloj;
  printf("%d %f %s\n \n", reloj2.time, reloj2.second, reloj2.name);
	reloj2.time = 100;
	reloj2.second = 23.23;
	strcpy(reloj2.name,"change words");
  printf("%d %f %s\n\n", reloj2.time, reloj2.second, reloj2.name);



	printf("============= \n");
	printf("============= \n");
	printf("============= \n");
	printf("============= \n");
	printf("============= \n");

	return 0;
}
