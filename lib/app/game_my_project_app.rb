require_relative 'board'
require_relative 'players'
#class representant le jeu 
class Game
  attr_accessor :players, :currentplayer, :board

#constructeur de la classe,initialise le jeu avec 2 joueurs et un plateau de jeu  
  def initialize (player1_name, player2_name)
   @players = [Player.new(player1_name, "X"), Player.new(player2_name, "O")]
   @current_player = @players.first
   @board = board.new 
  end 

#methode pour changer de joueur apres chaque tour 
  def switch_players 
   @current_player = (@current_player == @players.first) ? @players.last : @players.first 
  end

#methode pour effectuer un tour de jeu
  def play_turn(position)
    if @board.cases[position].position == " "
       @board.cases[position].position = @current_player.symbol
       switch_players
       return true 
    else 
       return false 
    end 

  end
end