astar([(_,_,State)|_], _, State) :-
	solucao(State), !.
astar([(G, _, State)|Other], ClosedList, Solution) :-
	NewDepth is G + 1,
	findall(X, altera_estado(_, State, X), Children), %expande os filhos.
	Children \== [],
	makeNodes(Children, NewDepth, Other, ClosedList, NewNodes),
	!, astar(NewNodes, [State|ClosedList], Solution).

solve_astar(State, Solution) :-
	makeNodes([State], 0, [], [], InitNode),
	astar(InitNode, [], Solution).