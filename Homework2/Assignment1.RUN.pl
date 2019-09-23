Welcome to SWI-Prolog (threaded, 64 bits, version 8.0.2)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit http://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- [homework2/homework2assignment1].
Warning: c:/users/josep/documents/prolog/homework2/homework2assignment1.pl:19:
        Singleton variables: [T,Z]
Warning: c:/users/josep/documents/prolog/homework2/homework2assignment1.pl:43:
        Singleton variables: [R]
true.

?- my_reverse(X, [1,2,3,4,5]).
X = [5, 4, 3, 2, 1] .


?- my_prefix([1,2], [1,2,3]).
true.

?- my_prefix([132], [1,2,3]).
false.

?-

?- my_member(2, [3,4,2,6]).
true .

?- my_member(7, [3,4,2,6]).
false.

?- my_member2(2, [3,4,2,6,2]).
Correct to: "my_member(2,[3,4,2,6,2])"?
Please answer 'y' or 'n'? yes
true .

?- my_member2(2, [3,4,2,6,2],2).
true .

?- my_palindrome([1,2,3,2,1]).
true .

?- my_palindrome([1,2,3,2,4]).
false.

?- my_sorted([1,2,3]).
true .

?- my_sorted([1,2,1]).
false.

?- my_insert(3, [1,2,4,5]).
ERROR: Undefined procedure: my_insert/2
ERROR:     However, there are definitions for:
ERROR:         my_insert/3
false.

?- my_insert(3, [1,2,4,5], X).
X = [1, 2, 3, 4, 5] .
