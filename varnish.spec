%define XXv_rc beta1
%define vd_rc %{?v_rc:-%{?v_rc}}
%define    _use_internal_dependency_generator 0
%define __find_provides %{_builddir}/../SOURCES/find-provides

Summary: High-performance HTTP accelerator
Name: varnish
Version: 4.1.0
#Release: 0.20140328%{?v_rc}%{?dist}
Release: 1%{?v_rc}%{?dist}
License: BSD
Group: System Environment/Daemons
URL: https://www.varnish-cache.org/
#Source0: http://repo.varnish-cache.org/source/%{name}-%{version}.tar.gz
Source0: %{name}-%{version}%{?vd_rc}.tar.gz
#Source0: %{name}-trunk.tar.gz
Source1: varnish.initrc
Source2: varnish.sysconfig
Source3: varnish.logrotate
Source4: varnish_reload_vcl
Source5: varnish.params
Source6: varnish.service
Source7: varnishlog.initrc
Source8: varnishlog.service
Source9: varnishncsa.initrc
Source10: varnishncsa.service
Source11: find-provides

BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildRequires: automake
BuildRequires: autoconf
BuildRequires: jemalloc-devel
BuildRequires: libedit-devel
BuildRequires: libtool
BuildRequires: ncurses-devel
BuildRequires: pcre-devel
BuildRequires: pkgconfig
BuildRequires: python-docutils >= 0.6
BuildRequires: python-sphinx
Requires: jemalloc
Requires: libedit
Requires: logrotate
Requires: ncurses
Requires: pcre
Requires: varnish-libs = %{version}-%{release}
Requires(pre): shadow-utils
Requires(post): /sbin/chkconfig, /usr/bin/uuidgen
Requires(preun): /sbin/chkconfig
Requires(preun): /sbin/service
%if %{undefined suse_version}
Requires(preun): initscripts
%endif
%if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
Requires(post): systemd-units
Requires(post): systemd-sysv
Requires(preun): systemd-units
Requires(postun): systemd-units
BuildRequires: systemd-units
%endif
Requires: gcc

%description
This is Varnish Cache, a high-performance HTTP accelerator.

Varnish Cache stores web pages in memory so web servers don't have to
create the same web page over and over again. Varnish Cache serves
pages much faster than any application server; giving the website a
significant speed up.

Documentation wiki and additional information about Varnish Cache is
available on the following web site: https://www.varnish-cache.org/

%package libs
Summary: Libraries for %{name}
Group: System Environment/Libraries
BuildRequires: ncurses-devel

%description libs
Libraries for %{name}.
Varnish Cache is a high-performance HTTP accelerator

%package libs-devel
Summary: Development files for %{name}-libs
Group: System Environment/Libraries
BuildRequires: ncurses-devel
Requires: varnish-libs = %{version}-%{release}
Requires: python

%description libs-devel
Development files for %{name}-libs
Varnish Cache is a high-performance HTTP accelerator

%package docs
Summary: Documentation files for %name
Group: System Environment/Libraries

%description docs
Documentation files for %name


%prep
%setup -n varnish-%{version}%{?vd_rc}
#%setup -q -n varnish-trunk
cp %{SOURCE1} %{SOURCE2} %{SOURCE3} %{SOURCE4} %{SOURCE5} .
cp %{SOURCE6} %{SOURCE7} %{SOURCE8} %{SOURCE9} %{SOURCE10} %{SOURCE11} .

%build
# No pkgconfig/libpcre.pc in rhel4
%if 0%{?rhel} == 4
	export PCRE_CFLAGS="`pcre-config --cflags`"
	export PCRE_LIBS="`pcre-config --libs`"
%endif

%if 0%{?rhel} == 6
export CFLAGS="$CFLAGS -O2 -g -Wp,-D_FORTIFY_SOURCE=0"
%endif

# Remove "--disable static" if you want to build static libraries
# jemalloc is not compatible with Red Hat's ppc64 RHEL kernel :-(
%ifarch ppc64 ppc
	%configure --disable-static --localstatedir=/var/lib --without-jemalloc --without-rst2html
%else
	%configure --disable-static --localstatedir=/var/lib --without-rst2html
%endif

# We have to remove rpath - not allowed in Fedora
# (This problem only visible on 64 bit arches)
#sed -i 's|^hardcode_libdir_flag_spec=.*|hardcode_libdir_flag_spec=""|g;
#	s|^runpath_var=LD_RUN_PATH|runpath_var=DIE_RPATH_DIE|g' libtool

make %{?_smp_mflags} V=1

%if 0%{?fedora}%{?rhel} != 0 && 0%{?rhel} <= 4 && 0%{?fedora} <= 8
	# Old style daemon function
	sed -i 's,--pidfile \$pidfile,,g;
		s,status -p \$pidfile,status,g;
		s,killproc -p \$pidfile,killproc,g' \
	varnish.initrc varnishlog.initrc varnishncsa.initrc
%endif

rm -rf doc/html/_sources
#rm -rf doc/sphinx/build/html/_sources
#mv doc/sphinx/build/html doc
rm -rf doc/sphinx/build

%check
# rhel5 on ppc64 is just too strange
%ifarch ppc64
	%if 0%{?rhel} > 4
		cp bin/varnishd/.libs/varnishd bin/varnishd/lt-varnishd
	%endif
%endif

# The redhat ppc builders seem to have some ulimit problems?
# These tests work on a rhel4 ppc/ppc64 instance outside the builders
%ifarch ppc64 ppc
	%if 0%{?rhel} == 4
		rm bin/varnishtest/tests/c00031.vtc
		rm bin/varnishtest/tests/r00387.vtc
	%endif
%endif

make check %{?_smp_mflags} LD_LIBRARY_PATH="../../lib/libvarnish/.libs:../../lib/libvarnishcompat/.libs:../../lib/libvarnishapi/.libs:../../lib/libvcc/.libs:../../lib/libvgz/.libs" VERBOSE=1

%install
rm -rf %{buildroot}
make install DESTDIR=%{buildroot} INSTALL="install -p"

# None of these for fedora
find %{buildroot}/%{_libdir}/ -name '*.la' -exec rm -f {} ';'

# Remove this line to build a devel package with symlinks
#find %{buildroot}/%{_libdir}/ -name '*.so' -type l -exec rm -f {} ';'

mkdir -p %{buildroot}/var/lib/varnish
mkdir -p %{buildroot}/var/log/varnish
mkdir -p %{buildroot}/var/run/varnish
mkdir -p %{buildroot}%{_sysconfdir}/ld.so.conf.d/
install -D -m 0644 etc/example.vcl %{buildroot}%{_sysconfdir}/varnish/default.vcl
install -D -m 0644 varnish.logrotate %{buildroot}%{_sysconfdir}/logrotate.d/varnish

# systemd support
%if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
mkdir -p %{buildroot}%{_unitdir}
install -D -m 0644 varnish.service %{buildroot}%{_unitdir}/varnish.service
install -D -m 0644 varnish.params %{buildroot}%{_sysconfdir}/varnish/varnish.params
install -D -m 0644 varnishncsa.service %{buildroot}%{_unitdir}/varnishncsa.service
install -D -m 0644 varnishlog.service %{buildroot}%{_unitdir}/varnishlog.service
sed -i 's,sysconfig/varnish,varnish/varnish.params,' varnish_reload_vcl
# default is standard sysvinit
%else
install -D -m 0644 varnish.sysconfig %{buildroot}%{_sysconfdir}/sysconfig/varnish
install -D -m 0755 varnish.initrc %{buildroot}%{_initrddir}/varnish
install -D -m 0755 varnishlog.initrc %{buildroot}%{_initrddir}/varnishlog
install -D -m 0755 varnishncsa.initrc %{buildroot}%{_initrddir}/varnishncsa
%endif
install -D -m 0755 varnish_reload_vcl %{buildroot}%{_sbindir}/varnish_reload_vcl

echo %{_libdir}/varnish > %{buildroot}%{_sysconfdir}/ld.so.conf.d/varnish-%{_arch}.conf

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_sbindir}/*
%{_bindir}/*
%{_var}/lib/varnish
%{_var}/log/varnish
%{_mandir}/man1/*.1*
%{_mandir}/man3/*.3*
%{_mandir}/man7/*.7*
%doc LICENSE README 
%{_docdir}/varnish/
%dir %{_sysconfdir}/varnish/
%config(noreplace) %{_sysconfdir}/varnish/default.vcl
%config(noreplace) %{_sysconfdir}/logrotate.d/varnish

# systemd from fedora 17 and rhel 7
%if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
%{_unitdir}/varnish.service
%{_unitdir}/varnishncsa.service
%{_unitdir}/varnishlog.service
%config(noreplace)%{_sysconfdir}/varnish/varnish.params

# default is standard sysvinit
%else
%config(noreplace) %{_sysconfdir}/sysconfig/varnish
%{_initrddir}/varnish
%{_initrddir}/varnishlog
%{_initrddir}/varnishncsa
%endif

%files libs
%defattr(-,root,root,-)
%{_libdir}/*.so.*
%{_libdir}/varnish
%doc LICENSE
%config %{_sysconfdir}/ld.so.conf.d/varnish-%{_arch}.conf

%files libs-devel
%defattr(-,root,root,-)
%{_libdir}/lib*.so
%dir %{_includedir}/varnish
%{_includedir}/varnish/*
%{_libdir}/pkgconfig/varnishapi.pc
/usr/share/varnish
/usr/share/aclocal

%doc LICENSE

%files docs
%defattr(-,root,root,-)
%doc LICENSE
%doc doc/html
%doc doc/changes*.html

%pre
getent group varnish >/dev/null || groupadd -r varnish
getent passwd varnish >/dev/null || \
	useradd -r -g varnish -d /var/lib/varnish -s /sbin/nologin \
		-c "Varnish Cache" varnish
exit 0

%post
%if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
/bin/systemctl daemon-reload >/dev/null 2>&1 || :
%else
/sbin/chkconfig --add varnish
/sbin/chkconfig --add varnishlog
/sbin/chkconfig --add varnishncsa
%endif
test -f /etc/varnish/secret || (uuidgen > /etc/varnish/secret && chmod 0600 /etc/varnish/secret)

%triggerun -- varnish < 3.0.2-1
# Save the current service runlevel info
# User must manually run systemd-sysv-convert --apply varnish
# to migrate them to systemd targets
%{_bindir}/systemd-sysv-convert --save varnish >/dev/null 2>&1 ||:

# If the package is allowed to autostart:
#/bin/systemctl --no-reload enable varnish.service >/dev/null 2>&1 ||:

# Run these because the SysV package being removed won't do them
/sbin/chkconfig --del varnish >/dev/null 2>&1 || :
#/bin/systemctl try-restart varnish.service >/dev/null 2>&1 || :

%preun
if [ $1 -lt 1 ]; then
  # Package removal, not upgrade
  %if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
  /bin/systemctl --no-reload disable varnish.service > /dev/null 2>&1 || :
  /bin/systemctl stop varnish.service > /dev/null 2>&1 || :
  %else
  /sbin/service varnish stop > /dev/null 2>&1
  /sbin/service varnishlog stop > /dev/null 2>&1
  /sbin/service varnishncsa stop > /dev/null 2>%1
  /sbin/chkconfig --del varnish
  /sbin/chkconfig --del varnishlog
  /sbin/chkconfig --del varnishncsa
  %endif
fi

%post libs -p /sbin/ldconfig
%postun libs -p /sbin/ldconfig

%changelog
* Fri Sep 22 2006 Ingvar Hagelund <ingvar@linpro.no> - 1.0.1-1
- Initial build.
