%Yosef Schoen 506429330
%Saul Rothman 337923676

% number 1
my_reverse([],[]).
my_reverse([H|L], Z) :-
my_reverse(L, L1), append(L1, [H], Z).

% number 2
%myprefix:(S, L):
my_prefix([],L) :- is_list(L). % check to make sure the second parameter is a list
my_prefix([H|T1], [H|T2]) :- my_prefix(T1,T2).

% number 3
my_member(X, [X|_]). %base case, if X is the head of the List
    my_member(X, [_| T]) :-  my_member(X, T).  %recursive call, chop downthe list as we recursively call

% number 4
my_member2(X, [X, X|T], Z). %base case, if two consecutive elements are X then it's true.
my_member2(X, [H|T], Z) :- X =\= H,
    my_member2(X, T, Z). %gets rid of the head
my_member2(X, [Y, W|T], Z) :- X =\= W,
    my_member2(X, [Y|T], Z). %gets rid of the element Y (one after the head if not equal to X

% number 5
% base case to test for palindrome, empty list
my_palindrome([]).
my_palindrome([_]).  %list of size 1 is also a base case
my_palindrome(L) :- append([X|T], [X], L),
    my_palindrome(T). %append works as follows, append to L if the first and last elements are correct.

%number 6
%my sorted
my_sorted([]).  %base case, if the list is empty
my_sorted([_]).  %base case if the list has only 1 term
my_sorted([X, Y|T]) :- X =< Y,
    my_sorted([Y|T]). %recursive call, if x is less than or equal to y, recursvely call.


%number 7
%my insert
my_insert(X, [], [X]).  %base case, if list is empty, return the [X].
my_insert(X, [Y|T], [X,Y|T]) :- X =< Y,
    my_insert(X, [], R). %recursive call to return to the base case if this is true.
my_insert(X, [Y|T], [Y|Z]) :- my_insert(X, T, Z).


