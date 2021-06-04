member(A,[A|_]).
member(A,[_|Tail]) :- member(A, Tail).

last(A,[A]).
last(A,[_|Tail]) :- last(A,Tail).

len(0,[]).
len(N, [_|Tail]) :- len(N1, Tail), N is N1 + 1.


list_max([P|T], O) :- list_max(T, P, O).
list_max([], P, P).
list_max([H|T], P, O) :-
	(H > P
		-> 	list_max(T, H, O)
		;	list_max(T, P, O)
	).

len(List, N) :- len(List, 0, N).
len(


% member(A,B) :- B=[A|C].
% member(A,B) :- B=[C|D], member(A,D).
% last(A,B) :- B=[A].
% last(A,B) :- B=[C|D], last(A,D).

%len(A,B) :- A=0, B=[].
