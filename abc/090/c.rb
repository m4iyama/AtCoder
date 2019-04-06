n, m = gets.split.map(&:to_i)
n, m = [n, m].min, [n, m].max

if n > 1
  puts (n - 2) * (m - 2)
else
  if m > 3
    puts m - 2
  elsif m == 2
    puts 0
  else
    puts 1
  end
end