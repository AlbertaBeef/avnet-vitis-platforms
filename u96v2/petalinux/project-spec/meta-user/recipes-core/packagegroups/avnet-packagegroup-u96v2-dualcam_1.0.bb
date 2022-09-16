DESCRIPTION = "Ultra96-V2 DUALCAM related packages"

inherit packagegroup

U96V2_DUALCAM_PACKAGES = " \
   ap1302-firmware \
   avnet-u96v2-ar0144-dual \
   avnet-u96v2-ar0144-single \
   avnet-u96v2-ar1335-single \
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


RDEPENDS_${PN} = "${U96V2_DUALCAM_PACKAGES}"

PR = "1.pl2021_2"
COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE_u96v2-sbc = "${MACHINE}"

PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"

