n, x = gets.split.map(&:to_i)
ms = []
n.times { ms << gets.to_i }

x -= ms.reduce(&:+)
puts n + (x / ms.min)
