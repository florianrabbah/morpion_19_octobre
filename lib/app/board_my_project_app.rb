
require 'pry'
#definition de la classe Board qui represente le plateau de jeu
class Board
  attr_accessor :cells #attribut pour stocker les cases du jeu (tableau 2D de 3x3)

#constructeur de la class , initialise le tableau de cases avec des espaces vides 
  def initialize
  @cells = Array.new(3) { Array.new(3, " ")}
  end

#methode pour afficher le tableau de jeu dans le terminal 
def display
  
  puts " 1 | 2 | 3 | "      #affiche les indices de colonnes 
  puts " _ _ _ _ _ _ _ _ _ _ _ _ "

#affiche les rangées du plateau de jeu avec les symbols des joueurs 
cells.each_with_index do |row, index|
  
#affiche l'indice de la ligne (A, B, C) suivi des symboles des cases de la rangée
puts "#{"A".."C".to_a[index]} | #{row.join '|'} "
 puts "_ _ _ _ _ _ _ _ _ _ _"  

end

end


end