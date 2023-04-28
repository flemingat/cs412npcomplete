#!/bin/bash 

# Testing small graph with cycle

# test_files=("8_graph_cycle.txt" "30_graph_cycle.txt" "bipartite_complete.txt" "crown.txt" "mc_vc_3col.graph.txt")
# rm -rf ./tests/*.out

# for file in "${test_files[@]}"
# do
#     echo "Running $file"

#     # For timed test files, are bipartite complete graphs of varying sizes enough?

#     # Right now its just running the test files
#     # do you just output your stuff? How am i supposed to compare it?
#     # with the exact soln code?
#     # also, should i generate large test file randomly? How would I know
#     # expected output?
#     python33 approx_soln.py < "./tests/$file" >> "./tests/out/$file.out"
# done

echo "----------------------------------" | tee approx_soln_out.txt
echo "2 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer2.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "3 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer3.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "4 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer4.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "5 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer5.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "6 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer6.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "7 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer7.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "8 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer8.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "9 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer9.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt
echo "10 Vertices Test" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
time python3 <./tests/testVer10.txt approx_soln.py | tee -a approx_soln_out.txt
echo "----------------------------------" | tee -a approx_soln_out.txt