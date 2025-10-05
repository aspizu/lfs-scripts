pkgopen tar-1.35
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr
make
make install
pkgclose
