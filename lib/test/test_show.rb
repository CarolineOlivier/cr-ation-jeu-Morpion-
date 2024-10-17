require 'minitest/autorun' # Charge la bibliothèque 'minitest' pour les tests unitaires en Ruby.
require_relative '../show' # Charge le fichier 'show.rb' qui contient la définition de la classe Show.


class TestShow < Minitest::Test
  # Définit une classe de test qui hérite de 'Minitest::Test'.
  # Cela permet d'exécuter les tests unitaires avec 'minitest'.

  def setup
    @show = Show.new
    # Initialise une nouvelle instance de la classe Show avant chaque test et la stocke dans la variable d'instance '@show'.
  end

  def test_display
    # Teste la méthode 'display' pour vérifier qu'elle affiche correctement le plateau de jeu.

    cases = ["X", "O", " ", "X", " ", "O", " ", " ", "X"]
    # Définit un tableau 'cases' représentant l'état du plateau de jeu.
    # Chaque élément du tableau correspond à une case du plateau, dans l'ordre de A1 à C3.

    expected_output = <<~BOARD
         1   2   3
    A  X | O |  
      ---|---|---
    B  X |   | O
      ---|---|---
    C    |   | X
    BOARD
    # Déclare une chaîne de caractères 'expected_output' qui représente l'affichage attendu du plateau de jeu.
    # Le symbole <<~ est utilisé pour indiquer une chaîne de texte multi-lignes avec une indentation correcte.

    assert_output(expected_output) { @show.display(cases) }
    # Vérifie que la méthode 'display' de l'objet '@show' produit l'affichage attendu.
    # 'assert_output' compare la sortie réelle avec 'expected_output'. Si elles ne correspondent pas, le test échoue.
  end
end
