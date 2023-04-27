# Define the number of vertices and edges in the graph
num_vertices = 10
num_edges = 16

# Generate a list of all possible edges in the graph
all_edges = []
(0...num_vertices).each do |i|
  (i+1...num_vertices).each do |j|
    all_edges << [i, j]
  end
end

# Shuffle the list of edges and select the first num_edges
random_edges = all_edges.shuffle.take(num_edges)

# Open a file named "genGraph.txt" and write the graph to it
File.open("genGraph.txt", "w") do |file|
  file.puts "#{num_edges}"
  random_edges.each do |edge|
    file.puts "#{edge[0]} #{edge[1]}"
  end
end
