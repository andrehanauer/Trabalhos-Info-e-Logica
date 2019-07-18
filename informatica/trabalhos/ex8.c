/* ************************************************************************ *
 *    Calculadora float.                                                    * 
 *    Realiza as quatro operacoes basicas.                                  *
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
 

#include<stdio.h>
#include<math.h>
#include<stdlib.h>


 int main(void)
{
    float a,b,r;
    int opcao;

    printf("Esta calculadora realiza operacoes de soma, subtracao, multiplicacao e divisao, onde voce escolhe o primeiro numero da operacao, depois escolhe a oeracao em si e finamente escolhe o segundo numero da operacao. \n");

    printf("Informe a: ");
    scanf("%f",&a);
    
    printf("Escolha a operacao que deseja realizar\n1. mais\n2. menos\n3. multiplica\n4. divide\n");    
    scanf("%i",&opcao);


    switch(opcao)/* switch e uma opcao de "menu" que facilita, quando existe a necessidade de ter que se excolher uma opcao no meio de varias*/
    {
        case 1: /*Soma*/
            printf("Informe b: ");    
            scanf("%f",&b);
            r = a + b;
            printf("%f + %f = %f\n",a,b,r);
            break;

        case 2: /*subtracao*/
            printf("Informe b: ");    
            scanf("%f",&b);
            r = a - b;
            printf("%f + %f = %f\n",a,b,r);
            break;

        case 3: /*multiplicacao*/
            printf("Informe b: ");    
            scanf("%f",&b);
            r = a * b;
            printf("%f * %f = %f\n",a,b,r);
            break;

        case 4: /*divisao*/
            printf("Informe b: ");    
            scanf("%f",&b);
            r = a / b;
            printf("%f / %f = %f\n",a,b,r);
            break;

        default:
            printf("Opcao inexistente\n");
            return 0;
    }

      
      
/*Esteregges*/
    if(r == 10)
        printf("Prabens essa sera sua nota! ;)\n");

    if(r == 40)
        printf("VAMOS FAZER 40!\n");

    if(r == 100)
        printf("BRASIL assima de TUDO");
    
    return EXIT_SUCCESS;    
}
