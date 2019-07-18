/***************************************************************************
 *   ex9.pl                                   Version 20190402.143041      *
 *                                                                         *
 *   Jogo de aventura texto em PROLOG                                      *
 *   Copyright (C) 2019         by Ruben Carlo Benante                     *
 *   Author 1: Andre Hanauer Navarro                                       *
 *   Author 2: Vinicius Antonio Correia Bezerra                            *
 *   Author 3: Josias Pitanga De Macedo Silva Amorim                       *
 ***************************************************************************
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License.        *
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
 ***************************************************************************/

/**
 * @file ex9.pl
 * @ingroup GroupUnique
 * @brief Jogo de aventura texto em PROLOG
 * @details A simple example of PROLOG source documented with doxygen.
 *
 * @version 20190402.143041
 * @date 2019-04-02
 * @author Ruben Carlo Benante <<rcb@beco.cc>>
 * @par Webpage
 * <<a href="http://www.beco.cc">www.beco.cc</a>>
 * @copyright (c) 2019 GNU GPL v2
 * @note This program is free software: you can redistribute it
 * and/or modify it under the terms of the
 * GNU General Public License as published by
 * the Free Software Foundation version 2 of the License.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program.
 * If not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place - Suite 330, Boston, MA. 02111-1307, USA.
 * Or read it online at <<http://www.gnu.org/licenses/>>.
 *
 * @todo Now that you have the template, hands on! Programme!
 * @warning Be carefull not to lose your mind in small things.
 * @bug This file right now does nothing usefull.
 *
 */

/* ---------------------------------------------------------------------- */
/* Files, dynamic clauses, modules, etc. */
/**
 * @ingroup GroupUnique
 * @brief Defining dynamic clauses
 * @param[in] A List of clauses
 * @retval TRUE on success.
 * @retval FALSE on fail.
 */
:- dynamic([verbosecounter/1]).

/* ---------------------------------------------------------------------- */
/* Facts and Rules */
/**
 * @ingroup GroupUnique
 * @brief main is det
 * @details Initializes memory and other tasks
 * @retval TRUE If it can prove main.
 * @retval FALSE If main can't be proven.
 */
main :-
    writeln('Initializing...'),
    start.

/* ---------------------------------------------------------------------- */
/**
 * @ingroup GroupUnique
 * @brief help is det
 * @details Shows a help message on how to use ex9
 * @return TRUE always.
 */
help :-
    writeln('ex9 - Jogo de aventura texto em PROLOG'),
    writeln('Usage:'),
    writeln('$swipl -s ex9'),
    /* Stand alone scripts, invert: comment above, uncomment bellow. */
    /* writeln('$./ex9'), */
    writeln('Clauses:'),
    writeln('  main.       Starts the main program.'),
    writeln('  copyright.  Shows version and copyright information.'),
    writeln('  version.    Returns version number.'),
    writeln('  help.       Shows this help message.'),
    writeln('  verbose.    Sets verbose level (cumulative).'),
    /* add more options here */
    writeln('  Exit status:'),
    writeln('    TRUE if ok'),
    writeln('    FALSE if some error occurred.'),
    writeln('  Todo:'),
    writeln('    Read options from OS'),
    writeln('  Author:'),
    writeln('    Written by Ruben Carlo Benante <rcb@beco.cc>').

/* ---------------------------------------------------------------------- */
/**
 * @ingroup GroupUnique
 * @brief copyright is det
 * @details Shows version and copyright information.
 * @return TRUE always.
 */
copyright :-
    writeln('ex9 - Version 20190402.143041'),
    writeln('Copyright (C) 2019 Ruben Carlo Benante <rcb@beco.cc>, GNU GPL version 2 <http://gnu.org/licenses/gpl.html>. This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.').

/* ---------------------------------------------------------------------- */
/**
 * @ingroup GroupUnique
 * @brief verbose is det
 * @details Increases verbose level by one.
 * @return TRUE always.
 */
verbose :-
    verbosecounter(X),
    retractall(verbosecounter(_)),
    Y is X + 1,
    assert(verbosecounter(Y)).

/* ---------------------------------------------------------------------- */
/**
 * @ingroup GroupUnique
 * @brief verbose0 is det
 * @details Sets verbose level to zero.
 * @return TRUE always.
 */
verbose0 :-
    retractall(verbosecounter(_)),
    assert(verbosecounter(0)).

/* ---------------------------------------------------------------------- */
/**
 * @ingroup GroupUnique
 * @brief version is a fact
 * @details It will return the version number of program ex9.
 * @param[out] A It's a string with the version number.
 * @return TRUE always.
 */
version('20190402.143041').


/* escreva seus predicados a partir daqui ...*/

/* ---------------------------------------------------------------------- */
% Dynamics
:- dynamic([local_atual/1, lista_de_itens/1, personagem/2, local/1]).


/* ---------------------------------------------------------------------- */

% Funcao start

start:-
    inicio_dynamics,
    !,
    inicializacao,
    !.
    entrada.


/* ---------------------------------------------------------------------- */

% Funcao iniciar

inicializacao :-
    write('     Senhor Stark?!'),nl,
    write('     Desculpe encomoda-lo. Sou eu Sexta-Feira!'),nl,
    write('     Resolvi chama-lo, porque Thanos atacara novamente e o planeta precisara de sua ajuda.'),nl,
    write('     Sei que o senhor nao esta em suas melhores condicoes fisicas, porem o senhor eh unica defesa que a possui Terra agora.'),nl,
    write('     Como sabe na ultima batalha sua armadura foi completamente destruida e para poder derrotar Thanos o senhor necessitara de um modelo novo.'),nl,
    write('     Por isso, iniciei o processo de fabricacao da Mark-99, seu projeto mais avançado.'),nl,
    write('     Contudo, patrao estou incapacitada no momento, pois meu sistema foi comprometido. Entao o senhor tera de busaca-la e monta-la. '),nl,
    write('     Para que possamos ter esperança novamente o senhor, patrao, tera que matar o Thanos e restrurar os poderes das Joias di Infinito'),nl,
    write('     O senhor eh o ultimo Vingador! Encontre a armadura e derrote o Thanos!'),nl,
    write(' '),nl,
    write(' '),nl,
    write(' '),nl,
    write(' '),nl,
    write(' '),nl,
    write('                                          FALHA CRITRICA NO SITEMA DE COMUNICAA@#$#5%)*&&&¨$%$#@¨%!!'),nl,
    write('                                                                          ERRO!'),nl,
    write(' '),nl,
    write('                                                    Nao foi possivel executar o sistema Fryday!'),nl,
    write(' '),nl,
    write(' '),nl,
    write(' '),nl,
    write(' '), nl,
    write('                                               Salve o planeta! Encontre sua armadura e DERROTE Thanos!'),nl,
    write(' '), nl,
    write(' '), nl,
    write(' '), nl,
    write(' '), nl,
    write(' '), nl,
    analise,
    !.



/* ---------------------------------------------------------------------- */

% Funcao gameloop

game_loop:-
    repeat,
    entrada(X),
    do(X),
    (thanosmorto; X == abandone).

/* ---------------------------------------------------------------------- */

%   retractall(coisa(_)).
%   retractall(pegue(_)).
%   retractall(conserte(_)).
%   retractall(liste(_)).
%   retractall(vista(_)).
%   retractall(lute(_)).
%   retractall(coma(_)).

/* ---------------------------------------------------------------------- */

% Possiveis acoes do jogador

do(mova(X)):- mova(X),!.
do(lute(X)):- lute(X),!.
%do(use(X)):- use(X),!.
%do(monte(X)):- monte(X),!.
do(pegue(X)):- pegue(X),!.
do(ajuda):- ajuda,!.
do(dica):- dica,!.
do(abandone):- abandone,!.
do(analise):- analise,!.
do(liste):- liste,!.
do(inventorio):- inventorio,!.
do(largue(X)):- largue(X),!.

/* ---------------------------------------------------------------------- */


% Codicoes para acabar o jogo

coisa(armadura).

abandone:-
    write('    Vai desistir agora?'),nl,
    write('    A Terra ainda precisa de um heroi...'),nl,
    halt.


condicao_especial(ir(espaco)):-
    write('    Parabens! Voce salvou a Terra de uma das maiores ameacas do universo.'),nl,
    write('    Voce venceu o jogo!'),nl,
    halt.
condicao_especial(_).

assertz(local(armadura, new_york)).
    
% Funcao ajuda

ajuda :-
    write('Seu objetivo eh matar Thanos e salvar a terra para isso '),nl,
    write('voce precisa da sua armadura em pleno funcionamento'),nl,
    write('Voce pode usar os comandos: '),nl,
    write('    ir(local).'),nl,
    write('    pegue(oque).'),nl,
    write('    liste.'),nl,
    write('    analise.'),nl,
    write('    lute(quem).'),nl,
    write('    inventorio.'),nl,
    write('    dica.'),nl,
    write('    abandone.'),nl,
    write(' '),nl,
    !.

dica :-
    write('Primeiramente eh necessario que voce encontre e vista a sua armadura'),nl,
    write('voce so tera capacidade de vencer Thanos com sua armadura'),nl,
    write('em pleno funcionamento.'),nl,
    write(''),nl,
    !.

/* ---------------------------------------------------------------------- */
% Definicao dos locais que o personagem pode estar

lugar(base).
lugar(nave).
lugar(espaco).
lugar(new_york).


/* ---------------------------------------------------------------------- */

% Os posssiveis caminhos entre os locais


caminho(base, nave).
caminho(nave, espaco).
caminho(nave, new_york).

conectar(X,Y):-
    caminho(X,Y).
conectar(X,Y):-
    caminho(Y,X).


/* ---------------------------------------------------------------------- */

% Fatos dinamicos

inicio_dynamics:-
    assertz(local_atual(base)),
    assertz(local(armadura, new_york)),
    assertz(personagem(espaco)).

% Fatos estaticos(coisas)


coisa(fontedeenergia).
coisa(vibranium).
coisa(espada).
coisa(armadura).

/* ---------------------------------------------------------------------- */

% Personagens


%personagem(homem_de_ferro).
%personagem(thanos).

/* ---------------------------------------------------------------------- */

% Funcoes de movimento


ir(Local):-
    podeir(Local),
    condicao_especial(ir(Local)),
    entre(Local),
    analise.
ir(_):-
    analise.
ir(espaco):-
    write(' Voce venceu! Parabens! Fim!'),
    halt.

% Passagem entre os locais, em que, o jogador pode ir

podeir(Local):-
    local_atual(Local2),
    conectar(Local2,Local),!.
podeir(Local):-
    write([' Voce nao pode ir para ', Local, ' por aqui']),nl,fail.


% Funcao entre


entre(Local):-
    retract(local_atual(_)),
    asserta(local_atual(Local)).

/* ---------------------------------------------------------------------- */

% Funcoes para listar os objetos, lugares para onde pode ir e onde o jogador esta:

analise:-
    local_atual( Local2),
    responda(['Voce esta na: ', Local2]),
    write('Voce pode pegar: '),nl,
    listar_coisas( Local2),
    write('Voce pode ir para: '),nl,
    listar_conexoes( Local2).


listar_coisas(Lugar):-
    local(X, Lugar),
    tab(2),write(X),nl,
    fail.
listar_coisas(_).


listar_conexoes(Lugar):-
    conectar(Lugar, X),
    tab(2),write(X),nl,
    fail.
listar_conexoes(_).


responda([]):-
    write('.'),nl,nl.
responda([Cabeca|Cauda]):-
    write(Cabeca),
    responda(Cauda).

/* ---------------------------------------------------------------------- */

% Acoes do jogador

pegue(Coisa):-
    existe(Coisa),
    leva(Coisa, ter),
    analise,
    responda([' Agora voce tem a ', Coisa]).

existe(Coisa):-
    local_atual(Lugar),
    contem(Coisa,Lugar),!.
existe(Coisa):-
    responda(['Nao existe ', Coisa,' aqui']),
    fail.

contem(Coisa,Lugar):-
    local(Coisa,Lugar).

contem(Coisa,Lugar):-
    local(Coisa,X),
    contem(X,Lugar).

leva(Coisa,ter):-
    retract(local(Coisa,_)),    
    asserta(ter(Coisa)).


/* ---------------------------------------------------------------------- */


% Funcao para os comandos

entrada(C):-
    readlist(Lista),
    comando(X, Lista, []),
    C =.. X,!.

entrada(_):-
    responda([' Nao entendi, tente novamente. Ou digite ajuda.']),fail.


readlist(Lista):-
    write('> '),
    read_word_list(Lista).

read_word_list([Palavra|Ps]) :-
    get0(C),
    readword(C, Palavra, C1),
    restsent(C1, Ps),!.

restsent(C,[]):- lastword(C),!.
restsent(C,[Palavra1|Ps]):-
    readword(C,Palavra1,C1),
    restsent(C1,Ps).

readword(C, Palavra, C1):-
    single_char(C),
    !,
    nome(Palavra, [C]),
    get0(C1).
readword(C, Palavra, C1):-
    num(C),
    !,
    number_word(C, Palavra, C1, _).
readword(C, Palavra, C2):-
    word(C, NovoC),
    get0(C1),
    restword(C1, Cs, C2),
    nome(Palavra, [NovoC|Cs]).
readword(C1, Palavra, C2):-
    get0(C1),
    readword(C1, Palavra, C2).

restword(C, [NovoC|Cs], C2):-
    word(C, NovoC),
    get0(C1),
    restword(C1, Cs, C2).
restword(C, [], C).


single_char(0',).
single_char(0';).
single_char(0':).
single_char(0'!).
single_char(0'?).
single_char(0'.).



in_word(C, C) :- C >= 0'a, C =< 0'z.
in_word(C, L) :- C >= 0'A, C =< 0'Z, L is C + 32.
in_word(0'',0'').
in_word(0'-,0'-).


number_word(C, Palavra, C1, Pow10):-
    num(C),
    !,
    get0(C2),
    number_word(C2, Palavra1, C1, P10),
    Pow10 is P10 * 10,
    Palavra is integer((( C - 0'0) * Pow10) + Palavra1).
number_word(C, 0, C, 0.1).

num(C):-
    C =< 0'9,
    C >= 0'0.

lastword(10).
lastword(0'.).
lastword(0'!).
lastword(0'?).


/* ---------------------------------------------------------------------- */

% Funcao de inventorio

inventorio:-
    write('Voce esta carregando:'),nl,
    lista_de_itens.

lista_de_itens:-
    ter(Coisa),
    tab(4),
    write(Coisa),nl,
    fail.

/* ---------------------------------------------------------------------- */

% Largue

largue(Coisa):-
    ter(Coisa),
    local_atual(Local),
    retract(ter(Coisa)),
    responda(['Voce largou a 'Coisa''),nl,
    asserta(local(Coisa,Local_atual)).

largue(Coisa):-
    responda(['Voce nao possui 'Coisa'!']),nl,
    !.




/* ----------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : PL config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc>       Version 20150620.224740 */
