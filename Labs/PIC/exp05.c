// LED CHASING WITH RELAY AND BUFFER...

#include<P18F4550.h>
#include "vector_relocate.h"
#define sw0 PORTBbits.RB1
#define sw1 PORTBbits.RB0
void msdelay(unsigned int time);
void main(  )    
{
unsigned int i; 
unsigned char val= 0;
INTCON2bits.RBPU=0; // it on the pullup register
ADCON1=0x0F; // disable all analog signal i.e 35 ports.
TRISD=0x00; // set port as output port
TRISBbits.TRISB0=1; //input for sensing sw1
TRISBbits.TRISB1=1;	// input for sesnsing sw2
TRISCbits.TRISC2=0; // set as output port
TRISCbits.TRISC1=0; // set as output port
PORTCbits.RC1=0; // turn off relay
PORTCbits.RC2=0; // turn off buzzer
while(1) 
{
if(sw0==0)
{
PORTCbits.RC1=0; // Relay off..
PORTCbits.RC2=0; // Buzzer off..
PORTD=0x01; // for Low Value
msdelay(100);
for(i=0;i<8;i++)
{
PORTD=PORTD<<1; // Right to Left
msdelay(100);}
}
if(sw1==0)
{
PORTCbits.RC1=1; // Relay on.
PORTCbits.RC2=1; // Buzzer on.
PORTD=0x80; // High value
msdelay(100);
for(i=0;i<8;i++)
{
PORTD=PORTD>>1; // Left to Right.
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
