#
# This file is the zub1cg-benchmark-boot recipe.
#

SUMMARY = "Default boot overlay configuration"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = " \
	file://default_firmware \
	"

S = "${WORKDIR}"
PR = "1.pl2022_1"

do_install() {
	install -d ${D}/etc/dfx-mgrd
	install -m 0755 default_firmware   ${D}/etc/dfx-mgrd/default_firmware

	install -d ${D}/usr/share
	install -d ${D}/usr/share/vitis_ai_library
	ln -sf models.b512 ${D}/usr/share/vitis_ai_library/models
}

FILES:${PN} += "/etc/dfx-mgrd/default_firmware"

FILES:${PN} += "/usr/share/vitis_ai_library/models"

