_ = gets
a = gets.split.map(&:to_i)

c = 0
while a.map(&:even?).all?
  a = a.map {|x| x / 2}
  c += 1
end

puts c