n, m = gets.split.map(&:to_i)

a = Array.new(n) { Array.new(n) { false } }

m.times do
  x, y = gets.split.map {|x| x.to_i - 1}
  a[x][y], a[y][x] = true, true
end

n.downto(1)