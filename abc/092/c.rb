n = gets.to_i
a = gets.split.map(&:to_i)

a.unshift(0).push(0)
tot_d = a.each_cons(2).reduce(0) { |sum, (x, y)| sum + (y - x).abs }

(1..n).each do |i|
  puts tot_d + (a[i+1] - a[i-1]).abs - (a[i+1] - a[i]).abs - (a[i] - a[i-1]).abs
end
