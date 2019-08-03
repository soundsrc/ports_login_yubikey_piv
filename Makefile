COMMENT =	yubikey piv login authenticator

V =		1.0.0b0
DISTNAME =	login_yubikey_piv-${V}

GH_ACCOUNT =	soundsrc
GH_PROJECT =	login_yubikey_piv
GH_COMMIT =	ded0543b7b1ecd1c17589a60c0677333f389ea3a

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
