pkgname="webcord-deb"
gives="webcord"
pkgver="4.10.3"
replaces=("${gives}")
source_amd64=("https://github.com/SpacingBat3/WebCord/releases/download/v${pkgver}/webcord_${pkgver}_amd64.deb")
source_arm64=("https://github.com/SpacingBat3/WebCord/releases/download/v${pkgver}/webcord_${pkgver}_arm64.deb")
repology=("project: webcord")
pkgdesc="A Discord and Fosscord client implemented directly without Discord API."
sha256sums_amd64=("68b5575a44394df79660b9b05638c23f2d115f2b136e1693e9341c76c7da31c7")
sha256sums_arm64=("a18a73e37bddbb2bc2439afc0139397a559894ebca92e48ecd01b8e7026f8a81")
arch=('amd64' 'arm64')
maintainer=("Oren Klopfer <oren@taumoda.com>")
