#!/bin/sh

repo='http://repo.merproject.org/obs/home:/krobelus/sailfish_latest_armv7hl/armv7hl/'

rm -rf res
mkdir  res
cd     res

die() {
    echo "$@"
    exit 1
}

which wget || die "wget not found"
# which rpm2cpio || die "rpm2cpio not found"
# which bsdtar || die "bsdtar not found"

# rpmextract() {
#     rpm2cpio "$1" | bsdtar -xf -
# }

cat << EOF | while read package; do wget $repo$package || exit 1; done
filter_audio-0.0.1-10.1.1.jolla.armv7hl.rpm
filter_audio-devel-0.0.1-10.1.1.jolla.armv7hl.rpm
libsodium-1.0.11-10.2.1.jolla.armv7hl.rpm
libsodium-devel-1.0.11-10.2.1.jolla.armv7hl.rpm
libv4l-1.6.2-10.29.2.jolla.armv7hl.rpm
libv4l-devel-1.6.2-10.29.2.jolla.armv7hl.rpm
libvpx-1.3.0-10.20.2.jolla.armv7hl.rpm
libvpx-devel-1.3.0-10.20.2.jolla.armv7hl.rpm
libvpx-utils-1.3.0-10.20.2.jolla.armv7hl.rpm
opus-1.1.3-10.1.1.jolla.armv7hl.rpm
opus-devel-1.1.3-10.1.1.jolla.armv7hl.rpm
toxcore-0.1.2-10.3.1.jolla.armv7hl.rpm
toxcore-devel-0.1.2-10.3.1.jolla.armv7hl.rpm
v4l-utils-1.6.2-10.29.2.jolla.armv7hl.rpm
v4l-utils-devel-tools-1.6.2-10.29.2.jolla.armv7hl.rpm
EOF

# for package in *.rpm; do
#     rpmextract "$package"
# done
