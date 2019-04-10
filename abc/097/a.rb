a, b, c, d = gets.split.map(&:to_i)
def can_talk(a, b, d)
  (a - b).abs <= d
end
puts (can_talk(a, c, d) || (can_talk(a, b, d) && can_talk(b, c, d))) ? 'Yes' : 'No'
