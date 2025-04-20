# rubocop:disable all

require_relative 'lib/player'
require_relative 'lib/match'

class TicTacToe
  private

  def initialize
    Match.new
  end
end

TicTacToe.new