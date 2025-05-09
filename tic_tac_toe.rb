# frozen_string_literal: true

require 'colorize'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/pieces'
require_relative 'lib/helper'

# The game
class TicTacToe
  include Helper

  attr_accessor :player1, :player2, :board, :active_player

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @board = Board.new
    @active_player = ''
  end

  def play_game
    start_game

    9.times do
      game_loop
      break if board.crosses_winner? || board.noughts_winner?
    end

    board.crosses_winner? || board.noughts_winner? ? winner : draw
  end

  def start_game
    greet_players_message
    playing_piece_assignment_message
    assign_playing_pieces
    assign_full_ids
    playing_pieces_assigned_message
    determine_first_mover
  end

  def game_loop
    prompt_active_player

    active_player.prompt_player_input until active_player.valid_player_input?

    update_board(active_player.player_input)
    active_player.remove_selected_input(active_player.player_input)
    active_player.clear_player_input
    switch_active_player unless board.crosses_winner? || board.noughts_winner?
  end

  def prompt_active_player
    active_player_message
    board.render_board
  end

  def update_board(player_input)
    case player_input
    when 1
      board.spot1 = active_player.playing_piece
    when 2
      board.spot2 = active_player.playing_piece
    when 3
      board.spot3 = active_player.playing_piece
    when 4
      board.spot4 = active_player.playing_piece
    when 5
      board.spot5 = active_player.playing_piece
    when 6
      board.spot6 = active_player.playing_piece
    when 7
      board.spot7 = active_player.playing_piece
    when 8
      board.spot8 = active_player.playing_piece
    when 9
      board.spot9 = active_player.playing_piece
    end
  end

  def switch_active_player
    self.active_player =
      [player1, player2].find { |player| active_player != player }
  end

  def winner
    puts "#{active_player.full_id} wins!"
    board.render_board
  end

  def draw
    puts 'It\'s a Draw!'
    board.render_board
  end

  def greet_players_message
    puts "Welcome #{player1.name} and #{player2.name} to " \
         'a game of Tic-Tac-Toe. Good luck, and have fun!'
    sleep(3)
  end

  def playing_piece_assignment_message
    puts 'Now flipping a coin to decide how to assign your playing pieces...'
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
    sleep(2.5)

    puts player1.full_id
    sleep(2)
    puts player2.full_id
    sleep(2)

    puts "#{Cross::CROSSES} plays first. Let's play."
    sleep(2)
  end

  def determine_first_mover
    self.active_player =
      [player1, player2].find { |player| player.playing_piece == Cross::CROSS }
  end

  def active_player_message
    puts "#{active_player.full_id}, it's your move! " \
         'Submit the number that corresponds to the spot on the board where ' \
         'you\'d like to place your next piece:'
  end
end

my_game = TicTacToe.new
my_game.play_game
