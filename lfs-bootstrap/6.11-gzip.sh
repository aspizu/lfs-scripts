pkgopen gzip-1.14
./configure --prefix=/usr --host="$LFS_TGT"
make
make DESTDIR="$LFS" install
pkgclose
