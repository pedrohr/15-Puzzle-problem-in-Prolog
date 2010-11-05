solve_hill(State, Solution) :-
	makeNodes([State], 0, [], [], InitNode),
	beamsearch(1, InitNode, [], Solution).