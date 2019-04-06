def kaibun?(num)
  num.to_s == num.to_s.reverse
end

a, b = gets.split.map(&:to_i)
puts (a..b).count {|n| kaibun?(n)}