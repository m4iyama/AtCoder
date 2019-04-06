n, t = gets.split.map(&:to_i)
a = 1.upto(n).map{ gets.to_i }

a = a.reduce([]) {|arr, x| arr + (x...(x+t)).to_a}
puts n * t - 1.upto()
