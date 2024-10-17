require 'minitest/autorun'   # Charge la bibliothèque 'minitest' pour les tests unitaires en Ruby.
require_relative '../game'   # Charge le fichier 'game.rb' qui contient la classe Game.
require_relative '../player' # Charge le fichier 'player.rb' qui contient la classe Player.
require_relative '../board'  # Charge le fichier 'board.rb' qui contient la classe Board.


class TestGame < Minitest::Test # Définit une classe de test qui hérite de 'Minitest::Test'.
  # Cela permet d'exécuter les tests unitaires avec 'minitest'.

  def setup
    @game = Game.new
    # Crée une nouvelle instance de la classe 'Game' et la stocke dans la variable d'instance '@game'.
    
    @game.instance_variable_set(:@board, Board.new)
    # Remplace l'instance de Board dans @game par une nouvelle instance de Board pour s'assurer d'un plateau propre.

    @game.instance_variable_set(:@players, [Player.new("Alice", "X"), Player.new("Bob", "O")])
    # Remplace l'instance de joueurs dans @game par un tableau contenant deux nouveaux joueurs : Alice et Bob.
  end

  def test_switch_player # Teste la méthode privée 'switch_player' pour vérifier qu'elle alterne correctement les joueurs.
    

    assert_equal @game.players[0], @game.current_player
    # Vérifie que le joueur actuel au début est le premier joueur du tableau (@players[0]).

    @game.send(:switch_player)
    # Utilise 'send' pour appeler la méthode privée 'switch_player' qui change le joueur actuel.

    assert_equal @game.players[1], @game.current_player
    # Vérifie que le joueur actuel est maintenant le deuxième joueur du tableau (@players[1]).
  end

  def test_play_turn
    # Teste la méthode 'play_turn' pour vérifier qu'un mouvement met à jour le plateau.

    @game.send(:play_turn, "A1")
    # Utilise 'send' pour appeler la méthode privée 'play_turn' avec l'argument "A1".
    # Cela simule un tour où le joueur actuel joue à la position "A1".

    assert_equal "X", @game.board.instance_variable_get(:@cases)["A1"]
    # Vérifie que la case "A1" a été mise à jour avec le symbole "X", correspondant au joueur actuel.
  end

  def test_game_over # Teste la méthode 'game_over?' pour vérifier si le jeu détecte une victoire.
    

    @game.board.changer_case("A1", "X")
    @game.board.changer_case("A2", "X")
    @game.board.changer_case("A3", "X")
    # Remplit les cases "A1", "A2" et "A3" avec "X" pour simuler une victoire en ligne.

    assert @game.send(:game_over?)
    # Utilise 'send' pour appeler la méthode privée 'game_over?' et vérifie qu'elle renvoie 'true', indiquant que le jeu est terminé.
  end
end
