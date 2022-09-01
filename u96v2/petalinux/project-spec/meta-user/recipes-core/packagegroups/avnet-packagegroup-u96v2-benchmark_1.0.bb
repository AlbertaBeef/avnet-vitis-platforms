DESCRIPTION = "Ultra96-V2 DPU-TRD related packages"

inherit packagegroup

U96V2_DPU_TRD_PACKAGES = " \
   avnet-u96v2-benchmark \
   avnet-u96v2-benchmark-boot \
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
   htop \
   jansson \
   target-factory \
   unilog vart vitis-ai-library xir \
   xmutil platformstats dfx-mgr ddr-qos axi-qos \
   "


RDEPENDS_${PN} = "${U96V2_DPU_TRD_PACKAGES}"

PR = "1.pl2021_2"
COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE_u96v2-sbc = "${MACHINE}"

PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"

