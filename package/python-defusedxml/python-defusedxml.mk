################################################################################
#
# python-defusedxml
#
# https://github.com/tiran/defusedxml/archive/v0.6.0.tar.gz
#
################################################################################

PYTHON_DEFUSEDXML_VERSION = 0.6.0
PYTHON_DEFUSEDXML_SOURCE = v$(PYTHON_DEFUSEDXML_VERSION).tar.gz
PYTHON_DEFUSEDXML_SITE = https://github.com/tiran/defusedxml/archive
PYTHON_DEFUSEDXML_SETUP_TYPE = setuptools
PYTHON_DEFUSEDXML_DEPENDENCIES += python-lxml

$(eval $(python-package))
