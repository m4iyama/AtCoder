h, w = gets.split.map(&:to_i)
f = []
h.times do
  f << gets.chomp
end

def can_draw?(f, h, w)
  def connected?(f, hh, ww, h, w)
    (hh > 0 && f[hh-1][ww] == '#') || (hh < h - 1 && f[hh+1][ww] == '#') \
    || (ww > 0 && f[hh][ww-1] == '#') || (ww < w - 1 && f[hh][ww+1] == '#')
  end

  h.times do |hh|
    w.times do |ww|
      return false if f[hh][ww] == '#' && !f[hh][ww].connected?(f, hh, ww, h, w)
    end
  end

  true
end

puts can_draw?(f, h, w) ? 'Yes' : 'No'