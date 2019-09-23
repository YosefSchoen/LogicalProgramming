%Yosef Schoen 506429330
%Saul Rothman 337923676

%objects
object(bicycle).
object(camera).
object(pencil).
object(clock).
object(butterfly).
object(fish).

%left_of, left_of(x,y) meanns x is left of y
left_of(butterfly, fish).
left_of(clock, butterfly).
left_of(pencil, clock).

left(X,Y) :- left_of(X,Y).
left(X,Y) :- left_of(X,Z),
    left(Z, Y).

%above(x,y) means that x is above y
above(bicycle, pencil).
above(camera, butterfly).

%below(x,y)- x is below y
below(X,Y) :- above(Y,X).

%right_of(x,y) if x is to the right of y
right(X,Y) :- left(Y,X).
