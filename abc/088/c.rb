c = 3.times.map { gets.split.map(&:to_i) }

if (c[0].map {|ci| ci - c[0][0]} == c[1].map {|ci| ci - c[1][0]}) && (c[0].map {|ci| ci - c[0][0]} == c[2].map {|ci| ci - c[2][0]}) \
  && (c.transpose[0].map {|ci| ci - c.transpose[0][0]} == c.transpose[1].map {|ci| ci - c.transpose[1][0]}) && (c.transpose[0].map {|ci| ci - c.transpose[0][0]} == c.transpose[2].map {|ci| ci - c.transpose[2][0]})
    puts 'Yes'
else
  puts 'No'
end
