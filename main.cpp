#include <wiringPi.h>
#include <stdio.h>

int main(){
	wiringPiSetup();
	pinMode(28,INPUT);
	int res;
	for(;;){
		if((res=digitalRead(28))){
			printf("%d \n",res);
			delay(10);
		}
	}
		
}
