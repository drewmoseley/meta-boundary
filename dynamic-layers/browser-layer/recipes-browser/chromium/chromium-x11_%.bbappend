# GCC5.2 causes compilation errors on this old version of chromium
# meta-browser is patched to work-around the compile errors
# However it additionally needs this flag to boot without a SegFault
CHROMIUM_EXTRA_ARGS += "--ignore-gpu-blacklist --enable-gpu-rasterization --enable-zero-copy --enable-native-gpu-memory-buffers"

# Fixes gperf not found error
DEPENDS += "gperf-native"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = "file://chromium.desktop"

do_install_append() {

	install -m 0644 ${WORKDIR}/chromium.desktop ${D}${datadir}/applications/chromium.desktop

}
