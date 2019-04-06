m = gets.to_i
km = m / 1000.0

vv = if km < 0.1
       '00'
     elsif km <= 5
       printf('%02d', (km * 10).to_i)
     elsif km <= 30
       (km + 50).to_i.to_s
     elsif km <= 70
       ((km - 30) / 5 + 80).to_i.to_s
     else
       '89'
     end

puts vv
