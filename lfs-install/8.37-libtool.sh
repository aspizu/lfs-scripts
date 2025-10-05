pkgopen libtool-2.5.4
./configure --prefix=/usr
make
make install
rm -fv /usr/lib/libltdl.a
pkgclose
