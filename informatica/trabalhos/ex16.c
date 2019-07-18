/* ************************************************************************ *
 *    PROGRAM_NAME, VERSION                                                 *
 *    Matriz 25 x 25,durante 100 rodadas, tendo em vista as seguintes regras*
 *    1- Celula com menos de dois vizinhos morre                            *   
 *    2- Celula com2 ou 3 vizinhos vivos vive                               *
 *    3- Celula com mais de 3 vizinhos morre                                *
 *    4- Celula morta com 3 vizinhos vivos vive                             *
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

char* faz(int linhas, int colunas);
double aleatorio(double min, double max);
void tela(int linhas, int colunas, char* simulacao);
void comeco(int linhas, int colunas);
int contvizinhos(int linhas, int colunas, int x, int y, char* simulacao);
char* andar(int linhas, int colunas, char* simulacaoprevia);

int main(void)
{
    int linhas = 25;
    int colunas = 25;
    linhas += 2;
    colunas += 2;
    comeco(linhas, colunas);
    return 0;

}

int contvizinhos(int linhas, int colunas, int x, int y, char* simulacao)
{
    int count = 0;
    int pivo = y*colunas*x;

    for(int j = -1; j <= 1; j++)
    {
        for(int j = -1; j <= 1; j++)
        {
            char c = *(simulacao + pivo + (1 * colunas)+ j);

            if(c == '#') count++;
        }
    }
    return count;
}

char* andar(int linhas, int colunas, char* simulacaoprevia)
{
    char* simulacaopassos = calloc(linhas * colunas, sizeof(int));

    if(simulacaopassos == NULL) 
        return NULL;

    for(int y = 1; y < linhas - 1; y++)
    {
        for(int x = 1; x < linhas - 1; x++)
        {
            int viva = contvizinhos(linhas, colunas, x, y, simulacaoprevia);

            char celula = * (simulacaoprevia + y * colunas + x);

            if(celula == '#') viva-- ;

            *(simulacaopassos+y*colunas+x) = celula;

            if(viva <2)
            {
                *(simulacaopassos+y*colunas+x) = '.';
            }

            else if((viva == 2 || viva == 3) && celula == '#')
            {
                *(simulacaopassos+y*colunas+x) = '#';
            }

            else if(viva > 3 && celula == '#')
            {
                *(simulacaopassos+y*colunas+x) = '.';
            }

            if(viva == 3 && celula == '.')
            {
                *(simulacaopassos+y*colunas+x) = '#';
            }
        }
    }
    return simulacaopassos;
}

void comeco(int linhas, int colunas)
{
    int a;
    puts ("Comeco");
    char* simulacao = (linhas, colunas);
    if(simulacao == NULL) return;
    display(linhas, colunas, simulacao);

    for(a = 0; a < 100; a++)
    {
        char* novasimulacao = (linhas,colunas,simulacao);
        
        if(novasimulacao == NULL) return;

        free (simulacao);
        simulacao = novasimulacao;
        display (linhas, colunas, simulacao);
        for(clock_t ms = 1000000+ clock(); ms > clock(););
    }
}

void display(int linhas, int colunas, char* simulacao)
{
    printf("\n\n\n\n\n\n");
    for(int y = 1; y < colunas-1; y++)
    {
        for(int x = 1; x < colunas-1; x++)
        {
            printf("%c ",*(simulacao + y * colunas +x));
        }
        printf("\n");
    }
}

double aleatorio(double min, double max)
{
    return ((double)rand()/RAND_MAX) * (max - min) + min;
}

char* faz(int linhas, int colunas)
{
    char* simulacao = (char*)calloc(linhas*colunas, sizeof(char));
    if(simulacao == NULL)
        return NULL;

    for(int y = 1; y < linhas -1; y++)
    {
        for(int x = 1; x < linhas -1; x++)
        {
            if(aleatorio(0.0,1.0) <= 0.35)
            {
                *(simulacao+y*colunas+x) ='#';
            }
            else
            {
                *(simulacao+y*colunas+x) ='.';
            }
        }
    }
    return simulacao;
}
