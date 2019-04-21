n, T = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)

sum = T
ts.each_cons(2) do |t1, t2|
  sum += [t2 - t1, T].min
end

puts sum
