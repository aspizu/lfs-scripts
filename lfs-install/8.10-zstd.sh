pkgopen zstd-1.5.7
make prefix=/usr
make prefix=/usr install
rm -v /usr/lib/libzstd.a
pkgclose
