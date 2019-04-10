l, h = gets.split.map(&:to_i)
n = gets.to_i
n.times do
  t = gets.to_i
  if t < l
    puts l - t
  elsif t <= h
    puts 0
  else
    puts -1
  end
end