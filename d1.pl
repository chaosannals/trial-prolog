% 关系定义 %
myrelation(a, b).
myrelation(c, d).

% 规则定义，定义带变量参数的关系 %
myrelation(A, B) :- myrelation(B, A).

myrule(A, B, C) :-
    myrelation(B, A),
    \+ myrelation(A, C).
