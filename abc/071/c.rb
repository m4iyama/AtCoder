n = gets.to_i
a = gets.split.map(&:to_i)
c = Hash.new { |h, k| h[k] = 0 }

a.each do |x|
  c[x] += 1
end

ps = []
c.each_pair do |k, v|
  if v >= 2
    ps += [k] * (v / 2)
  end
end

ps = ps.sort.reverse

if ps.size.zero?
  puts 0
else
  puts ps[0] * ps[1]
end
