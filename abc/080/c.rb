n = gets.to_i
fs = n.times.map { gets.split.map(&:to_i) }
ps = n.times.map { gets.split.map(&:to_i) }

ss = [0, 1].repeated_permutation(10).select {|s| s.reduce(&:+) > 0}

max_p = -1000000000
ss.each do |s|
  p = 0
  fs.each_with_index  do |f, i|
    t = s.zip(f).reduce(0) {|sum, (si, fi)| sum + si * fi}
    p += ps[i][t]
  end
  max_p = [max_p, p].max
end

puts max_p
