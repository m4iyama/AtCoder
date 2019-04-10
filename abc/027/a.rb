ls = gets.split.map(&:to_i)
ls.each do |l|
  if ls.count(l).odd?
    puts l
    break
  end
end
