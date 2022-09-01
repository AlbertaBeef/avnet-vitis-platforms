#
# This file is the zub1cg-dualcam-dpu recipe.
#

SUMMARY = "Simple zub1cg-dualcam-dpu to use fpgamanager class"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit fpgamanager_custom
FPGA_MNGR_RECONFIG_ENABLE = "1"

SRC_URI = "file://zub1cg-dualcam-dpu.bit \
           file://zub1cg-dualcam-dpu.dtsi \
           file://zub1cg-dualcam-dpu.xclbin \
           file://shell.json \
           "

S = "${WORKDIR}"
PR = "1.pl2021_2"
