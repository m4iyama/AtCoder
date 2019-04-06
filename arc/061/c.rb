s = gets.chomp

l = []
(0..(s.size-1)).each do |num_plus|
  (1..(s.size-1)).to_a.combination(num_plus).each do |positions|
    ss = s.dup
    positions.reverse.each do |pos|
      ss.insert(pos, '+')
    end
    l << ss
  end
end

puts l.map {|s| s.split('+').map(&:to_i).reduce(&:+)}.reduce(&:+)
