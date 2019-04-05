def city_name(s, p)
  sum = p.reduce(&:+)
  p.each_with_index  do |pp, i|
    return s[i] if pp > sum / 2.0
  end
  'atcoder'
end

n = gets.to_i
s, p = [], []
n.times do
  si, pi = gets.split
  s << si
  p << pi.to_i
end

puts city_name(s, p)

