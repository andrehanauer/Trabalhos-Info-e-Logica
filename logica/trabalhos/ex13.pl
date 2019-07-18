/* ************************************************************************ *
*    Torre de Hanoi                                                        *
*    Resolve a torre de hanoi por recursividade com diferentes             * 
*    numeros de discos                                                     *
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

main(N) :-
    format('Solucao para ~w disco(s)~n', [N]),
    hanoi(N, a, b, c).

hanoi(1, O, D, _):-
    format('Mova o disco ~w para ~w~n', [O, D]).

hanoi(N, O, D, A):-
    M is N - 1,
    hanoi(M, O, A, D),
    format('Mova o disco ~w para ~w~n', [O, D]),
    hanoi(M, A, D, O).
