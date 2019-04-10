a, b, c, d = gets.split.map(&:to_f)

case a / b <=> c / d
when -1
  puts 'TAKAHASHI'
when 1
  puts 'AOKI'
else
  puts 'DRAW'
end