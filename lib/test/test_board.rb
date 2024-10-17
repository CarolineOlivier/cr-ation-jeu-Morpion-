require 'minitest/autorun' # Charge la bibliothèque 'minitest' pour les tests unitaires en Ruby.

require_relative '../board' # Charge le fichier 'board.rb' qui se trouve dans le dossier parent.
# Cela permet d'utiliser la classe 'Board' dans ce fichier de test.

class TestBoard < Minitest::Test # Définit une classe de test qui hérite de 'Minitest::Test'.
  # Cela permet d'exécuter les tests unitaires avec 'minitest'.

  def setup # La méthode 'setup' est exécutée avant chaque test.
    @board = Board.new # Elle crée une nouvelle instance de la classe 'Board' et la stocke dans la variable d'instance '@board'.
  end

  def test_board_initialization # Teste l'initialisation du plateau de jeu.
    # Vérifie que toutes les cases sont initialisées vides.

    assert_equal " ", @board.instance_variable_get(:@cases)["A1"]  # Vérifie que la case "A1" est vide (" ").
    # Utilise 'instance_variable_get' pour accéder directement à la variable d'instance '@cases'.

    assert_equal " ", @board.instance_variable_get(:@cases)["C3"]
    # Vérifie que la case "C3" est également vide (" ").
  end

  def test_changer_case
    # Teste la méthode 'changer_case' pour vérifier qu'elle met à jour correctement une case.

    @board.changer_case("A1", "X")
    # Change le contenu de la case "A1" pour le symbole "X".

    assert_equal "X", @board.instance_variable_get(:@cases)["A1"]
    # Vérifie que la case "A1" contient maintenant "X" après l'appel à 'changer_case'.
  end

  def test_verifier_victory
    # Teste la méthode 'verifier_victory' pour voir si elle détecte une victoire.

    @board.changer_case("A1", "X")
    @board.changer_case("A2", "X")
    @board.changer_case("A3", "X")
    # Remplit les cases "A1", "A2", et "A3" avec "X" pour simuler une ligne gagnante.

    assert @board.verifier_victory
    # Vérifie que la méthode 'verifier_victory' retourne 'true', indiquant qu'un joueur a gagné.
  end
end
