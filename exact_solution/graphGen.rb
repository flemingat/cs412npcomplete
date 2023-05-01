vertexCount = 10
edgeCount = 16
edges = []
(0...vertexCount).each do |i|
  (i+1...vertexCount).each do |j|
    edges << [i, j]
  end
end
mixEdge = edges.shuffle.take(edgeCount)
File.open("genGraph.txt", "w") do |file|
  file.puts "#{edgeCount}"
  mixEdge.each do |edge|
    file.puts "#{edge[0]} #{edge[1]}"
  end
end
