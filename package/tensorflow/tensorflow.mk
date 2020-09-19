################################################################################
#
# tensorflow
#
################################################################################

# CommitID  Tensor Flow version 2.3 - tag r2.3
TENSORFLOW_VERSION = b36436b087bd8e8701ef51718179037cccdfc26e
TENSORFLOW_SITE = $(call github,tensorflow,tensorflow,$(TENSORFLOW_VERSION))

# re2 grpc abseil 
#TENSORFLOW_DEPENDENCIES = host-protobuf host-prototext jpeg-turbo snappy 			\
							double-conversion sqlite giflib 					\
							protobuf flatbuffers eigen farmhash fft2d gtest 	\
			       			libpng nsync gemmlowp


TENSORFLOW_LICENSE = Apache-2.0
TENSORFLOW_LICENSE_FILES = LICENSE

TENSORFLOW_INSTALL_STAGING = YES

TENSORFLOW_CONF_OPTS += -DSYSROOT=$(STAGING_DIR)

$(eval $(cmake-package))
