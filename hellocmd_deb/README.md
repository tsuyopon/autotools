hellocmd\_deb
==================

概要
--------
helloコマンドをインストールするためのスケルトン
さらにdebパッケージを作成します

必要条件
-------------
インストールするためには以下のパッケージが必要です
```
 sudo apt-get install build-essential autoconf automake libtool libtool-doc \
 autotools-dev dpkg-dev dpkg dh-make debhelper devscripts fakeroot \
 xutils lintian pbuilder
```

debパッケージ作成方法
------------

1. Clone this repository:

2. Execute Shell
```
$ ./CreateDeb.sh
```

3. Check Deb package
```
$ ls ./Debian/*
```

参考
------------
    git clone https://github.com/gizero/autotools-skeleton.git
