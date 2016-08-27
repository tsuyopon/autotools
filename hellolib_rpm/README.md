hellolib\_rpm
=====

# 概要
autotoolsでtar.gzを生成した後にそのtar.gzを利用してrpmパッケージを生成する方法です。

スクリプトが準備されていますが、手順としては以下の通りです。
- 1. autotools用でtar.gzを生成する
- 2. specファイルを準備する
- 3. rpmbuildやビルドに必要なサブディレクトリを準備する(rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS})
- 4. tar.gzをビルドディレクトリにコピーしておく
- 5. rpmbuildコマンドの引数に作業ディレクトリパスやspecファイルパスを指定して実行するとrpmパッケージが生成される

# rpmパッケージの作り方
下記コマンドを実行するだけでrpmまでを生成します。
CreateTgzPkg.shはautotoolsを利用してtar.gzを生成し、buildrpm.shはtar.gzを利用してrpmを生成するスクリプトです。
```
$ ./CreateTgzPkg.sh
$ ./buildrpm.sh
```

実行が終わると以下のパスにrpmが生成されます。
```
$ ls rpmbuild/RPMS/x86_64/hellolib-1.0-1.fc17.x86_64.rpm  // 例
```
