n500, n100, n50, x = 4.times.map { gets.to_i }

c = 0
(0..n500).each do |i500|
  (0..n100).each do |i100|
    (0..n50).each do |i50|
      c += 1 if 500 * i500 + 100 * i100 + 50 * i50 == x
    end
  end
end

puts c
