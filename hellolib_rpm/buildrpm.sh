#!/bin/sh
# tar.gzパッケージからrpmパッケージに変換するためのスクリプト
# CreateTgzPkg.shでBUILD_TAR環境で指定されたtar.gzが生成されたら実行する。

VERSION=1.0
WORK_DIR=`pwd`
BUILD_NAME=hellolib
BUILD_SPEC=${BUILD_NAME}.spec
BUILD_TAR=${BUILD_NAME}-${VERSION}.tar.gz
BUILD_DIR=${WORK_DIR}/rpmbuild
BUILD_TAR_PATH=${WORK_DIR}/rpmbuild/SOURCES/${BUILD_TAR}

# 最初にrpmパッケージ生成に必要なディレクトリをお掃除
/bin/rm -rf ${BUILD_DIR}

# rpmbuildが使用する各種ビルドディレクトリを作成
/bin/mkdir -p ${BUILD_DIR}/{BUILD,RPMS,SOURCES,SPECS,SRPMS}

# rpmbuildのためにautotoolsで生成したtar.gzをBUILD_TAR_PATHに配置する
/bin/cp ${BUILD_TAR} ${BUILD_TAR_PATH}

# これがrpmパッケージを生成するメインコマンド。defineを指定すると"$HOME/.rpmmacros" に依存せずに rpmbuild を実行する
/usr/bin/rpmbuild --define "_topdir ${BUILD_DIR}" -bb ${BUILD_SPEC}
