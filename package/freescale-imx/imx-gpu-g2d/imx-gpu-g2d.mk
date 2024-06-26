################################################################################
#
# imx-gpu-g2d
#
################################################################################

ifeq ($(BR2_aarch64),y)
IMX_GPU_G2D_VERSION = 6.4.11.p2.0-aarch64-173c22a
else
IMX_GPU_G2D_VERSION = 6.4.11.p2.0-arm-173c22a
endif
IMX_GPU_G2D_SITE = $(FREESCALE_IMX_SITE)
IMX_GPU_G2D_SOURCE = imx-gpu-g2d-$(IMX_GPU_G2D_VERSION).bin
IMX_GPU_G2D_DEPENDENCIES = imx-gpu-viv
IMX_GPU_G2D_INSTALL_STAGING = YES

IMX_GPU_G2D_LICENSE = NXP Semiconductor Software License Agreement
IMX_GPU_G2D_LICENSE_FILES = EULA COPYING
IMX_GPU_G2D_REDISTRIBUTE = NO

define IMX_GPU_G2D_EXTRACT_CMDS
	$(call NXP_EXTRACT_HELPER,$(IMX_GPU_G2D_DL_DIR)/$(IMX_GPU_G2D_SOURCE))
endef

define IMX_GPU_G2D_INSTALL_STAGING_CMDS
	cp -a $(@D)/g2d/usr/* $(STAGING_DIR)/usr
endef

define IMX_GPU_G2D_INSTALL_TARGET_CMDS
	cp -a $(@D)/g2d/usr/lib $(TARGET_DIR)/usr
endef

$(eval $(generic-package))
