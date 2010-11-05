filter(_, [], []) :- !.
filter(0, _, []).
filter(N, [H|T], [H|TR]) :-
	N > 0,
	N1 is N - 1,
	filter(N1, T, TR).

beamsearch(_, [(_,_,State)|_], _, State) :-
	solucao(State), !.
beamsearch(N, [(_, _, State)|Other], ClosedList, Solution) :-
	findall(X, altera_estado(_, State, X), Children), %expande os filhos.
	Children \== [],
	makeNodes(Children, 0, Other, ClosedList, Nodes),
	filter(N, Nodes, FilteredNodes),
	merge(Other, FilteredNodes, NewNodes),
	!, beamsearch(N, NewNodes, [State|ClosedList], Solution).

%hillclimb N = 1, breadth N = 4, else beamsearch%
solve_beam(N, State, Solution) :-
	makeNodes([State], 0, [], [], InitNode),
	beamsearch(N, InitNode, [], Solution).