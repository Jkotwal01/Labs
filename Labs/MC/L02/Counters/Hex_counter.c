// Hex counter from ( 00 to FF)
#include<reg51.h>
void msDelay(unsigned int);

void main(){
		unsigned int i;
		//P1 = 0x00;
		while(1)
		{
			for(i = 0x00;i<=0xff;i++)
			{
				P1 = i;
				msDelay(3000);
			}
	
		}
}
void msDelay(unsigned int time){
	unsigned int i,j;
	for(i = 0;i<=time;i++)
		for(j = 0;j<1275;j++);
			// time waste
		
	
}
