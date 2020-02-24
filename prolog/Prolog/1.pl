#!/usr/bin/swipl

:- initialization args.

print_args([]) :- nl.
print_args([L | Tail]) :- write(L), write(' '), print_args(Tail).

args :- current_prolog_flag(argv, Argv), print_args(Argv), halt.
