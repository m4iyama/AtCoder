n = gets.to_i
s = gets.chomp
k = gets.to_i

c = s[k-1]
puts s.chars.map{|x| x == c ? x : '*'}.join
