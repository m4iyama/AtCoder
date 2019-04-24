def is_gu_string(s)
  return false if s.size.odd?

  s[0...(s.size/2)] == s[(s.size/2)...s.size]
end

s = gets.chomp
s = s[0...(s.size-2)]
loop do
  if is_gu_string(s)
    puts s.size
    break
  end
  s = s[0...(s.size-2)]
end