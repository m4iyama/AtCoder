n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sx = x.to_s(2)
sx = ('0' * (n - sx.size) + sx).reverse

puts sx.chars.zip(a).reduce(0) {|sum, (c, p)|
  sum + c.to_i * p
}
