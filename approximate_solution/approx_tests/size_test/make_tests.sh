##!/bin/bash 

for size in {200..2000..200};
do
    python3 generate_bipartite.py $size > ./${size}_vert.txt
    # echo $size
done