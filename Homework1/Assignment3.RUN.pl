?- [homework1assignment3].
true.

?- left(X, fish).
X = butterfly ;
X = clock ;
X = pencil ;
false.

?- right(X, pencil).
X = clock ;
X = butterfly ;
X = fish ;
false.

?- above(X, butterfly).
X = camera.

?- below(X, camera).
X = butterfly.
