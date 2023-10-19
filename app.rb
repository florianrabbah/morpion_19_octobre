require 'bundler'
Bundler.require

require_relative 'lib/app/board_my_project_app'
require_relative 'lib/app/players_my_project_app'
require_relative 'lib/app/game_my_project_app'
require_relative 'lib/views/show'

class Application
  def start
    puts "Bienvenue dans le jeu du morpion!"
    
    player1_name = get_user_input("Player 1, entre ton blaze: 🔥🔥🔥 ")
    player1_age = get_valid_integer_input("Player 1, entre ton âge: 🔥🔥🔥 ")

    player2_name = get_user_input("Player 2, entre ton blaze: 🔥🔥🔥 ")
    player2_age = get_valid_integer_input("Player 2, entre ton âge: 🔥🔥🔥 ")

    player1 = Player.new(player1_name, player1_age, 1)
    player2 = Player.new(player2_name, player2_age, 2)

    game = Game.new(player1, player2)
    show = Show.new(game)
    show.display_board
  end

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
end

Application.new.start
