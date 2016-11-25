#!/bin/sh
CC=arm-histbv310-linux-gcc ./configure --host=arm-linux --prefix=$PWD/../apr-util-1.5.4-build --with-apr=$PWD/../apr-1.5.2-build
make -j8
make install
