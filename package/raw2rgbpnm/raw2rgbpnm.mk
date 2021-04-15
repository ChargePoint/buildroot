################################################################################
#
# raw2rgbpnm
#
################################################################################

RAW2RGBPNM_VERSION = b1fa387de809b18208ae9660e0593023af85c333
RAW2RGBPNM_SITE = git://salottisipuli.retiisi.org.uk/~sailus/raw2rgbpnm.git
RAW2RGBPNM_LICENSE = GPL-2.0
RAW2RGBPNM_LICENSE_FILES = LICENSE

define RAW2RGBPNM_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define RAW2RGBPNM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/raw2rgbpnm $(TARGET_DIR)/usr/bin/raw2rgbpnm
endef

$(eval $(generic-package))
