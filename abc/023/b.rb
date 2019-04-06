def times(s)
  return 0 if s == 'b'
  return -1 if s.size.even?

  midi = (s.size - 1) / 2
  return -1 if s[midi] != 'b'

  left = s[0..(midi-1)].reverse
  left.chars.each_with_index do |c, i|
    case i % 3
    when 0
      return -1 if c != 'a'
    when 1
      return -1 if c != 'c'
    when 2
      return -1 if c != 'b'
    end
  end

  right = s[(midi+1)..-1]
  right.chars.each_with_index do |c, i|
    case i % 3
    when 0
      return -1 if c != 'c'
    when 1
      return -1 if c != 'a'
    when 2
      return -1 if c != 'b'
    end
  end

  (s.size - 1) / 2
end

n = gets
s = gets.chomp

puts times(s)
