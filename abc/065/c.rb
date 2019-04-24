D = 1000000007

n, m = gets.split.map(&:to_i)
diff = (n - m).abs

def fact(n)
  return 1 if n == 0

  1.upto(n).reduce(1, &:*)
end

if diff == 0
  puts 2 * fact(n) * fact(m) % D
elsif diff == 1
  puts fact(n) * fact(m) % D
else
  puts 0
end

