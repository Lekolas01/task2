:- modeh(1,generalization(+let,+let,+int)).

%zahl(0).
zahl(1).
zahl(2).
zahl(3).
zahl(4).
zahl(5).
zahl(6).

let(x).
let(o).
let(b).

%Att1(A11).

%Att2(36).

lteq(X,Y):-
        number(X), number(Y),
        X =< Y.
lteq(X,X):-
        number(X).

gteq(X,Y):-
        number(X), number(Y),
        X >= Y.
gteq(X,X):-
        number(X).



:- modeb(1,lteq(+int,+int)).
:- modeb(1,lteq(+int,#zahl)).

:- modeb(1,gteq(+int,+int)).
:- modeb(1,gteq(+int,#zahl)).


:- modeb(1,(+int = +int)).
:- modeb(1,(+int = #zahl)).
:- modeb(1,(+let = +let)).
:- modeb(1,(+let = #let)).




%:- modeb(1,(-int = #zahl)).

%:- modeb(1,(+int = #zahl)).
%:- modeb(1,(+int < #int)).
%:- modeb(1,(+int > #int)).
%:- modeb(1,(+int < #zahl)).
%:- modeb(1,(+int > #zahl)).
%:- modeb(1,adj(+int,+int)).
%:- modeb(1,(+a1 = #let)).
%:- modeb(1,(+a1 is +let)).
%:- modeb(1,adj_(+let,#let)).


:- set(i,2).
:- set(noise,0).
:- set(clauses,1).


:- determination(generalization/3,lteq/2).
:- determination(generalization/3,gteq/2).
:- determination(generalization/3,'='/2).
:- determination(generalization/3,'<'/2).
:- determination(generalization/3,'>'/2).
:- determination(generalization/3,is/2).
%:- determination(generalization/3,adj/2).
%:- determination(generalization/3,lt/2).
%:- determination(generalization/3,adj_/2).
%:- determination(generalization/3,lt_/2).
