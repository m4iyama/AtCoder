$h, $w = gets.split.map(&:to_i)
$a = []

def dfs(hh, ww)
  return false if hh < 0 || hh >= $h || ww < 0 || ww >= $w
  return false if $a[hh][ww] == '#'
  return true if $a[hh][ww] == 'g'

  $a[hh][ww] = '#'
  dfs(hh-1, ww) || dfs(hh+1, ww) || dfs(hh, ww-1) || dfs(hh, ww+1)
end

sh, sw = nil, nil
$h.times do |i|
  l = gets.chomp.chars
  $a << l
  sh, sw = i, l.index('s') if l.index('s')
end

puts dfs(sh, sw) ? 'Yes' : 'No'

