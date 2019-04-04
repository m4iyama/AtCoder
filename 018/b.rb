s = gets.chomp
n = gets.to_i
1.upto(n) do
  l, r = gets.split.map {|x| x.to_i - 1}
  s1 = l == 0 ? '' : s[0..(l-1)]
  s2 = s[l..r].reverse
  s3 = s[(r+1)..-1]
  s = s1 + s2 + s3
end

puts s