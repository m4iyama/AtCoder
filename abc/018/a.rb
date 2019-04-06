a, b, c = gets.to_i, gets.to_i, gets.to_i
arr = [a, b, c].sort.reverse

puts arr.index(a) + 1
puts arr.index(b) + 1
puts arr.index(c) + 1
