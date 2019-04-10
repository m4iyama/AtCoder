n, m = gets.split.map(&:to_i)
$e = n.times.map { [] }
m.times do
  u, v = gets.split.map { |x| x.to_i - 1 }
  $e[u] << v
  $e[v] << u
end
$nv = (0...n).to_a

def has_loop(p, bp, v)
  v << p
  $e[p].each do |np|
    next if np == bp
    return true if v.include?(np) || has_loop(np, p, v)
  end
  false
end

def visit(p)
  return unless $nv.include?(p)
  $nv.delete(p)

  $e[p].each(&method(:visit))
end

c = 0
while $nv.size > 0
  p = $nv[0]
  c += 1 unless has_loop(p, -1, [])
  visit(p)
end

puts c
