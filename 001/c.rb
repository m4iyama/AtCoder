def between?(d, l, u)
  l <= d && d < u
end

def get_dir(deg)
  if between?(deg, 112.5, 337.5)
    'NNE'
  elsif between?(deg, 337.5, 562.5)
    'NE'
  elsif between?(deg, 562.5, 787.5)
    'ENE'
  elsif between?(deg, 787.5, 1012.5)
    'E'
  elsif between?(deg, 1012.5, 1237.5)
    'ESE'
  elsif between?(deg, 1237.5, 1462.5)
    'SE'
  elsif between?(deg, 1462.5, 1687.5)
    'SSE'
  elsif between?(deg, 1687.5, 1912.5)
    'S'
  elsif between?(deg, 1912.5, 2137.5)
    'SSW'
  elsif between?(deg, 2137.5, 2362.5)
    'SW'
  elsif between?(deg, 2362.5, 2587.5)
    'WSW'
  elsif between?(deg, 2587.5, 2812.5)
    'W'
  elsif between?(deg, 2812.5, 3037.5)
    'WNW'
  elsif between?(deg, 3037.5, 3262.5)
    'NW'
  elsif between?(deg, 3262.5, 3487.5)
    'NNW'
  else
    'N'
  end
end

def get_w(dis)
  v = (dis / 60.0).round(1)
  if v <= 0.2
    0
  elsif v <= 1.5
    1
  elsif v <= 3.3
    2
  elsif v <= 5.4
    3
  elsif v <= 7.9
    4
  elsif v <= 10.7
    5
  elsif v <= 13.8
    6
  elsif v <= 17.1
    7
  elsif v <= 20.7
    8
  elsif v <= 24.4
    9
  elsif v <= 28.4
    10
  elsif v <= 32.6
    11
  else
    12
  end
end


deg, dis = gets.split.map(&:to_i)
dir = get_dir(deg)
w = get_w(dis)

if w == 0
  puts 'C 0'
else
  puts [dir, w.to_s].join(' ')
end
