LIBTAPPP_VERSION = 6056074a103139c162c054555d9ec523178eceda
LIBTAPPP_SITE = git://github.com/cbab/libtappp
LIBTAPPP_INSTALL_STAGING = YES
# Explicit license not mentioned but may follow perl licensing
LIBTAPPP_LICENSE = GPL-1.0+

define LIBTAPPP_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define LIBTAPPP_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 $(@D)/include/tap++/tap++.h $(STAGING_DIR)/usr/include/tap++/tap++.h
	$(INSTALL) -D -m 0755 $(@D)/libtap++.so $(STAGING_DIR)/usr/lib
endef

define LIBTAPPP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/libtap++.so $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))
