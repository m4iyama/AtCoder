def equ(a, b)
  if a == b
    true
  elsif a == '@' && b == '@'
    true
  elsif a == '@' && 'atcoder'.include?(b)
    true
  elsif 'atcoder'.include?(a) && b == '@'
    true
  else
    false
  end
end

s = gets.chomp
t = gets.chomp

puts s.chars.zip(t.chars).map{|si, ti| equ(si, ti)}.all? ? 'You can win' : 'You will lose'