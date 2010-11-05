altera_estado(c,
	      [A,B,C,D,
	       0,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [0,B,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).
altera_estado(c,
	      [B,A,C,D,
	       E,0,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,0,C,D,
	       E,A,F,G,
	       H,I,J,K,
	       L,M,N,O]).
altera_estado(c,
	      [B,C,A,D,
	       E,F,0,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,0,D,
	       E,F,A,G,
	       H,I,J,K,
	       L,M,N,O]).
altera_estado(c,
	      [B,C,D,A,
	       E,F,G,0,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,D,0,
	       E,F,G,A,
	       H,I,J,K,
	       L,M,N,O]).

altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       0,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       0,F,G,H,
	       E,I,J,K,
	       L,M,N,O]).
altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,0,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       E,0,G,H,
	       I,F,J,K,
	       L,M,N,O]).
altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,0,K,
	       L,M,N,O],
	      [A,B,C,D,
	       E,F,0,H,
	       I,J,G,K,
	       L,M,N,O]).
altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,0,
	       L,M,N,O],
	      [A,B,C,D,
	       E,F,G,0,
	       I,J,K,H,
	       L,M,N,O]).



altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       0,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       0,J,K,L,
	       I,M,N,O]).
altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,0,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,0,K,L,
	       M,J,N,O]).
altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,0,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,0,L,
	       M,N,K,O]).
altera_estado(c,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,O,0],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,0,
	       M,N,O,L]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altera_estado(b,
	      [0,B,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       0,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).

altera_estado(b,
	      [B,0,C,D,
	       E,A,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,A,C,D,
	       E,0,F,G,
	       H,I,J,K,
	       L,M,N,O]).

altera_estado(b,
	      [B,C,0,D,
	       E,F,A,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,A,D,
	       E,F,0,G,
	       H,I,J,K,
	       L,M,N,O]).

altera_estado(b,
	      [B,C,D,0,
	       E,F,G,A,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,D,A,
	       E,F,G,0,
	       H,I,J,K,
	       L,M,N,O]).




altera_estado(b,
	      [A,B,C,D,
	       0,F,G,H,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       0,I,J,K,
	       L,M,N,O]).

altera_estado(b,
	      [A,B,C,D,
	       E,0,G,H,
	       I,F,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,0,J,K,
	       L,M,N,O]).
altera_estado(b,
	      [A,B,C,D,
	       E,F,0,H,
	       I,J,G,K,
	       L,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,0,K,
	       L,M,N,O]).
altera_estado(b,
	      [A,B,C,D,
	       E,F,G,0,
	       I,J,K,H,
	       L,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,0,
	       L,M,N,O]).




altera_estado(b,
	      [A,B,C,D,
	       E,F,G,H,
	       0,J,K,L,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       0,M,N,O]).

altera_estado(b,
	      [A,B,C,D,
	       E,F,G,H,
	       I,0,K,L,
	       M,J,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,0,N,O]).
	     

altera_estado(b,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,0,L,
	       M,N,K,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,0,O]).

altera_estado(b,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,0,
	       M,N,O,L],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,O,0]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altera_estado(d,
	      [0,B,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,0,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).
altera_estado(d,
	      [B,0,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,0,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).
altera_estado(d,
	      [B,C,0,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,D,0,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).



altera_estado(d,
	      [A,B,C,D,
	       0,F,G,H,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       F,0,G,H,
	       E,I,J,K,
	       L,M,N,O]).
altera_estado(d,
	      [A,B,C,D,
	       F,0,G,H,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       F,G,0,H,
	       E,I,J,K,
	       L,M,N,O]).
altera_estado(d,
	      [A,B,C,D,
	       F,G,0,H,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       F,G,H,0,
	       E,I,J,K,
	       L,M,N,O]).

altera_estado(d,
	      [A,B,C,D,
	       E,F,G,H,
	       0,J,K,L,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       J,0,K,L,
	       I,M,N,O]).
altera_estado(d,
	      [A,B,C,D,
	       E,F,G,H,
	       J,0,K,L,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       J,K,0,L,
	       I,M,N,O]).
altera_estado(d,
	      [A,B,C,D,
	       E,F,G,H,
	       J,K,0,L,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       J,K,L,0,
	       I,M,N,O]).

altera_estado(d,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       0,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,0,N,O]).
altera_estado(d,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,0,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,0,O]).
altera_estado(d,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,0,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,O,0]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


altera_estado(e,
	      [B,0,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [0,B,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).

altera_estado(e,
	      [B,C,0,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,0,C,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).


altera_estado(e,
	      [B,C,D,0,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O],
	      [B,C,0,D,
	       A,E,F,G,
	       H,I,J,K,
	       L,M,N,O]).




altera_estado(e,
	      [A,B,C,D,
	       F,0,G,H,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       0,F,G,H,
	       E,I,J,K,
	       L,M,N,O]).

altera_estado(e,
	      [A,B,C,D,
	       F,G,0,H,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       F,0,G,H,
	       E,I,J,K,
	       L,M,N,O]).

altera_estado(e,
	      [A,B,C,D,
	       F,G,H,0,
	       E,I,J,K,
	       L,M,N,O],
	      [A,B,C,D,
	       F,G,0,H,
	       E,I,J,K,
	       L,M,N,O]).


altera_estado(e,
	      [A,B,C,D,
	       E,F,G,H,
	       J,0,K,L,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       0,J,K,L,
	       I,M,N,O]).



altera_estado(e,
	      [A,B,C,D,
	       E,F,G,H,
	       J,K,0,L,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       J,0,K,L,
	       I,M,N,O]).

altera_estado(e,
	      [A,B,C,D,
	       E,F,G,H,
	       J,K,L,0,
	       I,M,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       J,K,0,L,
	       I,M,N,O]).


altera_estado(e,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,0,N,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       0,M,N,O]).

altera_estado(e,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,0,O],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,0,N,O]).

altera_estado(e,
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,O,0],
	      [A,B,C,D,
	       E,F,G,H,
	       I,J,K,L,
	       M,N,0,O]).

%%%GERA UM JOGO DE TESTE%%%%%
%gera_teste(+Passos, +Jogo1, -Jogo2)
jogovalido([S|_], ClosedList, S) :-
	\+ member(S, ClosedList).
jogovalido([_|T], ClosedList, R) :-
	jogovalido(T, ClosedList, R).

gera_teste(0, _, Jogo, Jogo).
gera_teste(N, ClosedList, Jogo1, Jogo3) :-
	N > 0,
	N1 is N - 1,
	findall(X, altera_estado(_, Jogo1, X), Jogos),
	jogovalido(Jogos, ClosedList, JogoN),
	gera_teste(N1, [JogoN|ClosedList], JogoN, Jogo3).


cria_jogo(0, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0]) :- !.
cria_jogo(N, X) :-
	gera_teste(N, [[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0]], [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0], X).