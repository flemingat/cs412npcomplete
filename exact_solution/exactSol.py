"""
    name: Andrew Fleming
    
    Sources:
    https://www.interviewbit.com/blog/graph-coloring-problem/
    https://martin-thoma.com/vertex-coloring/
    https://www.scaler.com/topics/graph-coloring-problem/
    https://www.geeksforgeeks.org/m-coloring-problem/
"""
import itertools

def isValid(adjacencyList, coloringList):
    for vertex in adjacencyList:
        neighbors = adjacencyList[vertex]
        color = coloringList[vertex]

        for neighbor in neighbors:
            if coloringList[neighbor] == color:
                return False
    return True


def getColorCount(coloringList):
    colorSet = set()
    for color in coloringList.values():
        colorSet.add(color)
    return len(colorSet)


def allPossibleColorings(adjacencyList):
    vertices = list(adjacencyList.keys())
    numVertices = len(vertices)

    # itertools generates all possible combinations
    colorss = itertools.product(range(numVertices), repeat=numVertices)

    leastColors = None
    minColorCount = float("inf")
    for colors in colorss:
        coloringList = {vertices[i]: colors[i] for i in range(numVertices)}
        if isValid(adjacencyList, coloringList):
            colorCount = getColorCount(coloringList)
            if colorCount < minColorCount:
                minColorCount = colorCount
                leastColors = dict(coloringList)

    return leastColors


def main():
    vertex_count = int(input())
    adjacencyList = {}

    for i in range(vertex_count):
        cur_vertex = input().strip().split()
        vertex = cur_vertex[0]
        adjacent = set(cur_vertex[1:])
        if vertex not in adjacencyList:
            adjacencyList[vertex] = set()
        for adj in adjacent:
            adjacencyList[vertex].add(adj)
            if adj not in adjacencyList:
                adjacencyList[adj] = set()
            adjacencyList[adj].add(vertex)

    # sorting output so it is alphabetical/numerical so it is easier to read
    sortedVertices = sorted(adjacencyList.keys())
    for vertex in sortedVertices:
        adjacencyList[vertex] = sorted(adjacencyList[vertex])

    colorings = allPossibleColorings(adjacencyList)

    print(getColorCount(colorings))
    # print vertices in ascending order
    for vertex in sortedVertices:
        color = colorings[vertex]
        print(vertex, color)


if __name__ == "__main__":
    main()
