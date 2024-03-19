################################################################################
#
# python-canopen
#
################################################################################

PYTHON_CANOPEN_VERSION = 2.2.0
PYTHON_CANOPEN_SOURCE = canopen-$(PYTHON_CANOPEN_VERSION).tar.gz
PYTHON_CANOPEN_SITE = https://files.pythonhosted.org/packages/49/55/67e555f6f4ea51d6d966e998a77881c1bd726c6e8cc602fd04852772ce87
# PYTHON_CANOPEN_SITE = https://files.pythonhosted.org/packages/29/d1/54462c949c384b1a9a2bd260143a8ec6f4259a18d119bd122e8f8a791b50
PYTHON_CANOPEN_SETUP_TYPE = setuptools
PYTHON_CANOPEN_LICENSE = MIT
PYTHON_CANOPEN_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
