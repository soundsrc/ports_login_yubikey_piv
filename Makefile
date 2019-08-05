COMMENT =	yubikey piv login authenticator

V =		1.0.0b0
DISTNAME =	login_yubikey_piv-${V}

GH_ACCOUNT =	soundsrc
GH_PROJECT =	login_yubikey_piv
GH_COMMIT =	49f73ebfee2c45c8bdbeb1c35fc9c1b5e587fe72

CATEGORIES =	sysutils security

# ISC
PERMIT_PACKAGE_CDROM = Yes

# uses pledge()

# "make port-lib-depends-check" can help
WANTLIB = c ssl crypto

LIB_DEPENDS =	security/opensc

FAKE_FLAGS =	MANDIR=${PREFIX}/man/man

NO_TEST = Yes

.include <bsd.port.mk>
