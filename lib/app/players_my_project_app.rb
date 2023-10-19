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

def get_user_input(message)
  print message
  gets.chomp
end

def get_valid_integer_input(message)
  loop do
    input = get_user_input(message)
    return input.to_i if input.match?(/^\d+$/)
    puts "Veuillez entrer un nombre valide."
  end
end

player1_name = get_user_input("Player 1, entre ton blaze: 🔥🔥🔥 ")
player1_age = get_valid_integer_input("Player 1, entre ton âge: 🔥🔥🔥 ")

player2_name = get_user_input("Player 2, entre ton blaze: 🔥🔥🔥 ")
player2_age = get_valid_integer_input("Player 2, entre ton âge: 🔥🔥🔥 ")

player1 = Player.new(player1_name, player1_age, 1)
player2 = Player.new(player2_name, player2_age, 2)

puts "Bienvenue, #{player1.name}, #{player1.age} ans, symbol: #{player1.symbol} et #{player2.name}, #{player2.age} ans, symbol: #{player2.symbol}"

puts "End of file"
