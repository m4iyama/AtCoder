n, y = gets.split.map(&:to_i)

def find_comb(n, y)
  (0..n).each do |i10000|
    (0..(n-i10000)).each do |i5000|
      i1000 = n - i10000 - i5000
      return [i10000, i5000, i1000].map(&:to_s).join(' ') if 10000 * i10000 + 5000 * i5000 + 1000 * i1000 == y
    end
  end

  '-1 -1 -1'
end

puts find_comb(n, y)
