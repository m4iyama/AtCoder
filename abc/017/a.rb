sum = 0
1.upto(3).each do
  s, e = gets.split.map(&:to_i)
  sum += (s * e * 0.1).to_i
end

puts sum