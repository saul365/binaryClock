#ifndef BIN_CLOCK_INC_
#define BIN_CLOCK_INC_

/*#include <iostream>
using namespace std;*/
#include "BCD.h"

class bin_Clock
{
	public:
		/**
		* @brief Constructor que crea un reloj inicializado en 00:00:00.
		*/
		bin_Clock();
		/**
		* @brief Constructor que crea un reloj inicializado con los parametros que se le dan y los segundos en 00.
		* @param hora Entero que indica la hora con la que se inicializara el reloj.
		* @param mins Entero que indica los minutos con los que se inicializara el reloj.
		* @param secs Entero que indica los segundos con los que se inicializara el reloj.
		*/
		bin_Clock(int hora,int mins,int secs);
		/**
		* @brief Constructor que crea un reloj inicializado con los parametros que se le dan y los segundos en 00.
		* @param hora Entero que indica la hora con la que se inicializara el reloj.
		* @param mins Entero que indica los minutos con los que se inicializara el reloj.
		*/
		bin_Clock(int hora,int mins);
		/**
		* @brief Metodo que incrementa en 1 los segundos del reloj.
		*/
		void incrementar_ClockS();
		/**
		* @brief Metodo que incrementa en 1 los minutos del reloj.
		*/
		void incrementar_Clock();
		/**
		* @brief Metodo que reinicia el reloj a 00:00:00.
		*/
		void reset_Clock();
		/**
		* @typedef horas Objeto del tipo BCD (Binary Coded Decimal) que representa las horas en esta clase.
		*/
		BCD horas;
		/**
		* @typedef minutos Objeto del tipo BCD (Binary Coded Decimal) que representa las minutos en esta clase.
		*/
		BCD minutos;
		BCD segundos;
		//void imprimir_BinC();
	private:
		/*
		* @brief Función privada que configura el reloj binario a corde a los parametros que se le pase.
		* @param hora La hora con la que se configurará el reloj.
		* @param mins Los minutos con los que se configurará el reloj.
		*/
		void set_Clock(int hora, int mins);
		/*
		* @brief Función privada que configura el reloj binario a corde a los parametros que se le pase.
		* @param hora La hora con la que se configurará el reloj.
		* @param mins Los minutos con los que se configurará el reloj.
		* @param secs Los segundos con los que se configurará el reloj.
		*/
		void set_Clock(int hora, int mins,int secs);

};





#endif //BIN_CLOCK_INC_
