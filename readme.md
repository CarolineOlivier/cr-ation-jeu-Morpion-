# Morpion 

Bienvenue dans le projet Morpion ! Ce jeu classique de stratégie se joue à deux joueurs, chacun ayant pour objectif d'aligner trois de leurs symboles (X ou O) horizontalement, verticalement, ou en diagonale pour remporter la partie.

## Description du projet

Le projet a été réalisé dans le cadre d'un exercice de programmation orientée objet (POO) en Ruby. Il permet de solidifier les bases de la POO en créant un jeu interactif avec différentes classes pour gérer les joueurs, le plateau de jeu, les règles, l'affichage et l'application.

les fichier Gemfile et Gemfile.lock ont été clonées depuis le projet collaboratif de base ( non aboutit) 

### Fonctionnalités

1. Le jeu se joue à deux joueurs humains.
2. Les joueurs entrent leurs prénoms en début de partie.
3. Le plateau de jeu est constitué de 9 cases (3x3), chacune identifiée par une lettre (A, B, C) et un chiffre (1, 2, 3).
4. Le jeu alterne les tours des joueurs jusqu'à ce qu'un joueur gagne ou que le plateau soit rempli.
5. Une victoire est annoncée si un joueur aligne trois symboles identiques.
6. En cas de match nul, un message indique qu'il n'y a pas de vainqueur.
7. À la fin d'une partie, le programme propose de recommencer une nouvelle partie.

## Prérequis

Assurez-vous d'avoir Ruby installé sur votre système. Si ce n'est pas déjà le cas voici le lien de téléchargment : https://www.ruby-lang.org/fr/downloads/.

## Installation

1. **Clonez le projet :**

   git clone https://github.com/CarolineOlivier/creation-jeu-Morpion-
   cd morpion

2. **installez les dépendances nécessaires :**

Ce projet utilise bundler pour gérer les gemmes nécessaires, notamment minitest pour les tests unitaires. Si vous n'avez pas bundler installé, exécutez :  gem install bundler
     
Ensuite, installez les gemmes spécifiées dans le fichier Gemfile :    bundle install
  
3. **Installez minitest pour les tests :  gem install minitest**

4. **Lancement de l'application** 
Pour lancer le jeu, exécutez la commande suivante :   ruby lib/application.rb

Cela démarrera le jeu et vous demandera de saisir les prénoms des joueurs.

5. **Exécution des tests**
Pour exécuter tous les tests, vous pouvez lancer les fichiers de tests individuellement  : 
ruby test/test_board.rb
ruby test/test_game.rb
ruby test/test_player.rb
ruby test/test_show.rb
ruby test/test_application.rb

Ces commandes exécuteront les tests respectifs et afficheront les résultats dans le terminal.

6. **Structure du projet**

morpion/
├── lib/
│   ├── application.rb
│   ├── board.rb
│   ├── game.rb
│   ├── player.rb
│   ├── show.rb
├── test/
│   ├── test_application.rb
│   ├── test_board.rb
│   ├── test_game.rb
│   ├── test_player.rb
│   ├── test_show.rb
├── Gemfile
└── README.md

lib/ : Contient les fichiers de classes du projet.
test/ : Contient les fichiers de tests unitaires.
Gemfile : Liste les gemmes nécessaires au projet.
README.md : Fichier de documentation du projet.

7.**Auteurs**
Projet réalisé dans le cadre d'un exercice de The Hacking Project.

8. **Licence**
Ce projet est sous licence MIT. Vous êtes libre de le copier, le modifier et le distribuer.