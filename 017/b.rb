def chokugo?(s)
  return true if s.empty?

  if s.start_with?('ch')
    chokugo?(s[2..-1])
  elsif s.start_with?('o', 'k', 'u')
    chokugo?(s[1..-1])
  else
    false
  end
end

puts chokugo?(gets.chomp) ? 'YES' : 'NO'