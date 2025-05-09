# frozen_string_literal: true

require_relative 'pieces'
require_relative 'helper'

# The game board
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

  def win_conditions
    [row1, row2, row3, column_a, column_b, column_c, diagonal_x, diagonal_y]
  end

  def evaluate_win_conditions(playing_piece)
    win_conditions.find do |win_condition|
      win_condition.all?(playing_piece)
    end
  end

  def noughts_winner?
    true if evaluate_win_conditions(Nought::NOUGHT)
  end

  def crosses_winner?
    true if evaluate_win_conditions(Cross::CROSS)
  end
end
