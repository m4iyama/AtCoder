$n = gets.to_i
$edges = Hash.new { |h, k| h[k] = [] }
($n-1).times do
  a, b = gets.split.map {|x| x.to_i - 1}
  $edges[a] << b
  $edges[b] << a
end

def calc_distances(start)
  dists = Array.new($n) { -1 }
  q = [[start, 0]]
  until q.empty?
    p, d = q.shift
    dists[p] = d
    $edges[p].each do |np|
      q.push([np, d + 1]) if dists[np] == -1
    end
  end

  dists
end

dists_fenec = calc_distances(0)
dists_snuke = calc_distances($n-1)

fenec, snuke = 0, 0
0.upto($n-1).each do |p|
  dists_fenec[p] <= dists_snuke[p] ? fenec += 1 : snuke += 1
end

puts fenec > snuke ? 'Fennec' : 'Snuke'
