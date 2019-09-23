Welcome to SWI-Prolog (threaded, 64 bits, version 8.0.2)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit http://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

%Yosef Schoen and Saul Rothman
?- [homework1assignment1].
true.

?- % who learns history?
|    .

ERROR: Stream user_input:11:6 Syntax error: Unexpected end of clause
?- %who learns history?.
|    student(X, history).
X = nili ;
X = ran.

?- %what does nili learn?.
|    student(nili, X).
X = history ;
X = prolog.

?- %At which lecture do nili and dani meet?
|    student(nili, X), student(dani, X).
X = prolog ;
false.

?- %Does someone learn mathematics?
|    student(X, mathematics).
X = ran ;
X = dani.

?- %Does iosi learn something?
|    student(iosi,X).
false.

?- %Who learns prolog and mathematics?
|    student(X, prolog), student(X, mathematics).
X = dani ;
X = ran ;
false.

?-
