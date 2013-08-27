# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit qt4-r2

MY_PN="Saaghar"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Persian poem viewer using ganjoor.net database"
HOMEPAGE="http://pozh.org/saaghar/"
SRC_URI="http://sourceforge.net/projects/${PN}/files/Source%20Code/${MY_P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	app-misc/saaghar-data
"

S="${WORKDIR}/${MY_PN}"
