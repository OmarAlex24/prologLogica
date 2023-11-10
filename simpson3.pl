hombre(homero).
hombre(bart).
hombre(herbert).
hombre(abraham).
hombre(clancy).

mujer(marge).
mujer(lisa).
mujer(maggie).
mujer(selma).
mujer(patty).
mujer(jacqueline).
mujer(mona).
mujer(ling).

progenitor(homero,bart).
progenitor(homero,lisa).
progenitor(homero,maggie).

progenitor(marge,bart).
progenitor(marge,lisa).
progenitor(marge,maggie).

progenitor(abraham,herbert).
progenitor(abraham,homero).
progenitor(mona,homero).
progenitor(mona,herbert). 

progenitor(clancy, patty).
progenitor(clancy, selma).
progenitor(clancy, marge).

progenitor(jacqueline, patty).
progenitor(jacqueline, selma).
progenitor(jacqueline, marge).

progenitor(selma, ling).

padre(X,Y) :- hombre(X), progenitor(X,Y).
madre(X,Y) :- mujer(X), progenitor(X,Y).

hermano(X,Y) :- hombre(X), padre(Z,X), padre(Z,Y), madre(W,X), madre(W,Y), X\==Y.
hermana(X,Y) :- mujer(X), padre(Z,X), padre(Z,Y), madre(W,X), madre(W,Y), X\==Y.

abuelo(X,Y) :- padre(Z,Y), padre(X,Z).
abuelo(X,Y) :- madre(Z,Y), padre(X,Z).

abuela(X,Y) :- padre(Z,Y), madre(X,Z).
abuela(X,Y) :- madre(Z,Y), madre(X,Z).

esposos(X,Y) :- progenitor(X,Z), progenitor(Y,Z).

cuñado(X,Y) :- hombre(X), esposos(X,Z), hermana(Z,Y).
cuñado(X,Y) :- hombre(X), esposos(X,Z), hermano(Z,Y).
cuñada(X,Y) :- mujer(X), esposos(X,Z), hermana(Z,Y).
cuñada(X,Y) :- mujer(X), esposos(X,Z), hermano(Z,Y).

tio(X,Y) :- progenitor(Z,Y), hermano(X,Z).
tia(X,Y) :- progenitor(Z,Y), hermana(X,Z).

primo(X,Y) :- hombre(X), progenitor(Z,X), progenitor(W,Y), hermano(Z,W).
primo(X,Y) :- hombre(X), progenitor(Z,X), progenitor(W,Y), hermana(Z,W).

prima(X,Y) :- mujer(X), progenitor(Z,X), progenitor(W,Y), hermano(Z,W).
prima(X,Y) :- mujer(X), progenitor(Z,X), progenitor(W,Y), hermana(Z,W).
