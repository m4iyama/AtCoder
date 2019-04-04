def num_removes(n)
  c = 0
  while n.even? || n % 3 == 2
    n -= 1
    c += 1
  end
  c
end

n = gets.to_i
a = gets.split.map(&:to_i)

puts a.map(&method(:num_removes)).reduce(&:+)
