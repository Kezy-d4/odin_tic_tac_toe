require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/pieces'
require_relative 'lib/helper'

class TicTacToe
  include Helper

  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def greet_players_message
    puts "Welcome #{player1.name} and #{player2.name} to " \
         'a game of Tic-Tac-Toe. Good luck, and have fun!'
    sleep(3)
  end

  def playing_piece_assignment_message
    puts 'Now flipping a coin to assign your playing pieces...'
    sleep(3)
  end

  def assign_playing_pieces
    # flip a coin to assign player1's piece.
    player1.playing_piece =
      (flip_a_coin ? Nought::NOUGHT : Cross::CROSS)

    # assign player2 the opposite piece to player1.
    player2.playing_piece =
      (if player1.playing_piece == Nought::NOUGHT
         Cross::CROSS
       else
         Nought::NOUGHT
       end)
  end

  def assign_full_ids
    player1.full_id = "#{player1.name}:(#{player1.playing_piece})"
    player2.full_id = "#{player2.name}:(#{player2.playing_piece})"
  end

  def playing_pieces_assigned_message
    puts 'It\'s been decided. Your assignments are as follows: '
    sleep(3)

    puts player1.full_id
    sleep(3)
    puts player2.full_id
    sleep(3)

    puts 'Let\'s play!'
    sleep(3)
  end
end

my_game = TicTacToe.new
my_game.greet_players_message
my_game.playing_piece_assignment_message
my_game.assign_playing_pieces
my_game.assign_full_ids
my_game.playing_pieces_assigned_message
