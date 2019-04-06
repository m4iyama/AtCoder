w, h = gets.split.map(&:to_i)
puts (w * 3 == h * 4) ? '4:3' : '16:9'
