# rubocop:disable all

class Cross
  attr_reader :name, :playing_piece

  private

  def initialize
    @name = "Cross"
    @playing_piece = "X"
  end
end