#!/bin/bash -exu

# to select Intel compiler use:
#export FC=ifort
#export CC=icc
#export CXX=icpc

export WORKSPACE=$PWD
mkdir build
pushd build/
${WORKSPACE}/.ci/01-cmake.sh
${WORKSPACE}/.ci/02-make-install.sh
popd

for i in `seq 1 7`; do
    BUILDDIR=examples/example-${i}/build
    mkdir ${BUILDDIR}
    pushd ${BUILDDIR}
    ${WORKSPACE}/.ci/01-cmake.sh
    ${WORKSPACE}/.ci/02-make.sh
    popd
done
