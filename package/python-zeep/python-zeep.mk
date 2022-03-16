################################################################################
#
# python-zeep
#
################################################################################

# https://github.com/mvantellingen/python-zeep/archive/3.4.0.tar.gz

PYTHON_ZEEP_VERSION = 3.4.0
PYTHON_ZEEP_SOURCE = $(PYTHON_ZEEP_VERSION).tar.gz
PYTHON_ZEEP_SITE = https://github.com/mvantellingen/python-zeep/archive
PYTHON_ZEEP_SETUP_TYPE = setuptools
PYTHON_ZEEP_DEPENDENCIES += python-lxml python-attrs python-defusedxml

$(eval $(python-package))
