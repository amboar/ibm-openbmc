FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_ibm-ac-server = " file://witherspoon.cfg"
SRC_URI_append_mihawk += " file://mihawk.cfg"
SRC_URI_append_mihawk += " file://0001-wistron-wps.patch"
SRC_URI_append_mowgli += " file://mowgli.cfg"
SRC_URI_append_mowgli += " file://0001-Add-mowgli-platform.patch"
SRC_URI_append_witherspoon-128 = " file://0001-ARM-dts-Aspeed-Witherspoon-128-Update-BMC-partitioni.patch"
