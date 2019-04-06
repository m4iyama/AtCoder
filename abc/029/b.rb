sum = 0
12.times do
  sum += 1 if gets.chomp.include?('r')
end
puts sum