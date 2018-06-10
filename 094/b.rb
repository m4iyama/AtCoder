n, m, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts [a.count {|ai| ai < x}, a.count {|ai| ai > x}].min
