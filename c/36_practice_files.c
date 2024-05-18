#include <stdio.h>

int main(){

	FILE *fileWill;
	fileWill = fopen("newFile.txt","w");
	fclose(fileWill);


	fileWill = fopen("newFile.txt","w");
	fprintf(fileWill,"bla bla bla");
	fclose(fileWill);
	

	fileWill = fopen("newFile.txt","a");
	fprintf(fileWill,"\nbla bla blw");
	fprintf(fileWill,"\nble bla blw");
	fprintf(fileWill,"\nblr bla blw");
	fprintf(fileWill,"\nblr bla bla");
	fprintf(fileWill,"\nblr blr bld");
	fprintf(fileWill,"\nbla bla blw");
	fclose(fileWill);

	
	FILE *frr;
	frr=fopen("newfile.txt","w");
	fprintf(frr,"\n william fernando perez beltran");
	fprintf(frr,"\n bla bla bla bla de");
	fprintf(frr,"\n la vida loca  beltran");
	fprintf(frr,"\n rea the content and print it");
	fclose(frr);

	FILE *frt;
	frt=fopen("newfile.txt","r");
	char string1[300];
	while(fgets(string1,300,frt)){
	 printf("%s\n",string1);	 
	};
	fclose(frt);

	
	
	return 0; 
}
