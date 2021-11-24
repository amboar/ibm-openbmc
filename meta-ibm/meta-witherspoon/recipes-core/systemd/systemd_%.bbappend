FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append_ibm-ac-server = " file://journald-storage-policy.conf"
SRC_URI_append_ibm-ac-server = " file://systemd-journald-override.conf"
SRC_URI_append_ibm-ac-server = " file://journald-size-policy.conf"

SRC_URI_append_mowgli = " file://0001-util-split-out-sorting-related-calls-to-new-sort-uti.patch"
SRC_URI_append_mowgli = " file://0002-pstore-Tool-to-archive-contents-of-pstore.patch"
SRC_URI_append_mowgli = " file://0003-pstore-run-only-when-sys-fs-pstore-is-not-empty.patch"
SRC_URI_append_mowgli = " file://0004-pstore-Don-t-start-systemd-pstore.service-in-contain.patch"
SRC_URI_append_mowgli = " file://0005-units-pull-in-systemd-pstore.service-from-sysinit.ta.patch"
SRC_URI_append_mowgli = " file://0006-units-drop-dependency-on-systemd-remount-fs.service-.patch"
SRC_URI_append_mowgli = " file://0007-units-make-sure-systemd-pstore-stops-at-shutdown.patch"
SRC_URI_append_mowgli = " file://0008-units-Install-systemd-pstore.service.patch"

FILES_${PN}_append_ibm-ac-server = " ${systemd_unitdir}/journald.conf.d/journald-storage-policy.conf"
FILES_${PN}_append_ibm-ac-server = " ${systemd_system_unitdir}/systemd-journald.service.d/systemd-journald-override.conf"
FILES_${PN}_append_ibm-ac-server = " ${systemd_unitdir}/journald.conf.d/journald-size-policy.conf"

do_install_append_ibm-ac-server() {
        install -m 644 -D ${WORKDIR}/journald-storage-policy.conf ${D}${systemd_unitdir}/journald.conf.d/journald-storage-policy.conf
        install -m 644 -D ${WORKDIR}/systemd-journald-override.conf ${D}${systemd_system_unitdir}/systemd-journald.service.d/systemd-journald-override.conf
        install -m 644 -D ${WORKDIR}/journald-size-policy.conf ${D}${systemd_unitdir}/journald.conf.d/journald-size-policy.conf
}
