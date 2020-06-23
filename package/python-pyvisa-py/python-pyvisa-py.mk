################################################################################
#
# python-pyvisa-py
#
################################################################################

PYTHON_PYVISA_PY_VERSION = 0.4.0
PYTHON_PYVISA_PY_SOURCE = $(PYTHON_PYVISA_PY_VERSION).tar.gz
PYTHON_PYVISA_PY_SITE = https://github.com/pyvisa/pyvisa-py/archive
PYTHON_PYVISA_PY_SETUP_TYPE = setuptools

$(eval $(python-package))
