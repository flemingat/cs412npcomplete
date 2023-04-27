## Mininum Graph Coloring:Approximate Solution
### Lauren

### Pseudocode
```python
greedy_coloring(graph):
    V = list of vertices
    colors = set()
    color_map = {}

    shuffle vertex list

    for each vertex:
        color = 1
        while color is a neighbor:
            color += 1
        color_map[v] = color
        colors.add(color)
    
    return len(colors), color_map
```