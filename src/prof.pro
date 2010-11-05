expande(N, Filhos) :-
	findall(X, altera_estado(_, N, X), Filhos).

elimina([], _, []).
elimina([H|T1], List, [H|T2]) :-
	\+(member(H, List)),
	elimina(T1, List, T2).
elimina([H|T1], List, T2) :-
	member(H, List),
	elimina(T1, List, T2).

insere(X,[],[X]) :- !.
insere(X,[H1|T1],[X,H1|T1]).

resolvePP([N|_], _, [N]) :- solucao(N), !.

resolvePP([N|Nos], ClosedList, Solucao) :-
	insere(N, ClosedList, NewClosedList),
	expande(N, Filhos),
	Filhos \== [],
	elimina(Filhos, NewClosedList, NovosFilhos),
	append(NovosFilhos, Nos, NovosNos),
	resolvePP(NovosNos, NewClosedList, Solucao), !.

resolvePP([_|Nos], ClosedList, Solucao) :-
	resolvePP(Nos, ClosedList, Solucao).

solve_prof(X, Y) :- resolvePP([X], [], Y).