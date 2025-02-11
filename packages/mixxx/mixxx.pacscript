pkgname="mixxx"
gives="${pkgname}"
arch=(
  "any"
  "amd64"
  "arm64"
)
url="https://mixxx.org"
pkgver=("2.5")
source=("https://github.com/mixxxdj/mixxx.git#tag=${pkgver}")
maintainer=("Fayaaz Ahmed <fayaaz.ahmed@gmail.com>")
pkgdesc="Free and open source DJ software."
license=("GPL-2.0-or-later")
external_connection=true
makedepends=(
  "ccache"
  "cmake"
  "clazy"
  "clang-tidy"
  "debhelper"
  "devscripts"
  "docbook-to-man"
  "dput"
  "fonts-open-sans"
  "fonts-ubuntu"
  "g++"
  "ffmpeg"
  "lcov"
  "libavformat-dev"
  "libbenchmark-dev"
  "libchromaprint-dev"
  "libdistro-info-perl"
  "libebur128-dev"
  "libfaad-dev"
  "libfftw3-dev"
  "libflac-dev"
  "libgmock-dev"
  "libgtest-dev"
  "libgl1-mesa-dev"
  "libhidapi-dev"
  "libid3tag0-dev"
  "liblilv-dev"
  "libmad0-dev"
  "libmodplug-dev"
  "libmp3lame-dev"
  "libmsgsl-dev"
  "libopus-dev"
  "libopusfile-dev"
  "libportmidi-dev"
  "libprotobuf-dev"
  "libqt6core5compat6-dev"
  "libqt6opengl6-dev"
  "libqt6sql6-sqlite"
  "libqt6svg6-dev"
  "librubberband-dev"
  "libshout-idjc-dev"
  "libsndfile1-dev"
  "libsoundtouch-dev"
  "libsqlite3-dev"
  "libssl-dev"
  "libtag1-dev"
  "libudev-dev"
  "libupower-glib-dev"
  "libusb-1.0-0-dev"
  "libwavpack-dev"
  "lv2-dev"
  "markdown"
  "portaudio19-dev"
  "protobuf-compiler"
  "qtkeychain-qt6-dev"
  "qt6-declarative-private-dev"
  "qt6-base-private-dev"
  "qt6-qpa-plugins"
  "qml6-module-qt5compat-graphicaleffects"
  "qml6-module-qtqml-workerscript"
  "qml6-module-qtquick-controls"
  "qml6-module-qtquick-layouts"
  "qml6-module-qtquick-nativestyle"
  "qml6-module-qtquick-shapes"
  "qml6-module-qtquick-templates"
  "qml6-module-qtquick-window"
  "qml6-module-qt-labs-qmlmodels"
)
depends=(
  "libavcodec61>=7:7.0"
  "libavformat61>=7:7.0"
  "libavutil59>=7:7.0"
  "libc6>=2.35"
  "libchromaprint1>=1.3.2"
  "libebur128-1>=1.0.1"
  "libflac12t64>=1.3.0"
  "libgcc-s1>=3.3.1"
  "libglib2.0-0t64>=2.12.0"
  "libhidapi-hidraw0>=0.10.0+dfsg"
  "libid3tag0>=0.15.1b"
  "liblilv-0-0>=0.16.0~dfsg0"
  "libmad0>=0.15.1b-3"
  "libmodplug1>=1:0.8.8.5"
  "libmp3lame0>=3.100"
  "libogg0>=1.0rc3"
  "libopengl0"
  "libopus0>=1.1"
  "libopusfile0>=0.5"
  "libportaudio2>=19+svn20101113"
  "libportmidi0"
  "libprotobuf-lite32t64>=3.21.12"
  "libqt6core5compat6>=6.6.0"
  "libqt6core6t64>=6.6.1"
  "libqt6dbus6>=6.1.2"
  "libqt6gui6>=6.4.0"
  "libqt6keychain1>=0.13.2"
  "libqt6network6>=6.4.0"
  "libqt6opengl6>=6.1.2"
  "libqt6qml6>=6.6.0"
  "libqt6quick6>=6.6.0"
  "libqt6sql6>=6.1.2"
  "libqt6svg6>=6.6.0"
  "libqt6svgwidgets6>=6.6.0"
  "libqt6widgets6>=6.3.0"
  "libqt6xml6>=6.6.0"
  "librubberband2>=3.3.0+dfsg"
  "libshout-idjc3>=2.4.6"
  "libsndfile1>=1.0.20"
  "libsoundtouch1>=2.0.0"
  "libsqlite3-0>=3.14.0"
  "libstdc++6>=14"
  "libswresample5>=7:7.0"
  "libtag2"
  "libupower-glib3>=0.99.0"
  "libusb-1.0-0>=2:1.0.9"
  "libvorbis0a>=1.2.3"
  "libvorbisenc2>=1.1.2"
  "libvorbisfile3>=1.1.2"
  "libwavpack1>=4.40.0"
  "libx11-6"
  "zlib1g>=1:1.1.4"
  "libqt6sql6-sqlite"
  "fonts-open-sans"
  "fonts-ubuntu"
  "qt6-qpa-plugins"
  "qml6-module-qt5compat-graphicaleffects"
  "qml6-module-qtquick-controls"
  "qml6-module-qtquick-layouts"
  "qml6-module-qtquick-nativestyle"
  "qml6-module-qtquick-templates"
  "qml6-module-qtquick-window"
  "qml6-module-qt-labs-qmlmodels"
  "qml6-module-qtquick-shapes"
  "qml6-module-qtqml-workerscript"
)

prepare() {
  mkdir -p "${pkgname}/build"
  cmake -S ${pkgname} -B ${pkgname}/build \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DINSTALL_USER_UDEV_RULES=OFF \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DOPTIMIZE=native \
    -DQT6=ON \
    -DBULK=ON \
    -DLILV=ON \
    -DFFMPEG=ON \
    -DKEYFINDER=ON \
    -DMAD=ON \
    -DMODPLUG=ON \
    -DOPUS=ON \
    -DQTKEYCHAIN=ON \
    -DWAVPACK=ON
}


build() {
  cmake --build "${pkgname}/build" --parallel "${NCPU}" --target mixxx
}

check() {
    cmake --build "${pkgname}/build" --parallel "${NCPU}" --target mixxx-test
    ctest --test-dir "${pkgname}/build" --parallel "${NCPU}" --output-on-failure
}

package() {
  mkdir -p "$pkgdir/usr/lib/udev/rules.d/"
  install -Dm644 "${pkgname}/res/linux/mixxx-usb-uaccess.rules"
  "${pkgdir}/usr/lib/udev/rules.d/69-mixxx-usb-uaccess.rules"
  DESTDIR="${pkgdir}" cmake --install "${pkgname}/build"
}