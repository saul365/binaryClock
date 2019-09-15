#include <wiringPiI2C.h>
#include <stdio.h>


int main(){
	int devId=0x68;
	
	int fd=wiringPiI2CSetup (devId);

	//printf("%d %d %d %d %d %d",minutos,horas,dia,date,mes,years);
	
	wiringPiI2CWriteReg8 (fd, 0x00, 0x00) ;
	wiringPiI2CWriteReg8 (fd, 0x01, 0x35) ;
	wiringPiI2CWriteReg8 (fd, 0x02, 0x22) ;
	wiringPiI2CWriteReg8 (fd, 0x03, 0x06) ;
	wiringPiI2CWriteReg8 (fd, 0x04, 0x14) ;
	wiringPiI2CWriteReg8 (fd, 0x05, 0x09) ;
	wiringPiI2CWriteReg8 (fd, 0x06, 0x19) ;
	wiringPiI2CWriteReg8 (fd, 0x07, 0x10) ;

	return 0;
	
}
