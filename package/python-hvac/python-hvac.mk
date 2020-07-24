################################################################################
#
# python-hvac
#
################################################################################

PYTHON_HVAC_VERSION = 0.10.4
PYTHON_HVAC_SOURCE = v$(PYTHON_HVAC_VERSION).tar.gz
PYTHON_HVAC_SITE = https://github.com/hvac/hvac/archive
PYTHON_HVAC_SETUP_TYPE = setuptools
PYTHON_HVAC_LICENSE = Apache-2.0
PYTHON_HVAC_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
