partition(_, [], [], []).
partition(C, [(G,H,S)|Other], [(G,H,S)|T1], T2) :-
	G + H =< C,
	!, partition(C, Other, T1, T2).
partition(C, [(G,H,S)|Other], [], [(G,H,S)|Other]) :-
	G + H > C.

merge([], L, L).
merge(L, [], L).
merge([(G, H, S)|T1], [(G1, H1, S1)|T2], [(G, H, S)|T3]) :-
	G + H =< G1 + H1,
	!, merge(T1, [(G1, H1, S1)|T2], T3).
merge([(G, H, S)|T1], [(G1, H1, S1)|T2], [(G1, H1, S1)|T3]) :-
	G + H > G1 + H1,
	!, merge([(G, H, S)|T1], T2, T3).

min(C, [], C).
min(C, [(G,H,_)|_], C) :-
	C =< G + H, !.
min(C, [(G,H,_)|_], F) :-
	!, F is G + H,
	C > F.

ida([], InitNodes, _, C2, _, Solution) :-
	C2 \== 9999, %yey
	!, ida(InitNodes, InitNodes, C2, 9999, [], Solution).
ida([(_,_,State)|Others], _, _, _, ClosedList, State) :-
	solucao(State), 
	length(Others, X),
	length(ClosedList, Y), !.
ida([(G,_,State)|Others], InitNodes, C1, C2, ClosedList, Solution) :-
	GN is G + 1,
	findall(X, altera_estado(_, State, X), Children), %expande os filhos.
	!, makeNodes(Children, GN, [], ClosedList, Nodes),
	!, partition(C1, Nodes, Lesser, Greater),
	!, merge(Lesser, Others, NewNodes),
	!, min(C2, Greater, CN),
	!, ida(NewNodes, InitNodes, C1, CN, [State|ClosedList], Solution).
	
solve_ida(State, Solution) :-
	!, makeNodes([State], 0, [], [], [(G, H, State)]),
	!, ida([(G, H, State)], [(G,H,State)], H, 9999, [], Solution).
	
