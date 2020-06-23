################################################################################
#
# python-visa
#
#
################################################################################

PYTHON_VISA_VERSION = 1.10.1
PYTHON_VISA_SOURCE = PyVISA-$(PYTHON_VISA_VERSION).tar.gz
PYTHON_VISA_SITE = https://files.pythonhosted.org/packages/51/d1/fc21b45228718cde06b33b08761a6a9aa859dfe51dfbf07e81e0f209e776
PYTHON_VISA_SETUP_TYPE = setuptools

$(eval $(python-package))
