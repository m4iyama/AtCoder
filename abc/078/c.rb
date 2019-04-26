n, m = gets.split.map(&:to_i)
t = m * 1900 + (n - m) * 100
puts 2 ** m * t
