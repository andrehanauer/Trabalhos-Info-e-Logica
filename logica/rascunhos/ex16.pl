
% Fato

fatos(ListadePocoes):-
    permutation([ida, volta, urtiga, urtiga, veneno, veneno, veneno], ListadePocoes).

% Regra01: Por mais dissimulado que esteja o veneno, voce sempre encontrara um a esquerda do vinho de urtigas 

regra1([veneno, urtiga|Rest]):-
    regra1(Rest).
regra1([Pocao|Rest]):-
    Pocao \= urtiga,
    regra01(Rest).
regra1([]).

% Regra02: Sao diferentes as garrafas de cada lado, alias, se voce quiser avancar nenhuma eh sua amiga

regra2([Primeira|Rest]):-
    append(_, [Ultima], Rest),
    Primeira \= Ultima,
    Primeira \= ida,
    Ultima \= ida.

% Regra03: Eh visivel que temos tamanhos diferentes, nem a ana nem a gigante levam a morte

maior(5).
menor(2).
regra3(List):-
    maior(MaiorNum),
    menor(MenorNum),
    nth0(MaiorNum, List, MaiorPocao),
    nth0(MenorNum, List, MenorPocao),
    MaiorPocao \= veneno,
    MenorPocao \= veneno.

% Regra04: A segunda a esquerda e a segunda a direita sao gemeas as paladar embora diferentes a visao

regra4(List):-
    nth1(2, List, SegundaPocao),
    nth1(6, List, SextaPocao),
    SegundaPocao = SextaPocao.

% start

solucao(Pocoes):-
    fatos(Pocoes),
    regra1(Pocoes),
    regra2(Pocoes),
    regra3(Pocoes),
    regra4(Pocoes).

