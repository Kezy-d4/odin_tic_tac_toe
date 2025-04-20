# rubocop:disable all

require_relative 'player'
require_relative 'pieces'

class Match
  attr_reader :player1, :player2
  
  private

  def initialize
    @player1 = Player.new
    @player2 = Player.new

    greet_players

    assign_playing_pieces
  end
  
  def greet_players
    puts "Welcome #{player1.player_number} and #{player2.player_number} " +
         "to a game of Tic-Tac-Toe. Good luck, and have fun!"

    sleep(3)
  end

  def flip_a_coin
    [true, false].sample # 50% chance of flipping true
  end

  def assign_playing_pieces
    puts "Now randomly assigning the playing pieces..."

    sleep(3)

    # flip a coin to assign player1's piece
    flip_a_coin ? player1.playing_piece = NOUGHTS : 
    player1.playing_piece = CROSSES

    # assign player2 the opposite piece to player1
    player1.playing_piece == NOUGHTS ? player2.playing_piece = CROSSES :
    player2.playing_piece = NOUGHTS

    puts "It's decided! #{player1.player_number} will play " +
         "#{player1.playing_piece} and #{player2.player_number} " +
         "will play #{player2.playing_piece}."

    sleep(3)
  end
end

# rubocop:enable all