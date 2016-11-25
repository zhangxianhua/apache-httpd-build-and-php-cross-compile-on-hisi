#!/bin/sh
CC=arm-histbv310-linux-gcc
./configure --host=arm-linux --prefix=$PWD/../libxml2-2.8.0-build --with-python=$PWD/../Python-2.7.12

make -j8
make install
