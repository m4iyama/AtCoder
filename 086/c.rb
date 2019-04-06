n = gets.to_i
ts, xs, ys = [], [], []
n.times do
  ti, xi, yi = gets.split.map(&:to_i)
  ts << ti; xs << xi; ys << yi
end

def can_travel(n, ts, xs, ys)
  t, x, y = 0, 0, 0
  n.times do |i|
    ti, xi, yi = ts[i], xs[i], ys[i]
    dt, dx, dy = ti - t, xi - x, yi - y
    dd = dx.abs + dy.abs

    return false if dt < dd || (dd - dt).odd?

    t, x, y = ti, xi, yi
  end

  true
end

puts can_travel(n, ts, xs, ys) ? 'Yes' : 'No'
