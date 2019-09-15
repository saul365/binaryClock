#include <wiringPiI2C.h>
#include <stdio.h>
#include <string.h>


//char dias[][]={{"Lunes"},{"Martes"},{"Miercoles"},{"Jueves"},{"Viernes"},{"Sabado"},{"Domingo"}};

int convert(int num);

int main(){
	int devId=0x68;
	int temp=0;
	
	int fd=wiringPiI2CSetup (devId);
	int secs= wiringPiI2CReadReg8 (fd, 0x00);
	int mins= wiringPiI2CReadReg8 (fd, 0x01);
	int hrs= wiringPiI2CReadReg8 (fd, 0x02);
	int day= wiringPiI2CReadReg8 (fd, 0x03);
	int date= wiringPiI2CReadReg8 (fd, 0x04);
	int mes= wiringPiI2CReadReg8 (fd, 0x05);
	int year= wiringPiI2CReadReg8 (fd, 0x06);
	
	
	printf("Son las %d:%d:%d del %d %d/%d/%d\n",convert(hrs),convert(mins),convert(secs),day,convert(date),convert(mes),convert(year));
}
int convert(int num){
	printf("%d\n",num);
	int dec=num;
	int tmp=dec>>4;
	int unit= num-(tmp<<4);
	dec=tmp*10;
	tmp=dec+unit;
	
	return tmp;
}
