x, y = gets.split.map(&:to_i)
c = 0
while x <= y
  c += 1
  x *= 2
end

puts c