  require 'bundler'
  Bundler.require

  require_relative 'lib/app/board'

  require_relative 'lib/app/player'
  require_relative 'lib/app/game'
  require_relative 'lib/app/show'

    #classe principale représentant l'application du jeu
class Application
 
  #methode pour demarrer le jeu 

def start
    puts "bienvenue dans le jeu du morpion !"
     

    puts "Bienvenue dans le jeu du morpion !"
    print "Joueur 1, entrez votre prénom : "
    player1_name = gets.chomp
    print "Joueur 2, entrez votre prénom : "
    player2_name = gets.chomp

    # Crée un jeu avec les deux joueurs
    game = Game.new(player1_name, player2_name)
    # Crée un objet de la classe Show pour gérer l'affichage du jeu
 Show.new(game)
end 
end

#Lance l'application en appelant la méthode start
App.new.start




















      