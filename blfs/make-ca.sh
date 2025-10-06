pkgfetch https://github.com/lfs-book/make-ca/archive/v1.16.1/make-ca-1.16.1.tar.gz
pkgopen make-ca-1.16.1
make install
install -vdm755 /etc/ssl/local
/usr/sbin/make-ca -g
pkgclose
