partieAleatoire :-
	partieAleatoire(x).

partieAleatoire(Pion) :-
	iaRandom(Pion),
	afficherGrille,
	testGagner(Pion). 
	
testGagner(Pion) :-
	(not(sv(Pion)), not(sh(Pion))),
	!,
	changerPion(Pion, Adversaire), partieAleatoire(Adversaire).
	
testGagner(Pion) :-
	sv(Pion),
	!,
	write(Pion), write(' a gagn� verticalement'),
	finPartie.

testGagner(Pion) :-
	sh(Pion), 
	!, 
	write(Pion), write(' a gagn� horizontalement'),
	finPartie.