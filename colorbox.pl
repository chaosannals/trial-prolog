cbox(r).
cbox(g).
cbox(b).

colorify(A, B, C, D, E) :-
    cbox(A),
    cbox(B),
    cbox(C),
    cbox(D),
    cbox(E),
    \+ A = B,
    \+ A = C,
    \+ A = D,
    \+ A = E,
    \+ B = C,
    \+ B = D,
    \+ B = E,
    \+ C = D,
    \+ C = E,
    \+ D = E.
