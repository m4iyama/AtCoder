a, b, c, x, y = gets.split.map(&:to_i)

if c < 0.5 * (a + b)
  if x < y
    puts c * 2 * x + [b, 2 * c].min * (y - x)
  else
    puts c * 2 * y + [a, 2 * c].min * (x - y)
  end
else
  puts a * x + b * y
end