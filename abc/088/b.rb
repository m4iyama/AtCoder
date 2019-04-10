n = gets.to_i
a = gets.split.map(&:to_i).sort {|a, b| b <=> a}

puts a.select.with_index {|ai, i| i.even?}.reduce(&:+) - a.select.with_index {|ai, i| i.odd?}.reduce(&:+)
