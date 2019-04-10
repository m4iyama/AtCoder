n = gets.to_i
x = gets.split.map(&:to_i)

m1 = x.sort[n/2-1]
m2 = x.sort[n/2]
mm = 0.5 * (m1 + m2)

p [m1, m2, mm]

x.each do |xi|
  puts xi < mm ? m2 : m1
end