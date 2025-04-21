require_relative 'helper'
require_relative 'pieces/cross'
require_relative 'pieces/nought'

class Board
  include Helper

  attr_accessor :square1_occupant, :square2_occupant, :square3_occupant,
  :square4_occupant, :square5_occupant, :square6_occupant,
  :square7_occupant, :square8_occupant, :square9_occupant
  
  def initialize
    @square1_occupant = 1
    @square2_occupant = 2
    @square3_occupant = 3
    @square4_occupant = 4
    @square5_occupant = 5
    @square6_occupant = 6
    @square7_occupant = 7
    @square8_occupant = 8
    @square9_occupant = 9
  end

  def build_square(occupant)
    "[#{occupant}]"
  end

  def build_row1
    [build_square(square1_occupant), 
    build_square(square2_occupant), 
    build_square(square3_occupant)].join
  end

  def build_row2
    [build_square(square4_occupant), 
    build_square(square5_occupant), 
    build_square(square6_occupant)].join
  end

  def build_row3
    [build_square(square7_occupant), 
    build_square(square8_occupant), 
    build_square(square9_occupant)].join
  end

  def build_board
    puts build_row1
    puts build_row2
    puts build_row3
  end

  def place_playing_piece(square_id)
    
  end
end
