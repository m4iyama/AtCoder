$r, $c = gets.split.map(&:to_i)
sy, sx = gets.split.map { |x| x.to_i - 1 }
gy, gx = gets.split.map { |x| x.to_i - 1 }

$m = Array.new($r).map { gets.chomp.chars }
$v = Array.new($r).map { Array.new($c) { false } }

$q = Queue.new

$q << [sy, sx, 0]

def can_visit(py, px)
  py.between?(0, $r) && px.between?(0, $c) && $m[py][px] == '.' && !$v[py][px]
end

gd = -1
while $q.size > 0
  py, px, d = $q.pop
  if $v[py][px]
    next
  else
    $v[py][px] = true
  end

  if [py, px] == [gy, gx]
    gd = d
    break
  end

  [[py-1, px], [py+1, px], [py, px-1], [py, px+1]].each do |npy, npx|
    $q << [npy, npx, d+1] if can_visit(npy, npx)
  end
end

puts gd
