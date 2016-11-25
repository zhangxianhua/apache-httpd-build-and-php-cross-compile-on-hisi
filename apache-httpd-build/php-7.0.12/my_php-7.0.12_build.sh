#!/bin/sh
make clean
make distclean
CC=arm-histbv310-linux-gcc ./configure --host=arm-hisiv3100-linux-gnueabi  --prefix=$PWD/../php-7.0.12-build --disable-all --enable-pdo --with-sqlite --with-zlib --without-iconv --with-zlib-dir=$PWD/../zlib-1.2.8-build/ --with-libxml-dir=$PWD/../libxml2-2.8.0-build  --enable-fpm --enable-bcmath --enable-session
make -j8
make install
