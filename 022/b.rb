n = gets.to_i
visited = Hash.new

times = 0
n.times do
  a = gets.to_i
  times += 1 if visited[a]
  visited[a] = true
end

puts times