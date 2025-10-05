pkgopen sysvinit-3.14
patch -Np1 -i ../sysvinit-3.14-consolidated-1.patch
make
make install
pkgclose
