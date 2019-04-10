n = gets.to_i
d, x = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }

puts x + a.map { |ai| 1 + (d - 1) / ai }.reduce(&:+)
