n, $s, $t = gets.split.map(&:to_i)

def best?(w)
  $s <= w && w <= $t
end

w = gets.to_i
days = best?(w) ? 1 : 0
2.upto(n) do
  dw = gets.to_i
  w += dw
  days += 1 if best?(w)
end

puts days