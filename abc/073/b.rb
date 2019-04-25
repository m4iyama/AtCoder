n = gets.to_i
p = 0
n.times do
  l, r = gets.split.map(&:to_i)
  p += (r - l) + 1
end

puts p