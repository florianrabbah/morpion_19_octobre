require 'pry'

class Player
  attr_accessor :name, :age, :symbol

  SYMBOLS = { 1 => "x", 2 => "O" }

  def initialize(name, age, player_number)
    @name = name
    @age = age
    @symbol = SYMBOLS[player_number]
  end
end

puts "Bienvenue dans le jeu morpion :-)"
puts "Identifiez-vous pour commencer * *"

print "Player 1, entre ton blaze et ton âge 🔥🔥🔥"
player1_name = gets.chomp 
player1_age = gets.chomp.to_i

print "Player 2, entre ton blaze et ton âge 🔥🔥🔥"
player2_name = gets.chomp
player2_age = gets.chomp.to_i

player1 = Player.new(player1_name, player1_age, 1)
player2 = Player.new(player2_name, player2_age, 2)

puts "Bienvenue, #{player1.name}, #{player1.age} ans, symbol: #{player1.symbol} et #{player2.name}, #{player2.age} ans, symbol: #{player2.symbol}"

puts "End of file"
