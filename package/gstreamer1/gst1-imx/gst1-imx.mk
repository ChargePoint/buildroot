################################################################################
#
# gst1-imx
#
################################################################################

ifeq ($(BR2_PACKAGE_FREESCALE_IMX_GSTREAMER),y)
GST1_IMX_VERSION = 4d2e5c1547c5f8a5e4e26a034ab87c809b34fb54
GST1_IMX_SOURCE = imx-gst1.0-plugin-$(GST1_IMX_VERSION).tar.gz
GST1_IMX_SITE = https://source.codeaurora.org/external/imx/imx-gst1.0-plugin
GST1_IMX_SITE_METHOD = git
GST1_IMX_LICENSE = GPL-2.0, LGPL-2.0, LGPL-2.1+
GST1_IMX_LICENSE_FILES = COPYING-LGPL-2, COPYING-LGPL-2.1
GST1_IMX_DEPENDENCIES += \
	host-pkgconf \
	libdrm \
	gstreamer1 \
	gst1-plugins-base \
	gst1-plugins-bad

# git, no configure
GST1_IMX_AUTORECONF = YES

GST1_IMX_PLATFORM = $(call qstrip,$(BR2_PACKAGE_IMX_GST1_0_PLUGIN_PLATFORM))
GST1_IMX_CONF_OPTS += PLATFORM=$(GST1_IMX_PLATFORM)

ifeq ($(BR2_LINUX_KERNEL),y)
GST1_IMX_DEPENDENCIES += linux
GST1_IMX_CPPFLAGS += \
	-I$(LINUX_DIR)/include/uapi -I${LINUX_DIR}/include
endif

ifeq ($(BR2_PACKAGE_IMX_CODEC),y)
GST1_IMX_DEPENDENCIES += imx-codec
endif

ifeq ($(BR2_PACKAGE_IMX_GPU_VIV),y)
GST1_IMX_DEPENDENCIES += imx-gpu-viv

ifneq ($(IMX_GPU_VIV_LIB_TARGET),x11)
GST1_IMX_CONF_OPTS += --disable-x11
endif
endif

ifeq ($(BR2_PACKAGE_IMX_GPU_G2D),y)
GST1_IMX_DEPENDENCIES += imx-gpu-g2d
endif

ifeq ($(BR2_PACKAGE_WAYLAND),y)
GST1_IMX_DEPENDENCIES += wayland
endif

$(eval $(autotools-package))

else # BR2_PACKAGE_FREESCALE_IMX_GSTREAMER

GST1_IMX_VERSION = 0.13.1
GST1_IMX_SITE = $(call github,Freescale,gstreamer-imx,$(GST1_IMX_VERSION))

GST1_IMX_LICENSE = LGPL-2.0+
GST1_IMX_LICENSE_FILES = LICENSE

GST1_IMX_INSTALL_STAGING = YES
GST1_IMX_NEEDS_EXTERNAL_WAF = YES

GST1_IMX_DEPENDENCIES += \
	host-pkgconf \
	gstreamer1 \
	gst1-plugins-base

GST1_IMX_CONF_OPTS = --prefix="/usr"

ifeq ($(BR2_LINUX_KERNEL),y)
# IPU and PXP need access to imx-specific kernel headers
GST1_IMX_DEPENDENCIES += linux
GST1_IMX_CONF_OPTS += --kernel-headers="$(LINUX_DIR)/include"
endif

ifeq ($(BR2_PACKAGE_IMX_CODEC),y)
GST1_IMX_DEPENDENCIES += imx-codec
endif

ifeq ($(BR2_PACKAGE_IMX_GPU_VIV),y)
GST1_IMX_DEPENDENCIES += imx-gpu-viv
endif

ifeq ($(BR2_PACKAGE_IMX_GPU_G2D),y)
GST1_IMX_DEPENDENCIES += imx-gpu-g2d
endif

ifeq ($(BR2_PACKAGE_GST1_IMX_EGLVISINK),y)
# There's no --enable-eglvivsink option
ifeq ($(BR2_PACKAGE_XLIB_LIBX11),y)
GST1_IMX_DEPENDENCIES += xlib_libX11
GST1_IMX_CONF_OPTS += --egl-platform=x11
else
ifeq ($(BR2_PACKAGE_WAYLAND),y)
GST1_IMX_DEPENDENCIES += wayland
GST1_IMX_CONF_OPTS += --egl-platform=wayland
else
GST1_IMX_CONF_OPTS += --egl-platform=fb
endif
endif
else
GST1_IMX_CONF_OPTS += --disable-eglvivsink
endif

# There's no --enable-g2d option
ifeq ($(BR2_PACKAGE_GST1_IMX_G2D),)
GST1_IMX_CONF_OPTS += --disable-g2d
endif

# There's no --enable-ipu option
ifeq ($(BR2_PACKAGE_GST1_IMX_IPU),)
GST1_IMX_CONF_OPTS += --disable-ipu
endif

# There's no --enable-mp3encoder option
ifeq ($(BR2_PACKAGE_GST1_IMX_MP3ENCODER),)
GST1_IMX_CONF_OPTS += --disable-mp3encoder
endif

# There's no --enable-pxp option
ifeq ($(BR2_PACKAGE_GST1_IMX_PXP),)
GST1_IMX_CONF_OPTS += --disable-pxp
endif

# There's no --enable-uniaudiodec option
ifeq ($(BR2_PACKAGE_GST1_IMX_UNIAUDIODEC),)
GST1_IMX_CONF_OPTS += --disable-uniaudiodec
endif

ifeq ($(BR2_PACKAGE_GST1_IMX_VPU),y)
# There's no --enable-vpu option
GST1_IMX_DEPENDENCIES += libimxvpuapi
else
GST1_IMX_CONF_OPTS += --disable-vpu
endif

ifeq ($(BR2_PACKAGE_GST1_IMX_V4L2VIDEOSRC),y)
# There's no --enable-imxv4l2videosrc option
GST1_IMX_DEPENDENCIES += gst1-plugins-bad
else
GST1_IMX_CONF_OPTS += --disable-imxv4l2videosrc
endif

ifeq ($(BR2_PACKAGE_GST1_IMX_V4L2VIDEOSINK),y)
# There's no --enable-imxv4l2videosink option
GST1_IMX_DEPENDENCIES += gst1-plugins-bad
else
GST1_IMX_CONF_OPTS += --disable-imxv4l2videosink
endif

$(eval $(waf-package))
endif # BR2_PACKAGE_FREESCALE_IMX_GSTREAMER
