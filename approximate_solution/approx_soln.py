import random
# Greedy algorithm for graph coloring
# Time complexity: O(V^2)


def main():
  adj_matrix = make_graph()
  n_col, c_map = greedy_color(adj_matrix)
  print(n_col)
  for v in c_map.keys():
    print(f'{v} {c_map[v]}')
  return n_col


def make_graph():
  adj_matrix = {}
  e_num = int(input())

  for i in range(e_num):
    k, v = input().split()

    if k not in adj_matrix:
      adj_matrix[k] = set()
    if v not in adj_matrix:
      adj_matrix[v] = set()

    adj_matrix[k].add(v)
    adj_matrix[v].add(k)

  return adj_matrix


def greedy_color(graph):
  color_map = {}
  colors = set()

  # Shuffle the order of the keys
  keys = list(graph.keys())
  random.shuffle(keys)

  # Color each vertex one by one
  for v in keys:
    color = 1
    adj_colors = set([color_map[i] for i in graph[v] if i in color_map])
    while color in adj_colors:
      color += 1
    colors.add(color)
    color_map[v] = color

  num_colors = len(colors)
  return num_colors, color_map


if __name__ == "__main__":
  main()
