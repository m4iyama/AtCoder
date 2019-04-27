n = gets.to_i
cs, ss, fs = [], [], []
(n-1).times do
  c, s, f = gets.split.map(&:to_i)
  cs << c; ss << s; fs << f
end

(0...n).each do |start|
  time = 0
  (start...(n-1)).each do |i|
    dept = (time <= ss[i]) ? ss[i] : (time.to_f / fs[i]).ceil * fs[i]
    time = dept + cs[i]
  end
  puts time
end

