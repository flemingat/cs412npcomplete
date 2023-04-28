import itertools
import random


def main():
  test_biparte_comp(3)


def test_biparte_comp(size):
  n = 100
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
  # all_combo
  # for perm in itertools.permutations(lines):
  #   # add first line
  #   perm = [str(len(perm))] + list(perm)
  #   # check first line is correct
  #   assert approx_soln.main(*perm) == 2


if __name__ == "__main__":
  main()
