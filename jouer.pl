jouer(x, Colonne) :-
	jouer(x, Colonne, _).

jouer(o, Colonne) :-
	jouer(o, Colonne, _).


jouer(Jeton,1,Newgamestate):-
	% on recupere toute les colonnes dans les variables
	gamestate(X), nth0(0, X, ColChoisi), nth0(1, X, C2), nth0(2, X, C3), nth0(3, X, C4), nth0(4, X, C5), nth0(5, X, C6), nth0(6, X, C7),

	checkTaille(ColChoisi),                       %ici test si ColChoisi n'a pas deja 6 jetons
	append([Jeton],ColChoisi,NewCol),              %ajout du nouveau jeton

	retract(gamestate(_)),	                       %on retire la configuration du precedent gamestate en donnee
	assert(gamestate([NewCol,C2,C3,C4,C5,C6,C7])), %on insere la nouvelle configuration de gamestate en donnee
	gamestate(Newgamestate).                       %on affiche en resultat l'etat du gamestate apres le coup joue

jouer(Jeton,2,Newgamestate):-
	gamestate(X), nth0(0, X, C1), nth0(1, X, ColChoisi), nth0(2, X, C3), nth0(3, X, C4), nth0(4, X, C5), nth0(5, X, C6), nth0(6, X, C7),

	checkTaille(ColChoisi),

	append([Jeton],ColChoisi,NewCol),

	retract(gamestate(_)),
	assert(gamestate([C1,NewCol,C3,C4,C5,C6,C7])),
	gamestate(Newgamestate).

jouer(Jeton,3,Newgamestate):-
	gamestate(X), nth0(0, X, C1), nth0(1, X, C2), nth0(2, X, ColChoisi), nth0(3, X, C4),nth0(4, X, C5),nth0(5, X, C6), nth0(6, X, C7),

	checkTaille(ColChoisi),

	append([Jeton],ColChoisi,NewCol),

	retract(gamestate(_)),
	assert(gamestate([C1,C2,NewCol,C4,C5,C6,C7])),
	gamestate(Newgamestate).

jouer(Jeton,4,Newgamestate):-
	gamestate(X), nth0(0, X, C1), nth0(1, X, C2), nth0(2, X, C3), nth0(3, X, ColChoisi), nth0(4, X, C5),nth0(5, X, C6), nth0(6, X, C7),

	checkTaille(ColChoisi),

	append([Jeton],ColChoisi,NewCol),

	retract(gamestate(_)),
	assert(gamestate([C1,C2,C3,NewCol,C5,C6,C7])),
	gamestate(Newgamestate).

jouer(Jeton,5,Newgamestate):-
	gamestate(X), nth0(0, X, C1),nth0(1, X, C2), nth0(2, X, C3),nth0(3, X, C4),nth0(4, X, ColChoisi), nth0(5, X, C6), nth0(6, X, C7),

	checkTaille(ColChoisi),

	append([Jeton],ColChoisi,NewCol),

	retract(gamestate(_)),
	assert(gamestate([C1,C2,C3,C4,NewCol,C6,C7])),
	gamestate(Newgamestate).

jouer(Jeton,6,Newgamestate):-
	gamestate(X), nth0(0, X, C1),nth0(1, X, C2),nth0(2, X, C3),nth0(3, X, C4),nth0(4, X, C5),nth0(5, X, ColChoisi), nth0(6, X, C7),

	checkTaille(ColChoisi),

	append([Jeton],ColChoisi,NewCol),

	retract(gamestate(_)),
	assert(gamestate([C1,C2,C3,C4,C5,NewCol,C7])),
	gamestate(Newgamestate).

jouer(Jeton,7,Newgamestate):-
	gamestate(X), nth0(0, X, C1), nth0(1, X, C2), nth0(2, X, C3), nth0(3, X, C4), nth0(4, X, C5), nth0(5, X, C6), nth0(6, X, ColChoisi),

	checkTaille(ColChoisi),

	append([Jeton],ColChoisi,NewCol),

	retract(gamestate(_)),
	assert(gamestate([C1,C2,C3,C4,C5,C6,NewCol])),
	gamestate(Newgamestate).

% regle verifiant si la liste passe en parametre est bien inferieure a 6
checkTaille(L):-
	length(L,Nb), Nb <6,!.

%regle envoyant un message d'erreur si la liste est deja égale à 6
checkTaille(L):-
	length(L,Nb), not(Nb<6),
	gamestate(X),
	nth0(NumCol,X,L),
	NumCol1 is NumCol+1,
	write('La colonne ') , write(NumCol1) , write(' est deja rempli, veuillez sélectionner une autre'),false, !.
