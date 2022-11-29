FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://user_ap1302.cfg \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG} \
            ${YOCTO_META} \
            file://user_ap1302.cfg \
            file://bsp.cfg \
            file://user.cfg \
            file://vitis_kconfig.cfg \
            file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta \
            ${@bb.utils.contains('DISTRO_FEATURES',    'sysvinit',    'file://uevent.cfg',    '',    d)} \
            ${KERNELURI};${SRCBRANCHARG}\
    ${YOCTO_META}\
    file://user_ap1302.cfg\
    file://bsp.cfg\
    file://user.cfg\
    file://vitis_kconfig.cfg\
    file://openamp-kmeta;type=kmeta;name=openamp-kmeta;destsuffix=openamp-kmeta\
    ${@bb.utils.contains('DISTRO_FEATURES',\
    'sysvinit',\
    'file://uevent.cfg',\
    '',\
    d)} \
            "

SRCREV = "b0c1be301e78c320df8c4d93b18393bfd7fd4e9d"

