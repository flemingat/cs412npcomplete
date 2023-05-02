from math import inf
import time
import os
import subprocess


print("-- Testing on same files as exact solution --")
print("-- Running 10 times each --")
for file in sorted(os.listdir("tests")):
  best = inf
  for i in range(10):
    start = time.perf_counter()
    subprocess.run(["python3", "approx_soln.py"], stdin=open(
        f"tests/{file}"), stdout=subprocess.DEVNULL)
    end = time.perf_counter()
    elapsed = end - start
    best = min(best, elapsed)

  # elapsed = total / 10
  print(f'\tFile: {file}' + '\tTime: {:.5f}'.format(elapsed))

print("----------")


print("-- Testing on large files : Bipartite Complete Graphs --")
print("-- Running 10 times each --")
for file in sorted(os.listdir("approx_tests/size_test")):
  if file.endswith(".txt"):
    best = inf
    for i in range(10):
      start = time.perf_counter()
      subprocess.run(["python3", "approx_soln.py"], stdin=open(
          f"approx_tests/size_test/{file}"), stdout=subprocess.DEVNULL)
      end = time.perf_counter()
      elapsed = end - start
      best = min(best, elapsed)

    # elapsed = total / 10
    print(f'\tFile: {file}' + '\tTime: {:.5f}'.format(elapsed))
