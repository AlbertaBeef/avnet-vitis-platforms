#
# This file is the uz7ev-benchmark recipe.
#

SUMMARY = "Simple uz7ev-benchmark to use fpgamanager class"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit fpgamanager_custom
FPGA_MNGR_RECONFIG_ENABLE = "1"

SRC_URI = "file://uz7ev-benchmark.bit \
           file://uz7ev-benchmark.dtsi \
           file://uz7ev-benchmark.xclbin \
           file://shell.json \
           "

S = "${WORKDIR}"
PR = "1.pl2021_2"
