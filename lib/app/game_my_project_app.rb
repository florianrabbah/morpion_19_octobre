require_relative './board_my_project_app'
require_relative './players_my_project_app'

class Game
  attr_accessor :players, :current_player, :board

  def initialize(player1_name, player2_name)
    @players = [Player.new(player1_name, 0, 1), Player.new(player2_name, 0, 2)]
    @current_player = @players.first
    @board = Board.new
  end

  def switch_players
    @current_player = (@current_player == @players.first) ? @players.last : @players.first
  end

  def play_turn(position)
    if @board.cells[position[0]][position[1]] == " "
      @board.cells[position[0]][position[1]] = @current_player.symbol
      switch_players
      return true
    else
      return false
    end
  end
end
