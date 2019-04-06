names = 0.upto(1).map{ gets.chomp }
puts names.sort_by(&:size)[1]
