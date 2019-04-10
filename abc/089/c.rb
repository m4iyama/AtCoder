n = gets.to_i
s = n.times.map { gets.chomp }.uniq
h = s.each_with_object(Hash.new(0)) {|name, h| h[name[0]] += 1 if 'MARCH'.chars.include? name[0]}

if h.keys.size < 3
  puts 0
else
  puts h.values.combination(3).reduce(0) {|sum, arr| sum + arr.reduce(&:*)}
end
