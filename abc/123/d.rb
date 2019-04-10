x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

l = b.reduce([]) {|list, bi| list + a.map {|li| li + bi}}
ll = c.reduce([]) {|list, ci| list + l.map {|li| li + ci}}
ll.sort!.reverse!
k.times do |i|
  p ll[i]
end
# # a.each_with_index do |ai, ia|
#   b.each_with_index do |bi, ib|
#     c.each_with_index do |ci, ic|
#       l << [ai + bi + ci, [ia, ib, ic]]
#     end
#   end
# end
# l.sort!.reverse!
# k.times do |i|
#   p l[i]
# end
# a.each do |ai|
#   b.each do |bi|
#     c.each do |ci|
#       l << ai + bi + ci,
#     end
#   end
# end

# l.sort!.reverse!
# k.times do |i|
#   puts l[i]
# end
