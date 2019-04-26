$n, $m = gets.split.map(&:to_i)
edges = Hash.new {|h, k| h[k] = []}
edge_arr = []
$m.times do
  a, b = gets.split.map {|x| x.to_i - 1}
  edge_arr << [a, b]
  edges[a] << b
  edges[b] << a
end

def dfs(s, edges, visited)
  visited[s] = true
  edges[s].each do |ns|
    dfs(ns, edges, visited) unless visited[ns]
  end
end

def is_union(edges)
  visited = Array.new($n) { false }
  dfs(0, edges, visited)
  visited.all?
end

count = 0
edge_arr.each do |(a, b)|
  edges[a].delete(b)
  edges[b].delete(a)

  count += 1 unless is_union(edges)

  edges[a] << b
  edges[b] << a
end

puts count
