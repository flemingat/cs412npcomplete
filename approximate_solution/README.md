## Mininum Graph Coloring:Approximate Solution
### By Lauren Hartley

## Tables and Graphs
In NP_complete.pdf, there are tables and graphs that describe results of the approximate solution.

## How to Run Tests file

bash run_test_cases.sh 

From there the bash script should run test graphs for 2 edges, 4 edges, 8 edges, 16 edges and 32 edges.
Check output in approx_soln_out.txt. The expected and correct results are located in exact_solution_expected in the subdirectory for the exact solution.

The script will also run timing tests, where it will run with graphs that the exact solution is unable to run.

Finally, it will run two tests that demonstrate the variation in outputs for the approximate algorithm.

## Pseudocode from Presentation
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