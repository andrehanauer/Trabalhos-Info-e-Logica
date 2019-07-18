% Autor: Andre Hanauer Navarro
% Data: 28/02/2019
% Descricao: Arvore genealogica, trabalho de logica



%Aqui sera definido o sexo

homem(andre).
homem(sergio).
homem(daniel).
homem(davi).
homem(rafael).
homem(alfredo).
homem(jose).
homem(maxell).
homem(antonio).
mulher(julia).
mulher(terezamae).
mulher(terezapai).
mulher(bernadete).
mulher(eliana).
mulher(fabiula).
mulher(ana).

%Aqui sera definido o progenitor de cada um

genitor(sergio,andre).
genitor(sergio,daniel).
genitor(sergio,davi).
genitor(sergio,rafael).
genitor(jose,julia).
genitor(alfredo,sergio).
genitor(alfredo,maxell).
genitor(alfredo,eliana).
genitor(jose,bernadete).
genitor(maxell,ana).
genitora(terezapai,sergio).
genitora(terezapai,maxell).
genitora(terezapai,eliana).
genitora(terezamae,julia).
genitora(terezame,bernadete).
genitora(julia,andre).
genitora(julia,rafael).
genitora(bernadete,fabiula).

%Aqui será definido o grau de parentesco entre os familiares

irma(X,Y) :-
    
    genitor(A,X),
    genitora(B,X),
    genitor(A,Y),
    genitora(B,Y),
    mulher(X),
    X \== Y.

irmao(X,Y) :-
    
    homem(X),
    genitor(A,X),
    genitora(B,X),
    genitor(A,Y),
    genitora(B,Y),
    X \== Y.

pai(X,Y) :-
    homem(X),
    genitor(X,Y),
    X \== Y.

mae(X,Y) :-
    mulher(X),
    genitora(X,Y),
    X \== Y.

avo(X,Y) :-
    homem(X),
    genitor(B,Y),
    genitor(X,B),
    X \== Y.

maeavo(X,Y) :-
    genitora(B,Y),
    genitora(X,B),
    X \== Y.

tio(X,Y) :-
    homem(X),
    genitor(B,Y),
    irmao(B,X),
    X \== Y.

tia(X,Y) :-
    mulher(X),
    genitor(B,Y),
    irma(B,X),
    X \== Y.

meioirmao(X,Y) :-
    homem(X),
    genitor(P,X),
    genitor(P,Y),
    genitora(A,X),
    genitora(C,Y),
    X \== Y.


primo(X,Y) :-
    homem(Y),
    genitor(P,Y),
    irmao(K,P),
    genitor(K,X),
    X \== Y.

prima(X,Y) :- 
    mulher(X),
    genitor(P,Y),
    irmao(K,P),
    genitor(K,X),
    X \== Y.
    
