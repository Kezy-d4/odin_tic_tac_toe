# frozen_string_literal: true

require_relative 'board'
require_relative 'pieces'
require_relative 'helper'

# The players
class Player
  attr_reader :player_number, :name
  attr_accessor :playing_piece, :full_id, :player_input, :valid_input

  @@number_of_players = 0
  @@valid_input = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def initialize
    @@number_of_players += 1
    @player_number = @@number_of_players
    @name = "Player#{player_number}"
    @playing_piece = ''
    @full_id = ''
    @player_input = ''
  end

  def prompt_player_input
    puts 'Your choice?'
    self.player_input = gets.to_i
  end

  def valid_player_input?
    @@valid_input.include?(player_input)
  end

  def remove_selected_input(player_input)
    @@valid_input.reject! { |e| e == player_input }
  end

  def clear_player_input
    self.player_input = ''
  end
end
