$h, $w = 10, 10
$a = $h.times.map do
  gets.chomp.chars
end

def can_be_one
  0.upto($h-1) do |hh|
    0.upto($w-1) do |ww|
      a = Marshal.load(Marshal.dump($a))
      if a[hh][ww] == 'x'
        a[hh][ww] = 'o'
        return true if is_one(a)
      end
    end
  end

  false
end

def is_one(a)
  sh, sw = find_start(a)
  dfs(a, sh, sw)

  a.flatten.count('o') == 0
end

def find_start(a)
  0.upto($h-1) do |hh|
    0.upto($w-1) do |ww|
      return [hh, ww] if a[hh][ww] == 'o'
    end
  end
end

def dfs(a, hh, ww)
  return unless hh.between?(0, $h-1) && ww.between?(0, $w-1)
  return if a[hh][ww] == 'x'

  a[hh][ww] = 'x'
  dfs(a, hh-1, ww)
  dfs(a, hh, ww-1)
  dfs(a, hh, ww+1)
  dfs(a, hh+1, ww)
end

puts can_be_one ? 'YES' : 'NO'
