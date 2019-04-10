n = gets.to_i
s = n.times.map { gets.chomp }
m = gets.to_i
t = m.times.map { gets.chomp }

h = s.each_with_object(Hash.new(0)) { |si, hash| hash[si] += 1 }
h = t.each_with_object(h) { |ti, hash| hash[ti] -= 1 }

puts [h.values.max, 0].max
