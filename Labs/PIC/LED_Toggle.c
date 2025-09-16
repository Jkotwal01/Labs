#include<p18f4550.h>
#include"vector_relocate.h"
void delay(unsigned int);

void main(void){
	ADCON1 = 0x0F;
	TRISD = 0x00;
	PORTD = 0x00;
	while(1){
		PORTD = 0xFF;
		delay(500);
		PORTD = 0x00;
		delay(500);
	}
}

void delay(unsigned int time){
	unsigned int i,j;
	for (i=0; i<time;i++)
		for(j=0;j<165;j++);
}
