#ifndef BCD_INC_
#define BCD_INC_
// #include <iostream>
// using namespace std;
#include <stdlib.h>
class BCD
{
	public:
		BCD(int decimal);
		BCD();
		int suma;
		int* bcd;
		void setBCD(int decimal);
		void incrementar_BCD();
		//void printBCD();
		int getSuma();

};

int* convertirDecimal(int decimal);
int* CD(int* arreglo, int decimal);



#endif//BCD_INC_
