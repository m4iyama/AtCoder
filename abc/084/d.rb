def primes(n)
  l = (2..n).to_a
  ps = []
  until l[0] > Math.sqrt(n)
    x = l[0]
    ps << x
    l = l.delete_if { |y| (y % x).zero? }
  end
  ps + l
end

def like2017s(n)
  primes = primes(n)

  like2017s = []
  primes.each do |p|
    like2017s << p if primes.include?((p + 1) / 2)
  end
  like2017s
end

like2017s = like2017s(100000)

q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  si = like2017s.bsearch_index { |x| x >= l } || like2017s.size
  ei = like2017s.bsearch_index { |x| x > r } || like2017s.size
  puts ei - si
end
