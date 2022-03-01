#!/bin/bash
mkdir build
cd build
cmake -LAH -GNinja ..                                                  \
    -DBUILD_SHARED_LIBS=ON                                             \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}                                   \
    -DCMAKE_BUILD_TYPE=Release

cmake --build .

cmake --install .
