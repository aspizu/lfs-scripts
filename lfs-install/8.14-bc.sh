pkgopen bc-7.0.3
CC='gcc -std=c99' ./configure --prefix=/usr -G -O3 -r
make
make install
pkgclose
