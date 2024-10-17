require 'minitest/autorun'
require_relative '../application'
require_relative '../game'
require_relative '../player'
require_relative '../board'
require_relative '../show'


class TestApplication < Minitest::Test # Définit une classe de test qui hérite de 'Minitest::Test'.
  # Cela permet d'exécuter les tests unitaires avec 'minitest'.

  def test_perform
    # Teste la méthode 'perform' de l'objet 'Application' pour vérifier qu'elle fonctionne correctement.

    app = Application.new
    # Crée une nouvelle instance de la classe 'Application' et la stocke dans la variable 'app'.

    assert app.perform
    # Vérifie que la méthode 'perform' de l'objet 'app' renvoie une valeur évaluée comme vraie.
    # Si 'perform' retourne 'true' ou une valeur "truthy", le test passe. Sinon, le test échoue.
    # Le but ici est de s'assurer que l'application peut s'exécuter sans générer d'erreurs.
  end
end

