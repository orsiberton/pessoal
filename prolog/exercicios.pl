superset(_, []).
superset(L, [H|T]) :-
    member(H, L),
    !,
    superset(L, T).

verif([1]) :- !.
verif([H, H2|T]) :-
    0 is H mod 2, H2 is H/2, verif([H2|T]).
verif([H, H2|T]) :-
    1 is H mod 2, H2 is ((H*3) + 1), verif([H2|T]).

somaimpar(X, S) :- somaux(1, X, S).

% somaux(A, B, S) soma em S todos os impares entre A e B, inclusive; o
% predicado só funciona se A eh um numero impar.

somaux(A, B, 0) :- A > B.
somaux(A, B, S) :- 
    A =< B, 
    A2 is A + 2, 
    somaux(A2, B, S1), 
    S is S1 + A.

pot(_, 0, c(1,0)).
pot(c(A, B), N, P) :-
    N > 0,
    N1 is N - 1,
    pot(c(A, B), N1, P1),
    mult(c(A, B), P1, P).

mult(c(A, B), c(C, D), c(R, I)) :- R is A*C - B*D, I is A*D + B*C.

conta(_, [], 0).
conta(A, [A|T], N) :-
    conta(A, T, N1),
    N is N1 + 1.
conta(A, [H|T], N) :-
    A \= H,
    conta(A, T, N).

%intercala([3,4,8], [1,2,7,9], Z).

intercala([], [], [_]).
intercala([], L, C) :-
    append([], L, C).
intercala(L, [], C) :-
    append([], L, C).
intercala([H1|T1], [H2|T2], C) :-
	is_ordem([H1|T1]),
    is_ordem([H2|T2]),
    H1 =< H2,
    intercala(T1, [H2|T2], C1),
    append([H1], C1, C).
intercala([H1|T1], [H2|T2], C) :-
	is_ordem([H1|T1]),
    is_ordem([H2|T2]),
    H1 > H2,
    intercala([H1|T1], T2, C1),
    append([H2], C1, C).

is_ordem([]).
is_ordem([_]).
is_ordem([H1, H2|T]) :-
    H1 =< H2,
    is_ordem([H2|T]).

%compostos(15,L).

compostos(A,S) :-
    A < 4,
    S = [].
compostos(A,S) :-
    A >= 4,
    \+ is_prime(A),
    A1 is A - 1,
    compostos(A1, S1),
    append(S1, [A], S).
compostos(A,S) :-
    A >= 4,
    is_prime(A),
    A1 is A - 1,
    compostos(A1, S).

is_prime(2).
is_prime(3).
is_prime(P) :- integer(P), P > 3, P mod 2 =\= 0, \+ has_factor(P,3).

has_factor(N,L) :- N mod L =:= 0.
has_factor(N,L) :- L * L < N, L2 is L + 2, has_factor(N,L2).

