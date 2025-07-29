// 2 Digit BCD Counter
#include<reg51.h>
void msDelay(unsigned int);

void main(){
	unsigned int i,j;
	for(i = 0 ;i<10;i++){
		for(j = 0;j<10;j++){
			P1 = ((i<<4)|j);
			msDelay(10000);
		}
	}
}
void msDelay(unsigned int time){
	unsigned int i,j;
	for(i = 0;i<=time;i++)
		for(j = 0;j<1275;j++);
			// time waste
		
	
}
