#include "BCD.h"

/**
 * 
 * @brief Es el constructor del objeto BCD sin parametros inicializa el número binario en 0 y crea el arreglo que guardara al binario.
 */
BCD::BCD()
{
	suma=0;
	bcd=(int*) malloc (sizeof(int)*6);

}
/**
 * 
 * @brief Es el constructor del objeto BCD con parametros inicializa el número binario con el decimal asignado.
 *
 * @param decimal es el número decimal con el que se va a inicializar el número binario.
 */
BCD::BCD(int decimal)
{
	suma=decimal;
	bcd=convertirDecimal(decimal);
}
/**
 * 
 * @brief le asigna al objeto BCD el número decimal asignado.
 *
 * @param decimal es el número decimal que se le asiganrá al objeto BCD.
 */
void BCD::setBCD(int decimal)
{
	suma=decimal;
	if(bcd)
	{
		free(bcd);
		bcd=convertirDecimal(decimal);
	}
		
}

/**
 * 
 * @brief aumenta el valor del numero binario en 1
 *
 * 
 */

void BCD::incrementar_BCD()
{
	suma++;
	
	for(size_t i=0;i<6;i++)
	{
		bcd[i]++;
		if(bcd[i]<2)
			break;
		else
			bcd[i]=0;
	}
}
/*void BCD::printBCD()
{
	for (int i = 0; i < 6; ++i)
	{
		cout<<bcd[5-i];
	}

}*/

/**
 * 
 * @brief regresa el campo suma del objeto BCD.
 *
 * @return suma es el campo suma del objeto que es el equivalente decimal al numero binario;
 * 
 */
int BCD::getSuma()
{
	return suma;
}
/**
 * 
 * @brief es la función inicializadora de la función CD que convierte un decimal a BCD
 *
 * @param decimal es el número que se desa convertir
 *
 * @return regresa un apuntador a entero que es el inicio de un arreglo que representa el numero bimario 
 * 
 */
int* convertirDecimal(int decimal)
{
	int* tmp=(int*) malloc(sizeof(int)*6);
	return CD (tmp,decimal);
}

/**
 * 
 * @brief convierte un decimal a BCD
 *
 * @param decimal es el número que se desa convertir
 *
 * @return regresa un apuntador a entero que es el inicio de un arreglo 
 * 
 */
int* CD(int* arreglo, int decimal){
	for (int i = 0; i < 6; ++i)
	{
		arreglo[i]=decimal%2;
		decimal/=2;
	}
	return arreglo;
}
