CUSTOM_DEFCONFIG ?= ""
CUSTOM_DEFCONFIG_imx6-acl = "${WORKDIR}/defconfig-acl"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += " file://defconfig-acl "

SRCREV = "e3f13151e7ec59185d7f8ba7a9404eaf98513a99"

do_custom_defconfig () {
	if [ ! -z "${CUSTOM_DEFCONFIG}" ]; then
		cp ${CUSTOM_DEFCONFIG} ${WORKDIR}/defconfig
	fi
}
addtask do_custom_defconfig after do_unpack before do_preconfigure

COMPATIBLE_MACHINE = "(nitrogen6x|nitrogen6x-lite|nitrogen6sx|nitrogen7|imx6-acl)"