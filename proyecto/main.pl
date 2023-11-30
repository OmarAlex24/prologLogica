mes(1,31).
mes(2,28).
mes(3,31).
mes(4,30).
mes(5,31).
mes(6,30).
mes(7,31).
mes(8,31).
mes(9,30).
mes(10,31).
mes(11,30).
mes(12,31).

zodiaco(aries, 21, 3, 19, 4).
zodiaco(tauro, 20, 4, 20, 5).
zodiaco(geminis, 21, 5, 20, 6).
zodiaco(cancer, 21, 6, 22, 7).
zodiaco(leo, 23, 7, 22, 8).
zodiaco(virgo, 23, 8, 22, 9).
zodiaco(libra, 23, 9, 22, 10).
zodiaco(escorpio, 23, 10, 21, 11).
zodiaco(sagitario, 22, 11, 21, 12).
zodiaco(capricornio, 22, 12, 19, 1).
zodiaco(acuario, 20, 1, 18, 2).
zodiaco(piscis, 19, 2, 20, 3).

% suerte
suerte(1,fortuna).
suerte(2,felicidad).
suerte(3,muerte).
suerte(4,enfermedad).
suerte(5,salud).
suerte(6,prosperidad).
suerte(7,amor).
suerte(8,envidia).
suerte(9,sexo).
suerte(10,decepcion).

%caso base
obtenerLista([],0).
%caso recursivo
obtenerLista([H|T],Npredicados):- Y is (Npredicados - 1) ,obtenerLista(T,Y),random_between(1,10,X),  suerte(X,Palabra),H = Palabra. 

azarSuerte(L):- random_between(3,4,Npredicados), obtenerLista(L,Npredicados),!. 

signo(D,M,Signo,Suerte) :- 
  mes(M,X),
  (D =< X, D > 0),
  (M > 0, M <13), 
  zodiaco(Signo,DI,MI,DF,MF), 
  ((D >= DI, M = MI); (D =< DF, M = MF)), 
  azarSuerte(Suerte).