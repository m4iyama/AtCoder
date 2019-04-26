ss = gets.chomp
t = gets.chomp

def match(start, t, ss)
  t.chars.each_with_index  do |tt, i|
    return false if ss[start+i] != '?' && ss[start+i] != tt
  end
  ss[0...start] + t + ss[(start+t.size)..-1]
end

candidates = []
(0..(ss.size - t.size)).each do |st|
  replaced = match(st, t, ss)
  if replaced
    candidates << replaced.gsub('?', 'a')
  end
end

puts candidates.empty? ? 'UNRESTORABLE' : candidates.sort[0]