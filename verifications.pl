:-dynamic(diagInf1/1).
diagInf1([]).

:-dynamic(diagInf1Elem/1).
diagInf1Elem([[3,1], [4,2], [5,3], [6,4]]).

:-dynamic(diagInf2/1).
diagInf2([]).

:-dynamic(diagInf2Elem/1).
diagInf2Elem([[2,1], [3,2], [4,3], [5,4], [6,5]]).

:-dynamic(diagInf3/1).
diagInf3([]).

:-dynamic(diagInf3Elem/1).
diagInf3Elem([[1,1], [2,2], [3,3], [4,4], [5,5], [6,6]]).

:-dynamic(diagInf4/1).
diagInf4([]).

:-dynamic(diagInf4Elem/1).
diagInf4Elem([[1,2], [2,3], [3,4], [4,5], [5,6], [6,7]]).

:-dynamic(diagInf5/1).
diagInf5([]).

:-dynamic(diagInf5Elem/1).
diagInf5Elem([[1,3], [2,4], [3,5], [4,6],[5,7]]).

:-dynamic(diagInf6/1).
diagInf6([]).

:-dynamic(diagInf6Elem/1).
diagInf6Elem([[1,4], [2,5], [3,6], [4,7]]).



% Diag SUP


:-dynamic(diagSup1/1).
diagSup1([]).

:-dynamic(diagSup1Elem/1).
diaSup1Elem([[4,1], [3,2], [2,3], [1,4]]).

:-dynamic(diagSup2/1).
diagSup2([]).

:-dynamic(diagSup2Elem/1).
diaSup2Elem([[5,1], [4,2], [3,3], [2,4], [1,5]]).

:-dynamic(diagSup3/1).
diagSup3([]).

:-dynamic(diagSup3Elem/1).
diaSup3Elem([[6,1], [5,2], [4,3], [3,4], [2,5], [1,6]]).

:-dynamic(diagSup4/1).
diagSup4([]).

:-dynamic(diagSup4Elem/1).
diaSup4Elem([[6,2], [5,3], [4,4], [3,5], [2,6], [1,7]]).

:-dynamic(diagSup5/1).
diagSup5([]).

:-dynamic(diagSup5Elem/1).
diaSup5Elem([[6,3], [5,4], [4,5], [3,6],[2,7]]).

:-dynamic(diagSup6/1).
diagSup6([]).

:-dynamic(diagSup6Elem/1).
diaSup6Elem([[6,4], [5,5], [4,6], [3,7]]).


% Optimiser pour pouvoir avoir n'importe quelle taille de grille car ici non seulement jouer d�pend de la taille mais la r�solution aussi
% ces proc�dures sont � param�trer

insertPosition(Val,[H|List],Pos,[H|Res]):- Pos > 1, !,
                                Pos1 is Pos - 1, insertPosition(Val,List,Pos1,Res).
insertPosition(Val, List, 1, [Val|List]).

insertDiag(Ligne, Colonne, Couleur) :-

	diagInf1(X), diagInf1Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagInf2(X), diagInf2Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagInf3(X), diagInf3Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagInf4(X), diagInf4Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagInf5(X), diagInf5Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagInf6(X), diagInf6Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);

	diagSup1(X), diagSup1Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagSup2(X), diagSup2Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagSup3(X), diagSup1Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagSup4(X), diagSup1Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagSup5(X), diagSup1Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X);
	diagSup6(X), diagSup1Elem(Y), member([Ligne, Colonne], Y), insertPosition(Couleur, X, Colonne, X).


