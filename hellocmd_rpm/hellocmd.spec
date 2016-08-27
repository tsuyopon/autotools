# 参考: http://dev.tapweb.co.jp/2010/12/273
Name:	hellocmd
Version:	1.0.0
Release:	1%{?dist}
Summary:	this is example library package
Group:		Utilities
License:	GPL
URL:		http://www.yahoo.co.jp/
Source0:	hellocmd-1.0.0.tar.gz

#BuildRequires:	
#Requires:	

%description
this is sample description

# 展開したらsrcというディレクトリに移動する。-nを指定しないとhellocmd-1.0に移動しようとする。
# デフォルトはsetup -qになっている
%prep
%setup -q 

# 今回はautotools側でビルドしたものをrpmbuildディレクトリ配下に配置しているので%buildの中では何も実行しない
# tar.gzで展開した中でビルドしたい作業があればここに記述する感じだと思う?
%build
%configure

%install
make install DESTDIR=%{buildroot}

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
/usr/bin/hello

%doc

%changelog
* Wed Sep 7 2016 Azarashi <azarashi@test.com> - 0.0.1
- initial release

