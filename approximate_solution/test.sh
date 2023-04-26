#!/bin/bash 

a=0
b=0
# Testing small graph with cycle
file="./tests/small_graph_cycle.txt"
file2="./tests/bipartite_complete.txt"
file3="./tests/crown.txt"
file4="./tests/mc_vc_3col.graph.txt"

for i in {1..50}
do
    python3 approx_soln.py < $file4 >> output.txt
done

# for i in {1..1}
# do
#     python3 approx_soln.py < ./tests/bipartite_complete.txt | head -n 1 >> output2.txt
# done