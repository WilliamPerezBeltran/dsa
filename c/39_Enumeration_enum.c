#include <stdio.h> 

int main(){
	printf("an enum is a special type that represents \n" );
	printf("a group of constant (unchageable values)\t\n " );
	
	enum Level{//define the structure of enum 
		LOW,// by default get the value 1
		MEDIUM,// by default get the value 2
		HIGH // by default get the value 3
	}; 
	enum Level myVar;// get access with variable myVar
	myVar = MEDIUM;
	printf("%d\n",myVar);// print 1 


	printf("======================\n");

	enum Altura{
		ALTO = 25,
		MEDIO = 50,
		BAJO = 75
	};
	enum Altura myVar2;
	myVar2 = ALTO;
	printf("%d\n",myVar2);

	printf("======================\n");

	enum Peso{
		MALTO = 10,
		MMEDIO,// 11
		MBAJO// 12
	};
	enum Peso myVar3;
	myVar3 = MBAJO ;
	printf("%d\n",myVar3);// 12
	
	printf("======================\n");

	enum Something{
		UNO = 1,
		DOS,
		TRES
	};
	enum Something variable;

	variable = UNO ;
	
	switch(variable){
		case 1:
			printf("UNO\n");
			break;
		case 2:
			printf("DOS\n");
			break;
		case 3:
			printf("TRES\n");
			break;
		default:
			printf("whatever\n");
			break;
	};
	
	printf("======================\n");
	

	return 0;
}
