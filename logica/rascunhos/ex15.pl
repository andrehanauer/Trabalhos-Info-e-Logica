/* ************************************************************************ *
*    COQUETEL                                                              *
*    LOGICA COQUETEL                                                       *
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
*    Webpage: http://www.github.com/andrehanauer                           *
*    Phone: +55 (81) 99177-4250                                            *
* ************************************************************************ *
* 
*/

escola(horacio).
escola(matoso).
escola(moraes).
escola(espadas).
escola(lobato).
professor(daniel).
professor(hortensia).
professor(laura).
professor(tiago).
professor(wilson).
aula(artes).
aula(ciencias).
aula(historia).
aula(ingles).
aula(matematica).
educacao(medio).
educacao(graduacao).
educacao(posgraduacao).
educacao(primaria).
educacao(vocacional).

start:-
    escola(Horacio),
    escola(Matoso),
    not(Horacio=Matoso),
    escola(Moraes),
    not(Horacio=Moraes),
    not(Matoso=Moraes),
    escola(Espadas),
    not(Horacio=Espadas),
    not(Matoso=Espadas),
    not(Moraes=Espadas),
    escola(Lobato),
    not(Horacio=Lobato),
    not(Matoso=Lobato),
    not(Moraes=Lobato),
    not(Espadas=Lobato),
    professor(HoPr),
    professor(MaPr),
    not(HoPr=MaPr),
    professor(MoPr),
    not(HoPr=MoPr),
    not(MaPr=MoPr),
    professor(EsPr),
    not(HoPr=EsPr),
    not(MaPr=EsPr),
    not(MoPr=EsPr),
    professor(LoPr),
    not(HoPr=LoPr),
    not(MaPr=LoPr),
    not(MoPr=LoPr),
    not(EsPr=LoPr),
    aula(HoAu),
    aula(MaAu),
    not(HoAu=MaAu),
    aula(MoAu),
    not(HoAu=MoAu),
    not(MaAu=MoAu),
    aula(EsAu),
    not(HoAu=EsAu),
    not(MaAu=EsAu),
    not(MoAu=EsAu),
    aula(LoAu),
    not(HoAu=LoAu),
    not(MaAu=LoAu),
    not(MoAu=LoAu),
    not(EsAu=LoAu),
    educacao(HoEd),
    educacao(MaEd),
    not(HoEd=MaEd),
    educacao(MoEd),
    not(HoEd=MoEd),
    not(MaEd=MoEd),
    educacao(EsEd),
    not(HoEd=EsEd),
    not(MaEd=EsEd),
    not(MoEd=EsEd),
    educacao(LoEd),
    not(HoEd=LoEd),
    not(MaEd=LoEd),
    not(MoEd=LoEd),
    not(EsEd=LoEd),
    tab(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd),
    writeln('\nresultado'),
    writef('%w %w %w %w\n', [Horacio,HoPr,HoAu,HoEd]),
    writef('%w %w %w %w\n', [Matoso,MaPr,MaAu,MaEd]),
    writef('%w %w %w %w\n', [Moraes,MoPr,MoAu,MoEd]),
    writef('%w %w %w %w\n', [Espadas,EsPr,EsAu,EsEd]),
    writef('%w %w %w %w\n', [Lobato,LoPr,LoAu,LoEd]).

tab(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd):-
    regra1(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd),
    regra2(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd),
    regra3(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd),
    regra4(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd),
    regra5(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd),
    regra6(Horacio,HoPr,HoAu,HoEd,Matoso,MaPr,MaAu,MaEd,Moraes,MoPr,MoAu,MoEd,Espadas,EsPr,EsAu,EsEd,Lobato,LoPr,LoAu,LoEd).


%regra1: Wilson era professor de ciencias
regra1(_, wilson, ciencias, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra1(_, _, _, _, _, wilson, ciencias, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra1(_, _, _, _, _, _, _, _, _, wilson, ciencias, _, _, _, _, _, _, _, _, _).
regra1(_, _, _, _, _, _, _, _, _, _, _, _, _, wilson, ciencias, _, _, _, _, _).
regra1(_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, wilson, ciencias, _).


%regra2: As cinco escolas sao: Lobato, a de educacao primaria, a escola onde luana conheceu sua amiga na aula de ingles e as instituicoes aonde Laura e Tiago davam aula

regra2(_, _, _, primaria, _, _, ingles, _, _, laura, _, _, _, tiago, _, _, lobato, _, _, _).


%REGRA3: A amiga que luana conheceu na aula de ingles nao foi a da pos graduacao nem a que conheceu no ensino medio Nem a escola Moraes nem a Espadas eram a instituicao onde Luana conheceu a amiga da aula de ingles

regra3(_, _, ingles, _, _, _, _, posgraduacao, _, _, _, _, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, posgraduacao, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, _, _, _, posgraduacao, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, _, _, _, _, _, , _, posgraduacao). 
regra3(_, _, ingles, _, _, _, _, medio, _, _, _, _, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, medio, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, _, _, _, medio, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, medio). 
regra3(_, _, ingles, _, moraes, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, moraes, _, _, _, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, moraes, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, _, _, _, _, moraes, _, _, _). 
regra3(_, _, ingles, _, espadas, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, espadas, _, _, _, _, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra3(_, _, ingles, _, _, _, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _). 

%REGRA4: Hortensia que nao dava aula na escola horacio nao foi a professora da escola primaria de luana A amiga que luana conheceu na escola primaria nao foi a que conheceu na aula de ingles

regra4(_, hortensia, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(_, hortensia, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _).
regra4(_, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, primaria).
regra4(_, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, primaria).
regra4(_, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, _, _, _, _, hortensia, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, hortensia, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, primaria).
regra4(_, _, _, _, _, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, primaria).
regra4(_, _, _, _, _, _, _, _, _, _, _, primaria, _, hortensia, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, _, _, _, hortensia, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, _, _, _, _, _, _, _, hortensia, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _, _, hortensia, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _, _, hortensia, _, _).

regra4(horacio, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(horacio, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, _).
regra4(horacio, _, _, _, _, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, _).
regra4(horacio, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, hortensia, _, _).

regra4(_, _, _, primaria, _, _, artes, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, artes, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, _, _, _, _, artes, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, _, _, _, _, _, _, _, _, artes, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, artes, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, _, _, _, _, artes, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _, _, _, artes, _).
regra4(_, _, artes, _, _, _, _, primaria, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, _, primaria, _, _, artes, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _, _, _, artes, _).
regra4(_, _, artes, _, _, _, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, artes, _, _, _, _, primaria, _, _, _, _, _, _, _, _).
regra4(_, _, artes, _, _, _, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, _, _, _, _, _, artes, _, _, _, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, artes, _, _, _, _, primaria, _, _, _, _).

regra4(_, _, _, primaria, _, _, ciencias, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, ciencias, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, _, _, _, _, ciencias, _, _, _, _, _).
regra4(_, _, _, primaria, _, _, _, _, _, _, _, _, _, _, _, _, _, _, ciencias, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, ciencias, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, _, _, _, _, ciencias, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _, _, _, ciencias, _).
regra4(_, _, ciencias, _, _, _, _, primaria, _, _, _, _, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, _, primaria, _, _, ciencias, _, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _, _, _, ciencias, _).
regra4(_, _, ciencias, _, _, _, _, _, _, _, _, primaria, _, _, _, _, _, _, _, _).
regra4(_, _, _, _, _, _, ciencias, _, _, _, _, primaria, _, _, _, _, _, _, _, _).
regra4(_, _, ciencias, _, _, _, _, _, _, _, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, _, _, _, _, _, ciencias, _, _, _, _, _, _, _, _, primaria, _, _, _, _).
regra4(_, _, _, _, _, _, _, _, _, _, ciencias, _, _, _, _, primaria, _, _, _, _).


%REGRA5: Nem Laura nem Tiago davam aula na escola espadas A escola de graduacao que  nao foi o lugar onde laura dava aula era a escola Moraes ou Espadas A escola Lobato nao era de ensino medio


regra5(_, laura, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, laura, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, _, _, laura, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, laura, _, _, _). 
regra5(_, tiago, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, tiago, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, tiago, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, tiago, _, _, _).
regra5(_, laura, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, laura, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, _, _, laura, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, laura, _, _, _). 
regra5(_, tiago, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, tiago, _, _, _, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, tiago, _, _, _, _, espadas, _, _, _, _, _, _, _). 
regra5(_, _, _, _, _, _, _, _, _, _, _, _, espadas, _, _, _, tiago, _, _, _).


%REGRA6: A aula de historia de Luana que nao fez graduacao nao foi dada por Daniel Nem Daniel nem Hortensia davam aula na graduacao de Luana

regra6(_, _, historia, _, _, daniel, _, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, historia, _, _, _, _, _, _, daniel, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, historia, _, _, _, _, _, _, _, _, _, _, daniel, _, _, _, _, _, _).
regra6(_, _, historia, _, _, _, _, _, _, _, _, _, _, _, _, _, _, daniel, _, _).
regra6(_, _, _, _, _, _, historia, _, _, _, _, _, _, _, _, _, _, daniel, _, _).
regra6(_, _, _, _, _, _, historia, _, _, _, _, _, _, daniel, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, historia, _, _, daniel, _, _, _, _, _, _, _, _, _, _).
regra6(_, daniel, _, _, _, _, historia, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra6(_, daniel, _, _, _, _, _, _, _, _, historia, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, _, _, daniel, _, _, _, _, historia, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, _, historia, _, _, daniel, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, _, historia, _, _, _, _, _, _, daniel, _, _).
regra6(_, _, _, _, _, _, _, _, _, _, _, _, _, _, historia, _, _, daniel, _, _).
regra6(_, daniel, _, _, _, _, _, _, _, _, _, _, _, _, historia, _, _, _, _, _).
regra6(_, _, _, _, _, daniel, _, _, _, _, _, _, _, _, historia, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, daniel, _, _, _, _, historia, _, _, _, _, _).
regra6(_, daniel, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, historia, _).
regra6(_, _, _, _, _, daniel, _, _, _, _, _, _, _, _, _, _, _, _, historia, _).
regra6(_, _, _, _, _, _, _, _, _, daniel, _, _, _, _, _, _, _, _, historia, _).
regra6(_, _, _, _, _, _, _, _, _, _, _, _, _, daniel, _, _, _, _, historia, _).

regra6(_, hortensia, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _, _, _, _, _).
regra6(_, hortensia, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _).
regra6(_, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _).
regra6(_, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _).
regra6(_, _, _, _, _, hortensia, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, hortensia, _, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, graduacao, _, hortensia, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, graduacao, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, _, _, _, _, _, _, graduacao, _, hortensia, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, graduacao, _, _, _, _, _, hortensia, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, _, _, _, _, _, _, _, _, hortensia, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, _, _, _, _, _, _, _, _, _, _, _, _, hortensia, _, _).
regra6(_, _, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _, _, hortensia, _, _).
regra6(_, _, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _, _, hortensia, _, _).

regra6(_, daniel, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _, _, _, _, _).
regra6(_, daniel, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _).
regra6(_, daniel, _, _, _, _, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _).
regra6(_, daniel, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, daniel, _, _, _, _, _, _, _, _, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, daniel, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _).
regra6(_, _, _, _, _, daniel, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, daniel, _, _, _, _, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, _, _, _, _, daniel, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, graduacao, _, daniel, _, _, _, _, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, daniel, _, _, _, _, _, graduacao, _, _, _, _).
regra6(_, _, _, _, _, _, _, _, _, daniel, _, _, _, _, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, _, _, _, _, _, _, _, _, daniel, _, _, _, _, _, graduacao).
regra6(_, _, _, _, _, _, _, _, _, _, _, graduacao, _, daniel, _, _, _, _, _, _).
regra6(_, _, _, _, _, _, _, graduacao, _, _, _, _, _, daniel, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, _, _, _, _, _, _, _, _, daniel, _, _, _, _, _, _).
regra6(_, _, _, graduacao, _, _, _, _, _, _, _, _, _, _, _, _, _, daniel, _, _).
regra6(_, _, _, _, _, _, _, graduacao, _, _, _, _, _, _, _, _, _, daniel, _, _).
regra6(_, _, _, _, _, _, _, _, _, _, _, graduacao, _, _, _, _, _, daniel, _, _).

