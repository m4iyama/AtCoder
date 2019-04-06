a, b, c = gets.split.map(&:to_i).sort

x1 = c - a
x2 = c - b

if x1.even? && x2.even?
  puts x1 / 2 + x2 / 2
elsif x1.odd? && x2.odd?
  puts 1 + (x1 - 1) / 2 + (x2 - 1) / 2
elsif x1.odd? && x2.even?
  puts 1 + (x1 + 1) / 2 + x2 / 2
else
  puts x1 / 2 + 1 + (x2 + 1) / 2
end
