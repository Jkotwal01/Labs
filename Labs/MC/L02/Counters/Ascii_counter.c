// ASCII Counter from a to z
#include<reg51.h>
#include<stdio.h>
void msDelay(unsigned int );

void main(){
			unsigned int i;
			printf("Hello");
			for(i = 'a';i<='z';i++){
				P1 = i;
				msDelay(3000);
			}
}
void msDelay(unsigned int time){
			unsigned int i,j;
			for(i = 0;i<time;i++)
				for(j = 0;j<1275;j++);
}