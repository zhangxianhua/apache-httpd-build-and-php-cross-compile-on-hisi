#!/bin/sh
sh build_php-7.0.12-all.sh

cd apr-1.5.2
sh my_apr-1.5.2_build.sh

cd -
cd apr-util-1.5.4 
sh my_apr-util-1.5.4_build.sh

cd -
cd ../nginx_module/pcre-8.37
sh my_configure_pcre.sh 
make -j8
make install

cd -
cd httpd-2.4.23
sh my_httpd-2.4.23_build.sh

cd -
cd php-7.0.12 
sh build_php-7.0.12-libphp7.sh

cd -

cp ../nginx_module/pcre-8.37/.libs/libpcre.so.1 ../../pub/hi3798cv200/lib/share
cp ./apr-util-1.5.4-build/lib/libaprutil-1.so.0 ../../pub/hi3798cv200/lib/share
cp ./apr-util-1.5.4-build/lib/libexpat.so.0 ../../pub/hi3798cv200/lib/share
cp ./apr-1.5.2-build/lib/libapr-1.so.0 ../../pub/hi3798cv200/lib/share
