# rubocop:disable all

class Nought
  attr_reader :name, :playing_piece

  private

  def initialize
    @name = "Nought"
    @playing_piece = "O"
  end
end