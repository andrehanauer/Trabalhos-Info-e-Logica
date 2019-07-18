/* ************************************************************************ *
 *    Equcao de segundo grau                                                *
 *    BRIEF_DESCRIPTION                                                     *
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
#include<math.h>
#include<stdio.h>
#include<stdlib.h>

int main(void) 
{
    float a,b,c,delta,x1,x2;/* estas variaveis iram guardar o valor dos coeficientes da equacao inserida pelo usuario, o delta tem a função de guardar o valor de delta e X1 e X2 tem a função de guardar o valor das raizes.*/

    printf("Digite o valor de a: ");
        scanf("%f",&a);
    printf("Digite o valor de b: ");
        scanf("%f",&b);
    printf("Digite o valor de c: ");
        scanf("%f",&c);
/* Mensagem quando os dados inseridos nao correspondem a uma equacao do segundo grau.*/
    if(a ==0)
    {
        printf("Nao e uma equacao de segundo grau\n");
        printf("a tem que ser diferente de 0\n");
    }
/* Resolução da equacao.*/
    else 
    {
        delta=(b*b)-4*a*c;
        if(delta == 0) 
        {
            x1 = (-b + sqrt(delta))/(2*a); 
            printf("Delta igual a 0, existe apenas uma raiz\n");
            printf("x1 = %f\n",x1);
        }
        else 
        {
            if (delta > 0) 
            {
                x1 = (-b + sqrt(delta))/(2*a);
                x2 = (-b - sqrt(delta))/(2*a);

                    printf("Delta maior que 0 \n");
                    printf("x1 = %f\n", x1);
                    printf("x2 = %f\n", x2);
            }
            else /* Quando nao existir raiz real. */
            {
                printf("Delta menor que 0\n");
                printf("Nao existe raiz real\n");
            }    
        }

    }
    return 0;
}
