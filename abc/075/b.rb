h, w = gets.split.map(&:to_i)
s = h.times.map { gets.chomp }

(0...h).each do |hh|
  (0...w).each do |ww|
    next if s[hh][ww] == '#'
    n = [[hh-1, ww], [hh-1, ww+1], [hh, ww+1], [hh+1, ww+1], [hh+1, ww], [hh+1, ww-1], [hh, ww-1], [hh-1, ww-1]].select {|(nh, nw)|
      nh.between?(0, h-1) && nw.between?(0, w-1)
    }.map {|(nh, nw)| s[nh][nw]}.count('#')
    s[hh][ww] = n.to_s
  end
end

s.each(&method(:puts))
