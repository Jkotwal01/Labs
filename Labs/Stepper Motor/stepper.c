#include <reg51.h>
void delay(unsigned int ms){
unsigned int i,j;
	for(i=0;i<ms;i++){
	for(j=0;j<1275;j++){}
	}
		
}

void main(){

unsigned int val[4]={0x03,0x06,0x09,0x0C};
unsigned int i;
P1=0x00;
	while(1){
	for(i=0;i<4;i++){
	P1=val[i];
	delay(100);
	}
	}
}
