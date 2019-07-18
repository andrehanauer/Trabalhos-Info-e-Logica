/***************************************************************************
 *   ex13.c                                   Version 20190404.151403      *
 *                                                                         *
 *   Brief description                                                     *
 *   Copyright (C) 2019         by Andre Hanauer Navarro                   *
 ***************************************************************************
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; version 2 of the License.               *
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
 *   Andre Hanauer Navarro                                                 *
 *   Email: andrehanauern@gmail.com                                        *
 *   Webpage: http://www.upe.br                                            *
 *   Phone: +55 (81) 99177-4250                                            *
 ***************************************************************************/

/*
 * Instrucoes para compilar:
 * $gcc ex13.c -o ex13.x -Wall -Wextra -g -O0 -DDEBUG=1
 * opcoes extras: -ansi -pedantic-errors
 */

/* ---------------------------------------------------------------------- */
/* includes */

#include <stdio.h> /* Standard I/O functions */
#include <stdlib.h> /* Miscellaneous functions (rand, malloc, srand)*/
#include <time.h> /* Time and date functions */
#include <math.h> /* Mathematics functions */
/* #include <string.h> */ /* Strings functions definitions */
/* #include "libeco.h" */ /* I/O, Math, Sound, Color, Portable Linux/Windows */
/* #include "ex13.h" */ /* To be created for this template if needed */

/* ---------------------------------------------------------------------- */
/* definitions */

#ifndef VERSION /* gcc -DVERSION="0.1.160612.142306" */
#define VERSION "20190404.151403" /* Version Number (string) */
#endif

/* Debug */
#ifndef DEBUG /* gcc -DDEBUG=1 */
#define DEBUG 0 /* Activate/deactivate debug mode */
#endif

#if DEBUG==0
#define NDEBUG
#endif
/* #include <assert.h> */ /* Verify assumptions with assert. Turn off with #define NDEBUG */ 

/* Debug message if DEBUG on */
#define IFDEBUG(M) if(DEBUG) fprintf(stderr, "[DEBUG file:%s line:%d]: " M "\n", __FILE__, __LINE__); else {;}

/* limits */
#define SBUFF 256 /* string buffer */
#define MAX 10

/* ---------------------------------------------------------------------- */
/* prototypes */

void help(void); /* print some help */
void copyr(void); /* print version and copyright information */
void preenche(int v[MAX]);
float media(int v[MAX]);
float desvio(int v[MAX]);
void imprime(int v[MAX]);

/* ---------------------------------------------------------------------- */
/* This function does ...
 * 
 * It receives as input ... 
 *
 * It returns ...
 */
int main(void)
{
    float d;
    float m;
    int v[MAX];

    srand(time(NULL));

    preenche(v);
    m = media(v);
    d = desvio(v);

    printf("Vetor: \n");
    imprime(v);
    printf(" A media eh de : %.5f \n", m);
    printf(" O desvio padrao eh de : %.5f \n", d);
  
    return EXIT_SUCCESS;
}

/* add more functions here */

void preenche( int v[MAX])
{
    int  i;

    for(i = 0; i < MAX; i++) //gera numeros do vetor
        v[i] = rand() %1000;

    return;
}

float media(int v[MAX])
{
    int i, ac = 0;

    for(i = 0; i < MAX; i++)
        ac = ac + v [i];

    return (ac/ (float)MAX);
}

float desvio(int v[MAX])
{
    int i;
    float m = 0;

    for(i = 0; i < MAX; i++)
        m = m + (((float)v[i]-media(v)) * ((float)v[i] - media(v)));

    return (sqrt(m / (MAX -1)));
}

void imprime(int v[MAX])
{
    int i;

    for(i =0; i < MAX; i++)
        printf("v[%d] = %d \n", i, v[i]);

    return;
}


/* ---------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : C config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc> Version 20160612.142044      */

/* ---------------------------------------------------------------------- */
/* Prints help information 
 *  usually called by opt -h or --help
 */
void help(void)
{
    IFDEBUG("help()");
    printf("%s - %s\n", "ex13", "Brief description");
    printf("\nUsage: %s\n\n", "ex13");
    printf("This program does...\n");
    /* add more stuff here */
    printf("\nExit status:\n\t0 if ok.\n\t1 some error occurred.\n");
    printf("\nTodo:\n\tLong options not implemented yet.\n");
    printf("\nAuthor:\n\tWritten by %s <%s>\n\n", "Andre Hanauer Navarro", "andrehanauern@gmail.com");
    return;
}

/* ---------------------------------------------------------------------- */
/* Prints version and copyright information 
 *  usually called by opt -V
 */
void copyr(void)
{
    IFDEBUG("copyr()");
    printf("%s - Version %s\n", "ex13", VERSION);
    printf("\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu.org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n", 2019, "Andre Hanauer Navarro", "andrehanauern@gmail.com");
    return;
}

