DESCRIPTION = "UltraZed-EV QUADCAM related packages"

inherit packagegroup

UZ7EV_QUADCAM_DPU_PACKAGES = " \
   avnet-uz7ev-quadcam-dpu \
   libdrm libdrm-tests libdrm-kms \
   xrt xrt-dev \
   zocl \
   opencl-headers \
   packagegroup-petalinux-vitisai \
   packagegroup-petalinux-vitisai-dev \
   packagegroup-petalinux-gstreamer \
   packagegroup-petalinux-opencv \
   packagegroup-petalinux-v4lutils \
   packagegroup-petalinux-x11 \
   python3-flask \
   htop \
   jansson \
   target-factory \
   unilog vart vitis-ai-library xir \
   xmutil platformstats dfx-mgr ddr-qos axi-qos \
   "


RDEPENDS_${PN} = "${UZ7EV_QUADCAM_DPU_PACKAGES}"

PR = "1.pl2021_2"
COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE_uz7ev-evcc = "${MACHINE}"

PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"

