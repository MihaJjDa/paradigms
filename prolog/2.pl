#!/usr/bin/swipl -q -s

:- initialization main.

eq([X|Xs], [X|Ys]):- eq(Xs, Ys).
eq([], []).

ispali(L):- reverse(L, M), L = M, write("KEKE\n"), write(L), nl, !.
ispali(_):- write("NEKEKE\n"), nl.

read2([X|L]):- get0(X), (X = 10, !, ispali([X|L]), read1(_), !; X \= -1, !, read1(L)).

read1([X|L]) :- get0(X), X \= 1, !, read1(L).
read1([]).

main:- prompt(_, ''), !, repeat, (read1(L), !; true, !), write(L), halt.
