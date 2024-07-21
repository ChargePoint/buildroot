################################################################################
#
# libmodbuspp
#
################################################################################

LIBMODBUSPP_VERSION = v1.1
#LIBMODBUSPP_SITE = $(call github,epsilonrt,libmodbuspp,$(LIBMODBUSPP_VERSION))
LIBMODBUSPP_SITE = https://github.com/epsilonrt/libmodbuspp
LIBMODBUSPP_SITE_METHOD = git
LIBMODBUSPP_LICENSE = LGPL-3.0
LIBMODBUSPP_LICENSE_FILES = COPYING.LESSER
LIBMODBUSPP_DEPENDENCIES = \
                libmodbus \
                json-for-modern-cpp
LIBMODBUSPP_CONF_OPTS += \
        -DMODBUSPP_WITH_STATIC=ON
LIBMODBUSPP_INSTALL_STAGING = YES

$(eval $(cmake-package))
