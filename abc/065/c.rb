s = gets.chomp

def daydream(s)
  return true if s.size == 0

  if s.start_with?('dreamer')
    daydream(s[7..-1]) || daydream(s[5..-1])
  elsif s.start_with?('dream')
    daydream(s[5..-1])
  elsif s.start_with?('eraser')
    daydream(s[6..-1])
  elsif s.start_with?('erase')
    daydream(s[5..-1])
  else
    false
  end
end

puts daydream(s) ? 'YES' : 'NO'