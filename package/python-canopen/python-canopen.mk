################################################################################
#
# python-canopen
#
################################################################################

PYTHON_CANOPEN_VERSION = 1.1.0
PYTHON_CANOPEN_SOURCE = v$(PYTHON_CANOPEN_VERSION).tar.gz
PYTHON_CANOPEN_SITE = https://github.com/christiansandberg/canopen/archive
PYTHON_CANOPEN_SETUP_TYPE = setuptools
PYTHON_CANOPEN_LICENSE = MIT
PYTHON_CANOPEN_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
