#!/bin/sh
# autotoolsからtar.gzを生成するスクリプト

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
rm -r ./*.tgz ./*.tar.gz

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

echo "----------------------------------------------"
echo " Creating tar.gz package SUCCESSED"
echo " Now, You can execute buildrpm.sh script"
echo "----------------------------------------------"

