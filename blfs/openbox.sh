pkgfetch http://openbox.org/dist/openbox/openbox-3.6.1.tar.gz
pkgfetch https://www.linuxfromscratch.org/patches/blfs/12.4/openbox-3.6.1-py3-1.patch
pkgopen openbox-3.6.1
patch -Np1 -i ../openbox-3.6.1-py3-1.patch
autoreconf -fi
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --docdir=/usr/share/doc/openbox-3.6.1
make
make install
rm -v /usr/share/xsessions/openbox-{gnome,kde}.desktop
pkgclose
