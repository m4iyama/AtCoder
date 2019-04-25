n, m = gets.split.map(&:to_i)
n1, nn = [], []
m.times do
  a, b = gets.split.map(&:to_i)
  n1 << b if a == 1
  nn << a if b == n
end

puts (n1 & nn).empty? ? 'IMPOSSIBLE' : 'POSSIBLE'

