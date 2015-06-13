#!/bin/sh
# autotoolsからtar.gzを生成し、debパッケージまで自動生成するスクリプト

PKGNAME=hellolib
echo "----------------------------------------------"
PKGVERSION=`egrep "^AC_INIT" configure.ac |awk -F"," '{print $2}' | sed -e "s/ //g" -e "s/\[//g" -e "s/\]//g" | xargs echo -n`
echo "----------------------------------------------"
echo " Create Package Version: $PKGVERSION"
echo "----------------------------------------------"

########################################################
# Init
########################################################
echo "----------------------------------------------"
echo " Init: Remove Unneeded Files."
echo "----------------------------------------------"
rm -r ./Debian ./*.tgz ./*.tar.gz

########################################################
# Create tar.gz Package Using autotools
########################################################
echo "----------------------------------------------"
echo " autoreconf, configure, make, make dist"
echo "----------------------------------------------"
autoreconf -ivf || exit
./configure || exit
make || exit
make dist || exit

########################################################
# Prepare for dh_make(Create deb skelton)
########################################################
echo "----------------------------------------------"
echo " extract tar and change directory for dh_make prepare"
echo "----------------------------------------------"
mkdir Debian
cd Debian
cp ../${PKGNAME}-${PKGVERSION}.tar.gz .
tar zxvf ${PKGNAME}-${PKGVERSION}.tar.gz
cd ${PKGNAME}-${PKGVERSION}

########################################################
# Create And Setup Debian Directory
########################################################
echo "----------------------------------------------"
echo " extract tar and change directory for dh_make prepare"
echo "----------------------------------------------"

dh_make -f ../${PKGNAME}-${PKGVERSION}.tar.gz -s -y || exit
cat << EOS > ./debian/copyright
Format: http://www.debian.org/doc/packaging-manuals/copyright-format/1.0/
Upstream-Name: hellocmd
Source: http://azarashi.example.com/

Files: *
Copyright: Azarashi
License: proprietary
EOS

cd debian
# dh_makeで作られたサンプルファイルは除去
rm -f ./*.ex ./*.EX

########################################################
# Create deb package
########################################################
echo "----------------------------------------------"
echo " Creating Deb Package"
echo "----------------------------------------------"
debuild -uc -us || exit

echo "----------------------------------------------"
echo " Creating Deb Package: SUCCESSED"
echo " Check Debian/****.deb"
echo "----------------------------------------------"

