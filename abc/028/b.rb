s = gets.chomp
puts 'ABCDEF'.chars.map {|c| s.count(c).to_s}.join(' ')