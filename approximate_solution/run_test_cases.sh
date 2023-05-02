#!/bin/bash 

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


echo "" | tee -a approx_soln_out.txt
echo "Run-time Tests" | tee -a approx_soln_out.txt
echo "-------- Run-time Tests are only printed to console --------" | tee -a approx_soln_out.txt
python3 timer.py
echo "" | tee -a approx_soln_out.txt


echo "----------------------------------" | tee -a approx_soln_out.txt
echo "Variation Tests" | tee -a approx_soln_out.txt
echo "--------" | tee -a approx_soln_out.txt
echo "8 Edge / 6 Vertice Small Graph Test" | tee -a approx_soln_out.txt
for num in {1..10}; do
    echo "Run $num:" | tee -a approx_soln_out.txt
    python3 < ./approx_tests/8_graph_cycle.txt approx_soln.py | tee -a approx_soln_out.txt
done

echo "--------" | tee -a approx_soln_out.txt
echo "30 Edge / 20 Vertice Medium Graph Test" | tee -a approx_soln_out.txt
for num in {1..10}; do
    echo "Run $num:" | tee -a approx_soln_out.txt
    python3 < ./approx_tests/30_graph_cycle.txt approx_soln.py | tee -a approx_soln_out.txt
done