:- use_module(library(clpBNR)).

triangle_cond(triangle(A, B, C), seg(A, B), seg(B, C), seg(C, A)).

triangle_cond(equilateral_triangle(A, B, C), Seg1, Seg2, Seg3) :-
    triangle_cond(triangle(A, B, C), Seg1, Seg2, Seg3),
    seg_length(Seg1, Len),
    seg_length(Seg2, Len),
    seg_length(Seg3, Len).

seg_length(seg(point(X1, Y1), point(X2, Y2)), Len) :-
   { Len == sqrt((X2 - X1)**2 + (Y2 - Y1)**2) }.

term(X) -->
    [X].
term(X), [CurX] -->
    [CurX],
    term(X).

triangle_dcg(Triangle) -->
    { triangle_cond(Triangle, Seg1, Seg2, Seg3) },
    term(Seg1),
    term(Seg2),
    term(Seg3).