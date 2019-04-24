n = gets.to_i
a = gets.split.map(&:to_i)

a_4n = a.select {|x| (x % 4).zero?}
a_2n = a.select {|x| x.even? && !(x % 4).zero?}
a_1n = a.select(&:odd?)

if a_2n.empty?
  puts a_4n.size >= a_1n.size - 1 ? 'Yes' : 'No'
else
  puts a_4n.size >= a_1n.size ? 'Yes' : 'No'
end
