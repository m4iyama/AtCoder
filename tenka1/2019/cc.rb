def num_change(s, n)
  return 0 if s.chars.uniq.size == 1

  num_hash_to_change = s[0...s.rindex('.')].count('#')
  num_dot_to_change = s[s.index('#')...n].count('.')

  [num_hash_to_change, num_dot_to_change].min
end

['#', '.'].repeated_permutation(7).map(&:join).each do |s|
  puts s
  puts num_change(s, 7)
  puts
end
