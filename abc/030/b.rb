n, m = gets.split.map(&:to_i)
n %= 12

short_deg = (360 / 12) * (n + (m / 60.0))
long_deg = 360 * (m / 60.0)

diff = (long_deg - short_deg).abs
puts [diff, 360 - diff].min