# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-misc/smooth-tasks/smooth-tasks-0_p20120130.ebuild,v 1.2 2012/02/01 16:02:36 johu Exp $

EAPI=5

KDE_MINIMAL="4.8"
KDE_LINGUAS="de"
inherit kde4-base mercurial

DESCRIPTION="Alternate taskbar KDE plasmoid, similar to Windows 7"
HOMEPAGE="https://bitbucket.org/flupp/smooth-tasks-fork"

EHG_REPO_URI="http://bitbucket.org/flupp/smooth-tasks-fork"
EHG_REVISION="kde-4.8"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="
        $(add_kdebase_dep libtaskmanager)
"
RDEPEND="${DEPEND}
        $(add_kdebase_dep plasma-workspace)
"

src_prepare() {
        mv ${WORKDIR}/${PN} ${WORKDIR}/${P}
        kde4-base_src_prepare
}
