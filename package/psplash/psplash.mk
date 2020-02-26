################################################################################
#
# psplash
#
################################################################################

PSPLASH_VERSION = f6ac8b7b263dc7d07cc9b60e7592f7e11325fb0a
PSPLASH_SITE = $(call github,ChargePoint,psplash,$(PSPLASH_VERSION))
PSPLASH_LICENSE = GPL-2.0+
PSPLASH_LICENSE_FILES = COPYING
PSPLASH_AUTORECONF = YES
PSPLASH_DEPENDENCIES = host-gdk-pixbuf host-pkgconf

PSPLASH_CONF_OPTS += --enable-img-fullscreen
PSPLASH_CONF_OPTS += --with-font=roboto

ifeq ($(BR2_PACKAGE_SYSTEMD),y)
PSPLASH_DEPENDENCIES += systemd
PSPLASH_CONF_OPTS += --with-systemd
else
PSPLASH_CONF_OPTS += --without-systemd
endif

PSPLASH_IMAGE = $(call qstrip,$(BR2_PACKAGE_PSPLASH_IMAGE))

ifneq ($(PSPLASH_IMAGE),)
define PSPLASH_COPY_IMAGE
	cp $(PSPLASH_IMAGE) $(@D)/base-images/psplash-poky.png
endef

PSPLASH_POST_EXTRACT_HOOKS += PSPLASH_COPY_IMAGE
endif

define PSPLASH_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 package/psplash/psplash-start.service \
		$(TARGET_DIR)/usr/lib/systemd/system/psplash-start.service

	$(INSTALL) -D -m 644 package/psplash/psplash-systemd.service \
		$(TARGET_DIR)/usr/lib/systemd/system/psplash-systemd.service
endef

$(eval $(autotools-package))
