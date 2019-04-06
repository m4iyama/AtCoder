x1, y1, x2, y2, x3, y3 = gets.split.map(&:to_i)

x2 -= x1; x3 -= x1
y2 -= y1; y3 -= y1

puts 0.5 * (x2 * y3 - x3 * y2).abs