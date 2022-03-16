################################################################################
#
# alsa-plugins
#
################################################################################

ALSA_PLUGINS_VERSION = 1.2.5
ALSA_PLUGINS_SOURCE = alsa-plugins-$(ALSA_PLUGINS_VERSION).tar.bz2
ALSA_PLUGINS_SITE = https://www.alsa-project.org/files/pub/plugins
ALSA_PLUGINS_LICENSE = LGPL-2.1+ (library), GPL-2.0+ (samplerate)
ALSA_PLUGINS_LICENSE_FILES = COPYING COPYING.GPL
ALSA_PLUGINS_AUTORECONF = YES
ALSA_PLUGINS_DEPENDENCIES = alsa-lib libsamplerate

ifeq ($(BR2_PACKAGE_ALSA_UTILS),y)
ALSA_PLUGINS_DEPENDENCIES += alsa-utils
endif

ALSA_PLUGINS_CONF_OPTS += \
	--enable-samplerate \
	--disable-jack \
	--disable-usbstream \
	--disable-pulseaudio \
	--disable-avcodec \
	--with-speex=builtin

$(eval $(autotools-package))
