compareList([], []).
compareList(L1, L2) :-	
	L1 = [T1|Q1],
	L2 = [T2|Q2],
	T1 == T2,
	compareList(Q1, Q2).
	
compareList(L1, L2, Pion) :-	
	L1 = [T1|Q1],
	L2 = [T2|Q2],
	T1 == T2,
	T1 == Pion,
	compareList(Q1, Q2).
	

	
sv(x):-
	gamestate(Z),
	sv(x, Z).
	
sv(o):-
	gamestate(Z),
	sv(o, Z).

sv(Pion, Z):-
	length(Z,NbElements), NbElements > 3,
	nth0(0, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion);

	nth0(1, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion);
	 
	nth0(2, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion) ;
	
	nth0(3, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion) ;
	
	nth0(4, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion) ;
	
	nth0(5, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion) ;
	
	nth0(6, Z, Y), nth0(0, Y, C1), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), compareList([C1], [C2]), 
	compareList([C2], [C3]), compareList([C3], [C4], Pion).

sv(Pion, Z) :-

	length(Z,NbElements), NbElements > 3,

	nth0(0, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion) ;

	nth0(1, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion) ;

	nth0(2, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion) ;

	nth0(3, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion) ;

	nth0(4, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion) ;

	nth0(5, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion) ;

	nth0(6, Z, Y), nth0(1, Y, C2), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), 
	compareList([C2], [C3]), compareList([C3], [C4]), compareList([C4], [C5], Pion).
	
sv(Pion, Z) :-

	length(Z,NbElements), NbElements > 3,

	nth0(0, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion) ; 

	nth0(1, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion) ; 

	nth0(2, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion) ; 

	nth0(3, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion) ; 

	nth0(4, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion) ; 

	nth0(5, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion) ; 

	nth0(6, Z, Y), nth0(2, Y, C3), nth0(3, Y, C4), nth0(4, Y, C5), nth0(5, Y, C6), 
	compareList([C3], [C4]), compareList([C4], [C5]), compareList([C5], [C6], Pion). 
	
% on prend la premiere colone puis la deuxieme, puis ... Ensuite on prend le premier element de la colonne 1, puis le premier de la colonne 2, etc
% E5 est en trop : c'est bien puissance 4?
	
	% TODO : Regler le probleme d'ajout en debut de liste
	
sh(x):-
	gamestate(Z),
	sh(x, Z).
	
sh(o):-
	gamestate(Z),
	sh(o, Z).
	
sh(Pion, Z) :-
	nth0(0, Z, C1), nth0(1, Z, C2), nth0(2, Z, C3), nth0(3, Z, C4),
	nth0(LineNumber, C1, E1),nth0(LineNumber, C2, E2),nth0(LineNumber, C3, E3),nth0(LineNumber, C4, E4),
	compareList([E1], [E2],Pion), compareList([E2], [E3]), compareList([E3], [E4],Pion).
	
sh(Pion, Z) :-
	nth0(1, Z, C1), nth0(2, Z, C2), nth0(3, Z, C3), nth0(4, Z, C4),
	nth0(LineNumber, C1, E1),nth0(LineNumber, C2, E2),nth0(LineNumber, C3, E3),nth0(LineNumber, C4, E4),
	compareList([E1], [E2],Pion), compareList([E2], [E3]), compareList([E3], [E4],Pion).

sh(Pion, Z) :-
	nth0(2, Z, C1), nth0(3, Z, C2), nth0(4, Z, C3), nth0(5, Z, C4),
	nth0(LineNumber, C1, E1),nth0(LineNumber, C2, E2),nth0(LineNumber, C3, E3),nth0(LineNumber, C4, E4),
	compareList([E1], [E2]), compareList([E2], [E3]), compareList([E3], [E4],Pion).
	
sh(Pion, Z) :-
	nth0(3, Z, C1), nth0(4, Z, C2), nth0(5, Z, C3), nth0(6, Z, C4),
	nth0(LineNumber, C1, E1),nth0(LineNumber, C2, E2),nth0(LineNumber, C3, E3),nth0(LineNumber, C4, E4),
	compareList([E1], [E2],Pion), compareList([E2], [E3]), compareList([E3], [E4],Pion).
	

