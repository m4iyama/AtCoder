n, a, b = gets.split.map(&:to_i)

pos = 0
n.times do
  s, d = gets.split
  d = [d.to_i, a, b].sort[1]
  case s
  when 'East'
    pos += d
  else # West
    pos -= d
  end
end

case pos <=> 0
when 1
  puts ['East', pos.abs.to_s].join(' ')
when -1
  puts ['West', pos.abs.to_s].join(' ')
else # 0
  puts 0
end