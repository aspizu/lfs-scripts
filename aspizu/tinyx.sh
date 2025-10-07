pkggithub tinycorelinux tinyx master
pkgopen tinyx
./autogen.sh
./configure \
    --prefix=/usr \
    --disable-static
pkgclose
