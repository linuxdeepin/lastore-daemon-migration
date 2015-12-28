PREFIX = /usr

all:

install:
	mkdir -p ${DESTDIR}/var/lib/lastore/
	mkdir -p ${DESTDIR}${PREFIX}/share/dbus-1/system-services
	mkdir -p ${DESTDIR}/etc/dbus-1/system.d
	cp main.py ${DESTDIR}/var/lib/lastore/mark-desktopfile-daemon
	cp conf/com.deepin.store.Api.service ${DESTDIR}${PREFIX}/share/dbus-1/system-services
	cp conf/com.deepin.store.Api.conf ${DESTDIR}/etc/dbus-1/system.d
