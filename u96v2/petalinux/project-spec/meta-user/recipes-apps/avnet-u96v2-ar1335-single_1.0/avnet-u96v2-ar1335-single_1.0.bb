#
# This file is the u96v2-ar1335-single recipe.
#

SUMMARY = "Simple u96v2-ar1335-single to use fpgamanager class"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit fpgamanager_custom
FPGA_MNGR_RECONFIG_ENABLE = "1"

SRC_URI = "file://u96v2-ar1335-single.bit \
           file://u96v2-ar1335-single.dtsi \
           file://shell.json \
           "

S = "${WORKDIR}"
PR = "1.pl2021_2"
