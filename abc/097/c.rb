require 'set'

s = gets.chomp
k = gets.to_i

set = Set.new()
(0...s.length).each do |i|
  (i...s.length).each do |j|
    set.add(s[i..j])
  end
end

puts set.to_a.sort[k-1]