require_relative 'helper'

class Board
  include Helper

  attr_accessor :spot1, :spot2, :spot3, :spot4, :spot5, :spot6, :spot7, :spot8,
                :spot9

  def initialize
    @spot1 = 1
    @spot2 = 2
    @spot3 = 3
    @spot4 = 4
    @spot5 = 5
    @spot6 = 6
    @spot7 = 7
    @spot8 = 8
    @spot9 = 9
  end

  def row1
    [spot1, spot2, spot3]
  end

  def row2
    [spot4, spot5, spot6]
  end

  def row3
    [spot7, spot8, spot9]
  end

  def column_a
    [spot1, spot4, spot7]
  end

  def column_b
    [spot2, spot5, spot8]
  end

  def column_c
    [spot3, spot6, spot9]
  end

  def diagonal_x
    [spot1, spot5, spot9]
  end

  def diagonal_y
    [spot3, spot5, spot7]
  end

  def render_square(spot)
    print "[#{spot}]"
  end

  def render_board
    [row1, row2, row3].each do |row|
      row.each { |spot| render_square(spot) }
      new_line
    end
  end
end

my_board = Board.new
my_board.render_board
