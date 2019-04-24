a, b = gets.split.map(&:to_i)
puts [a%3, b%3, (a+b)%3].map(&:zero?).any? ? 'Possible' : 'Impossible'