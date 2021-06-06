:- modeh(*,my_sort(+list,+return_list)).
:- modeh(*,my_sort(+list,+list)).

%http://colin.barker.pagesperso-orange.fr/tpro1/sorts.htm

my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]):-
    my_append(Xs, Ys, Zs).

:- set(minpos, 3).
:- set(i, 3).

:- modeb(*,my_append(+list, [+any,+any|+list], +list)).
:- modeb(*,my_append(+list, +list, +list)).


:- modeb(*,((+list) = ([-any, -any|-list]))).

:- modeb(1,((+any) < (+any))).
%:- modeb(1,((+any) < ([+any]))).
%:- modeb(1,((+list) = ([-any]))).
%:- modeb(1,((+list) = ([-any_2|-list]))).
:- modeb(1,((+list) = ([-any|-list]))).
:- modeb(1,my_sort(+list, +list)).
:- modeb(1,my_sort(+list, -return_list)).
:- modeb(1,!).


:- determination(my_sort/2,my_append/3).
:- determination(my_sort/2,my_sort/2).
:- determination(my_sort/2,'='/2).
:- determination(my_sort/2,'!'/0).
:- determination(my_sort/2,'<'/2).
