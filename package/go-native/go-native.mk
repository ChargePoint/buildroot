################################################################################
#
# go-native
#
################################################################################

# Fixup the host arch as needed
ifeq ($(HOSTARCH),x86)
GO_NATIVE_HOST_ARCH = 386
else ifeq ($(HOSTARCH),x86_64)
GO_NATIVE_HOST_ARCH = amd64
else ifeq ($(HOSTARCH),arm)
GO_NATIVE_HOST_ARCH = armv6l
else ifeq ($(HOSTARCH),aarch64)
GO_NATIVE_HOST_ARCH = arm64
else
GO_NATIVE_HOST_ARCH = $(HOSTARCH)
endif

# Download the native tools from the stable versions from golang
GO_NATIVE_VERSION = 1.20.5
GO_NATIVE_SITE = https://go.dev/dl
GO_NATIVE_LICENSE = BSD-3-Clause
GO_NATIVE_LICENSE_FILES = LICENSE

HOST_GO_NATIVE_SOURCE = go$(GO_NATIVE_VERSION).linux-$(GO_NATIVE_HOST_ARCH).tar.gz

# To build programs that need cgo support the toolchain needs to be
# available, so the toolchain is not needed to build host-go-native
# itself, but needed by other packages that depend on
# host-go-native.
HOST_GO_NATIVE_DEPENDENCIES = toolchain

HOST_GO_NATIVE_ROOT = $(HOST_DIR)/lib/go-$(GO_NATIVE_VERSION)

define HOST_GO_NATIVE_INSTALL_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bin/go $(HOST_GO_NATIVE_ROOT)/bin/go
	$(INSTALL) -D -m 0755 $(@D)/bin/gofmt $(HOST_GO_NATIVE_ROOT)/bin/gofmt

	cp -a $(@D)/lib $(HOST_GO_NATIVE_ROOT)/
	cp -a $(@D)/pkg $(HOST_GO_NATIVE_ROOT)/

	# There is a known issue which requires the go sources to be installed
	# https://golang.org/issue/2775
	cp -a $(@D)/src $(HOST_GO_NATIVE_ROOT)/
endef

$(eval $(host-generic-package))
