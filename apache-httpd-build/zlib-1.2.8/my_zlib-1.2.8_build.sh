#!/bin/sh
CC=arm-histbv310-linux-gcc ./configure --prefix=$PWD/../zlib-1.2.8-build

make    -j8
make install
