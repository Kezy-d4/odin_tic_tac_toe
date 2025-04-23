# frozen_string_literal: true

require_relative '../pieces'
require_relative '../helper'

# Cross game pieces
class Cross
  attr_reader :crosses, :cross

  CROSS = 'X'.colorize(:red)
  CROSSES = "Crosses (#{Cross::CROSS})"
end
