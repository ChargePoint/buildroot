################################################################################
#
# python-puresnmp
#
################################################################################

PYTHON_PURESNMP_VERSION = 2.0.0.post1
PYTHON_PURESNMP_SOURCE = puresnmp-$(PYTHON_PURESNMP_VERSION).tar.gz
PYTHON_PURESNMP_SITE = https://files.pythonhosted.org/packages/3b/45/8e672da3e9af89c4d2dba45403847e9523c3cc04d151029943069f6313b5
PYTHON_PURESNMP_SETUP_TYPE = setuptools
PYTHON_PURESNMP_LICENSE = LGPL-2.1+
PYTHON_PURESNMP_LICENSE_FILES = LICENSE
PYTHON_PURESNMP_CPE_ID_VENDOR = puresnmp
PYTHON_PURESNMP_CPE_ID_PRODUCT = puresnmp

$(eval $(python-package))
