m, d = gets.split.map(&:to_i)
puts (m % d).zero? ? 'YES' : 'NO'