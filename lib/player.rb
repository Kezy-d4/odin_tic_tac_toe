# rubocop:disable all

class Player
  private

  attr_reader :player_number

  @@number_of_players = 0

  def initialize
    @@number_of_players += 1
    @player_number = "Player#{Player.total_number_of_players}"
  end

  def self.total_number_of_players
    @@number_of_players
  end
end


# rubocop:enable all
