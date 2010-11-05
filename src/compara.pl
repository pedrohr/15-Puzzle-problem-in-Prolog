solucao([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0]).

inicializar :-
	consult('insertOpenList.pl'),
	consult('makeNodes.pl'),
	consult('heuristicas.pl'),
	consult('estados.pl'),
	consult('astar.pl'),
	consult('best.pl'),
	consult('breadth.pl'),
	consult('prof.pl'),
	consult('ida.pl'),
	consult('beam.pl'),
	consult('hillclimb.pl').

testaGraficos(Passos) :-
	inicializar,
	cria_jogo(Passos, Jogo), 
	write('Jogo a ser testado:\n'),
	write(Jogo),
	write('\n'),
	statistics,
	solve_ida(Jogo, Sol),
	statistics,
	write(Sol).

compara_ageis(Passos) :-
	inicializar,
	cria_jogo(Passos, Jogo),
	write('Jogo a ser testado:\n'),
	write(Jogo),
	write('\n'),
	write('A*\n'),
	solve_astar(Jogo, Sol6),
	write(Sol6), write('\n'),
	write('IDA*\n'),
	solve_ida(Jogo, Sol7),
	write(Sol7), write('\n'),
	write('Melhor 1o: \n'),
	solve_best(Jogo, Sol4),
	write(Sol4), write('\n').

compara_todos(Passos) :-
	inicializar,
	cria_jogo(Passos, Jogo),
	write('Jogo a ser testado:\n'),
	write(Jogo),
	write('\n'),
	write('A*\n'),
	solve_astar(Jogo, Sol6),
	write(Sol6), write('\n'),
	write('IDA*\n'),
	solve_ida(Jogo, Sol7),
	write(Sol7), write('\n'),
	write('Melhor 1o: \n'),
	solve_best(Jogo, Sol4),
	write(Sol4), write('\n'),
	write('Beam search N=3\n'),
	solve_beam(3, Jogo, Sol5),
	write(Sol5), write('\n'),
	write('Gradiente: \n'),
	solve_hill(Jogo, Sol3),
	write(Sol3), write('\n'),
	write('Largura: \n'),
	solve_breadth(Jogo, Sol2),
	write(Sol2), write('\n'),
	write('Profundidade: \n'),
	solve_prof(Jogo, Sol1),
	write(Sol1), write('\n').