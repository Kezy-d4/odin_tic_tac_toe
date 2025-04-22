require_relative 'board'
require_relative 'pieces'
require_relative 'helper'

class Player
  attr_reader :player_number, :name
  attr_accessor :playing_piece, :full_id

  @@number_of_players = 0

  def initialize
    @@number_of_players += 1
    @player_number = @@number_of_players
    @name = "Player#{player_number}"
    @playing_piece = ''
    @full_id = ''
  end
end
