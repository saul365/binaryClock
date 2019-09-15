//#include <Arduino.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include "BCD.h"
#include "binClock.h"

void printLED(bin_Clock reloj);
int convert(int num);


//int pins[11]={2,3,4,5,6,7,8,9,10,11,12};//arduino pins
int pins[11]={0,2,3,1,4,5,6,26,27,28,29};//rasPi pins
//int btns[3]={A0,A1,A2};
int main(void)
{
	 //init();//arduino start
	wiringPiSetup();
	pinMode(pins[0],OUTPUT);//Horas
	pinMode(pins[1],OUTPUT);
	pinMode(pins[2],OUTPUT);
	pinMode(pins[3],OUTPUT);
	pinMode(pins[4],OUTPUT);
	pinMode(pins[5],OUTPUT);//minutos
	pinMode(pins[6],OUTPUT);
	pinMode(pins[7],OUTPUT);
	pinMode(pins[7],OUTPUT);
	pinMode(pins[9],OUTPUT);
	pinMode(pins[10],OUTPUT);
	pinMode(pins[7],INPUT);
	// pinMode(A3,INPUT);
/*
	 pinMode(btns[0],INPUT);
	 pinMode(btns[1],INPUT);
	 pinMode(btns[2],INPUT);
*/
	 //pinMode(LED_BUILTIN, OUTPUT);
	 bool flag=false;
	 int o=2,h=2,m=2,r=2;
	int fd=wiringPiI2CSetup (0x68);
	int hrs=wiringPiI2CReadReg8 (fd, 0x02);
	int mins=wiringPiI2CReadReg8 (fd, 0x01);
	int segs=wiringPiI2CReadReg8 (fd, 0x00);
	int tmp1=convert(hrs);
	int tmp2=convert(mins);
	int tmp3=convert(segs);//
	//printf("%d:%d:%d\n",tmp1,tmp2,tmp3);
	bin_Clock reloj(tmp1,tmp2,tmp3);
	
	 while(1)
	 {
	 	//digitalWrite(LED_BUILTIN,0);
	 	//digitalWrite(LED_BUILTIN,1);

	 	printLED(reloj);

	 	//for (int i = 0; i < 60; ++i){
	 		//delay( 1000 );
	 		//digitalWrite(LED_BUILTIN,0);
		if(!digitalRead(7)){
			reloj.incrementar_ClockS()	;
	 		delay(500);
			//printf("uuhhhhhhhhhhhhhm");
		}
/*
	 		if(!o)
	 		{
	 			flag=true;
	 			delay(1000);
	 			break;
	 		}
*/

	 		
	 	//}
	 	//reloj.incrementar_Clock();
	 	
/*

	 		if (flag)
	 		{	
	 			digitalWrite(LED_BUILTIN,1);
	 			//reloj.reset_Clock();

	 			while(flag)
	 			{
	 				h=digitalRead(A1);
	 				m=digitalRead(A0);
	 				o=digitalRead(A2);
	 				//r=digitalRead(A3);
	 				printLED(reloj);
	 				if(!m)
	 				{
	 					reloj.incrementar_Clock();
	 					printLED(reloj);
	 					delay(500);
	 				}
	 				if (!h)
	 				{
	 					reloj.horas.incrementar_BCD();
	 					if(reloj.horas.suma==24)
	 						reloj.horas.setBCD(0);
	 					printLED(reloj);
	 					delay(500);
	 				}
					if(!r)
						reloj.reset_Clock();
	 				if (!o)
	 					flag=false;


	 			}

	 	 	}
*/
	 }
}
int convert(int num){
	int dec=num;
	int tmp=dec>>4;
	int unit= num-(tmp<<4);
	dec=tmp*10;
	tmp=dec+unit;
	
	return tmp;
}

void printLED(bin_Clock reloj)
{
	//printf("%d:%d:%d\n",reloj.horas.suma,reloj.minutos.suma,reloj.segundos.suma);
	for (int i = 0; i < 6; ++i)
	{
		digitalWrite(pins[5+i],reloj.minutos.bcd[5-i]);
		if (i<5)
	 		digitalWrite(pins[i],reloj.horas.bcd[4-i]);
	}
}

