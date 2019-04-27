n, k = gets.split.map(&:to_i)
h = Hash.new {|h, e| h[e] = 0}
gets.split.map(&:to_i).each {|x| h[x] += 1}

if h.size <= k
  puts 0
else
  puts h.values.sort.reverse[k..-1].reduce(&:+)
end
