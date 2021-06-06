% ------------ variable settings ------------ 

:- set(clauselength, 6).
:- set(minpos, 5).
:- set(minacc, 0.9).
:- set(verbosity,1).
:- set(evalfn,laplace).
:- set(search,heuristic).

:- set(test_pos,'generalization_test.f').
:- set(test_neg,'generalization_test.n').

% evalfn: coverage, compression, posonly, pbayes, accuracy, laplace, auto_m, mestimate, entropy, gini, sd, wracc, or user
% search: bf, df, heuristic, ibs, ils, rls, scs id, ic, ar, or false

% ------------ helper clauses ------------ 

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


lt(X,Y):-
        number(X), number(Y),
        X < Y.
lt(X,X):-
        number(X).

gt(X,Y):-
        number(X), number(Y),
        X > Y.
gt(X,X):-
        number(X).
		

%  ------------ modes ------------ 

:- modeh(1,generalization(+att1,+att2,+att3,+att4,+att6,+att7,+att8,+att9,+att10,+att12,+att14,+att15,+att17,+att18,+att19,+att20)).

:- modeb(1,(+att1 = #att1)).
:- modeb(1,(+att2 = #att2)).
:- modeb(1,(+att3 = #att3)).
:- modeb(1,(+att4 = #att4)).
:- modeb(1,(+att5 = #att5)).
:- modeb(1,(+att6 = #att6)).
:- modeb(1,(+att7 = #att7)).
:- modeb(1,(+att8 = #att8)).
:- modeb(1,(+att9 = #att9)).
:- modeb(1,(+att10 = #att10)).
:- modeb(1,(+att12 = #att12)).
:- modeb(1,(+att14 = #att14)).
:- modeb(1,(+att15 = #att15)).
:- modeb(1,(+att17 = #att17)).
:- modeb(1,(+att18 = #att18)).
:- modeb(1,(+att19 = #att19)).
:- modeb(1,(+att20 = #att20)).

:- modeb(1,gteq(+att2,#att2)).
:- modeb(1,lteq(+att2,#att2)).
:- modeb(1,gt(+att2,#att2)).
:- modeb(1,lt(+att2,#att2)).
:- modeb(1,gteq(+att8,#att8)).
:- modeb(1,lteq(+att8,#att8)).
:- modeb(1,gt(+att8,#att8)).
:- modeb(1,lt(+att8,#att8)).
:- modeb(1,gteq(+att18,#att18)).
:- modeb(1,lteq(+att18,#att18)).
:- modeb(1,gt(+att18,#att18)).
:- modeb(1,lt(+att18,#att18)).


%  ------------ determinations ------------ 

:- determination(generalization/16,lt/2).
:- determination(generalization/16,gt/2).
:- determination(generalization/16,lteq/2).
:- determination(generalization/16,gteq/2).
:- determination(generalization/16,'='/2).
:- determination(generalization/16,not/2).


%  ------------ type definitions ------------ 

att1(a13). att1(a14). att1(a12). att1(a11).
att2(7). att2(36). att2(28). att2(27). att2(60). att2(42). att2(4). att2(45). att2(18). att2(54). att2(20). att2(15). att2(8). att2(10). att2(72). att2(26). att2(14). att2(21). att2(39). att2(24). att2(40). att2(11). att2(13). att2(12). att2(9). att2(48). att2(33). att2(30). att2(5). att2(22). att2(16). att2(6). 
att3(a33). att3(a34). att3(a30). att3(a32). att3(a31). 
att4(a40). att4(a49). att4(a48). att4(a46). att4(a45). att4(a42). att4(a410). att4(a43). att4(a41). att4(a44). 
att6(a65). att6(a62). att6(a61). att6(a64). att6(a63). 
att7(a72). att7(a74). att7(a73). att7(a75). att7(a71). 
att8(3). att8(1). att8(4). att8(2). 
att9(a92). att9(a91). att9(a94). att9(a93). 
att10(a102). att10(a101). att10(a103). 
att12(a123). att12(a121). att12(a124). att12(a122). 
att14(a142). att14(a141). att14(a143). 
att15(a153). att15(a151). att15(a152). 
att17(a171). att17(a173). att17(a174). att17(a172). 
att18(1). att18(2). 
att19(a192). att19(a191). 
att20(a202). att20(a201). 


