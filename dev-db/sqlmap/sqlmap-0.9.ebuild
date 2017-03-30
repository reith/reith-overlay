# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /root/portage/net-analyzer/sqlinject/sqlinject-1.1.ebuild,v 1.1.1.1 2006/03/21 14:30:26 grimmlin Exp $

EAPI=3
PYTHON_DEPEND="2"

inherit python

DESCRIPTION="Python based fuzzer for multi protocols, and faultinject"
HOMEPAGE="http://sqlmap.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND=""

QA_PRESTRIPPED="
	/usr/lib/${PN}/lib/contrib/upx/linux/upx
	/usr/lib/${PN}/udf/mysql/linux/32/lib_mysqludf_sys.so
	/usr/lib/${PN}/udf/mysql/linux/64/lib_mysqludf_sys.so
	/usr/lib/${PN}/udf/postgresql/linux/32/8.3/lib_postgresqludf_sys.so
	/usr/lib/${PN}/udf/postgresql/linux/32/8.4/lib_postgresqludf_sys.so
	/usr/lib/${PN}/udf/postgresql/linux/32/8.2/lib_postgresqludf_sys.so
	/usr/lib/${PN}/udf/postgresql/linux/64/8.3/lib_postgresqludf_sys.so
	/usr/lib/${PN}/udf/postgresql/linux/64/8.4/lib_postgresqludf_sys.so
	/usr/lib/${PN}/udf/postgresql/linux/64/8.2/lib_postgresqludf_sys.so"

QA_TEXTRELS="
	usr/lib/${PN}/udf/mysql/linux/32/lib_mysqludf_sys.so
	usr/lib/${PN}/udf/postgresql/linux/32/8.3/lib_postgresqludf_sys.so
	usr/lib/${PN}/udf/postgresql/linux/32/8.4/lib_postgresqludf_sys.so
	usr/lib/${PN}/udf/postgresql/linux/32/8.2/lib_postgresqludf_sys.so"

S="${WORKDIR}"/$PN

src_compile () {
	einfo "Nothing to compile"
}

src_install () {
	# fix broken tarball
	find . -name .svn |xargs rm -r
	dodoc doc/* || die "failed to add docs"
	rm -rf doc
	dodir /usr/lib/"${PN}"/
	cp -R * "${D}"/usr/lib/"${PN}"/
	dosym /usr/lib/"${PN}"/sqlmap.py /usr/sbin/sqlmap
}