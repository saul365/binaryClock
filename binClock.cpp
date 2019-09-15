#include "binClock.h"


bin_Clock::bin_Clock()
{
	set_Clock(0,0);

}

bin_Clock::bin_Clock(int hora,int mins)
{
	set_Clock(hora,mins);
}
bin_Clock::bin_Clock(int hora,int mins,int secs)
{
	set_Clock(hora,mins,secs);
}

void bin_Clock::set_Clock(int hora, int mins,int secs)
{
	
	if (mins>59)
	{
		mins=0;
		hora++;
	}
	if (hora>24)
	{
		mins=0;
		hora=0;
	}
	horas.setBCD(hora);
	minutos.setBCD(mins);
	segundos.setBCD(secs);
}
void bin_Clock::set_Clock(int hora, int mins)
{
	
	if (mins>59)
	{
		mins=0;
		hora++;
	}
	if (hora>24)
	{
		mins=0;
		hora=0;
	}
	horas.setBCD(hora);
	minutos.setBCD(mins);
	segundos.setBCD(0);
}
void bin_Clock::reset_Clock()
{
	set_Clock(0,0);
}
void bin_Clock::incrementar_ClockS()
{
	segundos.incrementar_BCD();
	if(segundos.suma==60){
		minutos.incrementar_BCD();
		segundos.setBCD(0);
		if(minutos.suma==60)
		{
			horas.incrementar_BCD();
			minutos.setBCD(0);
			if (horas.suma==60)
				horas.setBCD(0);
		}
	}
}
void bin_Clock::incrementar_Clock()
{
	minutos.incrementar_BCD();
	if(minutos.suma==60)
	{
		horas.incrementar_BCD();
		minutos.setBCD(0);
		if (horas.suma==60)
			horas.setBCD(0);
	}
}

/*void bin_Clock::imprimir_BinC()
{
	cout<<"La hora es:"<<horas.getSuma()<<":"<<minutos.getSuma()<<endl<<"en binario: ";
	horas.printBCD();
	cout<<":";
	minutos.printBCD();

}*/
