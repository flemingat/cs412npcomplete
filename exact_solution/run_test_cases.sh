#!/bin/bash
echo "----------------------------------" | tee exact_solution_output.txt
echo "2 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer2.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "3 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer3.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "4 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer4.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "5 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer5.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "6 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer6.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "7 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer7.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "8 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer8.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "9 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer9.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt
echo "10 Vertices Test" | tee -a exact_solution_output.txt
echo "--------" | tee -a exact_solution_output.txt
time python <./testVer10.txt exactSol.py | tee -a exact_solution_output.txt
echo "----------------------------------" | tee -a exact_solution_output.txt