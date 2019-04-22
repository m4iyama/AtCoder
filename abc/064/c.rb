n = gets.to_i
a = gets.split.map(&:to_i)

normals = a.select {|x| x < 3200}
experts = a.select {|x| x >= 3200}

colors = normals.map {|x| x / 400}.uniq.size

puts [
    [1, colors].max,
    colors + experts.size,
].join(' ')
