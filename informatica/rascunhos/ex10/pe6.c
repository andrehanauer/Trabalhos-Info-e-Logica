 /**************************************************************************
 *   pe6.c                                    Version 20190325.111846      *
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
#include<stdio.h>
#include<math.h> 

/* ---------------------------------------------------------------------- */
/* defines */
/* Project Euler Exercise Number */
/* #define PEN pe ## 6 */
#define SPEN "pe" "6"

/* ---------------------------------------------------------------------- */
/* prototypes */
void pe6(void); /* Proj. Euler problem #6 */

/* ---------------------------------------------------------------------- */
/* main function */
/* Do not change the main function. Use the void pe6(void) and
 * if others you create
 */
int main(void)
{
    printf("Project Euler 20190325.111846, %s\n", SPEN);
    GRABsignals();
    pe6(); /* Proj. Euler problem #6 */
    LEGOsignals();
    return EXIT_SUCCESS;
}

/* ---------------------------------------------------------------------- */
/* Proj. Euler problem #6 */
/* Problem description:
 *
 */

void pe6(void)
{
    /* local variables */
    int s1 = 0,s2 = 0;
    ulong r=0; /* answer */

    /* Put this command inside a loop to get previews when pressing CTRL-C */
    for (int i = 1; i < 101; i++)
    {
        s1 += pow(i,2);
        s2 += i;
    }
    
    s2 = pow( s2, 2);

    r = (s2 - s1);

    printf("%s: %lu\n", __FUNCTION__, r); /* answer */
    return;
}

/* ---------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : C config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc> Version 20160612.142044      */
