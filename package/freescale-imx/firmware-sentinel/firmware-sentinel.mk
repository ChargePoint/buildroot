################################################################################
#
# firmware-sentinel
#
################################################################################

FIRMWARE_SENTINEL_VERSION = 0.10
FIRMWARE_SENTINEL_SITE = $(FREESCALE_IMX_SITE)
FIRMWARE_SENTINEL_SOURCE = firmware-sentinel-$(FIRMWARE_SENTINEL_VERSION).bin

FIRMWARE_SENTINEL_LICENSE = NXP Semiconductor Software License Agreement
FIRMWARE_SENTINEL_LICENSE_FILES = EULA COPYING
FIRMWARE_SENTINEL_REDISTRIBUTE = NO

define FIRMWARE_SENTINEL_EXTRACT_CMDS
	$(call FREESCALE_IMX_EXTRACT_HELPER,$(FIRMWARE_SENTINEL_DL_DIR)/$(FIRMWARE_SENTINEL_SOURCE))
endef

FIRMWARE_SENTINEL_INSTALL_IMAGES = YES

FIRMWARE_SENTINEL_AHAB_CONTAINER_IMAGE = $(call qstrip,$(BR2_PACKAGE_FIRMWARE_SENTINEL_AHAB_CONTAINER_IMAGE))

define FIRMWARE_SENTINEL_INSTALL_IMAGES_CMDS
	cp $(@D)/$(FIRMWARE_SENTINEL_AHAB_CONTAINER_IMAGE) $(BINARIES_DIR)/ahab-container.img
endef

$(eval $(generic-package))
