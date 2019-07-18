 /**************************************************************************
 *   pe7.c                                    Version 20190325.111846      *
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
#include <math.h>
/* ---------------------------------------------------------------------- */
/* defines */
/* Project Euler Exercise Number */
/* #define PEN pe ## 7 */
#define SPEN "pe" "7"
#define lim 10001

/* ---------------------------------------------------------------------- */
/* prototypes */
void pe7(void); /* Proj. Euler problem #7 */

/* ---------------------------------------------------------------------- */
/* main function */
/* Do not change the main function. Use the void pe7(void) and
 * if others you create
 */
int main(void)
{
    printf("Project Euler 20190325.111846, %s\n", SPEN);
    GRABsignals();
    pe7(); /* Proj. Euler problem #7 */
    LEGOsignals();
    return EXIT_SUCCESS;
}

/* ---------------------------------------------------------------------- */
/* Proj. Euler problem #7 */
/* Problem description:
 *
 */

void pe7(void)
{
    /* local variables */
    ulong r=0; /* answer */
    int cont = 0, flag = 0;

    /* Put this command inside a loop to get previews when pressing CTRL-C */
    for( long i = 2; cont < lim; i++)
    {
        flag = 0;
        for(long x = 2; x <= (i/2); x++)
        {
            if(i % x == 0)
            {
                flag = 1;
                break;
            }

        }
        if(flag == 0)
        {
            cont++;
            r = i;
        } 
    }

    printf("%s: %lu\n", __FUNCTION__, r); /* answer */
    return;
}

/* ---------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : C config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc> Version 20160612.142044      */

