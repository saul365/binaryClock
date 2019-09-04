#include <Arduino.h>
#include <stdlib.h>
#include <stdbool.h>
#include "BCD.h"
#include "binClock.h"

void printLED(bin_Clock reloj);
int pins[11]={2,3,4,5,6,7,8,9,10,11,12};//arduino pins
int btns[3]={A0,A1,A2};
int main(void)
{
	 init();
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
	// pinMode(A3,INPUT);
	 pinMode(btns[],INPUT);
	 pinMode(btns[],INPUT);
	 pinMode(btns[],INPUT);
	 //pinMode(LED_BUILTIN, OUTPUT);
	 bool flag=false;
	 bin_Clock reloj(2,59);//
	 int o=2,h=2,m=2,r=2;
	 while(1)
	 {
	 	//digitalWrite(LED_BUILTIN,0);
	 	//digitalWrite(LED_BUILTIN,1);

	 	printLED(reloj);

	 	for (int i = 0; i < 60; ++i)
	 	{
	 		delay( 1000 );
	 		//digitalWrite(LED_BUILTIN,0);
	 		
	 		if(!o)
	 		{
	 			flag=true;
	 			delay(1000);
	 			break;
	 		}

	 		
	 	}
	 	reloj.incrementar_Clock();
	 	
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


void printLED(bin_Clock reloj)
{
	for (int i = 0; i < 6; ++i)
	{
		digitalWrite(pins[5+i],reloj.minutos.bcd[5-i]);
		if (i<5)
	 		digitalWrite(pins[i],reloj.horas.bcd[4-i]);
	}
}

