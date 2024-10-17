  class Application
  # Classe responsable de l'exécution de l'application
  def perform
    # Crée une nouvelle instance de Game et démarre la partie
    game = Game.new
    game.start
    true  # Retourner une valeur truthy à la fin
  end
end

