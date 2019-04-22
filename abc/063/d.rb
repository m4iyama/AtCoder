$n, $a, $b = gets.split.map(&:to_i)
$hs = $n.times.map { gets.to_i }
max_t = ($hs.max.to_f / $b).ceil

def enough(t)
  return false if t == 0

  $hs.map {|h| h - t * $b}.select {|h| h > 0}.reduce(0) { |times, rh|
    times + (rh.to_f / ($a - $b)).ceil
  } <= t
end

def is_min_enough(t)
  enough(t) && !enough(t-1)
end


def find_min_enough_t(min, max)
  mid = (min + max) / 2
  if is_min_enough(mid)
    mid
  elsif enough(mid)
    find_min_enough_t(min, mid-1)
  else
    find_min_enough_t(mid+1, max)
  end
end

puts find_min_enough_t(1, max_t)
