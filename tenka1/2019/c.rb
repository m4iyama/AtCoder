n = gets.to_i
s = gets.chomp

n_hash_left = 0
n_dot_right = s.count('.')
min_change = n_hash_left + n_dot_right
0.upto(n-1) do |b|
  if s[b] == '.'
    n_dot_right -= 1
  else
    n_hash_left += 1
  end
  min_change = [min_change, n_hash_left + n_dot_right].min
end

puts min_change

