%Yosef Schoen 506429330
%Saul Rothman 337923676

%WEEK 3, number 1,a.

sum(N,R) :- scum(N, 1, R).
scum(1, R, R). %base case for when N is 1, just add it to R
scum(N, T, R) :- N > 1, T1 is N + T, N1 is N - 1, scum(N1, T1, R).

%1B
sumDigits(N,N) :- N < 10.
sumDigits(N, S) :- N1 is N mod 10,  N2 is N // 10, sumDigits(N2, S1), S is N1 + S1.

%2.a
% base case for if the number is 0.
num_to(0, [0]).
% if the number is negative, we need to make it positive
num_to(N, ['-'|R]) :-
    N < 0, N1 is N * -1, num_to(N1, R).  % now call the absolute value
% normal case for positive numbers, since N > 0, call the helper
num_to(N, R) :-
    N > 0, num_to_helper(N, [], R).

% base case of helper is that we have gotten to 0
num_to_helper(0, R, R).
num_to_helper(N, T, R) :- T1 is N mod 10, N1 is N // 10,
    % call the next value and append the digit to the front of the list
    num_to_helper(N1, [T1|T], R).


%2b.
% I is a counter, Temp is the temporary number

merge_rev(Digits, Result) :-  merge_rev(0, Digits, 0, Result).
merge_rev(I, [X|Xs], Temp, Result) :-
    Temp1 is Temp + (10**I * X), I1 is I + 1,
    merge_rev(I1, Xs, Temp1, Result).
%base case, if the list is emptyy then have what was Temp1 become result.
merge_rev(_, [], Result, Result).

%2c
answer(Digits, Result) :- num_to(Digits, R), merge_rev(R, Result).


%3a
% base case
intersection([], _, []).
% % if X is a member of L2, put it into Z
intersection([X|T], L2, [X|Z]) :-
             is_member(X, L2), intersection(T, L2, Z).
% if X is not a member of L2, then keep goin.
intersection([_|T], L2, Z) :- intersection(T, L2, Z).

% base case, if X is at head then return true, if not then search through the Tail
is_member(X, [X|_]).
is_member(X, [_|Tail]) :- is_member(X, Tail).

%3b
% base case
minus([], _, []).
% % if X is a member of L2, put it into Z
minus([X|T], L2, [X|Z]) :-
             not(is_member(X, L2)), minus(T, L2, Z).
% if X is not a member of L2, then keep goin.
minus([_|T], L2, Z) :- minus(T, L2, Z).

% base case, if X is at head then return true, if not then search through the Tail
is_member(X, [X|_]).
is_member(X, [_|Tail]) :- is_member(X, Tail).



