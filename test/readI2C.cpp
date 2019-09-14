#include <wiringPiI2C.h>
#include <stdio.h>
#include <string.h>


char dias[][]={{"Lunes"},{"Martes"},{"Miercoles"},{"Jueves"},{"Viernes"},{"Sabado"},{"Domingo"}};


int main(){
	int devId=0x68;
	
	int fd=wiringPiI2CSetup (devId);
	
	int secs= wiringPiI2CReadReg8 (fd, 0x00);
	int mins= wiringPiI2CReadReg8 (fd, 0x01);
	int hrs= wiringPiI2CReadReg8 (fd, 0x02);
	int day= wiringPiI2CReadReg8 (fd, 0x03);
	int date= wiringPiI2CReadReg8 (fd, 0x04);
	int mes= wiringPiI2CReadReg8 (fd, 0x05);
	int year= wiringPiI2CReadReg8 (fd, 0x06);

	
	
	printf("Son las %d:%d:%d del %s %d,%d,%d",hrs,mins,secs,dias[day],date,mes,year);
}
