a, b, c, k = gets.split.map(&:to_i)
s, t = gets.split.map(&:to_i)

sum = a * s + b * t
sum -= c * (s + t) if s + t >= k

puts sum
