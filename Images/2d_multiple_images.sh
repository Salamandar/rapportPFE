#!/bin/bash

dir="Var_Lambda/1"

directory=`realpath $dir`
gnuscript=`realpath 2d.gnu`

cd "$directory"
find . -type f -name "*.dat" -exec basename {} .dat \; \
    | parallel gnuplot -e "filename=\'{}\'" \"$gnuscript\"

