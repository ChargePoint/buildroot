################################################################################
#
# tensorflow
#
################################################################################

# CommitID  Tensor Flow version 2.3 - tag r2.3
TENSORFLOW_VERSION = b36436b087bd8e8701ef51718179037cccdfc26e
TENSORFLOW_SITE = $(call github,tensorflow,tensorflow,$(TENSORFLOW_VERSION))
#TENSORFLOW_DEPENDENCIES = host-protobuf host-prototext \
			       protobuf abseil flatbuffers eigen farmhash fft2d gtest \
			       double-conversion re2 sqlite giflib snappy jpeg-turbo \
			       libpng nsync grpc gemmlowp

TENSORFLOW_LICENSE = Apache-2.0
TENSORFLOW_LICENSE_FILES = LICENSE

TENSORFLOW_INSTALL_STAGING = YES

TENSORFLOW_CONF_OPTS += -DSYSROOT=$(STAGING_DIR)

$(eval $(cmake-package))
