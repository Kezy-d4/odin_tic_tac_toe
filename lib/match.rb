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

    alert_assignments
  end

  def new_line
    puts "\n"
  end

  def flip_a_coin
    [true, false].sample # 50% chance of flipping true
  end

  def greet_players
    new_line

    puts "Welcome #{player1.player_number} and #{player2.player_number} " \
         'to a game of Tic-Tac-Toe. Good luck, and have fun!'

    sleep(3)
  end

  def assign_playing_pieces
    # flip a coin to assign player1's piece
    player1.playing_piece_assignment = (flip_a_coin ? NOUGHTS : CROSSES)

    # assign player2 the opposite piece to player1
    player2.playing_piece_assignment = 
      (player1.playing_piece_assignment == NOUGHTS ? CROSSES : NOUGHTS)
  end
end

def alert_assignments
  new_line

  puts 'Now randomly assigning the playing pieces...'

  sleep(3)

  new_line

  puts "It's been decided! #{player1.player_number} will play " \
       "#{player1.playing_piece_assignment} and " \
       "#{player2.player_number} will play " \
       "#{player2.playing_piece_assignment}."

  sleep(3)
end
