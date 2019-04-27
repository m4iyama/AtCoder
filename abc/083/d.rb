s = gets.chomp.chars.map(&:to_i)
c = [s.count(0), s.count(1)]

l = s.size
while c[0] > 0 && c[1] > 0
  c[s.pop] -= 1
  c[s.shift] -= 1
  l -= 1
end

puts l
