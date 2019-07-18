/* ************************************************************************ *
*    Combinacao de cofre                                                   *
*    Determina a senha do cofre                                            *
*                                                                          *
*    Copyright (C) 2019 by Andre Hanauer Navarro                           *
*
*
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


%CONDICOES
%O primeiro numero eh maior que o terceiro.
%O primeiro numero eh menor que o segundo.
%O quarto numero eh igual a soma do terceiro com o segundo.
%O primeiro numero eh impar.
%O primeiro numero eh igual ao terceiro +1.
%O segundo numero eh o numero 7.
%Todos os numeros sao diferentes.

numero(0).
numero(1).
numero(2).
numero(3).
numero(4).
numero(5).
numero(6).
numero(7).
numero(8).
numero(9).

cofre(X):-
    gerar(X),
    test(X),
    !.

gerar(X):- 
    numero(Y1),
    numero(Y2),
    numero(Y3),
    numero(Y4),
    X=[Y1,Y2,Y3,Y4]. 

test(X):-
    regra1(X),
    regra2(X),
    regra3(X),
    regra4(X),
    regra5(X),
    regra6(X),
    regra7(X).

regra1([Y1,_,Y3,_]):-
    Y1 > Y3.

regra2([Y1,Y2,_,_]):-
    Y1 < Y2.

regra3([_,Y2,Y3,Y4]):-
    Y4 is Y3 + Y2.

regra4([Y1,_,_,_]):-
    1 is Y1 mod 2.

regra5([Y1,_,Y3,_]):-
    Y1 is Y3 + 1.

regra6([_,Y2,_,_]):-
    Y2 is 7.

regra7([Y1,Y2,Y3,Y4]):-
    Y1 \== Y2, Y1 \== Y3, Y1 \== Y4,
    Y2 \== Y3, Y2 \== Y4, Y3 \== Y4.
