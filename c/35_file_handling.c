#include <stdio.h>

int main(){

	/* FILE   *ftpr
	 * ftpr  = fopen(filename,mode);
	 */
	//=========================
	FILE  *file;// declare file
	file = fopen("blabla.txt","w");
	fclose(file);
	//=========================
	
		
	//=======C write to a files==================
	FILE *file1;
	file1 = fopen("file1","w");// ==> open a file in writing mode
	fprintf(file1,"some text bla bla ");// ==> write some text to the file
	fclose(file1);//close file
	//=========================

	//=======append content to a file ==================
	file1 = fopen("file1","a");
	fprintf(file1," extended extended extended extended extended");
	fprintf(file1," \n weee woooo eeeee wuuuu");
	fprintf(file1," \n weee woooo eeeee wuuuu");
	fprintf(file1," \n weee woooo eeeee wuuuu");
	fclose(file1);
	//=========================

	//=======Read files just one line of the file ==================
	FILE *fileName;
	fileName = fopen("file1","r");
	char myString[100];
	fgets(myString,100,fileName);
	printf("%s",myString);
	fclose(fileName);

	printf("\n");
	printf("\n");
	//=========================

	//=========Read the whole lines ================
	FILE *FPTR;
	FPTR = fopen("file1","r");
	char myString1[200];
	while(fgets(myString1,200,FPTR)) {
		printf("%s", myString1);
	};
	fclose(FPTR);
	//=========================

	printf("\n");
	printf("\n");

	return 0;
}
