Redhat packaging files for Varnish Cache
========================================

These are the packaging files that are used when building
the official RPM packages for Varnish Cache.

Building a RPM package from a git checkout
------------------------------------------

You may build an rpm package direct from a git checkout. Here is an
example on how you may do this::

  git clone git://git.varnish-cache.org/varnish-cache
  cd varnish-cache

  sed -i "s/^Release: .*/Release: 0.git$(date +%Y%m%d)%{?dist}/" \
    redhat/varnish.spec
  ./autogen.sh && ./configure
  make dist && rpmbuild -ts varnish-trunk.tar.gz

This builds a source rpm. Then you can, for example on a RHEL5 system,
do something like this::

  rpmbuild --define "dist .el5" --rebuild /path/to/varnish-3.0-0.git20110203.src.rpm


Configuration of addresses and ports
------------------------------------

In this package, varnish is configured to make the accelerator daemon
listen to port 6081. The administration interface listens to port 6082
on 127.0.0.1. Addresses and ports can be changed in
/etc/sysconfig/varnish.

The admin interface can be accessed by standard telnet.

The default config will try to forward http requests to
localhost:80. You may change this in /etc/varnish/vcl.conf. Please
read the vcl(7) man page for more information on the vcl language.

To gain actual value from varnish, you may want to move the listening
port to port 80, and your webserver to 8080 or similar.
