n = gets.to_i
rs = n.times.map { gets.to_i }.sort.reverse

area = 0
rs.each_with_index do |r, i|
  area += i.even? ? r*r : -r*r
end

puts area *= Math::PI
