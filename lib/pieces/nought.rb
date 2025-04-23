# frozen_string_literal: true

require_relative '../pieces'
require_relative '../helper'
require 'colorize'

# Nought game pieces
class Nought
  attr_reader :noughts, :nought

  NOUGHT = 'O'.colorize(:blue)
  NOUGHTS = "Noughts (#{Nought::NOUGHT})"
end
