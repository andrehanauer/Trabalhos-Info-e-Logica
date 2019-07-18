/* ************************************************************************ *
 *    Explicacao de operadores                                              *
 *    Mostra a explicacao com um printf de alguns operadores                 *
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
 */ 
 



#include<stdio.h>
#include<math.h>
#include<stdlib.h>

int main(void)
{
    int n;

    printf("Este progama lhe mostra a explicacao de alguns operadores\n");

    printf("escolha o operador que deseja ter uma explicacao sobre:\n \t 1. () \n \t 2. [] \n \t 3. . \n \t 4. -> \n \t 5. ++ ou -- \n \t 6. +- \n \t 7. ! ou ~ \n \t 8. (int), \n \t 9. * \n \t 10. & (operador endereco) \n \t 11. sizeof \n \t 12. * / % \n \t 13. +- \n \t 14. << ou >> \n \t 15. <, <=, >, >= \n \t 16. ==, != \n \t 17. & (bit-a-bit) AND \n \t 18. ^ (bit-a-bit) ou exclusivo \n \t 19. | (bit-a-bit) OR \n \t 20. && op. logico AND \n \t 21. || op. logico OR \n \t 22. ?: op. condicional ternario \n \t 23. = op. de atribuicao \n \t 24. +=, -=  op. de atribuicao \n \t 25. *=, /= op. de atribuicao \n \t 26. %=, &= op. de atribuicao \n \t 27. ^=, |= op. de atribuicao \n \t 28. <<=, >>= op. de atribuicao \n \t");
    scanf("%i",&n);

    switch(n)
    {
        case 1:
            printf("(): parenteses (chamada de função)  \n ");
            break;
        
        case 2:
            printf("[] : Elemento de arranjo \n ");
            break;
     
        case 3:
            printf(". : Seleção de elemento por identificador \n");
            break;
       
        case 4:
            printf("-> : Seleção de elemento por ponteiro \n");
            break;
            
        case 5:
            printf("++ ou -- : Incremento (Ex: 1++ é igual a 1+1. OBS: x++ pega o valor de x depois incrementa. OBS: ++x Incrementa o valor de X) e decremento \n");
            break;
       
        case 6:
            printf("+- : Adição e subtração unária \n");
            break;
       
        case 7:
            printf("! ou ~ : Não lógico e complemento; negacao \n");
            break;
       
        case 8:
            printf("(int) : Conversão de tipo de dado  \n");
            break;
       
        case 9:
            printf("* : referencia \n");
            break;
       
        case 10:
            printf("& : Referência (endereço de elemento)  \n");
            break;
       
        case 11:
            printf("sizeof : tamanho de elemento \n");
            break;
       
        case 12:
            printf("* / % : multiplicacao e  mod, ou seja, retorna o resto de uma divisão. (Ex: 4 % 2 == 0).\n");
            break;

        case 13:
            printf("+- :  \n");
            break;
       
        case 14:
            printf("<< ou >> : Deslocamento de bits à esquerda e à direita \n");
            break;
       
        case 15:
            printf("<, <=, >, >= : “menor que” e “menor ou igual que”  “maior que” e “maior ou igual que”\n");
            break;
       
        case 16:
            printf("==, != : “Igual a” e “diferente de ” \n");
            break;
       
        case 17:
            printf("& (bit-a-bit) : E para bits \n");
            break;
       
        case 18:
            printf("^ (bit-a-bit ou excl) : Ou exclusivo para bits  \n");
            break;
       
        case 19:
            printf("| (bit-a-bit) OR : Ou para bits  \n");
            break;
       
        case 20:
            printf("&& op. logico AND : Operador E ou AND  \n");
            break;
       
        case 21:
            printf("|| op. logico OR : Operador OU ou OR \n");
            break;
       
        case 22:
            printf("?: op. condicional ternario : Condição ternária \n");
            break;
       
        case 23:
            printf("= op. de atribuicao : Atribuição \n");
            break;
       
        case 24:
            printf("+=, -= op. de atribuicao : Atribuição por adição ou subtração  \n");
            break;
       
        case 25:
            printf("*=, /= op. de atribuicao : Atribuição por multiplicação, divisão \n");
            break;
       
        case 26:
            printf("%=, &= op. de atribuicao : módulo (resto) \n");
            break;
       
        case 27:
            printf("^=, |= op. de atribuicao : Atribuição por operações lógicas \n");
            break;
       
        case 28:
            printf("<<=, >>= op. de atribuicao : Atribuição por deslocalmento de bits \n");
            break;

        default:
            printf("Opcao inexistente \n");
            return EXIT_SUCCESS;
       
    }

    return EXIT_SUCCESS;
}

