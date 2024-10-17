require 'minitest/autorun'   # Charge la bibliothèque 'minitest' pour les tests unitaires en Ruby.
require_relative '../player' # Charge le fichier 'player.rb' qui contient la définition de la classe Player.


class TestPlayer < Minitest::Test # Définit une classe de test qui hérite de 'Minitest::Test'.
  # Cela permet d'exécuter les tests unitaires avec 'minitest'.

  def test_player_initialization
    # Teste l'initialisation d'un joueur pour s'assurer que les attributs sont correctement définis.

    player = Player.new("Alice", "X")
    # Crée une nouvelle instance de la classe Player avec le nom "Alice" et le symbole "X".

    assert_equal "Alice", player.name
    # Vérifie que l'attribut 'name' du joueur est bien initialisé avec "Alice".

    assert_equal "X", player.symbol
    # Vérifie que l'attribut 'symbol' du joueur est bien initialisé avec "X".
  end
end
