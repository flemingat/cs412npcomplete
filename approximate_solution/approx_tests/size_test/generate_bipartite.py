import sys
import random


def main():

  argument = sys.argv[1]
  create_bipartite(int(argument))


def create_bipartite(size):
  n = int(size / 2)
  a = [i for i in range(0, n)]
  b = [i for i in range(n, 2 * n)]
  lines = []

  for i in range(n):
    for j in range(n):
      if i != j:
        lines.append(f'{a[i]} {b[j]}')

  random.shuffle(lines)
  print(len(lines))
  for line in lines:
    print(line)


if __name__ == "__main__":
  main()
