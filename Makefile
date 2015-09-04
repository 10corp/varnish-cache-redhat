# Makefile.in generated by automake 1.14.1 from Makefile.am.
# redhat/Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2013 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



#

am__is_gnu_make = test -n '$(MAKEFILE_LIST)' && test -n '$(MAKELEVEL)'
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
pkgdatadir = $(datadir)/varnish
pkgincludedir = $(includedir)/varnish
pkglibdir = $(libdir)/varnish
pkglibexecdir = $(libexecdir)/varnish
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-unknown-linux-gnu
host_triplet = x86_64-unknown-linux-gnu
target_triplet = x86_64-unknown-linux-gnu
subdir = redhat
DIST_COMMON = $(srcdir)/Makefile.in $(srcdir)/Makefile.am
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/ax_check_compile_flag.m4 \
	$(top_srcdir)/m4/ax_check_link_flag.m4 \
	$(top_srcdir)/m4/ax_lib_readline.m4 \
	$(top_srcdir)/m4/ax_pthread.m4 \
	$(top_srcdir)/m4/ax_with_curses.m4 \
	$(top_srcdir)/m4/ld-version-script.m4 \
	$(top_srcdir)/m4/libtool.m4 $(top_srcdir)/m4/ltoptions.m4 \
	$(top_srcdir)/m4/ltsugar.m4 $(top_srcdir)/m4/ltversion.m4 \
	$(top_srcdir)/m4/lt~obsolete.m4 $(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/config.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
am__v_P_0 = false
am__v_P_1 = :
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
am__v_at_1 = 
SOURCES =
DIST_SOURCES =
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
ACLOCAL = ${SHELL} /home/lkarsten/work/varnish-cache/build-aux/missing aclocal-1.14
AMTAR = $${TAR-tar}
AM_DEFAULT_VERBOSITY = 0
AM_LT_LDFLAGS = 
AR = ar
AUTOCONF = ${SHELL} /home/lkarsten/work/varnish-cache/build-aux/missing autoconf
AUTOHEADER = ${SHELL} /home/lkarsten/work/varnish-cache/build-aux/missing autoheader
AUTOMAKE = ${SHELL} /home/lkarsten/work/varnish-cache/build-aux/missing automake-1.14
AWK = gawk
CC = clang -std=gnu99
CCDEPMODE = depmode=gcc3
CFLAGS = -g -O2 -pthread -Wall -Werror -Wno-error=unused-result  	-Werror 	-Wall 	-Wno-format-y2k 	-W 	-Wstrict-prototypes 	-Wmissing-prototypes 	-Wpointer-arith 	-Wreturn-type 	-Wcast-qual 	-Wwrite-strings 	-Wswitch 	-Wshadow 	-Wunused-parameter 	-Wcast-align 	-Wchar-subscripts 	-Wnested-externs 	-Wextra 	-Wno-sign-compare  -fstack-protector -Wno-pointer-sign -Wno-address -Wno-missing-field-initializers -O0 -g -fno-inline
CPP = clang -E
CPPFLAGS = 
CURSES_LIB = -lncurses
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DLLTOOL = false
DL_LIBS = -ldl 
DOT = dot
DSYMUTIL = 
DUMPBIN = 
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
FGREP = /bin/grep -F
GREP = /bin/grep
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
JEMALLOC_LDADD = -ljemalloc
LD = /usr/bin/ld -m elf_x86_64
LDFLAGS = 
LIBEDIT_CFLAGS = -I/usr/include/editline 
LIBEDIT_LIBS = -ledit 
LIBM = -lm
LIBOBJS = 
LIBS =  
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIBUMEM = 
LIPO = 
LN_S = ln -s
LTLIBOBJS = 
MAINT = #
MAKEINFO = ${SHELL} /home/lkarsten/work/varnish-cache/build-aux/missing makeinfo
MANIFEST_TOOL = :
MKDIR_P = /bin/mkdir -p
NET_LIBS = -lnsl 
NM = /usr/bin/nm -B
NMEDIT = 
OBJDUMP = objdump
OBJEXT = o
OTOOL = 
OTOOL64 = 
PACKAGE = varnish
PACKAGE_BUGREPORT = varnish-dev@varnish-cache.org
PACKAGE_NAME = Varnish
PACKAGE_STRING = Varnish trunk
PACKAGE_TARNAME = varnish
PACKAGE_URL = 
PACKAGE_VERSION = trunk
PATH_SEPARATOR = :
PCRE_CFLAGS = 
PCRE_CONFIG = 
PCRE_LIBS = -lpcre 
PKG_CONFIG = /usr/bin/pkg-config
PKG_CONFIG_LIBDIR = 
PKG_CONFIG_PATH = 
PTHREAD_CC = clang -std=gnu99
PTHREAD_CFLAGS = -pthread
PTHREAD_LIBS = 
PYTHON = python3
RANLIB = ranlib
RST2HTML = rst2html
RST2MAN = rst2man
RT_LIBS = -lrt 
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/sh
STRIP = strip
VARNISH_STATE_DIR = ${localstatedir}/varnish
VCC_CC = exec clang -std=gnu99 -g -O2 -Wall -Werror -Wno-error=unused-result  	-Werror 	-Wall 	-Wno-format-y2k 	-W 	-Wstrict-prototypes 	-Wmissing-prototypes 	-Wpointer-arith 	-Wreturn-type 	-Wcast-qual 	-Wwrite-strings 	-Wswitch 	-Wshadow 	-Wunused-parameter 	-Wcast-align 	-Wchar-subscripts 	-Wnested-externs 	-Wextra 	-Wno-sign-compare  -fstack-protector -Wno-pointer-sign -Wno-address -Wno-missing-field-initializers -pthread -fpic -shared -Wl,-x -o %o %s
VERSION = trunk
VTC_TESTS = tests/a00000.vtc tests/a00001.vtc tests/a00002.vtc tests/a00003.vtc tests/a00004.vtc tests/a00005.vtc tests/a00006.vtc tests/a00007.vtc tests/a00008.vtc tests/a00009.vtc tests/a00010.vtc tests/a00011.vtc tests/a00012.vtc tests/b00000.vtc tests/b00001.vtc tests/b00002.vtc tests/b00003.vtc tests/b00004.vtc tests/b00005.vtc tests/b00006.vtc tests/b00007.vtc tests/b00008.vtc tests/b00009.vtc tests/b00010.vtc tests/b00011.vtc tests/b00012.vtc tests/b00013.vtc tests/b00014.vtc tests/b00015.vtc tests/b00016.vtc tests/b00017.vtc tests/b00018.vtc tests/b00019.vtc tests/b00020.vtc tests/b00021.vtc tests/b00022.vtc tests/b00023.vtc tests/b00024.vtc tests/b00025.vtc tests/b00026.vtc tests/b00027.vtc tests/b00028.vtc tests/b00029.vtc tests/b00030.vtc tests/b00031.vtc tests/b00032.vtc tests/b00033.vtc tests/b00034.vtc tests/b00036.vtc tests/b00037.vtc tests/b00038.vtc tests/b00039.vtc tests/b00040.vtc tests/b00041.vtc tests/b00042.vtc tests/b00043.vtc tests/b00044.vtc tests/b00045.vtc tests/b00046.vtc tests/b00047.vtc tests/b00048.vtc tests/c00001.vtc tests/c00002.vtc tests/c00003.vtc tests/c00004.vtc tests/c00005.vtc tests/c00006.vtc tests/c00007.vtc tests/c00008.vtc tests/c00009.vtc tests/c00010.vtc tests/c00011.vtc tests/c00012.vtc tests/c00013.vtc tests/c00014.vtc tests/c00015.vtc tests/c00016.vtc tests/c00017.vtc tests/c00018.vtc tests/c00019.vtc tests/c00020.vtc tests/c00021.vtc tests/c00022.vtc tests/c00023.vtc tests/c00024.vtc tests/c00025.vtc tests/c00026.vtc tests/c00027.vtc tests/c00028.vtc tests/c00031.vtc tests/c00032.vtc tests/c00034.vtc tests/c00035.vtc tests/c00036.vtc tests/c00037.vtc tests/c00038.vtc tests/c00039.vtc tests/c00040.vtc tests/c00041.vtc tests/c00042.vtc tests/c00043.vtc tests/c00044.vtc tests/c00045.vtc tests/c00046.vtc tests/c00047.vtc tests/c00048.vtc tests/c00049.vtc tests/c00050.vtc tests/c00051.vtc tests/c00052.vtc tests/c00053.vtc tests/c00054.vtc tests/c00055.vtc tests/c00056.vtc tests/c00057.vtc tests/c00058.vtc tests/c00059.vtc tests/c00060.vtc tests/c00061.vtc tests/c00062.vtc tests/c00063.vtc tests/c00064.vtc tests/c00065.vtc tests/c00066.vtc tests/c00067.vtc tests/c00068.vtc tests/c00069.vtc tests/c00070.vtc tests/c00071.vtc tests/d00000.vtc tests/d00001.vtc tests/d00002.vtc tests/d00003.vtc tests/d00004.vtc tests/d00005.vtc tests/d00006.vtc tests/d00007.vtc tests/d00008.vtc tests/d00009.vtc tests/d00010.vtc tests/d00011.vtc tests/d00012.vtc tests/d00013.vtc tests/e00000.vtc tests/e00001.vtc tests/e00002.vtc tests/e00003.vtc tests/e00004.vtc tests/e00005.vtc tests/e00006.vtc tests/e00007.vtc tests/e00008.vtc tests/e00009.vtc tests/e00010.vtc tests/e00011.vtc tests/e00012.vtc tests/e00013.vtc tests/e00014.vtc tests/e00015.vtc tests/e00016.vtc tests/e00017.vtc tests/e00018.vtc tests/e00019.vtc tests/e00020.vtc tests/e00021.vtc tests/e00022.vtc tests/e00023.vtc tests/e00024.vtc tests/e00025.vtc tests/e00026.vtc tests/e00027.vtc tests/e00028.vtc tests/e00030.vtc tests/g00000.vtc tests/g00001.vtc tests/g00002.vtc tests/g00003.vtc tests/g00004.vtc tests/g00005.vtc tests/g00006.vtc tests/g00007.vtc tests/j00000.vtc tests/j00001.vtc tests/j00002.vtc tests/l00000.vtc tests/l00001.vtc tests/l00002.vtc tests/l00003.vtc tests/l00004.vtc tests/l00005.vtc tests/m00000.vtc tests/m00001.vtc tests/m00002.vtc tests/m00003.vtc tests/m00004.vtc tests/m00005.vtc tests/m00006.vtc tests/m00007.vtc tests/m00008.vtc tests/m00011.vtc tests/m00012.vtc tests/m00013.vtc tests/m00014.vtc tests/m00015.vtc tests/m00016.vtc tests/m00017.vtc tests/m00018.vtc tests/m00019.vtc tests/m00020.vtc tests/m00021.vtc tests/m00022.vtc tests/o00000.vtc tests/o00001.vtc tests/p00000.vtc tests/p00002.vtc tests/p00003.vtc tests/p00004.vtc tests/p00005.vtc tests/p00006.vtc tests/p00007.vtc tests/p00008.vtc tests/p00009.vtc tests/r00102.vtc tests/r00251.vtc tests/r00255.vtc tests/r00262.vtc tests/r00263.vtc tests/r00292.vtc tests/r00306.vtc tests/r00310.vtc tests/r00318.vtc tests/r00325.vtc tests/r00326.vtc tests/r00345.vtc tests/r00386.vtc tests/r00387.vtc tests/r00400.vtc tests/r00409.vtc tests/r00411.vtc tests/r00412.vtc tests/r00416.vtc tests/r00425.vtc tests/r00427.vtc tests/r00433.vtc tests/r00445.vtc tests/r00466.vtc tests/r00476.vtc tests/r00494.vtc tests/r00495.vtc tests/r00498.vtc tests/r00502.vtc tests/r00506.vtc tests/r00524.vtc tests/r00545.vtc tests/r00549.vtc tests/r00558.vtc tests/r00561.vtc tests/r00590.vtc tests/r00612.vtc tests/r00641.vtc tests/r00655.vtc tests/r00667.vtc tests/r00679.vtc tests/r00686.vtc tests/r00694.vtc tests/r00700.vtc tests/r00702.vtc tests/r00704.vtc tests/r00722.vtc tests/r00730.vtc tests/r00733.vtc tests/r00742.vtc tests/r00763.vtc tests/r00769.vtc tests/r00776.vtc tests/r00781.vtc tests/r00789.vtc tests/r00795.vtc tests/r00801.vtc tests/r00803.vtc tests/r00806.vtc tests/r00832.vtc tests/r00861.vtc tests/r00873.vtc tests/r00878.vtc tests/r00887.vtc tests/r00894.vtc tests/r00896.vtc tests/r00902.vtc tests/r00907.vtc tests/r00911.vtc tests/r00913.vtc tests/r00915.vtc tests/r00916.vtc tests/r00917.vtc tests/r00921.vtc tests/r00936.vtc tests/r00940.vtc tests/r00941.vtc tests/r00942.vtc tests/r00948.vtc tests/r00956.vtc tests/r00961.vtc tests/r00962.vtc tests/r00963.vtc tests/r00965.vtc tests/r00972.vtc tests/r00979.vtc tests/r00980.vtc tests/r00984.vtc tests/r01002.vtc tests/r01014.vtc tests/r01029.vtc tests/r01030.vtc tests/r01036.vtc tests/r01037.vtc tests/r01038.vtc tests/r01068.vtc tests/r01073.vtc tests/r01086.vtc tests/r01092.vtc tests/r01109.vtc tests/r01113.vtc tests/r01120.vtc tests/r01123.vtc tests/r01134.vtc tests/r01140.vtc tests/r01144.vtc tests/r01145.vtc tests/r01156.vtc tests/r01157.vtc tests/r01164.vtc tests/r01168.vtc tests/r01169.vtc tests/r01175.vtc tests/r01176.vtc tests/r01184.vtc tests/r01206.vtc tests/r01211.vtc tests/r01212.vtc tests/r01218.vtc tests/r01225.vtc tests/r01255.vtc tests/r01266.vtc tests/r01274.vtc tests/r01275.vtc tests/r01284.vtc tests/r01287.vtc tests/r01296.vtc tests/r01312.vtc tests/r01320.vtc tests/r01332.vtc tests/r01333.vtc tests/r01335.vtc tests/r01337.vtc tests/r01349.vtc tests/r01350.vtc tests/r01355.vtc tests/r01356.vtc tests/r01367.vtc tests/r01391.vtc tests/r01395.vtc tests/r01398.vtc tests/r01399.vtc tests/r01401.vtc tests/r01404.vtc tests/r01406.vtc tests/r01417.vtc tests/r01419.vtc tests/r01441.vtc tests/r01442.vtc tests/r01468.vtc tests/r01478.vtc tests/r01485.vtc tests/r01490.vtc tests/r01493.vtc tests/r01494.vtc tests/r01498.vtc tests/r01499.vtc tests/r01501.vtc tests/r01504.vtc tests/r01510.vtc tests/r01512.vtc tests/r01518.vtc tests/r01524.vtc tests/r01532.vtc tests/r01557.vtc tests/r01562.vtc tests/r01566.vtc tests/r01569.vtc tests/r01575.vtc tests/r01576.vtc tests/r01577.vtc tests/r01578.vtc tests/r01581.vtc tests/r01598.vtc tests/r01602.vtc tests/r01608.vtc tests/r01612.vtc tests/r01613.vtc tests/r01624.vtc tests/r01627.vtc tests/r01637.vtc tests/r01638.vtc tests/r01641.vtc tests/r01644.vtc tests/r01646.vtc tests/r01648.vtc tests/r01650.vtc tests/r01660.vtc tests/r01665.vtc tests/r01672.vtc tests/r01684.vtc tests/r01688.vtc tests/r01691.vtc tests/r01693.vtc tests/r01729.vtc tests/r01730.vtc tests/r01737.vtc tests/r01746.vtc tests/r01755.vtc tests/r01761.vtc tests/r01762.vtc tests/r01765.vtc tests/r01768.vtc tests/r01770.vtc tests/r01775.vtc tests/r01777.vtc tests/s00000.vtc tests/s00001.vtc tests/s00002.vtc tests/s00003.vtc tests/s00004.vtc tests/u00000.vtc tests/u00001.vtc tests/v00000.vtc tests/v00001.vtc tests/v00005.vtc tests/v00006.vtc tests/v00008.vtc tests/v00010.vtc tests/v00011.vtc tests/v00012.vtc tests/v00013.vtc tests/v00014.vtc tests/v00015.vtc tests/v00016.vtc tests/v00017.vtc tests/v00018.vtc tests/v00019.vtc tests/v00020.vtc tests/v00021.vtc tests/v00024.vtc tests/v00025.vtc tests/v00027.vtc tests/v00031.vtc tests/v00032.vtc tests/v00033.vtc tests/v00034.vtc tests/v00037.vtc tests/v00038.vtc tests/v00039.vtc tests/v00040.vtc tests/v00041.vtc tests/v00042.vtc tests/v00043.vtc tests/v00044.vtc
abs_builddir = /home/lkarsten/work/varnish-cache/redhat
abs_srcdir = /home/lkarsten/work/varnish-cache/redhat
abs_top_builddir = /home/lkarsten/work/varnish-cache
abs_top_srcdir = /home/lkarsten/work/varnish-cache
ac_ct_AR = ar
ac_ct_CC = clang
ac_ct_DUMPBIN = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = $${TAR-tar} chof - "$$tardir"
am__untar = $${TAR-tar} xf -
ax_pthread_config = 
bindir = ${exec_prefix}/bin
build = x86_64-unknown-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = unknown
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = x86_64-unknown-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = unknown
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/lkarsten/work/varnish-cache/build-aux/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
libvgz_extra_cflags = 
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = /opt/varnish/man
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /opt/varnish
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
sysconfdir = ${prefix}/etc
target = x86_64-unknown-linux-gnu
target_alias = 
target_cpu = x86_64
target_os = linux-gnu
target_vendor = unknown
top_build_prefix = ../
top_builddir = ..
top_srcdir = ..
varnishconfdir = ${sysconfdir}/varnish
EXTRA_DIST = \
	README.redhat		\
	varnish.initrc		\
	varnish.logrotate	\
	varnish_reload_vcl	\
	varnish.spec		\
	varnish.sysconfig	\
	varnishlog.initrc	\
	varnishncsa.initrc	\
	varnish.params		\
	varnish.service		\
	varnishncsa.service	\
	varnishlog.service	\
	find-provides

all: all-am

.SUFFIXES:
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      ( cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh ) \
	        && { if test -f $@; then exit 0; else break; fi; }; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --foreign redhat/Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --foreign redhat/Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $(subdir)/$@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh

$(top_srcdir)/configure: # $(am__configure_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	cd $(top_builddir) && $(MAKE) $(AM_MAKEFLAGS) am--refresh
$(am__aclocal_m4_deps):

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs
tags TAGS:

ctags CTAGS:

cscope cscopelist:


distdir: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am: Makefile
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-am
	-rm -f Makefile
distclean-am: clean-am distclean-generic

dvi: dvi-am

dvi-am:

html: html-am

html-am:

info: info-am

info-am:

install-data-am:

install-dvi: install-dvi-am

install-dvi-am:

install-exec-am:

install-html: install-html-am

install-html-am:

install-info: install-info-am

install-info-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

install-ps: install-ps-am

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am:

.MAKE: install-am install-strip

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	cscopelist-am ctags-am distclean distclean-generic \
	distclean-libtool distdir dvi dvi-am html html-am info info-am \
	install install-am install-data install-data-am install-dvi \
	install-dvi-am install-exec install-exec-am install-html \
	install-html-am install-info install-info-am install-man \
	install-pdf install-pdf-am install-ps install-ps-am \
	install-strip installcheck installcheck-am installdirs \
	maintainer-clean maintainer-clean-generic mostlyclean \
	mostlyclean-generic mostlyclean-libtool pdf pdf-am ps ps-am \
	tags-am uninstall uninstall-am


# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
