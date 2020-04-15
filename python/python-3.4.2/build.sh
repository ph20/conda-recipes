./configure --enable-shared --enable-ipv6 --prefix=$PREFIX
make
make install

cd $PREFIX/bin || exit 1
ln -s python3.4 python
ln -s pydoc3.4 pydoc
