class Show
    # Cette méthode affiche le plateau en format 3x3
    def display(cases)
      puts "   1   2   3"
      puts "A  #{cases[0]} | #{cases[1]} | #{cases[2]}"
      puts "  ---|---|---"
      puts "B  #{cases[3]} | #{cases[4]} | #{cases[5]}"
      puts "  ---|---|---"
      puts "C  #{cases[6]} | #{cases[7]} | #{cases[8]}"
    end
  end
  

  # note : La classe Show s'occupe uniquement de l'affichage du plateau.
#La méthode display prend en entrée les valeurs du plateau (dans ce cas, un tableau avec les valeurs des cases) 
#et les affiche sous forme de grille 3x3.
#Cela permet de bien séparer la logique du jeu (dans Game et Board) de la logique d'affichage