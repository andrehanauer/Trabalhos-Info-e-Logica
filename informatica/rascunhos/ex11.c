/* ************************************************************************ *
 *    Raiz da babilonia                                                     *
 *    Resolve raizes de segundo grau pelo metodo da babilonia               *
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

int main(void)
{
    float num, r, tentant, tent;

    printf("Esta é uma calculadora da babilonia ela lhe resolvera raizes quadradas pelo metodo babilonico \n digite agora o numero q deseja retirar a raiz\n");
    scanf("%f", &num);

    tent = num / 2;

    do
    {
        r = num / tent;

        tentant = tent;

        tent = (tent + r) / 2;

        printf("%f \n", tent);

    }while(tentant - tent > 0.001 * tentant);

    printf("\n O resultado da raiz pelo metodo babilonico eh uma aproximacao que neste caso eh de \n %f \n", tent);

    return EXIT_SUCCESS;
}
