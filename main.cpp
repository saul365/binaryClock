#include <Arduino.h>
#include <stdlib.h>
#include <stdbool.h>
#include "BCD.h"
#include "binClock.h"

void printLED(bin_Clock reloj);

int main(void)
{
	 init();
	 pinMode(2,OUTPUT);//Horas
	 pinMode(3,OUTPUT);
	 pinMode(4,OUTPUT);
	 pinMode(5,OUTPUT);
	 pinMode(6,OUTPUT);
	 pinMode(7,OUTPUT);//minutos
	 pinMode(8,OUTPUT);
	 pinMode(9,OUTPUT);
	 pinMode(10,OUTPUT);
	 pinMode(11,OUTPUT);
	 pinMode(12,OUTPUT);
	// pinMode(A3,INPUT);
	 pinMode(A2,INPUT);
	 pinMode(A1,INPUT);
	 pinMode(A0,INPUT);
	 pinMode(LED_BUILTIN, OUTPUT);
	 bool flag=false;
	 bin_Clock reloj(2,59);//
	 int o=2,h=2,m=2,r=2;
	 while(1)
	 {
	 	digitalWrite(LED_BUILTIN,0);
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
		digitalWrite(7+i,reloj.minutos.bcd[5-i]);
		if (i<5)
	 		digitalWrite(2+i,reloj.horas.bcd[4-i]);
	}
}

