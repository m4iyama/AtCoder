n, m = gets.split.map(&:to_i)
a = Array.new(n) { Array.new(n) { false } }

m.times do
  ai, bi = gets.split.map {|x| x.to_i - 1}
  a[ai][bi], a[bi][ai] = true, true
end

c = 0
(1...n).to_a.permutation.each do |r|
  rr = [0, *r]
  c += 1 if rr.each_cons(2).map {|(f, t)| a[f][t]}.all?
end

puts c
