require '3.2.2'
require 'pry'
#definir la classe Player avec un attribut name,age,symbol :
 class Player
  attr_accessor :name , :age, :symbol

SYMBOLS = { 1 => "x", 2 => "O"}

#constructeur de la classe,initialise le nom et l'age :
  def initialiaze (name, age, symbol)
  @name = name
  @age = age
  @symbol = symbols[player_number]
  end
end

#afficher un message de bienvenue :
puts "bienvenue dans le jeu morpion :-)"
puts "identifiez vous pour commencer * *"

#demander les prenoms et les ages des joueurs :
print "player1 rentre ton blaz et ton age 🔥🔥🔥"
player1_name = gets.chomp 
player1_age = gets.chomp.to_i

print "player2 rentre ton blaz et ton age  🔥🔥🔥"
player2_name = gets.chomp
player2_age = gets.chomp.to_i

#créer les objets_joueurs en utilisant la classe Player :
player1 = Player.new(player1_name, player1_age, 1)
player2 = Player.new(player2_name, player1_age, 2)

#affiche un msg de bienvenue avc prenom et age :
 puts "Bienvenue , #{player1.name}  #{player1.age} ans symbol: #{player1.symbol}   et #{player2.name} #{player2.age} ans symbol: #{player2.symbol}"



binding.pry
puts "end of file"




