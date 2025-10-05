pkgopen grep-3.12
sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr
make
make install
pkgclose
