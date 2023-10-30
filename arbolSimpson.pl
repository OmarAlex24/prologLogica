hijo(bart,homero).
hijo(bart,marge).
hijo(lisa,homero).
hijo(lisa,marge).
hijo(maggie,homero).
hijo(maggie,marge).

hermano(X,Y) :- hijo(X,Z), hijo(Y,Z).
esposos(X,Y) :- hijo(Z,X), hijo(Z,Y).