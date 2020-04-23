Bonjour à tous,
Voici ma version de morpion dans ce github.

Je vais vous expliquer pas à pas le raisonnement derrière ces lignes de codes.
Dans chaque fichier, il n'y a qu'une seule classe du même nom.

Tout d'abord, le fichier player.rb dans le dossier lib.
On initialise un joueur avec la forme dans la classe contenu dans ce fichier.

Ensuite, il y a le fichier boardcase dans le même dossier, permettant de créer 9 instances pour 9 cases. Chaque case sera amenée à changer en passant de vide à une croix ou à un rond.

Ce qui va permettre de changer les cases est contenu dans le fichier board.rb. Cette classe permet de modéliser un plateau de jeu (décor, croix, rond, etc...) et aussi quelques lignes de code annonçant une fin de partie (gagnant, perdant et match nul).

Le fichier game.rb crée les liens de chaque action permettant de faire une partie.
Certaines méthodes de cette classe sont utilisées en interne pour siimplifier l'écriture de code (ex: count_o, count_x,tour) et ne seront pas utile en dehors de cette classe.

La méthode is_still_ongoing? ne sert qu'à connaître le gagnant d'une partie ou si la partie continue.

La méthode play_one_tour (c'est du frenglish !) permet de faire un tour de jeu.
La méthode play_several_tour répète plusieurs fois la méthode play_one_tour sous certaines conditions et jusqu'à la fin de partie.

Le fichier application.rb, également contenu dans le dossier lib comme tout reste, permet de rendre le jeu du morpion un peu plus vivant avec des questions/réponses et la possibilité de relancer une nouvelle partie.

Le fichier show.rb permet d'afficher le plateau du jeu à un instant antérieur. 
Il faut choisir un chiffre dans l'interval suivant ]0,nombre d'action[

Et le dernier fichier app.rb appelle les fichiers nécessaires pour faire tourner une ou plusieurs parties et de revenir à un moment passé dans la partie.

Merci d'avoir lu mon README, je vous laisse, à présent, jouer avec mon magnifique morpion.
