a, b, c = gets.split.map(&:to_i)
1.upto(b) do |k|
  if (a * k) % b == c
    puts 'YES'
    exit
  end
end
puts 'NO'
