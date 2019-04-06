n = gets.to_i
ts = n.times.map { gets.to_i }

mint = 50 * 4 + 1
[0, 1].repeated_permutation(ts.size).each do |b|
  ts0, ts1 = [], []
  b.each_index do |i|
    case b[i]
    when 0
      ts0 << ts[i]
    when 1
      ts1 << ts[i]
    end
  end
  mint = [
      mint,
      [ts0.reduce(0, &:+), ts1.reduce(0, &:+)].max
  ].min
end

puts mint
