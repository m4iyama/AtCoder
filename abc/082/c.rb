n = gets.to_i
h = Hash.new {|h, k| h[k] = 0}
gets.split.map(&:to_i).each {|x| h[x] += 1}

c = 0
h.each_pair do |k, v|
  if k < v
    c += v - k
  elsif k > v
    c += v
  end
end

puts c
