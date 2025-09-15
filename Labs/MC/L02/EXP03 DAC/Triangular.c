// DAC Code for Triangular wave
#include<reg51.h>

void delay(unsigned int time){
	unsigned int i,j;
	for(i = 0;i<time;i++)
		for(j = 0;j<1275;j++);
}


void main(){
	unsigned char i;
	P1 = 0x00;
	while(1){
		for(i = 0;i<255;i++){
			P1 = i;
			delay(100);
		}
		for(i = 255;i>0;i--){
			P1 = i;
			delay(100);
		}
	}
}
/*void delay(void){
		// for Timer Delay of 39us
		TMOD =0x01; //timer 0 Mode 1
		TH0 = 0xff;
		TL0 = 0xDC;
		TR0 = 1;
		while(TF0==0);
		TR0 = 0;
		TF0 = 0;
}
*/
