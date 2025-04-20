# rubocop:disable all

require_relative 'player'

class Match
  attr_reader :player1, :player2
  
  private

  def initialize
    @player1 = Player.new
    @player2 = Player.new

    greet_players

    sleep(2.5)

    flip_a_coin

    sleep(2.5)
  end
  
  def greet_players
    puts "Welcome #{player1.player_number} and #{player2.player_number} " +
         "to a game of Tic-Tac-Toe. Good luck, and have fun!"
  end

  def flip_a_coin
    puts "Now flipping a coin to assign the playing pieces..."
  end
end

# rubocop:enable all