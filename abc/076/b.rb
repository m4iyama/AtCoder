n = gets.to_i
k = gets.to_i

num = 1
n.times do
  num = [num * 2, num + k].min
end

puts num