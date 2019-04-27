n = gets.to_i
vs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

puts vs.zip(cs).map { |(v, c)| v - c }.select { |x| x > 0 }.reduce(0, &:+)
