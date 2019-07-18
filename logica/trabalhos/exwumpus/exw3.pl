bloqueio([2,2]).
bloqueio([2,3]).
bloqueio([2,4]).
bloqueio([2,6]).
bloqueio([2,7]).
bloqueio([2,8]).
bloqueio([2,9]).
bloqueio([2,10]).
bloqueio([3,3]).
bloqueio([4,2]).
bloqueio([4,3]).
bloqueio([4,4]).
bloqueio([4,5]).
bloqueio([4,6]).
bloqueio([4,7]).
bloqueio([4,8]).
bloqueio([4,9]).
bloqueio([5,1]).
bloqueio([5,2]).
bloqueio([6,2]).
bloqueio([6,4]).
bloqueio([6,5]).
bloqueio([6,7]).
bloqueio([6,8]).
bloqueio([6,9]).
bloqueio([8,2]).
bloqueio([8,3]).
bloqueio([8,4]).
bloqueio([8,6]).
bloqueio([8,7]).
bloqueio([8,8]).
bloqueio([8,10]).
bloqueio([9,4]).
bloqueio([9,5]).
bloqueio([9,6]).
bloqueio([9,8]).
bloqueio([9,10]).
bloqueio([10,2]).
bloqueio([10,6]).

caminho(H1,H2):-
    possivel([H1]),
    possivel([H2]),
    not(bloqueio([H1])),
    not(bloqueio([H2])),
    adjacente([H1, H2]).

possivel([X, Y]):-
    menbro(X,[1,2,3,4,5,6,7,8,9,10]),
    menbro(Y,[1,2,3,4,5,6,7,8,9,10]).

adjacente([X1, Y], [X2, Y]) :-
    X1 is X2 + 1.

adjacente([X1, Y], [X2, Y]) :-
    X1 is X2 - 1.

adjacente([X, Y1], [X,Y2]) :-
    Y1 is Y2 + 1.

adjacente([X, Y1], [X,Y2]) :-
    Y1 is Y2 - 1.

start :-
    INICIO = ([1,10]),
    FINAL = ([10,5]),
    direcoes(INICIO, FINAL, D),
    format("~w", D).


direcoes(H1, H2, D):-
    adjacente([X,Y]),
    mova(H1,H2),
    D = H2.



direcoes(INICIO, FINAL, D):-
    adjacente([X,Y]),
    mova(INICIO, FINAL),
    D = [FINAL].

direcoes(H1, H2, D):-
    adjacente([X,Y]),
    mova(H1,H2),
    mova(H2,H3),
    D = H3.

