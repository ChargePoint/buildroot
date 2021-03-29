################################################################################
#
# python-setuptools
#
################################################################################

# Please keep in sync with
# package/python3-setuptools/python3-setuptools.mk
PYTHON_SETUPTOOLS_VERSION = 54.2.0
PYTHON_SETUPTOOLS_SOURCE = setuptools-$(PYTHON_SETUPTOOLS_VERSION).tar.gz
PYTHON_SETUPTOOLS_SITE = https://files.pythonhosted.org/packages/94/75/05e1d69c61c4dfaf65ad12785cd18bedc1e0129976c55914d6aea59c7da8
PYTHON_SETUPTOOLS_LICENSE = MIT
PYTHON_SETUPTOOLS_LICENSE_FILES = LICENSE
PYTHON_SETUPTOOLS_CPE_ID_VENDOR = python
PYTHON_SETUPTOOLS_CPE_ID_PRODUCT = setuptools
PYTHON_SETUPTOOLS_SETUP_TYPE = setuptools
HOST_PYTHON_SETUPTOOLS_NEEDS_HOST_PYTHON = python2

$(eval $(python-package))
$(eval $(host-python-package))
