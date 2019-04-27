n, h = gets.split.map(&:to_i)
ks = n.times.map { gets.split.map(&:to_i) }

max_slash = ks.map { |k| k[0] }.max
ks = ks.select { |k| k[1] >= max_slash }
throws = ks.map { |k| k[1] }.sort.reverse

def throw_times(throws, h)
  d = 0
  i = 0
  until d >= h
    d += throws[i]
    i += 1
  end
  i
end

if throws.reduce(&:+) >= h
  puts throw_times(throws, h)
else
  slash_damage = (h - throws.reduce(&:+))
  puts (slash_damage.to_f / max_slash).ceil + throws.size
end
