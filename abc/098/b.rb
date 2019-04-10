require 'set'

n = gets.to_i
s = gets

max = 0
n.times do |i|
  x = s[0..i].chars.to_set
  y = s[i+1..-1].chars.to_set

  max = [max, (x & y).size].max
end

puts max