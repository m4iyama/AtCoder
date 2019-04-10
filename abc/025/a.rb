favs = gets.chomp.chars
n = gets.to_i

m = 1
favs.each do |c|
  favs.each do |d|
    if m == n
      puts [c, d].join
      exit
    end
    m += 1
  end
end
