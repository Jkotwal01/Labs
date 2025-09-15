#include<reg51.h>
void delay(unsigned int);
unsigned int value[] = {
	128,192,238,255,238,192,128,64,17,0,17,64,128};

void main(){
	unsigned int i;
	while(1){
		for(i = 0;i<13;i++)
			P1 = value[i];
		}
}
void delay(unsigned int time){
	unsigned int i,j;
	for(i = 0;i<time;i++)
		for(j = 0;j<1275;j++);
		}
	
