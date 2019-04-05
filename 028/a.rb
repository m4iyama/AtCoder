sc = gets.to_i
if sc < 60
  puts 'Bad'
elsif sc < 90
  puts 'Good'
elsif sc < 100
  puts 'Great'
else
  puts 'Perfect'
end