################################################################################
#
# python-fabric
#
################################################################################

PYTHON_FABRIC_VERSION = 2.5.0
PYTHON_FABRIC_SOURCE = $(PYTHON_FABRIC_VERSION).tar.gz
PYTHON_FABRIC_SITE = https://github.com/fabric/fabric/archive
PYTHON_FABRIC_SETUP_TYPE = setuptools

$(eval $(python-package))
