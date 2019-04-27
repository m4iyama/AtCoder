n = gets.to_i
a = 2.times.map { gets.split.map(&:to_i) }

cs = a[0][0] + a[1].reduce(0, &:+)
max_cs = cs
(1..(n - 1)).each do |i|
  cs = cs - a[1][i - 1] + a[0][i]
  max_cs = [max_cs, cs].max
end

puts max_cs
