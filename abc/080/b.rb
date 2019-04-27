def harshad?(n)
  f = n.to_s(10).chars.map(&:to_i).reduce(0, &:+)
  (n % f).zero?
end

n = gets.to_i
puts harshad?(n) ? 'Yes' : 'No'