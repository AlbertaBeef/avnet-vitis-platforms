DESCRIPTION = "ZUBoard Benchmark (DPU B512) related packages"

inherit packagegroup

ZUB1CG_DPU_TRD_PACKAGES = " \
   avnet-zub1cg-benchmark \
   avnet-zub1cg-benchmark-boot \
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


RDEPENDS_${PN} = "${ZUB1CG_DPU_TRD_PACKAGES}"

PR = "1.pl2021_2"
COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE_zub1cg-sbc = "${MACHINE}"

PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"

