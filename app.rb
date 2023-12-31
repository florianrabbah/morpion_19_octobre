require 'bundler'
Bundler.require

require_relative 'lib/app/board_my_project_app'
require_relative 'lib/app/players_my_project_app'
require_relative 'lib/app/game_my_project_app'
require_relative 'lib/views/show'

class Application
  def start
    puts "Bienvenue dans le jeu morpion!"
    
    player1_name, player1_age = get_player_info(1)
    player2_name, player2_age = get_player_info(2)

    player1 = Player.new(player1_name, player1_age, 1)
    player2 = Player.new(player2_name, player2_age, 2)

    game = Game.new(player1, player2)
    show = Show.new(game)
    show.display_board
  end

  def get_player_info(player_number)
    loop do
      print "Player #{player_number}, entre ton blaze: 🔥🔥🔥 "
      name = gets.chomp.upcase
      
      print "Player #{player_number}, entre ton âge: 🔥🔥🔥 "
      age = gets.chomp.to_i
      
      if name.length > 0 && age > 0
        return [name, age]
      else
        puts "Veuillez entrer des informations valides."
      end
    end
  end
end

Application.new.start

