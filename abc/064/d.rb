_ = gets
s = gets.chomp

def remove_valid_parens(s)
  while s.include?('()')
    s.gsub!('()', '')
  end
  s
end

ss = remove_valid_parens(s.dup)
num_opens = ss.count('(')
num_closes = ss.count(')')

puts '(' * num_closes + s + ')' * num_opens

