%lancer la commande load_files(init_game). en ligne de cmd pour bien
% charger ce fichier

:-dynamic(gamestate/1).
 gamestate([[],[],[],[],[],[],[]]).

%inclut les clauses des fichiers jouer.pl et aGagner.pl

:-use_module(library(random)).

:-include(jouer).
:-include(aGagner).
:-include(affichage).
:-include(ia).
:-include(partieAleatoire).
:-include(partie2Joueurs).

