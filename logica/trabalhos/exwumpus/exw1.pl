/* ************************************************************************ *
*    Apontar e fogo                                                        *
*    Dada a coordenada do wumpos e a sua coordenada faz a flecha matar     *
*    o wumpos se o mesmo estiver na mesma coluna ou fileira do wumpos      *
*    e o jogador de frente para ele                                        *
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

apontarfogo([WxWy],[AxAy],A0 , Acao)

trunright

trunleft

goforward

shoot

:- dynamic ([lugar/1, vendo/1, wumpos/1,]).

iniciojogador :-
    retract(flecha(_)),
    assert(flecha(1)),
    retract(lugar(_)),
    assert(casa([])).

%--------------------------------------------------------------

getat(X, P):-
    at(X, P),
    !.

%outdoors
%map from [X,Y]=[0,0] to [X,Y]=[5,5]

at ([X,Y], bloqueio):-
    (X > 4, Y > 0);
    (X < 0, Y > 0);
    (X > 0, Y > 4);
    (X > 0, Y < 0).  

blocked(P0, P1) :-
    bloqueio(P0, P1).

accessible(P0, P1):-
    not(blocked(P0, P1)), !.

at([1,1], voce).
at([3,2], wumpos).


%------------------------------------------------------------

adjacentes([C,B,E,D]) :-
    cima(P, C),
    baixo(P, B),
    direita(P, D),
    esquerda(P, E),.

cima([X,Y], [X, Yfin]):-
    Yfin is Y + 1.

baixo([X,Y], [X,Yfin]):-
    Yfin is Y - 1.

direita([X,Y], [Xfin, Y]):-
    Xfin is X + 1.

esquerda([X,Y], [Xfin, Y]):-
    Xfin is X - 1.



