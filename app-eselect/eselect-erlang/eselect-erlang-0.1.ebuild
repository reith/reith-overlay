# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Manage binaries installed by Erlang/OTP distribution"
HOMEPAGE="https://github.com/reith/eselect-erlang"
SRC_URI="https://github.com/reith/${PN}/archive/v${PV}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="!!dev-lang/erlang:0"
RDEPEND="${DEPEND}"

DOCS=(READ.me)

src_install() {
	insinto /usr/share/eselect/modules
	doins erlang.eselect
	dodir /etc/eselect/erlang
}
