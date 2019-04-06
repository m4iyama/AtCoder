s = gets.chomp
k = gets.to_i

h = Hash.new
0.upto(s.size - k) do |i|
  subs = s[i...(i+k)]
  h[subs] = true
end

puts h.size