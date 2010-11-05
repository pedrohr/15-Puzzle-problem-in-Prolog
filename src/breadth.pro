makeNodesB([State], _, OpenList, ClosedList, OpenList) :-
	member(State, ClosedList).
makeNodesB([State], G, OpenList, _, NewOpenList) :-
	!, insertOpenList((G, 0, State), OpenList, NewOpenList).
makeNodesB([State|Others], G, OpenList, ClosedList, NewOpenList) :-
	member(State, ClosedList),
	!, makeNodesB(Others, G, OpenList, ClosedList, NewOpenList).
makeNodesB([State|Others], G, OpenList, ClosedList, NewOpenList) :-
	insertOpenList((G, 0, State), OpenList, OpenListAux),
	!, makeNodesB(Others, G, OpenListAux, ClosedList, NewOpenList).



breadth([(_,_,State)|_], _, State) :-
	solucao(State), !.
breadth([(G, _, State)|Other], ClosedList, Solution) :-
	NewDepth is G + 1,
	findall(X, altera_estado(_, State, X), Children), %expande os filhos.
	Children \== [],
	makeNodesB(Children, NewDepth, Other, ClosedList, NewNodes),
	!, breadth(NewNodes, [State|ClosedList], Solution).

solve_breadth(State, Solution) :-
	makeNodesB([State], 0, [], [], InitNode),
	breadth(InitNode, [], Solution).