n = gets.to_i
a = gets.split.map(&:to_i)

h = Hash.new {|h, k| h[k] = 0}
a.each do |x|
  h[x-1] += 1
  h[x] += 1
  h[x+1] += 1
end

puts h.each_value.max
