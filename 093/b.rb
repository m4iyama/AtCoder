a, b, k = gets.split.map(&:to_i)

puts [*(a..(a+k-1)).to_a, *(b-k+1..b).to_a].uniq.select {|x| a <= x && x <= b}
