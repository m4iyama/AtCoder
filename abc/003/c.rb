_, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_f)

a = a.sort[(a.size-k)..-1]
r = 0
a.each do |ai|
  r = 0.5 * (r + ai)
end

puts r
