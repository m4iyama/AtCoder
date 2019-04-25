n = gets.to_i
h = Hash.new {|h, k| h[k] = false}
n.times do
  a = gets.to_i
  h[a] = !h[a]
end

puts h.values.count(true)