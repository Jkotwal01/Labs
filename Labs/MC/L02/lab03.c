#include<reg51.h>
void main() {
    unsigned int i;
    unsigned char *src,*des;
		src =0x39;
		des =0x3e;
    for (i = 0; i < 10; i++) {
        *des = *src;
				src--;
				des--;
    }
}
