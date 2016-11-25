#!/bin/sh
make distclean

./configure
make -j8
cp ./server/gen_test_char ./

make distclean

cp ./gen_test_char ./server/gen_test_char
./configure CC=arm-histbv310-linux-gcc CPP="arm-histbv310-linux-gcc -E" --host=arm-linux --prefix=$PWD/../httpd-2.4.23-build --enable-so --with-mpm=prefork ac_cv_file__dev_zero=yes ac_cv_func_setpgrp_void=yes apr_cv_process_shared_works=yes apr_cv_mutex_robust_shared=yes apr_cv_tcp_nodelay_with_cork=yes ap_void_ptr_lt_long=no ap_cv_void_ptr_lt_long=no --enable-module=so --enable-mods-shared=all --enable-deflate=shared --enable-expires=shared --enable-rewrite=shared --enable-headers --enable-deflate --enable-cache --enable-file-cache --enable-mem-cache --enable-disk-cache --with-apr=$PWD/../apr-1.5.2-build --with-apr-util=$PWD/../apr-util-1.5.4-build --enable-mime-magic --enable-authn-dbm --enable-vhost-alias --with-pcre=$PWD/../../nginx_module/nginx_build/bin/pcre-config ap_cv_apuver12=yes --with-z=$PWD/../zlib-1.2.8-build ac_cv_sizeof_struct_iovec=8 --with-libxml2=$PWD/../libxml2-2.8.0-build

cp ./gen_test_char ./server/
make -j8
cp ./gen_test_char ./server/
make -j8
make install
