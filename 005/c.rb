def can_sell_all(a, b, t)
  b.each do |bi|
    sell = a.select {|ai| bi - t <= ai && ai <= bi}[0]
    return false if sell.nil?

    a.delete_at(a.index(sell))
  end

  true
end

t = gets.to_i
_ = gets
a = gets.split.map(&:to_i)
_ = gets
b = gets.split.map(&:to_i)

puts can_sell_all(a, b, t) ? 'yes' : 'no'
