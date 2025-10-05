pkgopen kmod-34.2
mkbuilddir
meson setup --prefix=/usr ..    \
            --buildtype=release \
            -D manpages=false
ninja
ninja install
pkgclose
