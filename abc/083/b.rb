n, a, b = gets.split.map(&:to_i)

sum = 0
(1..n).each do |i|
  x = i.to_s(10).chars.map(&:to_i).reduce(&:+)
  sum += i if a <= x && x <= b
end

puts sum
