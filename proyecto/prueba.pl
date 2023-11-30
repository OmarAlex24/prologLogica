imprimirLista([], 0, []).

imprimirLista([H|T],Numeros, R):- N2 is Numeros - 1, imprimirLista(T,N2,R2), R is [H|R2].