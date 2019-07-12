#!/bin/sh
#
# CONFIGURE_FLAGS set by yocto toolchain

aclocal
libtoolize
automake --add-missing

autoconf && automake
./configure $CONFIGURE_FLAGS
