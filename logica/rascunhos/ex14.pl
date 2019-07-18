/* ************************************************************************ *
*    Quebra-cabeca                                                         *
*    Resolucao do quebra-cabeca da revista COQUETEL                        *
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

nome(nivea).
nome(cecilia).
nome(bernadete).
infusao(1).
infusao(2).
infusao(3).
cha(camomila).
cha(frutasvermelhas).
cha(preto).

start:-
    nome(Nivea),
    nome(Bernadete),
    not(Nivea=Bernadete),
    nome(Cecilia),
    not(Nivea=Cecilia),
    not(Bernadete=Cecilia),
    infusao(NiIn),
    infusao(BeIN),
    not(NiIn=BeIN),
    infusao(CeIn),
    not(NiIn=CeIn),
    not(BeIn=CeIn),
    cha(NiCha),
    cha(BeCha),
    not(NiCha=BeCha),
    cha(CeCha),
    not(NiCha=CeCha),
    not(BeCha=CeCha),
    tab(Nivea,NiCha,NiIn,Bernadete,BeCha,BeIn,Cecilia,CeCha,CeIn),
    writeln('\nresultado'),
    writef('%w %w %w \n', [Nivea,NiCha,NiIn]),
    writef('%w %w %w \n', [Cecilia,CeCha,CeIn]),
    writef('%w %w %w \n', [Bernadete,BeCha,BeIn]).



tab(Nivea,NiCha,NiIn,Bernadete,BeCha,BeIn,Cecilia,CeCha,CeIn):-
    regra1(Nivea,NiCha,NiIn,Bernadete,BeCha,BeIn,Cecilia,CeCha,CeIn),
    regra2(Nivea,NiCha,NiIn,Bernadete,BeCha,BeIn,Cecilia,CeCha,CeIn),
    regra3(Nivea,NiCha,NiIn,Bernadete,BeCha,BeIn,Cecilia,CeCha,CeIn),
    regra4(Nivea,NiCha,NiIn,Bernadete,BeCha,BeIn,Cecilia,CeCha,CeIn).

regra1(nivea, _, I1, _, _, I2, _, camomila, I3):-
    I1 < I2,
    I1 < I3.

regra2(_, _, _, bernadete, preto, _, _, _, _).

regra3(_, frutasvermelhas, _, _, _, 2, _, _, _).
regra3(_, frutasvermelhas, _, _, _, _, _, _, 2).
regra3(_, _, 2, _, frutasvermelhas, _, _, _, _).
regra3(_, _, _, _, frutasvermelhas, _, _, _, 2).
regra3(_, _, 2, _, _, _, _, frutasvermelhas, _).
regra3(_, _, _, _, _, 2, _, frutasvermelhas, _).


regra4(_, _, _, _, _, _, cecilia, _, 2).

