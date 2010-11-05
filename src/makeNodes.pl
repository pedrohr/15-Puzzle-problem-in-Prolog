makeNodes([State], _, OpenList, ClosedList, OpenList) :-
	member(State, ClosedList).
makeNodes([State], G, OpenList, _, NewOpenList) :-
	heur_manhatan(State, H),
	!, insertOpenList((G, H, State), OpenList, NewOpenList).
makeNodes([State|Others], G, OpenList, ClosedList, NewOpenList) :-
	member(State, ClosedList),
	!, makeNodes(Others, G, OpenList, ClosedList, NewOpenList).
makeNodes([State|Others], G, OpenList, ClosedList, NewOpenList) :-
	heur_manhatan(State, H),
	insertOpenList((G, H, State), OpenList, OpenListAux),
	!, makeNodes(Others, G, OpenListAux, ClosedList, NewOpenList).
