// LED CHASING

#include<P18F4550.h>
#include "vector_relocate.h"
#define sw0 PORTBbits.RB1
#define sw1 PORTBbits.RB0
void msdelay(unsigned int time);
void main(  )    
{
unsigned int i; 
unsigned char val= 0;
INTCON2bits.RBPU=0;
ADCON1=0x0F; 
TRISD=0x00;
TRISBbits.TRISB0=1;
TRISBbits.TRISB1=1;	
TRISCbits.TRISC2=0;
TRISCbits.TRISC1=0;
PORTCbits.RC1=0;
PORTCbits.RC2=0;
while(1) 
{
if(sw0==0)
{
PORTCbits.RC1=0; 
PORTCbits.RC2=0;
PORTD=0x01;
msdelay(100);
for(i=0;i<8;i++)
{
PORTD=PORTD<<1;
msdelay(100);}
}
if(sw1==0)
{
PORTCbits.RC1=1; 
PORTCbits.RC2=1;
PORTD=0x80;
msdelay(100);
for(i=0;i<8;i++)
{
PORTD=PORTD>>1;
msdelay(100);
}
}
} 
}


void msdelay (unsigned int time)
{
unsigned int i,j;
for(i=0;i<time;i++)
for(j=0;j<2500;j++);
}
