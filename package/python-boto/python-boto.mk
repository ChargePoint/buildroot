################################################################################
#
# python-boto
#
################################################################################

PYTHON_BOTO_VERSION = 2.49.0
PYTHON_BOTO_SOURCE = boto-$(PYTHON_BOTO_VERSION).tar.gz
PYTHON_BOTO_SITE = https://files.pythonhosted.org/packages/c8/af/54a920ff4255664f5d238b5aebd8eedf7a07c7a5e71e27afcfe840b82f51
PYTHON_BOTO_SETUP_TYPE = setuptools
PYTHON_BOTO_LICENSE = MIT

$(eval $(python-package))
