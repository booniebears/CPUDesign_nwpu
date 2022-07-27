#!/bin/bash


make clean
make -j8
if [ $1 -eq 1 ]
then 
    gtkwave ./build/run.vcd
fi
