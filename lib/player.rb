# rubocop:disable all

class Player
  attr_reader :player_number
  attr_accessor :playing_piece
  
  private

  @@number_of_players = 0

  def initialize
    @@number_of_players += 1
    @player_number = "Player#{Player.total_number_of_players}"
    @playing_piece = ""
  end

  def self.total_number_of_players
    @@number_of_players
  end
end

# rubocop:enable all
