#!/bin/sh

BUILD_ROOT_DIR=$PWD
cd libxml2-2.8.0
sh my_libxml2-2.8.0_build.sh
cd $BUILD_ROOT_DIR

cd zlib-1.2.8
sh my_zlib-1.2.8_build.sh
cd $BUILD_ROOT_DIR

cd php-7.0.12
sh my_php-7.0.12_build.sh
cd $BUILD_ROOT_DIR


