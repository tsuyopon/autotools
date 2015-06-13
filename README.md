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
