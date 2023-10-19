require_relative '../app/game_my_project_app'

# Classe représentant l'affichage du jeu
class Show
  def initialize(game)
    @game = game
    play
  end

  # Méthode pour afficher le plateau de jeu
  def display_board
    puts "-------------"
    ("A".."C").each do |letter|
      print "| "
      (1..3).each do |number|
        print "#{@game.board.cells["#{letter}"][number - 1]} | "
      end
      puts "\n-------------"
    end
  end

  # Méthode pour gérer le déroulement du jeu
  def play
    while true
      puts "Tour de #{current_player_name}. Choisissez une case (par exemple, A1, B2, C3) :"
      position = gets.chomp.upcase
      if valid_move?(position)
        @game.play_turn(convert_position(position))
        display_board
        if game_over?
          display_result
          break
        end
      else
        puts "Case invalide. Veuillez réessayer."
      end
    end
  end

  # Méthode pour vérifier si le mouvement est valide
  # Méthode pour vérifier si le mouvement est valide
def valid_move?(position)
  letter, number = position[0].upcase, position[1].to_i - 1
  valid_letters = ["A", "B", "C"]
  valid_numbers = [0, 1, 2]
  
  valid_letters.include?(letter) && valid_numbers.include?(number) && @game.board.cells[letter][number] == " "
end


  # Méthode pour vérifier si la partie est terminée
  def game_over?
    if @game.board.winning_combination?
      true
    elsif @game.board.full?
      true
    else
      false
    end
  end

  # Méthode pour afficher le résultat de la partie
  def display_result
    if @game.board.winning_combination?
      winner = @game.current_player.name
      puts "Félicitations, #{winner} ! Tu as gagné ! "
    else
      puts "Match nul!"
    end
  end

  # Méthode pour obtenir le nom du joueur actuel
  def current_player_name
    @game.current_player.name
  end

  # Méthode pour convertir la position de l'utilisateur en indices de tableau
  def convert_position(position)
    letter = position[0]
    number = position[1].to_i - 1
    ["A", "B", "C"].index(letter) * 3 + number
  end
end
