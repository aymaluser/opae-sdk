#!/bin/bash -e

mkdir mybuild_gtest
pushd mybuild_gtest

trap "popd" EXIT

cmake .. -DBUILD_TESTS=ON
make

make test
echo "test-build PASSED"
