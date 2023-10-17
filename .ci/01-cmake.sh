#!/bin/bash -exu

source $WORKSPACE/.ci/env.sh

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DULTRACOLD_WITH_CUDA=on \
    -DCMAKE_CUDA_ARCHITECTURES="all-major" \
    -DCMAKE_C_COMPILER=gcc \
    -DCMAKE_CXX_COMPILER=g++ \
    -DCMAKE_Fortran_COMPILER=gfortran \
    -DULTRACOLD_DIR="${WORKSPACE}/build" \
    -DCMAKE_INSTALL_PREFIX=. \
    -Darpack-ng_DIR=${WORKSPACE}/source/base/bundled/arpack-ng/build \
    ..
