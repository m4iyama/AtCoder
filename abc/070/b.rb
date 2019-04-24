a, b, c, d = gets.split.map(&:to_i)
t = 0
0.upto(100) do |i|
  if i.between?(a, b) && i.between?(c, d)
    t += 1
  end
end

puts t == 0 ? 0 : t - 1