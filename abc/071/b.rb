cs = gets.chomp.chars.uniq
('a'..'z').each do |c|
  unless cs.include?(c)
    puts c
    exit
  end
end
puts 'None'