% 阶乘 1 * 2 * 3 * 4 * ... %
fac(0, 1).
fac(1, 1).
fac(N, F) :-
    N > 1,
    % 无法使用这句 fac(N - 1, F1) 替代一下2句 %
    N1 is N - 1,
    fac(N1, F1), % 递归点 %
    F is N * F1. % 巨坑，还是给 F 赋值了，结果从 F 给外部得到。 %