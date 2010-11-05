best([(_,_,State)|_], _, State) :-
	solucao(State), !.
best([(_, _, State)|Other], ClosedList, Solution) :-
	findall(X, altera_estado(_, State, X), Children), %expande os filhos.
	Children \== [],
	makeNodes(Children, 0, Other, ClosedList, NewNodes),
	!, best(NewNodes, [State|ClosedList], Solution).

solve_best(State, Solution) :-
	makeNodes([State], 0, [], [], InitNode),
	best(InitNode, [], Solution).
