:- modeh(*,sort(+list,+list)).
%http://colin.barker.pagesperso-orange.fr/tpro1/sorts.htm

append([], Ys, Ys).
append([X|Xs], Ys, [X|Zs]):-append(Xs, Ys, Zs).

%:- set(minpos, 5).

:- modeb(*,append(+any, [+any,+any|+list], +any)).

%:- modeb(1,((+list) = ([-any]))).
:- modeb(1,((+list) = ([-any_2|-list]))).
:- modeb(1,!).
:- modeb(1,sort(+list, +list)).


:- determination(sort/2,append/3).
:- determination(sort/2,sort/2).
%:- determination(sort/2,'='/2).
:- determination(sort/2,'!'/2).
:- determination(sort/2,'<'/2).
