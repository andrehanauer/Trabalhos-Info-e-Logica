/***************************************************************************
 *   ex19_recur.c                             Version 20190510.155218      *
 *                                                                         *
 *   Torre de Hanoi pelo metodo da recursividade                           *
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
 * $gcc ex19_recur.c -o ex19_recur.x -Wall -Wextra -g -O0 -DDEBUG=1
 * opcoes extras: -ansi -pedantic-errors
 */

/* ---------------------------------------------------------------------- */
/* includes */

#include <stdio.h> /* Standard I/O functions */
#include <stdlib.h> /* Miscellaneous functions (rand, malloc, srand)*/
#include <time.h>  /* Time and date functions */

/* #include <math.h> */ /* Mathematics functions */
/* #include <string.h> */ /* Strings functions definitions */
/* #include "libeco.h" */ /* I/O, Math, Sound, Color, Portable Linux/Windows */
/* #include "ex19_recur.h" */ /* To be created for this template if needed */

/* ---------------------------------------------------------------------- */
/* definitions */

#define NDISC 3

#ifndef VERSION /* gcc -DVERSION="0.1.160612.142306" */
#define VERSION "20190510.155218" /* Version Number (string) */
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

/* ---------------------------------------------------------------------- */
/* prototypes */

void help(void); /* print some help */
void copyr(void); /* print version and copyright information */
void inicializa(int p[3][NDISC]);
void imprime_(int p[3][NDISC]);
int pega_pino(int pino[3][NDISC], int p);
int poe_pino(int pino[3][NDISC], int p, int d);
void hanoi(int n);


/* ---------------------------------------------------------------------- */
/* This function does ...
 * 
 * It receives as input ... 
 *
 * It returns ...
 */
int main(void)
{
    int n;
    int pino[3][NDISC];
    int d;

    inicializa(pino);
    imprime_pino(pino);

    printf("Pegue o pino");

    d = pega_pino(pino, 0);

    if(d)
        printf("Pegue o %d do disco \n",d);
    else
        printf("Erro: pino o vazio\n");
    imprime_pino(pino);

    printf("poe pino");

    d = pega_pino(pino, 1, d);

        hanoi(NDISC);

    /* ...and we are done */
    return EXIT_SUCCESS;
}

/* add more functions here */

/* funcoes internas */

void inicializa(int p[3][NDISC])
{
    int i;

    for(i = 0; i < NDISC; i++)
    {
        pino[0][i] = i + 1;

        pino[1][i] = pino[2][i] = 0;
    }

    return;
}

void imprime_(int p[3][NDISC]);/* imprime os pinos*/
{
    int p, 1;

    for(i = 0; i< NDISC; i++)
}

int pega_pino(int pino[3][NDISC], int p);/* pega o disco superior do pino dao Retorna 0 se nao houver discos*/
{
    int i = 0, d = 0;

    while(pino[p][i]==0 && i<NDISC)
        i++;

    if(NDISC == 1)

        return 0;

    d = pino[p][i];

    pino[p][i] = 0;

    return d;
}

int poe_pino(int pino[3][NDISC], int p, int d);/* pega o disco superior do pino dado */
{
    int i = 0;

    while(pino[p][i] == 0 && i<NDISC)
        i++;

    if(NDISC == i)
    {
        pino[p][NDISC - 1] = d;

        return d;
    }

    if(pino[p][i] < d)
        return 0; /* Erro: tentativa de colocar o pino maior sobre o menor */

}

void hanoi(int n)
{
    unsigned int t, i;

    t = pow(2, n) -1;

    printf("Sera %u movimentos \n", t);

    for(i = 1; i <= t; i++)
        switch(i % 3)
        {
            case 0:/* mover de auxiliar para destino */
                printf("Mova o disco do topo de c para b \n");
                break;

            case 1:/* mover de origem para o destino */
                printf("Mova o disco do topo de a para b \n");
                break;

            case 2:/* mover da origem para auxiliar */
                printf("Mova o disco do topo de a para c \n");
                break;
        }
    return;
}


/* ---------------------------------------------------------------------- */
/* Prints help information 
 *  usually called by opt -h or --help
 */
void help(void)
{
    IFDEBUG("help()");
    printf("%s - %s\n", "ex19_recur", "Torre de Hanoi pelo metodo da recursividade");
    printf("\nUsage: %s\n\n", "ex19_recur");
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
    printf("%s - Version %s\n", "ex19_recur", VERSION);
    printf("\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu.org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n", 2019, "Andre Hanauer Navarro", "andrehanauern@gmail.com");
    return;
}

/* ---------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : C config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc> Version 20160612.142044      */

