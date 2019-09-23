?- minMidMaxNoCut(1, 3, 2, Min, Mid, Max).
ERROR: Undefined procedure: minMidMaxNoCut/6 (DWIM could not correct goal)
?- minMaxNoCut(1, 3, 2, Min, Mid, Max).
Min = 1,
Mid = 2,
Max = 3 .

?- minMaxGreenCut(3, 5, 1, Min, Mid, Max).
Min = 1,
Mid = 3,
Max = 5.

?- minMaxRedCut(2, 7, 9, Min, Mid, Max).
Min = 2,
Mid = 7,
Max = 9.

?- intersection([1, 2, 3], [3, 4, 5], L).
L = [3].

?- intersection([], [3, 4, 5], L).
L = [].

?- intersection([1, 2, 7], [3, 4, 5], L).
L = [].

?- rgbsort([r], S).
S = [1, 0, 0].

?- rgbsort([r, r, g, r, b], S).
S = [3, 1, 1].

?- rgbsort([r, r, g, r, b, p], S).
false.

?- rgbsort([r, r, g, r, b, p], S).
S = [3, 1, 1].

?- myflatten([1,2,[3,4,5],[6,[7]]], X).
X = [1, 2, 3, 4, 5, 6, 7]
Unknown action:  (h for help)
Action?
Unknown action:  (h for help)
Action? ;
X = [1, 2, 3, 4, 5, 6, [7]] .





