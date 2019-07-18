/* ************************************************************************ *
 *    Probabilidade de prova                                                *
 *    Mostra a probabilidade de se ter ou nao prova nos seguintes dias      *
 *    02, 08, 09, 15, 16, 22.                                               *
 *    pelo metodo de simulacao de Monte Carlo em 1000000 de casos           *
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
 *    Webpage: http://www.github.com/andrehanauer                            *
 *    Phone: +55 (81) 99177-4250                                            *
 * ************************************************************************ *
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define D 1000000 /*Define a quantidade de tentativas do laco*/

int main(void)
{
    int i, d, maior = 0, dmaior = 0;
    float dia[6] = {0, 0, 0, 0, 0, 0};
    srand(time(NULL));

    for(i = 0; i < D; i++)
    {
        d = (rand()%6)+1;
        if(d == 1)
            dia[0]++;
        else
        {
            d = (rand()%6)+1;
            if(d == 1 || d == 2)
                dia[1]++;
            else
            {    
                d = (rand()%6)+1;
                if(d == 1 || d == 2 || d ==3)
                    dia[2]++;
                else
                {    
                    d = (rand()%6)+1;
                    if(d == 1 || d == 2 || d == 3 || d == 4)
                        dia[3]++;
                    else
                    {    
                        d = (rand()%6)+1;
                        if(d == 1 || d == 2 || d == 3 || d == 4 || d == 5)
                            dia[4]++;
                        else
                        {    
                            d = (rand()%6)+1;
                            if(d == 1 || d == 2 || d == 3 || d == 4 || d == 5 || d == 6)
                                dia[5]++;
                        }    
                    }
                }            
            }
        }
    }

    for(i = 0; i < 6; i++)
    {
        if(dia[i] >= maior)
        {
            maior = dia[i];
            dmaior = i;
        }
    }

    printf("A prova tem maior probabilidade de cair no dia: %d \n", dmaior);

    for(i = 0; i < 6; i++)
        printf("Probabilidade da prova ocorer no dia %d eh de: %.4f%% \n", i, (dia[i] / D) * 100);

    printf("Dia 0 = (02/05) \n");
    printf("Dia 1 = (08/05) \n");
    printf("Dia 2 = (09/05) \n");
    printf("Dia 3 = (15/05) \n");
    printf("Dia 4 = (16/05) \n");
    printf("Dia 5 = (22/05) \n");

    return EXIT_SUCCESS;
}

