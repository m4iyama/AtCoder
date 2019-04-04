_ = gets
a, b = gets.split
_ = gets

h = Hash.new
h[a], h[b] = 0, 0

p = gets.split

def shortest?(p, h)
  p.each do |c|
    return false if h.has_key?(c)
    h[c] = 0
  end
  true
end

puts shortest?(p, h) ? 'YES' : 'NO'
