# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MY_PN="Saaghar-data"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Database of poems from Ganjoor project"
HOMEPAGE="http://pozh.org/saaghar/"
SRC_URI="http://sourceforge.net/projects/saaghar/files/DataBase/${MY_P}.xz"

LICENSE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install() {
	mkdir -p "${D}/usr/share/saaghar"
	cp "${S}/${MY_P}" "${D}/usr/share/saaghar/ganjoor.s3db"
}
