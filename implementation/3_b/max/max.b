% Simple illustration of the learning of recursive predicates
%       in Aleph
% To run do the following:
%       a. Load Aleph
%       b. read_all(mem).
%       c. induce.
%:- modeh(,mem(+any,+list)).
%:- modeh(,max([+any2|[]], +any)).
% :- modeb(,mem(+any,+list)).
% :- modeb(1,((+list) = ([-any|-list]))).

:- modeh(,max(+list,+any)).
:- modeb(,max(+list,+any)).

:- modeb(1,((+list) = ([-any]))).
:- modeb(1,((+list) = ([+any]))).
:- modeb(1,((+list) = ([-any_2|-list]))).
%:- modeb(1,((+any) > (-any))).
:- mode(1, ((+any_2) > (+any))).
:- mode(1, ((+any_2) < (+any))).


%:- mode(,max(+list, -any)).
%:- mode(,max([+any2|[]], +any)). %important?
%:- mode(,max([+number], -any)). %important?
%:- mode(,((+list) = ([-any|-list]))).
%:- mode(,((+list) = ([-any|[]]))).
%:- mode(,((+any) = ([-any|-list]))).
%:- mode(,((+any) = ([-any]))).
%:- mode(,((+result) = ([-any|-result]))).
%:- mode(,((+result) = ([-result|-any]))).
%:- mode(*,((+any) >= (-any))).
%:- mode(1,(+integer)>(#integer)).
%:- mode(1,(+integer)<(#integer)).
:- modeb(1,!).

:- set(i,3).
:- set(noise,0).

:- determination(max/2,max/2).
:- determination(max/2,'is'/2).
:- determination(max/2,'!'/0).
:- determination(max/2,'>'/2).
:- determination(max/2,'<'/2).
:- determination(max/2,'='/2).