a = gets.to_i
puts a.even? ? (a/2) * (a/2) : (a-1)/2 * ((a-1)/2 + 1)