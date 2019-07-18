/* ************************************************************************ *
 *    Sorteio vaquinha                                                      *
 *    Mostra o ganhador da vaquinha por meio de numeros pseudoaleatorios    *
 *                                                                          *
 *    Copyright (C) 2019 by Andre Hanauer Navarro                           *
 *                                                                          *
 *    This program is free software; you can redistribute it and/or modify  *
 *    it under the terms of the GNU General Public License as published by  *
 *    the Free Software Foundation; either version 2 of the License, or     *
 *    (at your option) any later version.                                   *
 *                                                                          *
 *    This program is distributed in the hope that it will be useful,       *
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *    GNU General Public License for more details.                          *
 *                                                                          *
 *    You should have received a copy of the GNU General Public License     *
 *    along with this program; if not, write to the                         *
 *    Free Software Foundation, Inc.,                                       *
 *    59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 *                                                                          *
 *    To contact the author, please write to:                               *
 *    Andre Hanauer Navarro <andrehanauern@gmail.com>                       *
 *    Webpage: http://www.github.com/andrehanauer                           *
 *    Phone: +55 (81) 99177-4250                                            *
 * ************************************************************************ *
 * 
 */

#include<stdio.h>
#include<stdlib.h>
#include<time.h> 



int main(void)/*Funcao principal*/
{
    int a,b,c;/*Variaveis inteiras*/
    
    srand(time(NULL));/*Sorteio de numeros de acordo com o tempo*/

    a = rand()%10;/*rand realiza o sorteio e o %10 limita o sorteio entre 0 e 9*/
    printf("valor de a: %i \n", a);
    b = rand()%20;
    printf("Valor de b: %i \n", b);
    c = rand()%15;
    printf("Valor de c: %i \n", c);
    

    if((a - 3 > c || ((a > b && a > c) && (b + 2 > c || b - 2 < c))  || (a > b && a <= c &&  b >= c)))/*Funcao que define se voce ganhou ou perdeu a vaquinha*/    
        printf("Voce ganhou a vaquinha! \n ");
    else
        printf("Voce perdeu! \n");
    
    return EXIT_SUCCESS;
}


