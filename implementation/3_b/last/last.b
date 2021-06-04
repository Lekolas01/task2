% Simple illustration of the learning of recursive predicates
%       in Aleph
% To run do the following:
%       a. Load Aleph
%       b. read_all(last).
%       c. induce.

:- modeh(*,last(+any,+list)).
:- modeb(*,last(+any,+list)).
:- modeb(1,((+list) = ([-any]))).
:- modeb(1,((+list) = ([-any_2|-list]))). 

:- set(i,3).
:- set(noise,0).


:- determination(last/2,last/2).
:- determination(last/2,'='/2).

