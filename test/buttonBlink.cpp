#include <stdio.h>
#include <wiringPi.h>

int main(){
	wiringPiSetup();
	pinMode(29,OUTPUT);
	pinMode(1,INPUT);
	for(;;){
		if(digitalRead(1)){
			digitalWrite(29,1);
		//	printf("pressed");
		}else{
			digitalWrite(29,0);
		}
	}
}


