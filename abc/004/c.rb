n = gets.to_i
n %= 30

cs = [1, 2, 3, 4, 5, 6]
0.upto(n-1) do |i|
  l = (i % 5)
  r = l + 1

  cs[l], cs[r] = cs[r], cs[l]
end

puts cs.join