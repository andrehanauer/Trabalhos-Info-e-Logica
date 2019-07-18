 /**************************************************************************
 *   pe2.c                                    Version 20190325.111846      *
 *                                                                         *
 *   Project Euler                                                         *
 *   Copyright (C) 2015-2019   Template by Ruben Carlo Benante             *
 *   Author: Your name here                                                *
 ***************************************************************************
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************
 *   To contact the author, please write to:                               *
 *   Ruben Carlo Benante                                                   *
 *   Email: rcb@beco.cc                                                    *
 *   Webpage: http://www.beco.cc                                           *
 *   Phone: +55 (81) 3184-7555                                             *
 **************************************************************************/

/* ---------------------------------------------------------------------- */
/* includes */
#include "projecteuler.h"
#include <stdio.h>
#include <stdlib.h>

/* ---------------------------------------------------------------------- */
/* defines */
/* Project Euler Exercise Number */
/* #define PEN pe ## 2 */
#define SPEN "pe" "2"
#define lim 4000000

/* ---------------------------------------------------------------------- */
/* prototypes */
void pe2(void); /* Proj. Euler problem #2 */

/* ---------------------------------------------------------------------- */
/* main function */
/* Do not change the main function. Use the void pe2(void) and
 * if others you create
 */
int main(void)
{
    printf("Project Euler 20190325.111846, %s\n", SPEN);
    GRABsignals();
    pe2(); /* Proj. Euler problem #2 */
    LEGOsignals();
    return EXIT_SUCCESS;
}

/* ---------------------------------------------------------------------- */
/* Proj. Euler problem #2 */
/* Problem description: By considering the terms in the Fibonacci sequence
 * whose values do not exceed four million, find the sum of the even-valued
 * terms
 *
 */

void pe2(void)
{
    /* local variableis */
    int a = 1, b = 2;
    ulong r=0; /* answer */


    while( a <  lim)
    {
        if ( a % 2 == 0)
        {
            r += a;
        }
        b = b + a;

        a = b - a;
        
    }

    printf("%s: %lu\n", __FUNCTION__, r); /* answer */

    return EXIT_SUCCESS;

}   
/* ---------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : C config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc> Version 20160612.142044      */

