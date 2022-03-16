################################################################################
#
# python-visa
#
################################################################################

PYTHON_VISA_VERSION = 1.11.3
PYTHON_VISA_SOURCE = PyVISA-$(PYTHON_VISA_VERSION).tar.gz
PYTHON_VISA_SITE = https://files.pythonhosted.org/packages/82/d1/9d19b5bee77eb030425028ab8b53880aae859b1f88b7981edffe3818ee3d
PYTHON_VISA_SETUP_TYPE = setuptools

$(eval $(python-package))
