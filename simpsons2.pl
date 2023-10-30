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