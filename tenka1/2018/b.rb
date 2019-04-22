a, b, k = gets.split.map(&:to_i)

k.times do |i|
  if i.even?
    a -= 1 if a.odd?

    l = a / 2
    a -= l
    b += l
  else
    b -= 1 if b.odd?

    l = b / 2
    b -= l
    a += l
  end
end

puts "#{a} #{b}"