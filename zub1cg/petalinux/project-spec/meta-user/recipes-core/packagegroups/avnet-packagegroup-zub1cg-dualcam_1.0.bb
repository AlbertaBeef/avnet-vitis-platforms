DESCRIPTION = "ZUBoard DUALCAM related packages"

inherit packagegroup

ZUB1CG_DUALCAM_PACKAGES = " \
   ap1302 \
   ap1302-firmware \
   avnet-zub1cg-ar0144-single \
   avnet-zub1cg-ar0144-dual \
   avnet-zub1cg-ar1335-single \
   avnet-zub1cg-ar1335-dual \
   avnet-zub1cg-ar0830-single \
   avnet-zub1cg-ar0830-dual \
   libdrm libdrm-tests libdrm-kms \
   packagegroup-petalinux-gstreamer \
   packagegroup-petalinux-opencv \
   packagegroup-petalinux-v4lutils \
   packagegroup-petalinux-x11 \
   python3-flask \
   htop \
   jansson \
   target-factory \
   xmutil platformstats dfx-mgr ddr-qos axi-qos \
   "


RDEPENDS:${PN} = "${ZUB1CG_DUALCAM_PACKAGES}"

PR = "1.pl2022_1"
COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE:zub1cg-sbc = "${MACHINE}"

PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"

