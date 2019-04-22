sum = gets.split.map(&:to_i).reduce(&:+)
puts sum < 10 ? sum : 'error'