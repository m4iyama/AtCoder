n = gets.to_i

def division_times(k)
  t = 0
  while (k % 2).zero?
    k /= 2
    t += 1
  end
  t
end

max_times = 0
fav_num = 1

(2..n).each do |k|
  if division_times(k) > max_times
    max_times = division_times(k)
    fav_num = k
  end
end

puts fav_num
