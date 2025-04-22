# frozen_string_literal: true

# General helper methods
module Helper
  def new_line
    puts "\n"
  end

  def flip_a_coin
    [true, false].sample # 50% chance of flipping true
  end

  def ellipsis
    3.times do
      sleep(1)
      print '.'
    end
  end
end
