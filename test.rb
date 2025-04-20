# rubocop:disable all

def flip_a_coin
  [true, false].sample # 50% chance of flipping true
end

p flip_a_coin
