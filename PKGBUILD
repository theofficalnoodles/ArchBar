# Maintainer: TheOfficalNoodles <your.email@example.com>
pkgname=archbar
pkgver=1.0.0
pkgrel=1
pkgdesc="Minimal topbar/panel for Arch Linux KDE Plasma"
arch=('x86_64')
url="https://github.com/theofficalnoodles/ArchBar"
license=('MIT')
depends=('qt6-base' 'qt6-declarative' 'plasma-framework' 'kf6-plasma')
makedepends=('cmake' 'extra-cmake-modules')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
sha256sums=('SKIP')

build() {
  cd "$pkgname-$pkgver"
  mkdir -p build
  cd build
  cmake .. \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DCMAKE_BUILD_TYPE=Release \
    -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
  make
}

package() {
  cd "$pkgname-$pkgver/build"
  make DESTDIR="$pkgdir" install
}
