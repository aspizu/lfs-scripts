pkgfetch https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.20.0.tar.gz
pkgopen libtasn1-4.20.0
./configure --prefix=/usr --disable-static
make
make install
pkgclose
