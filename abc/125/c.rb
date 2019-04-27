def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

n = gets.to_i
a = gets.split.map(&:to_i)

l = [0, a[0]]
g = a[0]
1.upto(n - 2).each do |i|
  g = gcd(g, a[i])
  l << g
end

r = [a[-1], 0]
g = a[-1]
(n - 2).downto(1) do |i|
  g = gcd(g, a[i])
  r.unshift(g)
end

p (0...n).map { |i|
  next r[0] if i == 0
  next l[n - 1] if i == n - 1
  gcd(l[i], r[i])
}.max
