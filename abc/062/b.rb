h, w = gets.split.map(&:to_i)

puts '#' * (w + 2)
h.times do
  puts '#' + gets.chomp + '#'
end
puts '#' * (w + 2)
