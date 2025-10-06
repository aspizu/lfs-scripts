pkgfetch https://curl.se/download/curl-8.15.0.tar.xz
pkgopen curl-8.15.0
./configure --prefix=/usr    \
            --disable-static \
            --with-openssl   \
            --with-ca-path=/etc/ssl/certs
make
make install
pkgclose
