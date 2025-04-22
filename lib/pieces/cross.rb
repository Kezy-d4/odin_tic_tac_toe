# frozen_string_literal: true

require_relative '../pieces'
require_relative '../helper'

# Cross game pieces
class Cross
  attr_reader :crosses, :cross

  CROSSES = 'Crosses (X)'
  CROSS = 'X'
end
