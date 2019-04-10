n = gets.to_i
h = Hash.new(0)
(0...n).each { h[gets.chomp] += 1 }

mxi = -1
mxc = 0
h.each do |i, c|
  mxi, mxc = i, c if c > mxc
end

puts mxi

