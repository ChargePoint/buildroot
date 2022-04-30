################################################################################
#
# python-zeroconf
#
################################################################################

PYTHON_ZEROCONF_VERSION = 0.38.4
PYTHON_ZEROCONF_SOURCE = zeroconf-$(PYTHON_ZEROCONF_VERSION).tar.gz
PYTHON_ZEROCONF_SITE = https://files.pythonhosted.org/packages/a9/af/d5a16dc6081dc41507b65ed0d499e3c71728a3fbec4c14df6b2ec8eae1a7
PYTHON_ZEROCONF_SETUP_TYPE = setuptools
PYTHON_ZEROCONF_LICENSE = LGPL-2.1+
PYTHON_ZEROCONF_LICENSE_FILES = COPYING

$(eval $(python-package))
