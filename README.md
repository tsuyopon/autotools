autotools
====

# 概要
Autotoolsを利用したパッケージ作成スケルトンです

# セットアップ
下記パッケージをインストールします
```
	autoconf
	automake
	libtool
	autoconf-doc
	libtool-doc
	build-essential
	libgtk2.0-dev
	dpkg-dev
	debhelper
	devscripts
	fakeroot
	lintian
	dh_make
	dpkg
```

# autotoolsを利用したパッケージインストールの流れ
configureスクリプトを下記コマンドで生成
```
$ autoreconf -iv
```

下記コマンドでパッケージインストールまで行います
```
$ ./configure
$ make
$ sudo make install
```

# 概要
- hellocmd  
 - helloコマンド用のautotools templateを提供します
- hellocmd_deb
 - hellocmdにdeb生成用のスクリプトCreateDeb.shが含まれています。debパッケージを自動生成します
- hellolib
 - shared object生成用のautotools templateを提供します。
- hellolib_deb
 - hellolibにdeb生成用のスクリプトCreateDeb.shが含まれています。debパッケージを自動生成します。特にhellocmd_debとは変わりません。

