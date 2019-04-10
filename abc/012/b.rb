n = gets.to_i
hh = format('%02d', n / 3600)
mm = format('%02d', (n % 3600) / 60)
ss = format('%02d', n % 60)

puts [hh, mm, ss].join(':')
