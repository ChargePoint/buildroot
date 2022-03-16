################################################################################
#
# python-isodate
#
################################################################################

# https://github.com/gweis/isodate/archive/0.6.0.tar.gz

PYTHON_ISODATE_VERSION = 0.6.0
PYTHON_ISODATE_SOURCE = $(PYTHON_ISODATE_VERSION).tar.gz
PYTHON_ISODATE_SITE = https://github.com/gweis/isodate/archive
PYTHON_ISODATE_SETUP_TYPE = setuptools

$(eval $(python-package))
