s = gets.chomp
x, y = gets.split.map(&:to_i)

a = []
successive_f = 0
s.chars.each do |c|
  if c == 'T'
    a << successive_f
    successive_f = 0
  else
    successive_f += 1
  end
end
a << successive_f

x -= a[0]
x_moves = a[1..-1].select.with_index {|_, i| i.odd?}
y_moves = a[1..-1].select.with_index {|_, i| i.even?}

max_s = 8000
def finish_at?(x, x_moves)
  h = Hash.new {|h, k| h[k] = false}
  h[0] = true
  x_moves.each do |x_move|
    hh = Hash.new {|hh, k| hh[k] = false}
    h.each_key do |k|
      hh[k+x_move] = true
      hh[k-x_move] = true
    end
    h = hh
  end
  h[x]
end

puts finish_at?(x, x_moves) && finish_at?(y, y_moves) ? 'Yes' : 'No'
