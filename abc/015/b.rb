_ = gets
a = gets.split.map(&:to_i)

bugs = a.select {|x| x > 0}
puts (bugs.reduce(&:+).to_f / bugs.size).ceil