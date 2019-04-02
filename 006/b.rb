n = gets.chomp.to_i
case n
when 1
  puts 0
when 2
  puts 0
when 3
  puts 1
else
  a1 = 0
  a2 = 0
  a3 = 1
  4.upto(n) do
    s = (a1 + a2 + a3) % 10007
    a1 = a2
    a2 = a3
    a3 = s
  end
  puts a3
end
