n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
c = gets.split.map(&:to_i).sort

count = 0
b.each do |bb|
  ai = a.bsearch_index {|x| x >= bb} || n
  ci = c.bsearch_index {|x| x > bb} || n
  count += ai * (n - ci)
end

puts count
