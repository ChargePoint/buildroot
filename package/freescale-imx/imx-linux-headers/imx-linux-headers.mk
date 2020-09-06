################################################################################
#
# imx-linux-headers
#
################################################################################

ifeq ($(BR2_LINUX_KERNEL_CUSTOM_GIT),y)
IMX_LINUX_HEADERS_VERSION = $(call qstrip,$(BR2_LINUX_KERNEL_VERSION))
IMX_LINUX_HEADERS_SOURCE = linux-$(IMX_LINUX_HEADERS_VERSION).tar.gz
IMX_LINUX_HEADERS_SITE = $(call qstrip,$(BR2_LINUX_KERNEL_CUSTOM_REPO_URL))
IMX_LINUX_HEADERS_SITE_METHOD = git
else
IMX_LINUX_HEADERS_VERSION = f8118585ee3c7025265b28985fdfe0af96a84466
IMX_LINUX_HEADERS_SOURCE = linux-$(IMX_LINUX_HEADERS_VERSION).tar.gz
IMX_LINUX_HEADERS_SITE = https://source.codeaurora.org/external/imx/linux-imx.git
IMX_LINUX_HEADERS_SITE_METHOD = git
endif
IMX_LINUX_HEADERS_LICENSE = GPL-2.0
IMX_LINUX_HEADERS_LICENSE_FILES = COPYING

# Skip hash checking for imx linux headers.
BR_NO_CHECK_HASH_FOR += $(IMX_LINUX_HEADERS_SOURCE)

# Only installs headers
IMX_LINUX_HEADERS_INSTALL_TARGET = NO
IMX_LINUX_HEADERS_INSTALL_STAGING = YES

# imx-linux-headers really is the same as the linux package
IMX_LINUX_HEADERS_DL_SUBDIR = linux

IMX_LINUX_HEADERS_WHITELIST = \
	dma-buf.h \
	hantrodec.h \
	hx280enc.h \
	ion.h \
	ipu.h \
	isl29023.h \
	mxc_asrc.h \
	mxc_dcic.h \
	mxc_mlb.h \
	mxc_sim_interface.h \
	mxc_v4l2.h \
	mxcfb.h \
	pxp_device.h \
	pxp_dma.h \
	version.h \
	videodev2.h

define IMX_LINUX_HEADERS_CONFIGURE_CMDS
	(cd $(@D); \
		$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) \
			ARCH=$(KERNEL_ARCH) \
			HOSTCC="$(HOSTCC)" \
			HOSTCFLAGS="$(HOSTCFLAGS)" \
			HOSTCXX="$(HOSTCXX)" \
			INSTALL_HDR_PATH=$(@D)/usr-headers \
				headers_install; \
		$(RM) -f usr-headers/include/scsi/scsi.h; \
		cp drivers/staging/android/uapi/ion.h \
			usr-headers/include/linux)
endef

define IMX_LINUX_HEADERS_INSTALL_STAGING_CMDS
	$(foreach h,$(IMX_LINUX_HEADERS_WHITELIST), \
		$(INSTALL) -D -m 0644 $(@D)/usr-headers/include/linux/$(h) \
			$(STAGING_DIR)/usr/include/imx/linux/$(h)$(sep))
endef

$(eval $(generic-package))
