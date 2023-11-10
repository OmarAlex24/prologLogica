mayor(X,Y):- X>Y.
mayor(X,Y,R):- R is X, X>Y ; R is Y, Y>X.
promedio(X,Y,R):- R is (X + Y)/2.
par(X):- (X mod 2) =:= 0.
multiplo(X,Y):- (X mod Y) =:= 0.