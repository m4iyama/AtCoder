h, w = gets.split.map(&:to_i)

def min_diff(h, w)
  min_diff = h * w
  # pattern 1
  if h % 3 == 0
    return 0
  else
    min_diff = [min_diff, w].min
  end

  # pattern 2
  1.upto(h-1).each do |hh|
    if w.even?
      diff = (hh * w - (h - hh) * (w / 2)).abs
      min_diff = [min_diff, diff].min
    else
      areas = [hh * w, (h - hh) * (w - 1) / 2, (h - hh) * (w + 1)/ 2]
      diff = areas.max - areas.min
      min_diff = [min_diff, diff].min
    end
  end

  min_diff
end

puts [min_diff(h, w), min_diff(w, h)].min
