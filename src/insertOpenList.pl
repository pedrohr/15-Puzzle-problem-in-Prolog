insertOpenList((G, H, State), [], [(G, H, State)]).
insertOpenList((G, H, State), [(G1, H1, State)|List], [(G, H, State)|List]) :-
	G + H =< G1 + H1, !.
insertOpenList((G, H, State), [(G1, H1, State)|List], [(G1, H1, State)|List]) :-
	!, G + H > G1 + H1.
insertOpenList((G, H, State), [(G1, H1, State1)|List], [(G, H, State)|[(G1, H1, State1)|List]]) :-
	G + H =< G1 + H1, !.
insertOpenList((G, H, State), [(G1, H1, State1)|List], [(G1, H1, State1)|NewList]) :-
	G + H > G1 + H1,
	!, insertOpenList((G, H, State), List, NewList).