hombre(homero).
hombre(bart).
mujer(marge).
mujer(lisa).
mujer(maggie).

progenitor(homero,bart).
progenitor(homero,lisa).
progenitor(homero,maggie).
progenitor(marge,bart).
progenitor(marge,lisa).
progenitor(marge,maggie).

padre(X,Y) :- hombre(X), progenitor(X,Y).
madre(X,Y) :- mujer(X), progenitor(X,Y).

hermano(X,Y) :- hombre(X), padre(Z,X), padre(Z,Y), madre(W,X), madre(W,Y), X\==Y.
hermana(X,Y) :- mujer(X), padre(Z,X), padre(Z,Y), madre(W,X), madre(W,Y), X\==Y.
