hellocmd
==================

概要
--------
helloコマンドをインストールするためのスケルトン

必要条件
-------------
インストールするためには以下のパッケージが必要です
```
$ autoconf
$ automake
```

インストール方法
------------

1. Clone this repository:

2. Generate the configure script:
```
$ autoreconf -ivf
```

3. Configure and build the project:
```
$ ./configure
$ make
```

参考
------------
    git clone https://github.com/gizero/autotools-skeleton.git
