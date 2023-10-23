#!/bin/bash -exu

cmake -DCMAKE_C_COMPILER=icc -DCMAKE_CXX_COMPILER=icpc -DCMAKE_Fortran_COMPILER=ifort -DWHICH_CLUSTER="justus" -DCMAKE_BUILD_TYPE=Release -DULTRACOLD_DIR="${WORKSPACE}/build" ..

make
