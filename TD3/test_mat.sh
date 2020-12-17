#!/bin/bash

NBATTEMPTS=20
MAXTHREADS=8
EXE=./TestProductMatrix.exe

best_of_ten() {
    for  i in $(seq 1 $NBATTEMPTS) ; do $EXE | grep "Temps CPU" | cut -d " " -f 7 ; done | sort -n | head -n 1
}


for NT in $(seq 1 $MAXTHREADS) ; do
    export OMP_NUM_THREADS=$NT
    echo -n "$NT  "
    best_of_ten
done



