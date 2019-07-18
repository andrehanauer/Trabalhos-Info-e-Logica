/* ************************************************************************ *
 *    PROGRAM_NAME, VERSION                                                 *
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
 *    Webpage: http://www.github.com/andrehanauer                            *
 *    Phone: +55 (81) 99177-4250                                            *
 * ************************************************************************ *
 * 
 */

/* ./ex15.x | gnuplot -p -e "set term pngcairo size 8cm,6cm enhanced font 'Verdana,10'; set output 'ex15.png'; plot '-' with lines" */ /*Como compilar*/

/*display sin.png*/ /* gerar imagem*/

/* gnuplot <enter> */
/* ./sin.x | gnuplot -p -e "set term dumb ; plot '-' with lines"*/

#include <stdio.h>
#include <math.h>

int main(void)
{
    float x;

    for(x = 0.0; x <= 2*M_PI; x +=0.1 )
        printf("%f\t%f\n", x, sin(x));

    return 0;
}
