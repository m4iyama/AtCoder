x = gets.to_i

catch :loop do
  x.downto(1) do |n|
    if n == 1
      puts 1
      throw :loop
    end

    (2..Math.sqrt(n).to_i).each do |b|
      # log = Math.log(n, b)
      # if (log - log.to_i) < Float::EPSILON
      #   puts n
      #   throw :loop
      # end
      p = 2
      while
        xx = b**p
        if xx == n
          puts n
          throw :loop
        elsif xx > n
          break
        end

        p += 1
      end
    end
  end
end
