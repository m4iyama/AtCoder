s = gets.chomp

splits = []
s.chars.each_with_index do |c, i|
  splits << i if i != 0 && c != s[i-1]
end

splits.reverse.each do |i|
  s.insert(i, '$')
end

puts s.split('$').map {|si| si[0] + si.size.to_s}.join
