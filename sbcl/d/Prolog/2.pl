#!/usr/bin/swipl

:- initialization main.

merge([], RES) :- reverse(RES, RES), write('YES'); write('NO').
merge([L | Tail], RES) :- atom_chars(L, X), append(RES, X, T), merge(Tail, T).

main :- current_prolog_flag(argv, Argv), merge(Argv, []), nl, halt. 
