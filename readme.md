# trial prolog

## [SWI-Prolog](https://www.swi-prolog.org/)

一个实现，支持多平台。

注：windows 下文件带中文最好用 utf8-bom 的，不然中文会报错。

## 语法

- abc 常量（小写开头，是一些标志，类似 pi 和 e 这种。）
- Abc 变量（大写开头，类似方程的解，有多个。）
- A = B 符号 = 的关系.
- [your_prolog_file] 引入模块
- your_relation(a,b) 定义关系（类似公设。）
- your_relation(A,B) :- your_relation(B,A), your_relation_other(A). 定义规则（推导逻辑，如果左一条关系成立，可推导出右一到多条关系也成立。）
- your_relation(A,B) :- \+ your_relation(B, A). 否定关系用 \+ 前缀 
- is 赋值，规则里可定义新变量

```prolog
[your_prolog_file].

\+ your_relation(X).
```

注：规则（rule）必须写在文件里面，swipl-win.exe 不能直接定义规则和关系。

```prolog
myr(a).
myr(b).

% 居然只给出一个解， X = a %
myr(X).
```

### 规则

```prolog

cd("/path/to/dir").

pwd.

listing(your_rule).
```