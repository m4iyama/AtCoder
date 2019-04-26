n = gets.to_i
k = gets.to_i
xs = gets.split.map(&:to_i)

puts xs.reduce(0) {|sum, x| sum += 2 * [x, k - x].min}