#!/bin/sh
VERSION=1.0
WORK_DIR=`pwd`
BUILD_NAME=hellolib
BUILD_SPEC=${BUILD_NAME}.spec
BUILD_TAR=${BUILD_NAME}-${VERSION}.tar.gz
BUILD_DIR=${WORK_DIR}/rpmbuild
BUILD_TAR_PATH=${WORK_DIR}/rpmbuild/SOURCES/${BUILD_TAR}

/bin/rm -rf ${BUILD_DIR}

# rpmbuildが使用する各種ビルドディレクトリを作成
/bin/mkdir -p ${BUILD_DIR}/{BUILD,RPMS,SOURCES,SPECS,SRPMS}

# rpmbuildのためだけの、一時的なtarボールを生成してSOURCESに配置
/bin/cp ${BUILD_TAR} ${BUILD_TAR_PATH}

# "$HOME/.rpmmacros" に依存せずに rpmbuild を実行
/usr/bin/rpmbuild --define "_topdir ${BUILD_DIR}" -bb ${BUILD_SPEC}
