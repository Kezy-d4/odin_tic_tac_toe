# rubocop:disable all

def flip_a_coin
  [true, false].sample # 50% chance of flipping true
end

# p flip_a_coin

puts "\nPlayer2: Crosses(X), it's your move! " \
     "Type the corresponding number on the board to place your next piece."
puts "\n"
sleep(3)
