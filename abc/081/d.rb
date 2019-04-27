n = gets.to_i
a = gets.split.map(&:to_i)

positive = false
c = a.count {|x| x >= 0}
if [0, n].include?(c)
  puts n-1
  if a[0] >= 0
    positive = true
  end
else
  puts 2*n-1
  ma, mi = a.max, a.min
  if ma.abs >= mi.abs
    positive = true
    mai = a.index(ma) + 1
    1.upto(n) do |i|
      puts "#{mai} #{i}"
    end
  else
    mii = a.index(mi) + 1
    1.upto(n) do |i|
      puts "#{mii} #{i}"
    end
  end
end

if positive
  1.upto(n-1) do |i|
    puts "#{i} #{i+1}"
  end
else
  n.downto(2) do |i|
    puts "#{i} #{i-1}"
  end
end
