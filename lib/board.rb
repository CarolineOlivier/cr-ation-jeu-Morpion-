class Board
    #Classe Board : Gère la logique du plateau (représente le plateau de jeu et gère les interactions avec les cases.)
    #et délègue l'affichage à la classe Show.
    
    def initialize  # Crée les 9 cases du plateau, représentées par un hash.
      # Le hash @cases utilise des paires clé-valeur où la clé est la position de la case (ex: "A1") 
      # et la valeur est le contenu de la case (" " pour vide, "X" ou "O").
      @cases = {
        "A1" => " ", "A2" => " ", "A3" => " ",
        "B1" => " ", "B2" => " ", "B3" => " ",
        "C1" => " ", "C2" => " ", "C3" => " "
      }
    end

    # Utilise la classe Show pour afficher le plateau
def view_board
    Show.new.display(@cases.values)  # Contient la méthode display qui est explicitement appelée pour afficher le plateau.
  end
  

    def verifier_case(position)  # Fonction qui vérifie si la case choisie par le joueur est vide (" ").
      @cases[position] == " "  # Elle retourne true si la case est vide, sinon false.
    end
    
    def changer_case(position, symbol)  # Met à jour la case choisie avec le symbole du joueur actuel ("X" ou "O").
      if verifier_case(position) # Si la case est vide, elle est mise à jour avec le symbole du joueur.
        @cases[position] = symbol 
      else
        # Sinon, elle affiche un message pour indiquer que la case est déjà occupée.
        puts "La case est déjà occupée. Choisissez une autre case." 
        
      end
    end

    #Méthode  verifier_victory en deux parties : 

    # l'une parcourt les combinaisons possibles (lignes_gagnantes) 
    #l'autre vérifie les conditions spécifiques pour déterminer si la combinaison est gagnante.
    
    def verifier_victory  # Vérifie s'il y a une combinaison gagnante (ligne, colonne ou diagonale).
      lignes_gagnantes = [
        ["A1", "A2", "A3"], # Lignes
        ["B1", "B2", "B3"],
        ["C1", "C2", "C3"],
        ["A1", "B1", "C1"], # Colonnes
        ["A2", "B2", "C2"],
        ["A3", "B3", "C3"],
        ["A1", "B2", "C3"], # Diagonales
        ["A3", "B2", "C1"]
      ] 
      # La fonction vérifie les combinaisons possibles pour voir si elles contiennent
      # le même symbole (soit "X" ou "O"). Si une combinaison gagnante est trouvée, 
      # elle retourne true, sinon false.

      lignes_gagnantes.any? do |ligne|  # La méthode any? parcourt chaque combinaison dans `lignes_gagnantes` 
        #et vérifie deux conditions :
        # Les trois cases de la combinaison doivent avoir le même symbole cad la mmêm valeur (vérifié en utilisant `uniq.length == 1`,
        # ce qui signifie que toutes les valeurs sont identiques).
        [@cases[ligne[0]], @cases[ligne[1]], @cases[ligne[2]]].uniq.length == 1 &&
        @cases[ligne[0]] != " "  #Les cases ne doivent pas être vides (vérifié avec `@cases[ligne[0]] != " "`).
      end
    end
  end
  
Board.new