require_relative 'game'

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
        print "#{@game.board.cases["#{letter}#{number}"].content} | "
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
        @game.play_turn(position)
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
  def valid_move?(position)
    @game.board.cases.key?(position) && @game.board.cases[position].content == " "
  end

  # Méthode pour vérifier si la partie est terminée
  def game_over?
    # Ajoutez ici la logique pour vérifier si la partie est terminée (gagnée ou nulle)
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
    # Ajoutez ici la logique pour afficher le résultat de la partie (gagnée ou nulle)
  if @game.board.winning_combination?
    winner = @game.current_player_name
    puts "Felicitations, #{winner}  ! Tu as gagné ! "
  else
    puts "match nul!"
  end
  end


  # Méthode pour obtenir le nom du joueur actuel
  def current_player_name
    @game.current_player.name
  end
end
