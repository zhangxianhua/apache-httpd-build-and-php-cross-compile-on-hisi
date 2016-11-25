#!/bin/sh
./configure
make -j8

cp tools/gen_test_char ./

make distclean

CC=arm-histbv310-linux-gcc CPP="arm-histbv310-linux-gcc -E" ./configure --host=arm-linux --prefix=$PWD/../apr-1.5.2-build --enable-shared  ac_cv_file__dev_zero=yes ac_cv_func_setpgrp_void=yes apr_cv_process_shared_works=yes apr_cv_mutex_robust_shared=yes apr_cv_tcp_nodelay_with_cork=yes ap_void_ptr_lt_long=no ac_cv_sizeof_struct_iovec=8

cp ./gen_test_char tools/gen_test_char
make -j8
cp ./gen_test_char tools/gen_test_char
make install
