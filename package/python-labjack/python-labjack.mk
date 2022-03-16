################################################################################
#
# python-labjack
#
################################################################################

PYTHON_LABJACK_VERSION = 2.0.0
PYTHON_LABJACK_SOURCE = $(PYTHON_LABJACK_VERSION).tar.gz
PYTHON_LABJACK_SITE = https://github.com/labjack/LabJackPython/archive
PYTHON_LABJACK_SETUP_TYPE = setuptools

$(eval $(python-package))
