%Yosef Schoen 506429330
%Saul Rothman 337923676

%1a
minMaxNoCut(X,Y,Z,Min,Mid,Max):- minNum(X,Y,Z,Min), midNum(X,Y,Z,Mid),
    maxNum(X,Y,Z,Max).

minNum(X,Y,Z,X):- X =< Y, X =< Z.
minNum(X,Y,Z,Y):- Y =< Z, Y =< X.
minNum(X,Y,Z,Z):- Z =< X, Z =< Y.

midNum(X,Y,Z,X):- X >= Y, X =< Z.
midNum(X,Y,Z,X):- X >= Z, X =< Y.
midNum(X,Y,Z,Y):- Y >= X, Y =< Z.
midNum(X,Y,Z,Y):- Y >= Z, Y =< X.
midNum(X,Y,Z,Z):- Z >= X, Z =< Y.
midNum(X,Y,Z,Z):- Z >= Y, Z =< X.

maxNum(X,Y,Z,Z):- Y =< Z, X =< Z.
maxNum(X,Y,Z,Y):- Z =< Y, X =< Y.
maxNum(X,Y,Z,X):- Z =< X, Y =< X.

%1b
minMaxGreenCut(X,Y,Z,Min,Mid,Max):- minNumG(X,Y,Z,Min), midNumG(X,Y,Z,Mid), maxNumG(X,Y,Z,Max).

minNumG(X,Y,Z,X):- X =< Y, X =< Z, !.
minNumG(X,Y,Z,Y):- Y =< Z, Y =< X, !.
minNumG(X,Y,Z,Z):- Z =< X, Z =< Y.

midNumG(X,Y,Z,X):- X >= Y, X =< Z, !.
midNumG(X,Y,Z,X):- X >= Z, X =< Y, !.
midNumG(X,Y,Z,Y):- Y >= X, Y =< Z, !.
midNumG(X,Y,Z,Y):- Y >= Z, Y =< X, !.
midNumG(X,Y,Z,Z):- Z >= X, Z =< Y, !.
midNumG(X,Y,Z,Z):- Z >= Y, Z =< X.

maxNumG(X,Y,Z,Z):- Y =< Z, X =< Z, !.
maxNumG(X,Y,Z,Y):- Z =< Y, X =< Y, !.
maxNumG(X,Y,Z,X):- Z =< X, Y =< X.

%1c red cuts
minMaxRedCut(X,Y,Z,Min,Mid,Max):- minNumR(X,Y,Z,Min), midNumR(X,Y,Z,Mid), maxNumR(X,Y,Z,Max).

minNumR(X,Y,Z,X):- X =< Y, X =< Z, !.
minNumR(X,Y,Z,Y):- Y =< Z, Y =< X, !.
minNumR(_,_,Z,Z).

midNumR(X,Y,Z,X):- X >= Y, X =< Z, !.
midNumR(X,Y,Z,X):- X >= Z, X =< Y, !.
midNumR(X,Y,Z,Y):- Y >= X, Y =< Z, !.
midNumR(X,Y,Z,Y):- Y >= Z, Y =< X, !.
midNumR(_,_,Z,Z).

maxNumR(X,Y,Z,X):- Z =< X, Y =< X, !.
maxNumR(X,Y,Z,Y):- Z =< Y, X =< Y, !.
maxNumR(_,_,Z,Z).

/*4.2
 *!1 is a needless cut
 *!2 is a harmful cut
 *!3 is a harmful cut
 *!4 is a needless cut
 *!5 is a harmful cut
 *!6 is a needless cut
 *!7 is a needless cut
 *!8 is a needless cut
*/

%4.3
%base cases, when one of the lists are empty
%we can then simply cut and end
intersection([],_,[]):- !.
intersection(_,[],[]):- !.
% if X is a member of Y, then put it at
% the head of the 3rd list
intersection([X|Tail], Y, [X|Z]):-
    (is_member(X, Y) -> intersection(Tail, Y, Z)), !.
% if intersection does not occur, then just recall it
intersection([_|Tail], Y, Z):- intersection(Tail, Y, Z).

% X is equal to the head or call is_member recursively on the rest of the list
is_member(X, [H|T]):- X == H, ! ; is_member(X,T).


%4.4
rgbsort(L,S):- rgbsorthelper(L,_,_,_,S).
rgbsorthelper([],0,0,0,[0,0,0]).
rgbsorthelper([X|L],R,G,B,[R,G,B]):- X == 'r', rgbsorthelper(L,R1,G,B,_), R is R1 + 1, !.
rgbsorthelper([X|L],R,G,B,[R,G,B]):- X == 'g', rgbsorthelper(L,R,G1,B,_), G is G1 + 1, !.
rgbsorthelper([X|L],R,G,B,[R,G,B]):- X == 'b', rgbsorthelper(L,R,G,B1,_), B is B1 + 1, !.
rgbsorthelper([_|L],R,G,B,_):- rgbsorthelper(L,R,G,B,_).


%4.5
% first check to see if list is empty
myflatten([],[]).
% now call flatten
myflatten(L1,L2):-
    helper(L1, [], R), myreverse(R, L2).

myreverse(R,L2) :- myreversehelp(R, [], L2).

%base case for reverse
myreversehelp([], L2, L2).
myreversehelp([X|T], Temp, L2) :- myreversehelp(T, [X|Temp], L2).

% base case, if the L1 is empty
helper([], R, R).
helper([X|T], Temp, R):-
    yeslist(X), % check if X is free or not
    helper(X, Temp, L), % if the X is a list need to flatten
    helper(T, L, R). % flatten the rest of the list

% if x is not a sublist,just insert it into the list
helper([X|T], Temp, R) :-
    helper(T, [X|Temp], R).

yeslist(X) :- var(X), fail, !.
yeslist([]). % empty list returns true
yeslist([_|_]). % non-empty list return true.








