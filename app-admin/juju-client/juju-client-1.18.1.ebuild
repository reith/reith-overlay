# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Juju client"
HOMEPAGE="http://www.juju.io/"
SRC_URI="mirror://ubuntu/pool/universe/j/juju-core/juju-core_${PV}.orig.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=sys-libs/glibc-2.4 dev-lang/go"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_prepare() {
	export GOPATH="${S}/juju-core_${PV}"
}

src_compile() {
	go install -v launchpad.net/juju-core/...
}

src_install() {
	dobin "$GOPATH/bin/juju"{,-local,-metadata,-restore,d} "$GOPATH/bin/charm"{-admin,load,d}
}
