################################################################################
#
# tensorflow
#
################################################################################
TENSORFLOW_VERSION = 2.3
#TENSORFLOW_SOURCE = libfoo-$(TENSORFLOW_VERSION).tar.gz
#TENSORFLOW_SITE = http://www.foosoftware.org/download
TENSORFLOW_LICENSE = GPL-3.0+
TENSORFLOW_LICENSE_FILES = COPYING
TENSORFLOW_INSTALL_STAGING = YES
#TENSORFLOW_CONFIG_SCRIPTS = libfoo-config
#TENSORFLOW_DEPENDENCIES = host-libaaa libbbb

define TENSORFLOW_BUILD_CMDS
	echo "-----------------------------------------Sudhanshu : Reached Tensorflow build command"
	./tensorflow/lite/tools/make/download_dependencies.sh
	./tensorflow/lite/tools/make/build_aarch64_lib.sh
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define TENSORFLOW_INSTALL_STAGING_CMDS

	echo "-----------------------------------------Sudhanshu : Staging Cmds "
	$(INSTALL) -D -m 0755 $(@D)/libfoo.a $(STAGING_DIR)/usr/lib/libfoo.a
	$(INSTALL) -D -m 0644 $(@D)/foo.h $(STAGING_DIR)/usr/include/foo.h
	$(INSTALL) -D -m 0755 $(@D)/libfoo.so* $(STAGING_DIR)/usr/lib
endef

define TENSORFLOW_INSTALL_TARGET_CMDS
	echo "-----------------------------------------Sudhanshu : Install Cmds "
	$(INSTALL) -D -m 0755 $(@D)/libfoo.so* $(TARGET_DIR)/usr/lib
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/etc/foo.d
endef

$(eval $(generic-package))



















