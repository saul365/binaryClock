#ifndef BIN_CLOCK_INC_
#define BIN_CLOCK_INC_

/*#include <iostream>
using namespace std;*/
#include "BCD.h"

class bin_Clock
{
	public:
		bin_Clock();
		bin_Clock(int hora,int mins);
		void incrementar_Clock();
		void reset_Clock();
		BCD horas;
		BCD minutos;
		//void imprimir_BinC();
	private:
		void set_Clock(int hora, int mins);

};





#endif //BIN_CLOCK_INC_
