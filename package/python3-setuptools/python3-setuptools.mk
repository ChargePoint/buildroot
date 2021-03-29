################################################################################
#
# python3-setuptools
#
################################################################################

# Please keep in sync with
# package/python-setuptools/python-setuptools.mk
PYTHON3_SETUPTOOLS_VERSION = 54.2.0
PYTHON3_SETUPTOOLS_SOURCE = setuptools-$(PYTHON3_SETUPTOOLS_VERSION).tar.gz
PYTHON3_SETUPTOOLS_SITE = https://files.pythonhosted.org/packages/94/75/05e1d69c61c4dfaf65ad12785cd18bedc1e0129976c55914d6aea59c7da8
PYTHON3_SETUPTOOLS_LICENSE = MIT
PYTHON3_SETUPTOOLS_LICENSE_FILES = LICENSE
PYTHON3_SETUPTOOLS_SETUP_TYPE = setuptools
HOST_PYTHON3_SETUPTOOLS_DL_SUBDIR = python-setuptools
HOST_PYTHON3_SETUPTOOLS_NEEDS_HOST_PYTHON = python3

$(eval $(host-python-package))
