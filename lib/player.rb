require_relative 'board'

class Player
  attr_reader :player_number, :name

  @@number_of_players = 0

  def initialize
    @@number_of_players += 1
    @player_number = @@number_of_players
    @name = "Player#{player_number.to_s}"
    @playing_piece_assignment = ""
  end
end
