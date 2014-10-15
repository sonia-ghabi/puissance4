partie2Joueurs :-
	partie2Joueurs(x).

partie2Joueurs(Pion) :-
	write(Pion), write(' � votre tour : '),
	read(Colonne),
	jouer(Pion, Colonne),
	afficherGrille,
	testGagner2Joueurs(Pion).
	
testGagner2Joueurs(Pion) :-
	sh(Pion), 
	!, 
	write(Pion), write(' a gagn� horizontalement'),
	finPartie.
	
testGagner2Joueurs(Pion) :-
	sv(Pion),
	!,
	write(Pion), write(' a gagn� verticalement'),
	finPartie.	
	
testGagner2Joueurs(Pion) :-
	(not(sv(Pion)), not(sh(Pion))),
	!,
	changerPion(Pion, Adversaire), partie2Joueurs(Adversaire).
	
finPartie :-
	retract(gamestate(X)) , assert(gamestate([[],[],[],[],[],[],[]])).
		
changerPion(x, NouveauPion) :-
	NouveauPion = o.

changerPion(o, NouveauPion) :-
	NouveauPion = x.