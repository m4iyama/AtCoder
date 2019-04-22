$h, $w = gets.split.map(&:to_i)
$m = $h.times.map do
  gets.chomp.chars
end
$rest = Array.new($h).map { Array.new($w) { -1 } }

def can_visit(py, px)
  py.between?(0, $h-1) && px.between?(0, $w-1) && $m[py][px] == '.' && !$v[py][px]
end

$q = Queue.new
$q << [0, 0, 0]

gd = -1
while $q.size > 0
  py, px, d = $q.pop
  if $v[py][px]
    next
  else
    $v[py][px] = true
  end

  if [py, px] == [$h-1, $w-1]
    gd = d
    break
  end

  [[py-1, px], [py+1, px], [py, px-1], [py, px+1]].each do |npy, npx|
    $q << [npy, npx, d+1] if can_visit(npy, npx)
  end
end

puts gd == -1 ? -1 : $h * $w - $m.flatten.count('#') - (gd + 1)
