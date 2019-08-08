#include <stdio.h>

int main(void){

	int minute=59; 
	int hour=22; 
	int date=10; 
	int month=7; 
	int year=19; 
	minute = ((minute / 10) << 4) + (minute % 10);
	hour = ((hour / 10) << 4) + (hour % 10);
	date = ((date / 10) << 4) + (date % 10);
	month = ((month / 10) << 4) + (month % 10);
	year = ((year / 10) << 4) + (year % 10);
	printf("dia %d, mes %d, año %d, horas %d,minutos %d",date,month,year,hour,minute);
	return 0;
}

