################################################################################
#
# python-pyusb
#
################################################################################

PYTHON_PYUSB_VERSION = 1.0.2
PYTHON_PYUSB_SOURCE = pyusb-$(PYTHON_PYUSB_VERSION).tar.gz
PYTHON_PYUSB_SITE = https://files.pythonhosted.org/packages/5f/34/2095e821c01225377dda4ebdbd53d8316d6abb243c9bee43d3888fa91dd6
PYTHON_PYUSB_LICENSE = BSD-3-Clause
PYTHON_PYUSB_LICENSE_FILES = LICENSE
PYTHON_PYUSB_SETUP_TYPE = distutils
PYTHON_PYUSB_DEPENDENCIES = libusb

$(eval $(python-package))
