# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit qt4-r2

MY_PN="Saaghar"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Persian poem viewer using ganjoor.net database"
HOMEPAGE="http://pozh.org/saaghar/"
SRC_URI="https://github.com/srazi/${MY_PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	app-misc/saaghar-data
"

S="${WORKDIR}/${MY_PN}-${PV}"
