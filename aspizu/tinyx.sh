pkggithub tinycorelinux tinyx master
pkgopen tinyx
./autogen.sh
./configure \
    --prefix=/usr \
    --disable-xres \
    --disable-screensaver \
    --disable-xdmcp \
    --disable-xdm-auth-1 \
    --disable-dbe \
    --disable-xf86bigfont \
    --disable-dpms \
    --disable-static
pkgclose
