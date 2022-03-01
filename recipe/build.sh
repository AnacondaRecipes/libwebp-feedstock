#!/bin/bash
mkdir build
cd build
cmake -LAH -GNinja ..                                                  \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}                                   \
    -DCMAKE_BUILD_TYPE=Release

cmake --build .

cmake --install .
