################################################################################
#
# sdbus-cpp
#
################################################################################

SDBUS_CPP_VERSION = 0.8.2
SDBUS_CPP_SITE = $(call github,Kistler-Group,sdbus-cpp,v$(SDBUS_CPP_VERSION))
SDBUS_CPP_LICENSE = LGPL-2.1
SDBUS_CPP_LICENSE_FILES = COPYING
SDBUS_CPP_DEPENDENCIES = host-pkgconf systemd
SDBUS_CPP_CONF_OPTS += \
	-DBUILD_CODE_GEN=OFF \
	-DBUILD_DOC=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_LIBSYSTEMD=OFF
SDBUS_CPP_INSTALL_STAGING = YES

# Host build for sdbus-c++-xml2cpp
HOST_SDBUS_CPP_DEPENDENCIES = host-pkgconf host-systemd
HOST_SDBUS_CPP_CONF_OPTS += \
	-DBUILD_CODE_GEN=ON \
	-DBUILD_DOC=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_LIBSYSTEMD=OFF

$(eval $(cmake-package))
$(eval $(host-cmake-package))
