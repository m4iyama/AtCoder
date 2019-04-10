a, b, n = 3.times.map { gets.to_i }
while true
  if (n % a).zero? && (n % b).zero?
    puts n
    break
  end
  n += 1
end