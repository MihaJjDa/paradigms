#!/usr/bin/swipl -q -s

:- initialization main.

read1:- get0(X), (X = 10, write("OK\n"); X \= -1), !, read1.

main:- prompt(_, ''), read1, halt.
