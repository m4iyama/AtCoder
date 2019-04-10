def num_bridges(a)
  sum = a.reduce(&:+)
  return -1 if sum % a.size != 0

  per_land = sum / a.size

  num_bridge = 0
  it = 0
  while it < a.size - 1
    to = it
    while true
      return -1 if to >= a.size

      if a[it..to].reduce(&:+) / (to - it + 1) == per_land
        num_bridge += (to - it)
        break
      end
      to += 1
    end
    it = to + 1
  end
  num_bridge
end

_ = gets
a = gets.split.map(&:to_i)

puts num_bridges(a)
