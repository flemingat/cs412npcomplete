# Greedy algorithm for graph coloring

def main():

  # Set up the graph
  v_num = int(input())
  adj_list = [set() for x in range(v_num)]
  for i in range(v_num):
    adj_list[i] = set(map(int, input().split()))

  num_colors, colors = greedy_color(adj_list)
  print(num_colors)

  # for i in greedy_color(adj_list):
  #   print(f'Color assigned to vertex {i} is {greedy_color(adj_list)[i]}')


def greedy_color(graph):
  color_map = {}
  colors = set()

  # Color each vertex one by one
  for v in range(len(graph)):
    color = 1
    adj_colors = {color_map[i] for i in graph[v] if i in color_map}
    for neighbor in adj_colors:
      if color != neighbor:
        break
      color += 1
    colors.add(color)
    color_map[v] = color

  num_colors = len(colors)
  return num_colors, color_map

if __name__ == "__main__":
  main()
